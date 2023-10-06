import re
import chardet

import os
import sys
import argparse
import logging

class Callgraph:

    def __init__(self, path, deepth, remove_duplicate, call_roots=[], filter=[]):

        self.deepth = deepth

        logging.debug("Callgraph read disassembler file:")
        self.disassembler_content = self._read_disassembler_file(path)
        logging.debug("Callgraph read disassembler file compelte!")

        self.text_section_content = self.disassembler_content

        logging.debug("Callgraph get .text section funcs:")
        self.text_funcs_name = self._get_all_text_func_name()
        index = 1
        total = len(self.text_funcs_name)
        for func in self.text_funcs_name:
            logging.debug("%d/%d %s" % (index, total, func))
            index += 1
        logging.debug("Callgraph get .text section funcs complete!")

        self.output_funcs_name = {}
        for func in self.text_funcs_name:
            self._output_func_name_add(func)

        logging.debug("Callgraph get all func calls:")
        self.func_calls = self._get_all_func_calls()
        index = 1
        total = len(self.func_calls)
        for call in self.func_calls:
            logging.debug("%d/%d %s" % (index, total, call))
            index += 1
        
        if filter != []:
            for func in self.func_calls.keys():
                addr, name = func.split(',')
                if name in filter:
                    self.func_calls[func] = []

        if remove_duplicate:
            for func in self.func_calls.keys():
                new_calls = []
                for call in self.func_calls[func]:
                    if call not in new_calls:
                        new_calls.append(call)

                self.func_calls[func] = new_calls
        logging.debug("Callgraph get all func calls complete!")

        logging.debug("Callgraph get call root:")
        self.call_roots = self._get_call_roots()
        index = 1
        total = len(self.call_roots)
        for root in self.call_roots:
            logging.debug("%d/%d %s" % (index, total, root))
            index += 1

        if call_roots != []:
            logging.debug("Callgraph call root overwrite:")
            self.call_roots = []
            func_dict = {func.split(',')[1]: True for func in self.text_funcs_name}
            for call in call_roots:
                if call not in func_dict:
                    logging.debug("Call: %s not in func list!" % (call))
                    continue

                for func in self.text_funcs_name:
                    addr, name = func.split(',')
                    if call == name:
                        self.call_roots.append(func)

            if self.call_roots == []:
                logging.debug("Callgraph call root could not be null!")
                return
        logging.debug("Callgraph get call root complete!")

        logging.debug("Callgraph build callgraph:")
        self.queue = []
        self._build_callgraph()
        logging.debug("Callgraph build callgraph complete!")

    def _read_disassembler_file(self, path):
        file = open(path, 'rb')
        file_content = file.read()
        file.close()

        encode = chardet.detect(file_content)['encoding'].lower()

        if 'utf-8' != encode:
            file_content = file_content.decode(encode)
            file_content = file_content.encode("utf-8")
            file_content = str(file_content)
        
        return file_content
    
    def _get_all_sections_name(self):
        section_name_re = r"Disassembly of section (\.\w+):"
        sections_name = re.findall(section_name_re, self.disassembler_content, re.M | re.S)
        return sections_name

    def _get_section_by_name(self, name):
        section_re = r"(Disassembly of section %s:.*?)Disassembly of section" % (name)

        section_content = re.findall(section_re, self.disassembler_content, re.M | re.S)

        return section_content[0]
    
    def _get_all_text_func_name(self):
        text_content = self.text_section_content

        # we need added address info to distinguish different func with same name as below:
        # 08000210 <my_function>:
        # 080002bc <my_function>:
        # In order to cover this case, a function name rule "address,name" will be used.
        func_re = r"([0-9A-Fa-f]+)\s<(\w+)>:"
        funcs_name = re.findall(func_re, text_content, re.M | re.S)

        addr_funcs_name = []
        for addr, name in funcs_name:
            addr = int(addr, 16)
            addr = "%x"%(addr)
            addr_funcs_name.append("%s,%s"%(addr,name))

        return addr_funcs_name
    
    def _get_func_name_from_content(self, content):

        func_re = r"([0-9A-Fa-f]+)\s<(\w+)>:"
        funcs_name = re.findall(func_re, content, re.M | re.S)

        addr = int(funcs_name[0][0], 16)
        addr = "%x" % (addr)
        func = funcs_name[0][1]

        addr_func_name = "%s,%s" % (addr, func)

        return addr_func_name
    
    def _get_text_func_content_by_name(self, name):
        text_content = self.text_section_content

        func_addr, func_name = name.split(',')

        func_re = r"%s\s<%s>:.*?\\r\\n\\r\\n" % (func_addr, func_name)
        func_content = re.findall(func_re, text_content, re.M | re.S)

        return func_content[0]
    
    def _get_func_calls_by_name(self, name):
        func_content = self._get_text_func_content_by_name(name)

        call_re = r"([0-9A-Fa-f]+)\s<(\w+)>\\r\\n"
        calls = re.findall(call_re, func_content, re.M | re.S)

        addr_func_calls = []
        for addr, fname in calls:
            addr = int(addr, 16)
            addr = "%x" % (addr)
            addr_func_calls.append("%s,%s"%(addr, fname))

        return addr_func_calls
    
    def _get_func_calls(self, content):
        call_re = r"([0-9A-Fa-f]+)\s<(\w+)>\\r\\n"
        all_calls = re.findall(call_re, content, re.M | re.S)

        calls = []
        for addr, name in all_calls:
            addr = int(addr, 16)
            addr = "%x" % (addr)
            calls.append("%s,%s"%(addr, name))

        return calls

    def _get_all_func_calls(self):
        func_calls = {}

        funcs_content_re = r"\w+\s<\w+>:.*?\\r\\n\\r\\n"
        funcs_content = re.findall(funcs_content_re, self.text_section_content, re.M | re.S)
        index = 1
        total = len(funcs_content)
        for func_content in funcs_content:
            func = self._get_func_name_from_content(func_content)
            calls = self._get_func_calls(func_content)

            func_calls[func] = calls

            logging.debug("%d/%d %s %s" % (index, total, func, calls))
            index += 1
        
        return func_calls
    
    def _get_call_roots(self):
        called_dict = {}
        for func in self.func_calls.keys():
            for call in self.func_calls[func]:
                if call not in called_dict:
                    called_dict[call] = True
        
        call_root = []
        for func in self.func_calls.keys():
            if func not in called_dict:
                call_root.append(func)
        
        return call_root
    
    def _dfs_build(self, level, func):
        if func == None:
            return
        
        # reach max depth
        if level >= self.deepth:
            return
        
        if func not in self.func_calls:
            return
        
        for sub_func in self.func_calls[func]:
            if level > 50:
                logging.debug("callgraph %d %s" % (level+1, sub_func))
            self.queue.append((level+1, self._output_func_name(sub_func)))
            self._dfs_build(level+1, sub_func)

        return
        
    def _build_callgraph(self):
        # here we use a recurisve to create a callgraph
        for root_func in self.call_roots:
            logging.debug("callgraph %d %s" % (1, root_func))
            self.queue.append((1, self._output_func_name(root_func)))
            self._dfs_build(1, root_func)

    # in the class, we use the addr,name to distinguish funcs.
    # but this is not user friendly, so we use name#index to represent different funcs.
    def _output_func_name_add(self, internal_name):
        addr, name = internal_name.split(',')

        value_list = [self.output_funcs_name[key] for key in self.output_funcs_name.keys()]

        count = value_list.count(name)
        if count == 0:
            self.output_funcs_name[internal_name] = name
        else:
            for i in range(2, len(value_list)):
                name_index = name + '#' + str(i)
                count = value_list.count(name_index)
                if count != 0:
                    continue

                self.output_funcs_name[internal_name] = name_index
                break

    def _output_func_name(self, internal_name):
        return self.output_funcs_name[internal_name]

if __name__ == "__main__":

    # arg parse
    parser = argparse.ArgumentParser(description="Generate Callgraph!")
    parser.add_argument('file', type=str, metavar='file', help="Input file path, elf or asm file")
    parser.add_argument('-o', '--output', type=str, help="Output callgraph file path")
    parser.add_argument('-d', '--deepth', type=int, default=10, help="Call deepth for callgraph, default is 10, optional!")
    parser.add_argument('-c', '--call_roots', type=str, help="Specify the call roots you want generate, default will generate all. Optional! eg: -c func1,func2,func3")
    parser.add_argument('-f', '--filter', type=str, help="Skip the calls you don't need, default won't skip. Optional! eg: -f func1,func2,func3")
    parser.add_argument('-s', '--code_section', type=str, default=".text", help="Specify the code section name if it is not default \".text\". Optional!")
    parser.add_argument('-r', '--remove_duplicate', type=int, default=0, help="Remove duplicate calls from callgraph, 1 to open. Optional!")
    parser.add_argument('-i', '--info', type=int, default=0, help="Whether show the debug info, 1 to open")
    args = parser.parse_args()

    if args.info > 0:
        logging.basicConfig(level=logging.DEBUG)
    else:
        logging.basicConfig(level=logging.INFO)

    # process args

    if args.file[-2:] == '.s':
        elf_path = None
        asm_path = args.file
    else:
        elf_path = args.file
        asm_path = os.path.basename(elf_path).split('.')[0] + ".s"

    if args.output != None:
        graph_path = args.output
    else:
        graph_path = os.path.basename(asm_path).split('.')[0] + ".pu"

    if args.call_roots == None:
        call_roots = []
    else:
        call_roots = args.call_roots.split(',')

    if args.filter == None:
        filter = []
    else:
        filter = args.filter.split(',')

    code_section_name = args.code_section

    remove_duplicate = args.remove_duplicate

    if elf_path != None:
        print("Generate Disassembly:")
        os.system("arm-none-eabi-objdump -D -z -j %s %s > %s" % (code_section_name, elf_path, asm_path))
        print("Generate Disassembly Complete!")

    print("Generate Callgraph:")
    callgraph = Callgraph(asm_path, args.deepth, remove_duplicate, call_roots, filter)
    print("Generate Callgraph Complete!")

    # output the call graph as PlantUML Mindmap file

    print("Generate PlanUML Mindmap:")
    graph = open(graph_path, 'w')

    graph.write("@startmindmap\n")
    for node in callgraph.queue:
        level, func = node
        graph.write("%s %s\n" % ("*" * level, func))
    graph.write("@endmindmap\n")

    graph.close()
    print("Generate PlanUML Mindmap Complete!")
