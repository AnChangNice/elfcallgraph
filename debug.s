
.\debug.elf:     file format elf32-littlearm


Disassembly of section .text:

0800010c <deregister_tm_clones>:
 800010c:	4803      	ldr	r0, [pc, #12]	; (800011c <deregister_tm_clones+0x10>)
 800010e:	4b04      	ldr	r3, [pc, #16]	; (8000120 <deregister_tm_clones+0x14>)
 8000110:	4283      	cmp	r3, r0
 8000112:	d002      	beq.n	800011a <deregister_tm_clones+0xe>
 8000114:	4b03      	ldr	r3, [pc, #12]	; (8000124 <deregister_tm_clones+0x18>)
 8000116:	b103      	cbz	r3, 800011a <deregister_tm_clones+0xe>
 8000118:	4718      	bx	r3
 800011a:	4770      	bx	lr
 800011c:	2000000c 	andcs	r0, r0, ip
 8000120:	2000000c 	andcs	r0, r0, ip
 8000124:	00000000 	andeq	r0, r0, r0

08000128 <register_tm_clones>:
 8000128:	4805      	ldr	r0, [pc, #20]	; (8000140 <register_tm_clones+0x18>)
 800012a:	4b06      	ldr	r3, [pc, #24]	; (8000144 <register_tm_clones+0x1c>)
 800012c:	1a1b      	subs	r3, r3, r0
 800012e:	0fd9      	lsrs	r1, r3, #31
 8000130:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 8000134:	1049      	asrs	r1, r1, #1
 8000136:	d002      	beq.n	800013e <register_tm_clones+0x16>
 8000138:	4b03      	ldr	r3, [pc, #12]	; (8000148 <register_tm_clones+0x20>)
 800013a:	b103      	cbz	r3, 800013e <register_tm_clones+0x16>
 800013c:	4718      	bx	r3
 800013e:	4770      	bx	lr
 8000140:	2000000c 	andcs	r0, r0, ip
 8000144:	2000000c 	andcs	r0, r0, ip
 8000148:	00000000 	andeq	r0, r0, r0

0800014c <__do_global_dtors_aux>:
 800014c:	b510      	push	{r4, lr}
 800014e:	4c06      	ldr	r4, [pc, #24]	; (8000168 <__do_global_dtors_aux+0x1c>)
 8000150:	7823      	ldrb	r3, [r4, #0]
 8000152:	b943      	cbnz	r3, 8000166 <__do_global_dtors_aux+0x1a>
 8000154:	f7ff ffda 	bl	800010c <deregister_tm_clones>
 8000158:	4b04      	ldr	r3, [pc, #16]	; (800016c <__do_global_dtors_aux+0x20>)
 800015a:	b113      	cbz	r3, 8000162 <__do_global_dtors_aux+0x16>
 800015c:	4804      	ldr	r0, [pc, #16]	; (8000170 <__do_global_dtors_aux+0x24>)
 800015e:	f3af 8000 	nop.w
 8000162:	2301      	movs	r3, #1
 8000164:	7023      	strb	r3, [r4, #0]
 8000166:	bd10      	pop	{r4, pc}
 8000168:	2000000c 	andcs	r0, r0, ip
 800016c:	00000000 	andeq	r0, r0, r0
 8000170:	08000db0 	stmdaeq	r0, {r4, r5, r7, r8, sl, fp}

08000174 <frame_dummy>:
 8000174:	b508      	push	{r3, lr}
 8000176:	4b05      	ldr	r3, [pc, #20]	; (800018c <frame_dummy+0x18>)
 8000178:	b11b      	cbz	r3, 8000182 <frame_dummy+0xe>
 800017a:	4905      	ldr	r1, [pc, #20]	; (8000190 <frame_dummy+0x1c>)
 800017c:	4805      	ldr	r0, [pc, #20]	; (8000194 <frame_dummy+0x20>)
 800017e:	f3af 8000 	nop.w
 8000182:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000186:	f7ff bfcf 	b.w	8000128 <register_tm_clones>
 800018a:	bf00      	nop
 800018c:	00000000 	andeq	r0, r0, r0
 8000190:	20000010 	andcs	r0, r0, r0, lsl r0
 8000194:	08000db0 	stmdaeq	r0, {r4, r5, r7, r8, sl, fp}

08000198 <MX_GPIO_Init>:
 8000198:	b530      	push	{r4, r5, lr}
 800019a:	b089      	sub	sp, #36	; 0x24
 800019c:	2400      	movs	r4, #0
 800019e:	9404      	str	r4, [sp, #16]
 80001a0:	9405      	str	r4, [sp, #20]
 80001a2:	9406      	str	r4, [sp, #24]
 80001a4:	9407      	str	r4, [sp, #28]
 80001a6:	4b18      	ldr	r3, [pc, #96]	; (8000208 <MX_GPIO_Init+0x70>)
 80001a8:	699a      	ldr	r2, [r3, #24]
 80001aa:	f042 0210 	orr.w	r2, r2, #16
 80001ae:	619a      	str	r2, [r3, #24]
 80001b0:	699a      	ldr	r2, [r3, #24]
 80001b2:	f002 0210 	and.w	r2, r2, #16
 80001b6:	9201      	str	r2, [sp, #4]
 80001b8:	9a01      	ldr	r2, [sp, #4]
 80001ba:	699a      	ldr	r2, [r3, #24]
 80001bc:	f042 0220 	orr.w	r2, r2, #32
 80001c0:	619a      	str	r2, [r3, #24]
 80001c2:	699a      	ldr	r2, [r3, #24]
 80001c4:	f002 0220 	and.w	r2, r2, #32
 80001c8:	9202      	str	r2, [sp, #8]
 80001ca:	9a02      	ldr	r2, [sp, #8]
 80001cc:	699a      	ldr	r2, [r3, #24]
 80001ce:	f042 0204 	orr.w	r2, r2, #4
 80001d2:	619a      	str	r2, [r3, #24]
 80001d4:	699b      	ldr	r3, [r3, #24]
 80001d6:	f003 0304 	and.w	r3, r3, #4
 80001da:	9303      	str	r3, [sp, #12]
 80001dc:	9b03      	ldr	r3, [sp, #12]
 80001de:	4d0b      	ldr	r5, [pc, #44]	; (800020c <MX_GPIO_Init+0x74>)
 80001e0:	4622      	mov	r2, r4
 80001e2:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80001e6:	4628      	mov	r0, r5
 80001e8:	f000 fd1e 	bl	8000c28 <HAL_GPIO_WritePin>
 80001ec:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80001f0:	9304      	str	r3, [sp, #16]
 80001f2:	2301      	movs	r3, #1
 80001f4:	9305      	str	r3, [sp, #20]
 80001f6:	9406      	str	r4, [sp, #24]
 80001f8:	2302      	movs	r3, #2
 80001fa:	9307      	str	r3, [sp, #28]
 80001fc:	a904      	add	r1, sp, #16
 80001fe:	4628      	mov	r0, r5
 8000200:	f000 fc04 	bl	8000a0c <HAL_GPIO_Init>
 8000204:	b009      	add	sp, #36	; 0x24
 8000206:	bd30      	pop	{r4, r5, pc}
 8000208:	40021000 	andmi	r1, r2, r0
 800020c:	40011000 	andmi	r1, r1, r0

08000210 <my_function>:
 8000210:	b510      	push	{r4, lr}
 8000212:	4c0a      	ldr	r4, [pc, #40]	; (800023c <my_function+0x2c>)
 8000214:	2201      	movs	r2, #1
 8000216:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800021a:	4620      	mov	r0, r4
 800021c:	f000 fd04 	bl	8000c28 <HAL_GPIO_WritePin>
 8000220:	2064      	movs	r0, #100	; 0x64
 8000222:	f000 f8e1 	bl	80003e8 <HAL_Delay>
 8000226:	2200      	movs	r2, #0
 8000228:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800022c:	4620      	mov	r0, r4
 800022e:	f000 fcfb 	bl	8000c28 <HAL_GPIO_WritePin>
 8000232:	2064      	movs	r0, #100	; 0x64
 8000234:	f000 f8d8 	bl	80003e8 <HAL_Delay>
 8000238:	bd10      	pop	{r4, pc}
 800023a:	bf00      	nop
 800023c:	40011000 	andmi	r1, r1, r0

08000240 <Error_Handler>:
 8000240:	b672      	cpsid	i
 8000242:	e7fe      	b.n	8000242 <Error_Handler+0x2>

08000244 <SystemClock_Config>:
 8000244:	b500      	push	{lr}
 8000246:	b091      	sub	sp, #68	; 0x44
 8000248:	2228      	movs	r2, #40	; 0x28
 800024a:	2100      	movs	r1, #0
 800024c:	a806      	add	r0, sp, #24
 800024e:	f000 fd82 	bl	8000d56 <memset>
 8000252:	2300      	movs	r3, #0
 8000254:	9301      	str	r3, [sp, #4]
 8000256:	9302      	str	r3, [sp, #8]
 8000258:	9303      	str	r3, [sp, #12]
 800025a:	9304      	str	r3, [sp, #16]
 800025c:	9305      	str	r3, [sp, #20]
 800025e:	2201      	movs	r2, #1
 8000260:	9206      	str	r2, [sp, #24]
 8000262:	f44f 3380 	mov.w	r3, #65536	; 0x10000
 8000266:	9307      	str	r3, [sp, #28]
 8000268:	920a      	str	r2, [sp, #40]	; 0x28
 800026a:	2202      	movs	r2, #2
 800026c:	920d      	str	r2, [sp, #52]	; 0x34
 800026e:	930e      	str	r3, [sp, #56]	; 0x38
 8000270:	f44f 13e0 	mov.w	r3, #1835008	; 0x1c0000
 8000274:	930f      	str	r3, [sp, #60]	; 0x3c
 8000276:	a806      	add	r0, sp, #24
 8000278:	f000 f8e0 	bl	800043c <HAL_RCC_OscConfig>
 800027c:	b980      	cbnz	r0, 80002a0 <SystemClock_Config+0x5c>
 800027e:	230f      	movs	r3, #15
 8000280:	9301      	str	r3, [sp, #4]
 8000282:	2102      	movs	r1, #2
 8000284:	9102      	str	r1, [sp, #8]
 8000286:	2300      	movs	r3, #0
 8000288:	9303      	str	r3, [sp, #12]
 800028a:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800028e:	9204      	str	r2, [sp, #16]
 8000290:	9305      	str	r3, [sp, #20]
 8000292:	a801      	add	r0, sp, #4
 8000294:	f000 fb04 	bl	80008a0 <HAL_RCC_ClockConfig>
 8000298:	b920      	cbnz	r0, 80002a4 <SystemClock_Config+0x60>
 800029a:	b011      	add	sp, #68	; 0x44
 800029c:	f85d fb04 	ldr.w	pc, [sp], #4
 80002a0:	f7ff ffce 	bl	8000240 <Error_Handler>
 80002a4:	f7ff ffcc 	bl	8000240 <Error_Handler>

080002a8 <main>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f000 f879 	bl	80003a0 <HAL_Init>
 80002ae:	f7ff ffc9 	bl	8000244 <SystemClock_Config>
 80002b2:	f7ff ff71 	bl	8000198 <MX_GPIO_Init>
 80002b6:	f7ff ffab 	bl	8000210 <my_function>
 80002ba:	e7fc      	b.n	80002b6 <main+0xe>

080002bc <my_function>:
 80002bc:	b508      	push	{r3, lr}
 80002be:	2201      	movs	r2, #1
 80002c0:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80002c4:	4803      	ldr	r0, [pc, #12]	; (80002d4 <my_function+0x18>)
 80002c6:	f000 fcaf 	bl	8000c28 <HAL_GPIO_WritePin>
 80002ca:	2064      	movs	r0, #100	; 0x64
 80002cc:	f000 f88c 	bl	80003e8 <HAL_Delay>
 80002d0:	bd08      	pop	{r3, pc}
 80002d2:	bf00      	nop
 80002d4:	40011000 	andmi	r1, r1, r0

080002d8 <NMI_Handler>:
 80002d8:	e7fe      	b.n	80002d8 <NMI_Handler>

080002da <HardFault_Handler>:
 80002da:	e7fe      	b.n	80002da <HardFault_Handler>

080002dc <MemManage_Handler>:
 80002dc:	e7fe      	b.n	80002dc <MemManage_Handler>

080002de <BusFault_Handler>:
 80002de:	e7fe      	b.n	80002de <BusFault_Handler>

080002e0 <UsageFault_Handler>:
 80002e0:	e7fe      	b.n	80002e0 <UsageFault_Handler>

080002e2 <SVC_Handler>:
 80002e2:	4770      	bx	lr

080002e4 <DebugMon_Handler>:
 80002e4:	4770      	bx	lr

080002e6 <PendSV_Handler>:
 80002e6:	4770      	bx	lr

080002e8 <SysTick_Handler>:
 80002e8:	b508      	push	{r3, lr}
 80002ea:	f000 f86b 	bl	80003c4 <HAL_IncTick>
 80002ee:	f7ff ffe5 	bl	80002bc <my_function>
 80002f2:	bd08      	pop	{r3, pc}

080002f4 <my_function>:
 80002f4:	b508      	push	{r3, lr}
 80002f6:	2201      	movs	r2, #1
 80002f8:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80002fc:	4801      	ldr	r0, [pc, #4]	; (8000304 <my_function+0x10>)
 80002fe:	f000 fc93 	bl	8000c28 <HAL_GPIO_WritePin>
 8000302:	bd08      	pop	{r3, pc}
 8000304:	40011000 	andmi	r1, r1, r0

08000308 <HAL_MspInit>:
 8000308:	b500      	push	{lr}
 800030a:	b083      	sub	sp, #12
 800030c:	4b0f      	ldr	r3, [pc, #60]	; (800034c <HAL_MspInit+0x44>)
 800030e:	699a      	ldr	r2, [r3, #24]
 8000310:	f042 0201 	orr.w	r2, r2, #1
 8000314:	619a      	str	r2, [r3, #24]
 8000316:	699a      	ldr	r2, [r3, #24]
 8000318:	f002 0201 	and.w	r2, r2, #1
 800031c:	9200      	str	r2, [sp, #0]
 800031e:	9a00      	ldr	r2, [sp, #0]
 8000320:	69da      	ldr	r2, [r3, #28]
 8000322:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8000326:	61da      	str	r2, [r3, #28]
 8000328:	69db      	ldr	r3, [r3, #28]
 800032a:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800032e:	9301      	str	r3, [sp, #4]
 8000330:	9b01      	ldr	r3, [sp, #4]
 8000332:	4a07      	ldr	r2, [pc, #28]	; (8000350 <HAL_MspInit+0x48>)
 8000334:	6853      	ldr	r3, [r2, #4]
 8000336:	f023 63e0 	bic.w	r3, r3, #117440512	; 0x7000000
 800033a:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 800033e:	6053      	str	r3, [r2, #4]
 8000340:	f7ff ffd8 	bl	80002f4 <my_function>
 8000344:	b003      	add	sp, #12
 8000346:	f85d fb04 	ldr.w	pc, [sp], #4
 800034a:	bf00      	nop
 800034c:	40021000 	andmi	r1, r2, r0
 8000350:	40010000 	andmi	r0, r1, r0

08000354 <HAL_InitTick>:
 8000354:	b510      	push	{r4, lr}
 8000356:	4604      	mov	r4, r0
 8000358:	4b0e      	ldr	r3, [pc, #56]	; (8000394 <HAL_InitTick+0x40>)
 800035a:	781a      	ldrb	r2, [r3, #0]
 800035c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000360:	fbb3 f3f2 	udiv	r3, r3, r2
 8000364:	4a0c      	ldr	r2, [pc, #48]	; (8000398 <HAL_InitTick+0x44>)
 8000366:	6810      	ldr	r0, [r2, #0]
 8000368:	fbb0 f0f3 	udiv	r0, r0, r3
 800036c:	f000 fcb8 	bl	8000ce0 <HAL_SYSTICK_Config>
 8000370:	b968      	cbnz	r0, 800038e <HAL_InitTick+0x3a>
 8000372:	2c0f      	cmp	r4, #15
 8000374:	d901      	bls.n	800037a <HAL_InitTick+0x26>
 8000376:	2001      	movs	r0, #1
 8000378:	e00a      	b.n	8000390 <HAL_InitTick+0x3c>
 800037a:	2200      	movs	r2, #0
 800037c:	4621      	mov	r1, r4
 800037e:	f04f 30ff 	mov.w	r0, #4294967295
 8000382:	f000 fc9d 	bl	8000cc0 <HAL_NVIC_SetPriority>
 8000386:	4b05      	ldr	r3, [pc, #20]	; (800039c <HAL_InitTick+0x48>)
 8000388:	601c      	str	r4, [r3, #0]
 800038a:	2000      	movs	r0, #0
 800038c:	e000      	b.n	8000390 <HAL_InitTick+0x3c>
 800038e:	2001      	movs	r0, #1
 8000390:	bd10      	pop	{r4, pc}
 8000392:	bf00      	nop
 8000394:	20000000 	andcs	r0, r0, r0
 8000398:	20000008 	andcs	r0, r0, r8
 800039c:	20000004 	andcs	r0, r0, r4

080003a0 <HAL_Init>:
 80003a0:	b508      	push	{r3, lr}
 80003a2:	4a07      	ldr	r2, [pc, #28]	; (80003c0 <HAL_Init+0x20>)
 80003a4:	6813      	ldr	r3, [r2, #0]
 80003a6:	f043 0310 	orr.w	r3, r3, #16
 80003aa:	6013      	str	r3, [r2, #0]
 80003ac:	2003      	movs	r0, #3
 80003ae:	f000 fc75 	bl	8000c9c <HAL_NVIC_SetPriorityGrouping>
 80003b2:	200f      	movs	r0, #15
 80003b4:	f7ff ffce 	bl	8000354 <HAL_InitTick>
 80003b8:	f7ff ffa6 	bl	8000308 <HAL_MspInit>
 80003bc:	2000      	movs	r0, #0
 80003be:	bd08      	pop	{r3, pc}
 80003c0:	40022000 	andmi	r2, r2, r0

080003c4 <HAL_IncTick>:
 80003c4:	4a03      	ldr	r2, [pc, #12]	; (80003d4 <HAL_IncTick+0x10>)
 80003c6:	6811      	ldr	r1, [r2, #0]
 80003c8:	4b03      	ldr	r3, [pc, #12]	; (80003d8 <HAL_IncTick+0x14>)
 80003ca:	781b      	ldrb	r3, [r3, #0]
 80003cc:	440b      	add	r3, r1
 80003ce:	6013      	str	r3, [r2, #0]
 80003d0:	4770      	bx	lr
 80003d2:	bf00      	nop
 80003d4:	20000028 	andcs	r0, r0, r8, lsr #32
 80003d8:	20000000 	andcs	r0, r0, r0

080003dc <HAL_GetTick>:
 80003dc:	4b01      	ldr	r3, [pc, #4]	; (80003e4 <HAL_GetTick+0x8>)
 80003de:	6818      	ldr	r0, [r3, #0]
 80003e0:	4770      	bx	lr
 80003e2:	bf00      	nop
 80003e4:	20000028 	andcs	r0, r0, r8, lsr #32

080003e8 <HAL_Delay>:
 80003e8:	b538      	push	{r3, r4, r5, lr}
 80003ea:	4604      	mov	r4, r0
 80003ec:	f7ff fff6 	bl	80003dc <HAL_GetTick>
 80003f0:	4605      	mov	r5, r0
 80003f2:	f1b4 3fff 	cmp.w	r4, #4294967295
 80003f6:	d002      	beq.n	80003fe <HAL_Delay+0x16>
 80003f8:	4b04      	ldr	r3, [pc, #16]	; (800040c <HAL_Delay+0x24>)
 80003fa:	781b      	ldrb	r3, [r3, #0]
 80003fc:	441c      	add	r4, r3
 80003fe:	f7ff ffed 	bl	80003dc <HAL_GetTick>
 8000402:	1b40      	subs	r0, r0, r5
 8000404:	42a0      	cmp	r0, r4
 8000406:	d3fa      	bcc.n	80003fe <HAL_Delay+0x16>
 8000408:	bd38      	pop	{r3, r4, r5, pc}
 800040a:	bf00      	nop
 800040c:	20000000 	andcs	r0, r0, r0

08000410 <RCC_Delay>:
 8000410:	b082      	sub	sp, #8
 8000412:	4b08      	ldr	r3, [pc, #32]	; (8000434 <RCC_Delay+0x24>)
 8000414:	681b      	ldr	r3, [r3, #0]
 8000416:	4a08      	ldr	r2, [pc, #32]	; (8000438 <RCC_Delay+0x28>)
 8000418:	fba2 2303 	umull	r2, r3, r2, r3
 800041c:	0a5b      	lsrs	r3, r3, #9
 800041e:	fb00 f303 	mul.w	r3, r0, r3
 8000422:	9301      	str	r3, [sp, #4]
 8000424:	bf00      	nop
 8000426:	9b01      	ldr	r3, [sp, #4]
 8000428:	1e5a      	subs	r2, r3, #1
 800042a:	9201      	str	r2, [sp, #4]
 800042c:	2b00      	cmp	r3, #0
 800042e:	d1f9      	bne.n	8000424 <RCC_Delay+0x14>
 8000430:	b002      	add	sp, #8
 8000432:	4770      	bx	lr
 8000434:	20000008 	andcs	r0, r0, r8
 8000438:	10624dd3 	ldrdne	r4, [r2], #-211	; 0xffffff2d	; <UNPREDICTABLE>

0800043c <HAL_RCC_OscConfig>:
 800043c:	2800      	cmp	r0, #0
 800043e:	f000 81f1 	beq.w	8000824 <HAL_RCC_OscConfig+0x3e8>
 8000442:	b570      	push	{r4, r5, r6, lr}
 8000444:	b082      	sub	sp, #8
 8000446:	4604      	mov	r4, r0
 8000448:	6803      	ldr	r3, [r0, #0]
 800044a:	f013 0f01 	tst.w	r3, #1
 800044e:	d02c      	beq.n	80004aa <HAL_RCC_OscConfig+0x6e>
 8000450:	4b99      	ldr	r3, [pc, #612]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000452:	685b      	ldr	r3, [r3, #4]
 8000454:	f003 030c 	and.w	r3, r3, #12
 8000458:	2b04      	cmp	r3, #4
 800045a:	d01d      	beq.n	8000498 <HAL_RCC_OscConfig+0x5c>
 800045c:	4b96      	ldr	r3, [pc, #600]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 800045e:	685b      	ldr	r3, [r3, #4]
 8000460:	f003 030c 	and.w	r3, r3, #12
 8000464:	2b08      	cmp	r3, #8
 8000466:	d012      	beq.n	800048e <HAL_RCC_OscConfig+0x52>
 8000468:	6863      	ldr	r3, [r4, #4]
 800046a:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 800046e:	d041      	beq.n	80004f4 <HAL_RCC_OscConfig+0xb8>
 8000470:	2b00      	cmp	r3, #0
 8000472:	d155      	bne.n	8000520 <HAL_RCC_OscConfig+0xe4>
 8000474:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000478:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 800047c:	681a      	ldr	r2, [r3, #0]
 800047e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8000482:	601a      	str	r2, [r3, #0]
 8000484:	681a      	ldr	r2, [r3, #0]
 8000486:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800048a:	601a      	str	r2, [r3, #0]
 800048c:	e037      	b.n	80004fe <HAL_RCC_OscConfig+0xc2>
 800048e:	4b8a      	ldr	r3, [pc, #552]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000490:	685b      	ldr	r3, [r3, #4]
 8000492:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8000496:	d0e7      	beq.n	8000468 <HAL_RCC_OscConfig+0x2c>
 8000498:	4b87      	ldr	r3, [pc, #540]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 800049a:	681b      	ldr	r3, [r3, #0]
 800049c:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 80004a0:	d003      	beq.n	80004aa <HAL_RCC_OscConfig+0x6e>
 80004a2:	6863      	ldr	r3, [r4, #4]
 80004a4:	2b00      	cmp	r3, #0
 80004a6:	f000 81bf 	beq.w	8000828 <HAL_RCC_OscConfig+0x3ec>
 80004aa:	6823      	ldr	r3, [r4, #0]
 80004ac:	f013 0f02 	tst.w	r3, #2
 80004b0:	d075      	beq.n	800059e <HAL_RCC_OscConfig+0x162>
 80004b2:	4b81      	ldr	r3, [pc, #516]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80004b4:	685b      	ldr	r3, [r3, #4]
 80004b6:	f013 0f0c 	tst.w	r3, #12
 80004ba:	d05f      	beq.n	800057c <HAL_RCC_OscConfig+0x140>
 80004bc:	4b7e      	ldr	r3, [pc, #504]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80004be:	685b      	ldr	r3, [r3, #4]
 80004c0:	f003 030c 	and.w	r3, r3, #12
 80004c4:	2b08      	cmp	r3, #8
 80004c6:	d054      	beq.n	8000572 <HAL_RCC_OscConfig+0x136>
 80004c8:	6923      	ldr	r3, [r4, #16]
 80004ca:	2b00      	cmp	r3, #0
 80004cc:	f000 808a 	beq.w	80005e4 <HAL_RCC_OscConfig+0x1a8>
 80004d0:	4b7a      	ldr	r3, [pc, #488]	; (80006bc <HAL_RCC_OscConfig+0x280>)
 80004d2:	2201      	movs	r2, #1
 80004d4:	601a      	str	r2, [r3, #0]
 80004d6:	f7ff ff81 	bl	80003dc <HAL_GetTick>
 80004da:	4605      	mov	r5, r0
 80004dc:	4b76      	ldr	r3, [pc, #472]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80004de:	681b      	ldr	r3, [r3, #0]
 80004e0:	f013 0f02 	tst.w	r3, #2
 80004e4:	d175      	bne.n	80005d2 <HAL_RCC_OscConfig+0x196>
 80004e6:	f7ff ff79 	bl	80003dc <HAL_GetTick>
 80004ea:	1b40      	subs	r0, r0, r5
 80004ec:	2802      	cmp	r0, #2
 80004ee:	d9f5      	bls.n	80004dc <HAL_RCC_OscConfig+0xa0>
 80004f0:	2003      	movs	r0, #3
 80004f2:	e19e      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 80004f4:	4a70      	ldr	r2, [pc, #448]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80004f6:	6813      	ldr	r3, [r2, #0]
 80004f8:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80004fc:	6013      	str	r3, [r2, #0]
 80004fe:	6863      	ldr	r3, [r4, #4]
 8000500:	b343      	cbz	r3, 8000554 <HAL_RCC_OscConfig+0x118>
 8000502:	f7ff ff6b 	bl	80003dc <HAL_GetTick>
 8000506:	4605      	mov	r5, r0
 8000508:	4b6b      	ldr	r3, [pc, #428]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 800050a:	681b      	ldr	r3, [r3, #0]
 800050c:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000510:	d1cb      	bne.n	80004aa <HAL_RCC_OscConfig+0x6e>
 8000512:	f7ff ff63 	bl	80003dc <HAL_GetTick>
 8000516:	1b40      	subs	r0, r0, r5
 8000518:	2864      	cmp	r0, #100	; 0x64
 800051a:	d9f5      	bls.n	8000508 <HAL_RCC_OscConfig+0xcc>
 800051c:	2003      	movs	r0, #3
 800051e:	e188      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000520:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 8000524:	d009      	beq.n	800053a <HAL_RCC_OscConfig+0xfe>
 8000526:	4b64      	ldr	r3, [pc, #400]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000528:	681a      	ldr	r2, [r3, #0]
 800052a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800052e:	601a      	str	r2, [r3, #0]
 8000530:	681a      	ldr	r2, [r3, #0]
 8000532:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8000536:	601a      	str	r2, [r3, #0]
 8000538:	e7e1      	b.n	80004fe <HAL_RCC_OscConfig+0xc2>
 800053a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800053e:	f5a3 333c 	sub.w	r3, r3, #192512	; 0x2f000
 8000542:	681a      	ldr	r2, [r3, #0]
 8000544:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 8000548:	601a      	str	r2, [r3, #0]
 800054a:	681a      	ldr	r2, [r3, #0]
 800054c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000550:	601a      	str	r2, [r3, #0]
 8000552:	e7d4      	b.n	80004fe <HAL_RCC_OscConfig+0xc2>
 8000554:	f7ff ff42 	bl	80003dc <HAL_GetTick>
 8000558:	4605      	mov	r5, r0
 800055a:	4b57      	ldr	r3, [pc, #348]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 800055c:	681b      	ldr	r3, [r3, #0]
 800055e:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000562:	d0a2      	beq.n	80004aa <HAL_RCC_OscConfig+0x6e>
 8000564:	f7ff ff3a 	bl	80003dc <HAL_GetTick>
 8000568:	1b40      	subs	r0, r0, r5
 800056a:	2864      	cmp	r0, #100	; 0x64
 800056c:	d9f5      	bls.n	800055a <HAL_RCC_OscConfig+0x11e>
 800056e:	2003      	movs	r0, #3
 8000570:	e15f      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000572:	4b51      	ldr	r3, [pc, #324]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000574:	685b      	ldr	r3, [r3, #4]
 8000576:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800057a:	d1a5      	bne.n	80004c8 <HAL_RCC_OscConfig+0x8c>
 800057c:	4b4e      	ldr	r3, [pc, #312]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 800057e:	681b      	ldr	r3, [r3, #0]
 8000580:	f013 0f02 	tst.w	r3, #2
 8000584:	d003      	beq.n	800058e <HAL_RCC_OscConfig+0x152>
 8000586:	6923      	ldr	r3, [r4, #16]
 8000588:	2b01      	cmp	r3, #1
 800058a:	f040 814f 	bne.w	800082c <HAL_RCC_OscConfig+0x3f0>
 800058e:	4a4a      	ldr	r2, [pc, #296]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000590:	6813      	ldr	r3, [r2, #0]
 8000592:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 8000596:	6961      	ldr	r1, [r4, #20]
 8000598:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 800059c:	6013      	str	r3, [r2, #0]
 800059e:	6823      	ldr	r3, [r4, #0]
 80005a0:	f013 0f08 	tst.w	r3, #8
 80005a4:	d033      	beq.n	800060e <HAL_RCC_OscConfig+0x1d2>
 80005a6:	69a3      	ldr	r3, [r4, #24]
 80005a8:	2b00      	cmp	r3, #0
 80005aa:	d05c      	beq.n	8000666 <HAL_RCC_OscConfig+0x22a>
 80005ac:	4b43      	ldr	r3, [pc, #268]	; (80006bc <HAL_RCC_OscConfig+0x280>)
 80005ae:	2201      	movs	r2, #1
 80005b0:	f8c3 2480 	str.w	r2, [r3, #1152]	; 0x480
 80005b4:	f7ff ff12 	bl	80003dc <HAL_GetTick>
 80005b8:	4605      	mov	r5, r0
 80005ba:	4b3f      	ldr	r3, [pc, #252]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80005bc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80005be:	f013 0f02 	tst.w	r3, #2
 80005c2:	d121      	bne.n	8000608 <HAL_RCC_OscConfig+0x1cc>
 80005c4:	f7ff ff0a 	bl	80003dc <HAL_GetTick>
 80005c8:	1b40      	subs	r0, r0, r5
 80005ca:	2802      	cmp	r0, #2
 80005cc:	d9f5      	bls.n	80005ba <HAL_RCC_OscConfig+0x17e>
 80005ce:	2003      	movs	r0, #3
 80005d0:	e12f      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 80005d2:	4a39      	ldr	r2, [pc, #228]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80005d4:	6813      	ldr	r3, [r2, #0]
 80005d6:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 80005da:	6961      	ldr	r1, [r4, #20]
 80005dc:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 80005e0:	6013      	str	r3, [r2, #0]
 80005e2:	e7dc      	b.n	800059e <HAL_RCC_OscConfig+0x162>
 80005e4:	4b35      	ldr	r3, [pc, #212]	; (80006bc <HAL_RCC_OscConfig+0x280>)
 80005e6:	2200      	movs	r2, #0
 80005e8:	601a      	str	r2, [r3, #0]
 80005ea:	f7ff fef7 	bl	80003dc <HAL_GetTick>
 80005ee:	4605      	mov	r5, r0
 80005f0:	4b31      	ldr	r3, [pc, #196]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 80005f2:	681b      	ldr	r3, [r3, #0]
 80005f4:	f013 0f02 	tst.w	r3, #2
 80005f8:	d0d1      	beq.n	800059e <HAL_RCC_OscConfig+0x162>
 80005fa:	f7ff feef 	bl	80003dc <HAL_GetTick>
 80005fe:	1b40      	subs	r0, r0, r5
 8000600:	2802      	cmp	r0, #2
 8000602:	d9f5      	bls.n	80005f0 <HAL_RCC_OscConfig+0x1b4>
 8000604:	2003      	movs	r0, #3
 8000606:	e114      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000608:	2001      	movs	r0, #1
 800060a:	f7ff ff01 	bl	8000410 <RCC_Delay>
 800060e:	6823      	ldr	r3, [r4, #0]
 8000610:	f013 0f04 	tst.w	r3, #4
 8000614:	f000 8096 	beq.w	8000744 <HAL_RCC_OscConfig+0x308>
 8000618:	4b27      	ldr	r3, [pc, #156]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 800061a:	69db      	ldr	r3, [r3, #28]
 800061c:	f013 5f80 	tst.w	r3, #268435456	; 0x10000000
 8000620:	d134      	bne.n	800068c <HAL_RCC_OscConfig+0x250>
 8000622:	4b25      	ldr	r3, [pc, #148]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000624:	69da      	ldr	r2, [r3, #28]
 8000626:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 800062a:	61da      	str	r2, [r3, #28]
 800062c:	69db      	ldr	r3, [r3, #28]
 800062e:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000632:	9301      	str	r3, [sp, #4]
 8000634:	9b01      	ldr	r3, [sp, #4]
 8000636:	2501      	movs	r5, #1
 8000638:	4b21      	ldr	r3, [pc, #132]	; (80006c0 <HAL_RCC_OscConfig+0x284>)
 800063a:	681b      	ldr	r3, [r3, #0]
 800063c:	f413 7f80 	tst.w	r3, #256	; 0x100
 8000640:	d026      	beq.n	8000690 <HAL_RCC_OscConfig+0x254>
 8000642:	68e3      	ldr	r3, [r4, #12]
 8000644:	2b01      	cmp	r3, #1
 8000646:	d03d      	beq.n	80006c4 <HAL_RCC_OscConfig+0x288>
 8000648:	2b00      	cmp	r3, #0
 800064a:	d153      	bne.n	80006f4 <HAL_RCC_OscConfig+0x2b8>
 800064c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000650:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 8000654:	6a1a      	ldr	r2, [r3, #32]
 8000656:	f022 0201 	bic.w	r2, r2, #1
 800065a:	621a      	str	r2, [r3, #32]
 800065c:	6a1a      	ldr	r2, [r3, #32]
 800065e:	f022 0204 	bic.w	r2, r2, #4
 8000662:	621a      	str	r2, [r3, #32]
 8000664:	e033      	b.n	80006ce <HAL_RCC_OscConfig+0x292>
 8000666:	4b15      	ldr	r3, [pc, #84]	; (80006bc <HAL_RCC_OscConfig+0x280>)
 8000668:	2200      	movs	r2, #0
 800066a:	f8c3 2480 	str.w	r2, [r3, #1152]	; 0x480
 800066e:	f7ff feb5 	bl	80003dc <HAL_GetTick>
 8000672:	4605      	mov	r5, r0
 8000674:	4b10      	ldr	r3, [pc, #64]	; (80006b8 <HAL_RCC_OscConfig+0x27c>)
 8000676:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000678:	f013 0f02 	tst.w	r3, #2
 800067c:	d0c7      	beq.n	800060e <HAL_RCC_OscConfig+0x1d2>
 800067e:	f7ff fead 	bl	80003dc <HAL_GetTick>
 8000682:	1b40      	subs	r0, r0, r5
 8000684:	2802      	cmp	r0, #2
 8000686:	d9f5      	bls.n	8000674 <HAL_RCC_OscConfig+0x238>
 8000688:	2003      	movs	r0, #3
 800068a:	e0d2      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 800068c:	2500      	movs	r5, #0
 800068e:	e7d3      	b.n	8000638 <HAL_RCC_OscConfig+0x1fc>
 8000690:	4a0b      	ldr	r2, [pc, #44]	; (80006c0 <HAL_RCC_OscConfig+0x284>)
 8000692:	6813      	ldr	r3, [r2, #0]
 8000694:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000698:	6013      	str	r3, [r2, #0]
 800069a:	f7ff fe9f 	bl	80003dc <HAL_GetTick>
 800069e:	4606      	mov	r6, r0
 80006a0:	4b07      	ldr	r3, [pc, #28]	; (80006c0 <HAL_RCC_OscConfig+0x284>)
 80006a2:	681b      	ldr	r3, [r3, #0]
 80006a4:	f413 7f80 	tst.w	r3, #256	; 0x100
 80006a8:	d1cb      	bne.n	8000642 <HAL_RCC_OscConfig+0x206>
 80006aa:	f7ff fe97 	bl	80003dc <HAL_GetTick>
 80006ae:	1b80      	subs	r0, r0, r6
 80006b0:	2864      	cmp	r0, #100	; 0x64
 80006b2:	d9f5      	bls.n	80006a0 <HAL_RCC_OscConfig+0x264>
 80006b4:	2003      	movs	r0, #3
 80006b6:	e0bc      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 80006b8:	40021000 	andmi	r1, r2, r0
 80006bc:	42420000 	submi	r0, r2, #0
 80006c0:	40007000 	andmi	r7, r0, r0
 80006c4:	4a5f      	ldr	r2, [pc, #380]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 80006c6:	6a13      	ldr	r3, [r2, #32]
 80006c8:	f043 0301 	orr.w	r3, r3, #1
 80006cc:	6213      	str	r3, [r2, #32]
 80006ce:	68e3      	ldr	r3, [r4, #12]
 80006d0:	b333      	cbz	r3, 8000720 <HAL_RCC_OscConfig+0x2e4>
 80006d2:	f7ff fe83 	bl	80003dc <HAL_GetTick>
 80006d6:	4606      	mov	r6, r0
 80006d8:	4b5a      	ldr	r3, [pc, #360]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 80006da:	6a1b      	ldr	r3, [r3, #32]
 80006dc:	f013 0f02 	tst.w	r3, #2
 80006e0:	d12f      	bne.n	8000742 <HAL_RCC_OscConfig+0x306>
 80006e2:	f7ff fe7b 	bl	80003dc <HAL_GetTick>
 80006e6:	1b80      	subs	r0, r0, r6
 80006e8:	f241 3388 	movw	r3, #5000	; 0x1388
 80006ec:	4298      	cmp	r0, r3
 80006ee:	d9f3      	bls.n	80006d8 <HAL_RCC_OscConfig+0x29c>
 80006f0:	2003      	movs	r0, #3
 80006f2:	e09e      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 80006f4:	2b05      	cmp	r3, #5
 80006f6:	d009      	beq.n	800070c <HAL_RCC_OscConfig+0x2d0>
 80006f8:	4b52      	ldr	r3, [pc, #328]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 80006fa:	6a1a      	ldr	r2, [r3, #32]
 80006fc:	f022 0201 	bic.w	r2, r2, #1
 8000700:	621a      	str	r2, [r3, #32]
 8000702:	6a1a      	ldr	r2, [r3, #32]
 8000704:	f022 0204 	bic.w	r2, r2, #4
 8000708:	621a      	str	r2, [r3, #32]
 800070a:	e7e0      	b.n	80006ce <HAL_RCC_OscConfig+0x292>
 800070c:	4b4d      	ldr	r3, [pc, #308]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 800070e:	6a1a      	ldr	r2, [r3, #32]
 8000710:	f042 0204 	orr.w	r2, r2, #4
 8000714:	621a      	str	r2, [r3, #32]
 8000716:	6a1a      	ldr	r2, [r3, #32]
 8000718:	f042 0201 	orr.w	r2, r2, #1
 800071c:	621a      	str	r2, [r3, #32]
 800071e:	e7d6      	b.n	80006ce <HAL_RCC_OscConfig+0x292>
 8000720:	f7ff fe5c 	bl	80003dc <HAL_GetTick>
 8000724:	4606      	mov	r6, r0
 8000726:	4b47      	ldr	r3, [pc, #284]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 8000728:	6a1b      	ldr	r3, [r3, #32]
 800072a:	f013 0f02 	tst.w	r3, #2
 800072e:	d008      	beq.n	8000742 <HAL_RCC_OscConfig+0x306>
 8000730:	f7ff fe54 	bl	80003dc <HAL_GetTick>
 8000734:	1b80      	subs	r0, r0, r6
 8000736:	f241 3388 	movw	r3, #5000	; 0x1388
 800073a:	4298      	cmp	r0, r3
 800073c:	d9f3      	bls.n	8000726 <HAL_RCC_OscConfig+0x2ea>
 800073e:	2003      	movs	r0, #3
 8000740:	e077      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000742:	b9e5      	cbnz	r5, 800077e <HAL_RCC_OscConfig+0x342>
 8000744:	69e3      	ldr	r3, [r4, #28]
 8000746:	2b00      	cmp	r3, #0
 8000748:	d072      	beq.n	8000830 <HAL_RCC_OscConfig+0x3f4>
 800074a:	4a3e      	ldr	r2, [pc, #248]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 800074c:	6852      	ldr	r2, [r2, #4]
 800074e:	f002 020c 	and.w	r2, r2, #12
 8000752:	2a08      	cmp	r2, #8
 8000754:	d056      	beq.n	8000804 <HAL_RCC_OscConfig+0x3c8>
 8000756:	2b02      	cmp	r3, #2
 8000758:	d017      	beq.n	800078a <HAL_RCC_OscConfig+0x34e>
 800075a:	4b3b      	ldr	r3, [pc, #236]	; (8000848 <HAL_RCC_OscConfig+0x40c>)
 800075c:	2200      	movs	r2, #0
 800075e:	661a      	str	r2, [r3, #96]	; 0x60
 8000760:	f7ff fe3c 	bl	80003dc <HAL_GetTick>
 8000764:	4604      	mov	r4, r0
 8000766:	4b37      	ldr	r3, [pc, #220]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 8000768:	681b      	ldr	r3, [r3, #0]
 800076a:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 800076e:	d047      	beq.n	8000800 <HAL_RCC_OscConfig+0x3c4>
 8000770:	f7ff fe34 	bl	80003dc <HAL_GetTick>
 8000774:	1b00      	subs	r0, r0, r4
 8000776:	2802      	cmp	r0, #2
 8000778:	d9f5      	bls.n	8000766 <HAL_RCC_OscConfig+0x32a>
 800077a:	2003      	movs	r0, #3
 800077c:	e059      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 800077e:	4a31      	ldr	r2, [pc, #196]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 8000780:	69d3      	ldr	r3, [r2, #28]
 8000782:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8000786:	61d3      	str	r3, [r2, #28]
 8000788:	e7dc      	b.n	8000744 <HAL_RCC_OscConfig+0x308>
 800078a:	4b2f      	ldr	r3, [pc, #188]	; (8000848 <HAL_RCC_OscConfig+0x40c>)
 800078c:	2200      	movs	r2, #0
 800078e:	661a      	str	r2, [r3, #96]	; 0x60
 8000790:	f7ff fe24 	bl	80003dc <HAL_GetTick>
 8000794:	4605      	mov	r5, r0
 8000796:	4b2b      	ldr	r3, [pc, #172]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 8000798:	681b      	ldr	r3, [r3, #0]
 800079a:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 800079e:	d006      	beq.n	80007ae <HAL_RCC_OscConfig+0x372>
 80007a0:	f7ff fe1c 	bl	80003dc <HAL_GetTick>
 80007a4:	1b40      	subs	r0, r0, r5
 80007a6:	2802      	cmp	r0, #2
 80007a8:	d9f5      	bls.n	8000796 <HAL_RCC_OscConfig+0x35a>
 80007aa:	2003      	movs	r0, #3
 80007ac:	e041      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 80007ae:	6a23      	ldr	r3, [r4, #32]
 80007b0:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 80007b4:	d01a      	beq.n	80007ec <HAL_RCC_OscConfig+0x3b0>
 80007b6:	4923      	ldr	r1, [pc, #140]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 80007b8:	684b      	ldr	r3, [r1, #4]
 80007ba:	f423 1374 	bic.w	r3, r3, #3997696	; 0x3d0000
 80007be:	6a22      	ldr	r2, [r4, #32]
 80007c0:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80007c2:	4302      	orrs	r2, r0
 80007c4:	4313      	orrs	r3, r2
 80007c6:	604b      	str	r3, [r1, #4]
 80007c8:	4b1f      	ldr	r3, [pc, #124]	; (8000848 <HAL_RCC_OscConfig+0x40c>)
 80007ca:	2201      	movs	r2, #1
 80007cc:	661a      	str	r2, [r3, #96]	; 0x60
 80007ce:	f7ff fe05 	bl	80003dc <HAL_GetTick>
 80007d2:	4604      	mov	r4, r0
 80007d4:	4b1b      	ldr	r3, [pc, #108]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 80007d6:	681b      	ldr	r3, [r3, #0]
 80007d8:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 80007dc:	d10e      	bne.n	80007fc <HAL_RCC_OscConfig+0x3c0>
 80007de:	f7ff fdfd 	bl	80003dc <HAL_GetTick>
 80007e2:	1b00      	subs	r0, r0, r4
 80007e4:	2802      	cmp	r0, #2
 80007e6:	d9f5      	bls.n	80007d4 <HAL_RCC_OscConfig+0x398>
 80007e8:	2003      	movs	r0, #3
 80007ea:	e022      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 80007ec:	4a15      	ldr	r2, [pc, #84]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 80007ee:	6853      	ldr	r3, [r2, #4]
 80007f0:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 80007f4:	68a1      	ldr	r1, [r4, #8]
 80007f6:	430b      	orrs	r3, r1
 80007f8:	6053      	str	r3, [r2, #4]
 80007fa:	e7dc      	b.n	80007b6 <HAL_RCC_OscConfig+0x37a>
 80007fc:	2000      	movs	r0, #0
 80007fe:	e018      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000800:	2000      	movs	r0, #0
 8000802:	e016      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000804:	2b01      	cmp	r3, #1
 8000806:	d016      	beq.n	8000836 <HAL_RCC_OscConfig+0x3fa>
 8000808:	4b0e      	ldr	r3, [pc, #56]	; (8000844 <HAL_RCC_OscConfig+0x408>)
 800080a:	685b      	ldr	r3, [r3, #4]
 800080c:	f403 3180 	and.w	r1, r3, #65536	; 0x10000
 8000810:	6a22      	ldr	r2, [r4, #32]
 8000812:	4291      	cmp	r1, r2
 8000814:	d111      	bne.n	800083a <HAL_RCC_OscConfig+0x3fe>
 8000816:	f403 1370 	and.w	r3, r3, #3932160	; 0x3c0000
 800081a:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800081c:	4293      	cmp	r3, r2
 800081e:	d10e      	bne.n	800083e <HAL_RCC_OscConfig+0x402>
 8000820:	2000      	movs	r0, #0
 8000822:	e006      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000824:	2001      	movs	r0, #1
 8000826:	4770      	bx	lr
 8000828:	2001      	movs	r0, #1
 800082a:	e002      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 800082c:	2001      	movs	r0, #1
 800082e:	e000      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000830:	2000      	movs	r0, #0
 8000832:	b002      	add	sp, #8
 8000834:	bd70      	pop	{r4, r5, r6, pc}
 8000836:	2001      	movs	r0, #1
 8000838:	e7fb      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 800083a:	2001      	movs	r0, #1
 800083c:	e7f9      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 800083e:	2001      	movs	r0, #1
 8000840:	e7f7      	b.n	8000832 <HAL_RCC_OscConfig+0x3f6>
 8000842:	bf00      	nop
 8000844:	40021000 	andmi	r1, r2, r0
 8000848:	42420000 	submi	r0, r2, #0

0800084c <HAL_RCC_GetSysClockFreq>:
 800084c:	4b0f      	ldr	r3, [pc, #60]	; (800088c <HAL_RCC_GetSysClockFreq+0x40>)
 800084e:	685b      	ldr	r3, [r3, #4]
 8000850:	f003 020c 	and.w	r2, r3, #12
 8000854:	2a08      	cmp	r2, #8
 8000856:	d001      	beq.n	800085c <HAL_RCC_GetSysClockFreq+0x10>
 8000858:	480d      	ldr	r0, [pc, #52]	; (8000890 <HAL_RCC_GetSysClockFreq+0x44>)
 800085a:	4770      	bx	lr
 800085c:	f3c3 4283 	ubfx	r2, r3, #18, #4
 8000860:	490c      	ldr	r1, [pc, #48]	; (8000894 <HAL_RCC_GetSysClockFreq+0x48>)
 8000862:	5c88      	ldrb	r0, [r1, r2]
 8000864:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8000868:	d00b      	beq.n	8000882 <HAL_RCC_GetSysClockFreq+0x36>
 800086a:	4b08      	ldr	r3, [pc, #32]	; (800088c <HAL_RCC_GetSysClockFreq+0x40>)
 800086c:	685b      	ldr	r3, [r3, #4]
 800086e:	f3c3 4340 	ubfx	r3, r3, #17, #1
 8000872:	4a09      	ldr	r2, [pc, #36]	; (8000898 <HAL_RCC_GetSysClockFreq+0x4c>)
 8000874:	5cd3      	ldrb	r3, [r2, r3]
 8000876:	4a06      	ldr	r2, [pc, #24]	; (8000890 <HAL_RCC_GetSysClockFreq+0x44>)
 8000878:	fb02 f000 	mul.w	r0, r2, r0
 800087c:	fbb0 f0f3 	udiv	r0, r0, r3
 8000880:	4770      	bx	lr
 8000882:	4b06      	ldr	r3, [pc, #24]	; (800089c <HAL_RCC_GetSysClockFreq+0x50>)
 8000884:	fb03 f000 	mul.w	r0, r3, r0
 8000888:	4770      	bx	lr
 800088a:	bf00      	nop
 800088c:	40021000 	andmi	r1, r2, r0
 8000890:	007a1200 	rsbseq	r1, sl, r0, lsl #4
 8000894:	08000dcc 	stmdaeq	r0, {r2, r3, r6, r7, r8, sl, fp}
 8000898:	08000dc8 	stmdaeq	r0, {r3, r6, r7, r8, sl, fp}
 800089c:	003d0900 	eorseq	r0, sp, r0, lsl #18

080008a0 <HAL_RCC_ClockConfig>:
 80008a0:	2800      	cmp	r0, #0
 80008a2:	f000 80a0 	beq.w	80009e6 <HAL_RCC_ClockConfig+0x146>
 80008a6:	b570      	push	{r4, r5, r6, lr}
 80008a8:	460d      	mov	r5, r1
 80008aa:	4604      	mov	r4, r0
 80008ac:	4b52      	ldr	r3, [pc, #328]	; (80009f8 <HAL_RCC_ClockConfig+0x158>)
 80008ae:	681b      	ldr	r3, [r3, #0]
 80008b0:	f003 0307 	and.w	r3, r3, #7
 80008b4:	428b      	cmp	r3, r1
 80008b6:	d20b      	bcs.n	80008d0 <HAL_RCC_ClockConfig+0x30>
 80008b8:	4a4f      	ldr	r2, [pc, #316]	; (80009f8 <HAL_RCC_ClockConfig+0x158>)
 80008ba:	6813      	ldr	r3, [r2, #0]
 80008bc:	f023 0307 	bic.w	r3, r3, #7
 80008c0:	430b      	orrs	r3, r1
 80008c2:	6013      	str	r3, [r2, #0]
 80008c4:	6813      	ldr	r3, [r2, #0]
 80008c6:	f003 0307 	and.w	r3, r3, #7
 80008ca:	428b      	cmp	r3, r1
 80008cc:	f040 808d 	bne.w	80009ea <HAL_RCC_ClockConfig+0x14a>
 80008d0:	6823      	ldr	r3, [r4, #0]
 80008d2:	f013 0f02 	tst.w	r3, #2
 80008d6:	d017      	beq.n	8000908 <HAL_RCC_ClockConfig+0x68>
 80008d8:	f013 0f04 	tst.w	r3, #4
 80008dc:	d004      	beq.n	80008e8 <HAL_RCC_ClockConfig+0x48>
 80008de:	4a47      	ldr	r2, [pc, #284]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 80008e0:	6853      	ldr	r3, [r2, #4]
 80008e2:	f443 63e0 	orr.w	r3, r3, #1792	; 0x700
 80008e6:	6053      	str	r3, [r2, #4]
 80008e8:	6823      	ldr	r3, [r4, #0]
 80008ea:	f013 0f08 	tst.w	r3, #8
 80008ee:	d004      	beq.n	80008fa <HAL_RCC_ClockConfig+0x5a>
 80008f0:	4a42      	ldr	r2, [pc, #264]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 80008f2:	6853      	ldr	r3, [r2, #4]
 80008f4:	f443 5360 	orr.w	r3, r3, #14336	; 0x3800
 80008f8:	6053      	str	r3, [r2, #4]
 80008fa:	4a40      	ldr	r2, [pc, #256]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 80008fc:	6853      	ldr	r3, [r2, #4]
 80008fe:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8000902:	68a1      	ldr	r1, [r4, #8]
 8000904:	430b      	orrs	r3, r1
 8000906:	6053      	str	r3, [r2, #4]
 8000908:	6823      	ldr	r3, [r4, #0]
 800090a:	f013 0f01 	tst.w	r3, #1
 800090e:	d031      	beq.n	8000974 <HAL_RCC_ClockConfig+0xd4>
 8000910:	6863      	ldr	r3, [r4, #4]
 8000912:	2b01      	cmp	r3, #1
 8000914:	d020      	beq.n	8000958 <HAL_RCC_ClockConfig+0xb8>
 8000916:	2b02      	cmp	r3, #2
 8000918:	d025      	beq.n	8000966 <HAL_RCC_ClockConfig+0xc6>
 800091a:	4a38      	ldr	r2, [pc, #224]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 800091c:	6812      	ldr	r2, [r2, #0]
 800091e:	f012 0f02 	tst.w	r2, #2
 8000922:	d064      	beq.n	80009ee <HAL_RCC_ClockConfig+0x14e>
 8000924:	4935      	ldr	r1, [pc, #212]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 8000926:	684a      	ldr	r2, [r1, #4]
 8000928:	f022 0203 	bic.w	r2, r2, #3
 800092c:	4313      	orrs	r3, r2
 800092e:	604b      	str	r3, [r1, #4]
 8000930:	f7ff fd54 	bl	80003dc <HAL_GetTick>
 8000934:	4606      	mov	r6, r0
 8000936:	4b31      	ldr	r3, [pc, #196]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 8000938:	685b      	ldr	r3, [r3, #4]
 800093a:	f003 030c 	and.w	r3, r3, #12
 800093e:	6862      	ldr	r2, [r4, #4]
 8000940:	ebb3 0f82 	cmp.w	r3, r2, lsl #2
 8000944:	d016      	beq.n	8000974 <HAL_RCC_ClockConfig+0xd4>
 8000946:	f7ff fd49 	bl	80003dc <HAL_GetTick>
 800094a:	1b80      	subs	r0, r0, r6
 800094c:	f241 3388 	movw	r3, #5000	; 0x1388
 8000950:	4298      	cmp	r0, r3
 8000952:	d9f0      	bls.n	8000936 <HAL_RCC_ClockConfig+0x96>
 8000954:	2003      	movs	r0, #3
 8000956:	e045      	b.n	80009e4 <HAL_RCC_ClockConfig+0x144>
 8000958:	4a28      	ldr	r2, [pc, #160]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 800095a:	6812      	ldr	r2, [r2, #0]
 800095c:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 8000960:	d1e0      	bne.n	8000924 <HAL_RCC_ClockConfig+0x84>
 8000962:	2001      	movs	r0, #1
 8000964:	e03e      	b.n	80009e4 <HAL_RCC_ClockConfig+0x144>
 8000966:	4a25      	ldr	r2, [pc, #148]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 8000968:	6812      	ldr	r2, [r2, #0]
 800096a:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
 800096e:	d1d9      	bne.n	8000924 <HAL_RCC_ClockConfig+0x84>
 8000970:	2001      	movs	r0, #1
 8000972:	e037      	b.n	80009e4 <HAL_RCC_ClockConfig+0x144>
 8000974:	4b20      	ldr	r3, [pc, #128]	; (80009f8 <HAL_RCC_ClockConfig+0x158>)
 8000976:	681b      	ldr	r3, [r3, #0]
 8000978:	f003 0307 	and.w	r3, r3, #7
 800097c:	42ab      	cmp	r3, r5
 800097e:	d90a      	bls.n	8000996 <HAL_RCC_ClockConfig+0xf6>
 8000980:	4a1d      	ldr	r2, [pc, #116]	; (80009f8 <HAL_RCC_ClockConfig+0x158>)
 8000982:	6813      	ldr	r3, [r2, #0]
 8000984:	f023 0307 	bic.w	r3, r3, #7
 8000988:	432b      	orrs	r3, r5
 800098a:	6013      	str	r3, [r2, #0]
 800098c:	6813      	ldr	r3, [r2, #0]
 800098e:	f003 0307 	and.w	r3, r3, #7
 8000992:	42ab      	cmp	r3, r5
 8000994:	d12d      	bne.n	80009f2 <HAL_RCC_ClockConfig+0x152>
 8000996:	6823      	ldr	r3, [r4, #0]
 8000998:	f013 0f04 	tst.w	r3, #4
 800099c:	d006      	beq.n	80009ac <HAL_RCC_ClockConfig+0x10c>
 800099e:	4a17      	ldr	r2, [pc, #92]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 80009a0:	6853      	ldr	r3, [r2, #4]
 80009a2:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 80009a6:	68e1      	ldr	r1, [r4, #12]
 80009a8:	430b      	orrs	r3, r1
 80009aa:	6053      	str	r3, [r2, #4]
 80009ac:	6823      	ldr	r3, [r4, #0]
 80009ae:	f013 0f08 	tst.w	r3, #8
 80009b2:	d007      	beq.n	80009c4 <HAL_RCC_ClockConfig+0x124>
 80009b4:	4a11      	ldr	r2, [pc, #68]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 80009b6:	6853      	ldr	r3, [r2, #4]
 80009b8:	f423 5360 	bic.w	r3, r3, #14336	; 0x3800
 80009bc:	6921      	ldr	r1, [r4, #16]
 80009be:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 80009c2:	6053      	str	r3, [r2, #4]
 80009c4:	f7ff ff42 	bl	800084c <HAL_RCC_GetSysClockFreq>
 80009c8:	4b0c      	ldr	r3, [pc, #48]	; (80009fc <HAL_RCC_ClockConfig+0x15c>)
 80009ca:	685b      	ldr	r3, [r3, #4]
 80009cc:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80009d0:	4a0b      	ldr	r2, [pc, #44]	; (8000a00 <HAL_RCC_ClockConfig+0x160>)
 80009d2:	5cd3      	ldrb	r3, [r2, r3]
 80009d4:	40d8      	lsrs	r0, r3
 80009d6:	4b0b      	ldr	r3, [pc, #44]	; (8000a04 <HAL_RCC_ClockConfig+0x164>)
 80009d8:	6018      	str	r0, [r3, #0]
 80009da:	4b0b      	ldr	r3, [pc, #44]	; (8000a08 <HAL_RCC_ClockConfig+0x168>)
 80009dc:	6818      	ldr	r0, [r3, #0]
 80009de:	f7ff fcb9 	bl	8000354 <HAL_InitTick>
 80009e2:	2000      	movs	r0, #0
 80009e4:	bd70      	pop	{r4, r5, r6, pc}
 80009e6:	2001      	movs	r0, #1
 80009e8:	4770      	bx	lr
 80009ea:	2001      	movs	r0, #1
 80009ec:	e7fa      	b.n	80009e4 <HAL_RCC_ClockConfig+0x144>
 80009ee:	2001      	movs	r0, #1
 80009f0:	e7f8      	b.n	80009e4 <HAL_RCC_ClockConfig+0x144>
 80009f2:	2001      	movs	r0, #1
 80009f4:	e7f6      	b.n	80009e4 <HAL_RCC_ClockConfig+0x144>
 80009f6:	bf00      	nop
 80009f8:	40022000 	andmi	r2, r2, r0
 80009fc:	40021000 	andmi	r1, r2, r0
 8000a00:	08000ddc 	stmdaeq	r0, {r2, r3, r4, r6, r7, r8, sl, fp}
 8000a04:	20000008 	andcs	r0, r0, r8
 8000a08:	20000004 	andcs	r0, r0, r4

08000a0c <HAL_GPIO_Init>:
 8000a0c:	b570      	push	{r4, r5, r6, lr}
 8000a0e:	b082      	sub	sp, #8
 8000a10:	2400      	movs	r4, #0
 8000a12:	46a4      	mov	ip, r4
 8000a14:	e0a2      	b.n	8000b5c <HAL_GPIO_Init+0x150>
 8000a16:	4d7e      	ldr	r5, [pc, #504]	; (8000c10 <HAL_GPIO_Init+0x204>)
 8000a18:	42ab      	cmp	r3, r5
 8000a1a:	d010      	beq.n	8000a3e <HAL_GPIO_Init+0x32>
 8000a1c:	d907      	bls.n	8000a2e <HAL_GPIO_Init+0x22>
 8000a1e:	4d7d      	ldr	r5, [pc, #500]	; (8000c14 <HAL_GPIO_Init+0x208>)
 8000a20:	42ab      	cmp	r3, r5
 8000a22:	d00c      	beq.n	8000a3e <HAL_GPIO_Init+0x32>
 8000a24:	f505 3580 	add.w	r5, r5, #65536	; 0x10000
 8000a28:	42ab      	cmp	r3, r5
 8000a2a:	d008      	beq.n	8000a3e <HAL_GPIO_Init+0x32>
 8000a2c:	e013      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000a2e:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8000a32:	42ab      	cmp	r3, r5
 8000a34:	d003      	beq.n	8000a3e <HAL_GPIO_Init+0x32>
 8000a36:	f505 2570 	add.w	r5, r5, #983040	; 0xf0000
 8000a3a:	42ab      	cmp	r3, r5
 8000a3c:	d107      	bne.n	8000a4e <HAL_GPIO_Init+0x42>
 8000a3e:	688b      	ldr	r3, [r1, #8]
 8000a40:	2b00      	cmp	r3, #0
 8000a42:	d055      	beq.n	8000af0 <HAL_GPIO_Init+0xe4>
 8000a44:	2b01      	cmp	r3, #1
 8000a46:	d04e      	beq.n	8000ae6 <HAL_GPIO_Init+0xda>
 8000a48:	6142      	str	r2, [r0, #20]
 8000a4a:	2408      	movs	r4, #8
 8000a4c:	e003      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000a4e:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8000a52:	42ab      	cmp	r3, r5
 8000a54:	d0f3      	beq.n	8000a3e <HAL_GPIO_Init+0x32>
 8000a56:	f1be 0fff 	cmp.w	lr, #255	; 0xff
 8000a5a:	d84b      	bhi.n	8000af4 <HAL_GPIO_Init+0xe8>
 8000a5c:	4606      	mov	r6, r0
 8000a5e:	ea4f 028c 	mov.w	r2, ip, lsl #2
 8000a62:	6833      	ldr	r3, [r6, #0]
 8000a64:	250f      	movs	r5, #15
 8000a66:	4095      	lsls	r5, r2
 8000a68:	ea23 0305 	bic.w	r3, r3, r5
 8000a6c:	fa04 f202 	lsl.w	r2, r4, r2
 8000a70:	4313      	orrs	r3, r2
 8000a72:	6033      	str	r3, [r6, #0]
 8000a74:	684b      	ldr	r3, [r1, #4]
 8000a76:	f013 5f80 	tst.w	r3, #268435456	; 0x10000000
 8000a7a:	d06d      	beq.n	8000b58 <HAL_GPIO_Init+0x14c>
 8000a7c:	4b66      	ldr	r3, [pc, #408]	; (8000c18 <HAL_GPIO_Init+0x20c>)
 8000a7e:	699a      	ldr	r2, [r3, #24]
 8000a80:	f042 0201 	orr.w	r2, r2, #1
 8000a84:	619a      	str	r2, [r3, #24]
 8000a86:	699b      	ldr	r3, [r3, #24]
 8000a88:	f003 0301 	and.w	r3, r3, #1
 8000a8c:	9301      	str	r3, [sp, #4]
 8000a8e:	9b01      	ldr	r3, [sp, #4]
 8000a90:	ea4f 029c 	mov.w	r2, ip, lsr #2
 8000a94:	1c95      	adds	r5, r2, #2
 8000a96:	4b61      	ldr	r3, [pc, #388]	; (8000c1c <HAL_GPIO_Init+0x210>)
 8000a98:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 8000a9c:	f00c 0503 	and.w	r5, ip, #3
 8000aa0:	00ad      	lsls	r5, r5, #2
 8000aa2:	230f      	movs	r3, #15
 8000aa4:	40ab      	lsls	r3, r5
 8000aa6:	ea26 0603 	bic.w	r6, r6, r3
 8000aaa:	4b5d      	ldr	r3, [pc, #372]	; (8000c20 <HAL_GPIO_Init+0x214>)
 8000aac:	4298      	cmp	r0, r3
 8000aae:	d028      	beq.n	8000b02 <HAL_GPIO_Init+0xf6>
 8000ab0:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000ab4:	4298      	cmp	r0, r3
 8000ab6:	f000 808d 	beq.w	8000bd4 <HAL_GPIO_Init+0x1c8>
 8000aba:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000abe:	4298      	cmp	r0, r3
 8000ac0:	f000 808a 	beq.w	8000bd8 <HAL_GPIO_Init+0x1cc>
 8000ac4:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000ac8:	4298      	cmp	r0, r3
 8000aca:	d018      	beq.n	8000afe <HAL_GPIO_Init+0xf2>
 8000acc:	2304      	movs	r3, #4
 8000ace:	e019      	b.n	8000b04 <HAL_GPIO_Init+0xf8>
 8000ad0:	68cc      	ldr	r4, [r1, #12]
 8000ad2:	e7c0      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000ad4:	68cc      	ldr	r4, [r1, #12]
 8000ad6:	3404      	adds	r4, #4
 8000ad8:	e7bd      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000ada:	68cc      	ldr	r4, [r1, #12]
 8000adc:	3408      	adds	r4, #8
 8000ade:	e7ba      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000ae0:	68cc      	ldr	r4, [r1, #12]
 8000ae2:	340c      	adds	r4, #12
 8000ae4:	e7b7      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000ae6:	6102      	str	r2, [r0, #16]
 8000ae8:	2408      	movs	r4, #8
 8000aea:	e7b4      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000aec:	2400      	movs	r4, #0
 8000aee:	e7b2      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000af0:	2404      	movs	r4, #4
 8000af2:	e7b0      	b.n	8000a56 <HAL_GPIO_Init+0x4a>
 8000af4:	1d06      	adds	r6, r0, #4
 8000af6:	f1ac 0208 	sub.w	r2, ip, #8
 8000afa:	0092      	lsls	r2, r2, #2
 8000afc:	e7b1      	b.n	8000a62 <HAL_GPIO_Init+0x56>
 8000afe:	2303      	movs	r3, #3
 8000b00:	e000      	b.n	8000b04 <HAL_GPIO_Init+0xf8>
 8000b02:	2300      	movs	r3, #0
 8000b04:	40ab      	lsls	r3, r5
 8000b06:	4333      	orrs	r3, r6
 8000b08:	3202      	adds	r2, #2
 8000b0a:	4d44      	ldr	r5, [pc, #272]	; (8000c1c <HAL_GPIO_Init+0x210>)
 8000b0c:	f845 3022 	str.w	r3, [r5, r2, lsl #2]
 8000b10:	684b      	ldr	r3, [r1, #4]
 8000b12:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000b16:	d061      	beq.n	8000bdc <HAL_GPIO_Init+0x1d0>
 8000b18:	4a42      	ldr	r2, [pc, #264]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000b1a:	6893      	ldr	r3, [r2, #8]
 8000b1c:	ea43 030e 	orr.w	r3, r3, lr
 8000b20:	6093      	str	r3, [r2, #8]
 8000b22:	684b      	ldr	r3, [r1, #4]
 8000b24:	f413 1f00 	tst.w	r3, #2097152	; 0x200000
 8000b28:	d05e      	beq.n	8000be8 <HAL_GPIO_Init+0x1dc>
 8000b2a:	4a3e      	ldr	r2, [pc, #248]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000b2c:	68d3      	ldr	r3, [r2, #12]
 8000b2e:	ea43 030e 	orr.w	r3, r3, lr
 8000b32:	60d3      	str	r3, [r2, #12]
 8000b34:	684b      	ldr	r3, [r1, #4]
 8000b36:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000b3a:	d05b      	beq.n	8000bf4 <HAL_GPIO_Init+0x1e8>
 8000b3c:	4a39      	ldr	r2, [pc, #228]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000b3e:	6853      	ldr	r3, [r2, #4]
 8000b40:	ea43 030e 	orr.w	r3, r3, lr
 8000b44:	6053      	str	r3, [r2, #4]
 8000b46:	684b      	ldr	r3, [r1, #4]
 8000b48:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8000b4c:	d058      	beq.n	8000c00 <HAL_GPIO_Init+0x1f4>
 8000b4e:	4a35      	ldr	r2, [pc, #212]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000b50:	6813      	ldr	r3, [r2, #0]
 8000b52:	ea43 030e 	orr.w	r3, r3, lr
 8000b56:	6013      	str	r3, [r2, #0]
 8000b58:	f10c 0c01 	add.w	ip, ip, #1
 8000b5c:	680b      	ldr	r3, [r1, #0]
 8000b5e:	fa33 f20c 	lsrs.w	r2, r3, ip
 8000b62:	d053      	beq.n	8000c0c <HAL_GPIO_Init+0x200>
 8000b64:	2201      	movs	r2, #1
 8000b66:	fa02 f20c 	lsl.w	r2, r2, ip
 8000b6a:	ea03 0e02 	and.w	lr, r3, r2
 8000b6e:	ea32 0303 	bics.w	r3, r2, r3
 8000b72:	d1f1      	bne.n	8000b58 <HAL_GPIO_Init+0x14c>
 8000b74:	684b      	ldr	r3, [r1, #4]
 8000b76:	2b12      	cmp	r3, #18
 8000b78:	f63f af4d 	bhi.w	8000a16 <HAL_GPIO_Init+0xa>
 8000b7c:	2b12      	cmp	r3, #18
 8000b7e:	f63f af6a 	bhi.w	8000a56 <HAL_GPIO_Init+0x4a>
 8000b82:	a501      	add	r5, pc, #4	; (adr r5, 8000b88 <HAL_GPIO_Init+0x17c>)
 8000b84:	f855 f023 	ldr.w	pc, [r5, r3, lsl #2]
 8000b88:	08000a3f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r5, r9, fp}
 8000b8c:	08000ad1 	stmdaeq	r0, {r0, r4, r6, r7, r9, fp}
 8000b90:	08000adb 	stmdaeq	r0, {r0, r1, r3, r4, r6, r7, r9, fp}
 8000b94:	08000aed 	stmdaeq	r0, {r0, r2, r3, r5, r6, r7, r9, fp}
 8000b98:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000b9c:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000ba0:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000ba4:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000ba8:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bac:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bb0:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bb4:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bb8:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bbc:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bc0:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bc4:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bc8:	08000a57 	stmdaeq	r0, {r0, r1, r2, r4, r6, r9, fp}
 8000bcc:	08000ad5 	stmdaeq	r0, {r0, r2, r4, r6, r7, r9, fp}
 8000bd0:	08000ae1 	stmdaeq	r0, {r0, r5, r6, r7, r9, fp}
 8000bd4:	2301      	movs	r3, #1
 8000bd6:	e795      	b.n	8000b04 <HAL_GPIO_Init+0xf8>
 8000bd8:	2302      	movs	r3, #2
 8000bda:	e793      	b.n	8000b04 <HAL_GPIO_Init+0xf8>
 8000bdc:	4a11      	ldr	r2, [pc, #68]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000bde:	6893      	ldr	r3, [r2, #8]
 8000be0:	ea23 030e 	bic.w	r3, r3, lr
 8000be4:	6093      	str	r3, [r2, #8]
 8000be6:	e79c      	b.n	8000b22 <HAL_GPIO_Init+0x116>
 8000be8:	4a0e      	ldr	r2, [pc, #56]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000bea:	68d3      	ldr	r3, [r2, #12]
 8000bec:	ea23 030e 	bic.w	r3, r3, lr
 8000bf0:	60d3      	str	r3, [r2, #12]
 8000bf2:	e79f      	b.n	8000b34 <HAL_GPIO_Init+0x128>
 8000bf4:	4a0b      	ldr	r2, [pc, #44]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000bf6:	6853      	ldr	r3, [r2, #4]
 8000bf8:	ea23 030e 	bic.w	r3, r3, lr
 8000bfc:	6053      	str	r3, [r2, #4]
 8000bfe:	e7a2      	b.n	8000b46 <HAL_GPIO_Init+0x13a>
 8000c00:	4a08      	ldr	r2, [pc, #32]	; (8000c24 <HAL_GPIO_Init+0x218>)
 8000c02:	6813      	ldr	r3, [r2, #0]
 8000c04:	ea23 030e 	bic.w	r3, r3, lr
 8000c08:	6013      	str	r3, [r2, #0]
 8000c0a:	e7a5      	b.n	8000b58 <HAL_GPIO_Init+0x14c>
 8000c0c:	b002      	add	sp, #8
 8000c0e:	bd70      	pop	{r4, r5, r6, pc}
 8000c10:	10220000 	eorne	r0, r2, r0
 8000c14:	10310000 	eorsne	r0, r1, r0
 8000c18:	40021000 	andmi	r1, r2, r0
 8000c1c:	40010000 	andmi	r0, r1, r0
 8000c20:	40010800 	andmi	r0, r1, r0, lsl #16
 8000c24:	40010400 	andmi	r0, r1, r0, lsl #8

08000c28 <HAL_GPIO_WritePin>:
 8000c28:	b10a      	cbz	r2, 8000c2e <HAL_GPIO_WritePin+0x6>
 8000c2a:	6101      	str	r1, [r0, #16]
 8000c2c:	4770      	bx	lr
 8000c2e:	0409      	lsls	r1, r1, #16
 8000c30:	6101      	str	r1, [r0, #16]
 8000c32:	4770      	bx	lr

08000c34 <__NVIC_SetPriority>:
 8000c34:	2800      	cmp	r0, #0
 8000c36:	db08      	blt.n	8000c4a <__NVIC_SetPriority+0x16>
 8000c38:	0109      	lsls	r1, r1, #4
 8000c3a:	b2c9      	uxtb	r1, r1
 8000c3c:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
 8000c40:	f500 4061 	add.w	r0, r0, #57600	; 0xe100
 8000c44:	f880 1300 	strb.w	r1, [r0, #768]	; 0x300
 8000c48:	4770      	bx	lr
 8000c4a:	f000 000f 	and.w	r0, r0, #15
 8000c4e:	0109      	lsls	r1, r1, #4
 8000c50:	b2c9      	uxtb	r1, r1
 8000c52:	4b01      	ldr	r3, [pc, #4]	; (8000c58 <__NVIC_SetPriority+0x24>)
 8000c54:	5419      	strb	r1, [r3, r0]
 8000c56:	4770      	bx	lr
 8000c58:	e000ed14 	and	lr, r0, r4, lsl sp

08000c5c <NVIC_EncodePriority>:
 8000c5c:	b500      	push	{lr}
 8000c5e:	f000 0007 	and.w	r0, r0, #7
 8000c62:	f1c0 0c07 	rsb	ip, r0, #7
 8000c66:	f1bc 0f04 	cmp.w	ip, #4
 8000c6a:	bf28      	it	cs
 8000c6c:	f04f 0c04 	movcs.w	ip, #4
 8000c70:	1d03      	adds	r3, r0, #4
 8000c72:	2b06      	cmp	r3, #6
 8000c74:	d90f      	bls.n	8000c96 <NVIC_EncodePriority+0x3a>
 8000c76:	1ec3      	subs	r3, r0, #3
 8000c78:	f04f 3eff 	mov.w	lr, #4294967295
 8000c7c:	fa0e f00c 	lsl.w	r0, lr, ip
 8000c80:	ea21 0100 	bic.w	r1, r1, r0
 8000c84:	4099      	lsls	r1, r3
 8000c86:	fa0e fe03 	lsl.w	lr, lr, r3
 8000c8a:	ea22 020e 	bic.w	r2, r2, lr
 8000c8e:	ea41 0002 	orr.w	r0, r1, r2
 8000c92:	f85d fb04 	ldr.w	pc, [sp], #4
 8000c96:	2300      	movs	r3, #0
 8000c98:	e7ee      	b.n	8000c78 <NVIC_EncodePriority+0x1c>
 8000c9a:	0000      	movs	r0, r0

08000c9c <HAL_NVIC_SetPriorityGrouping>:
 8000c9c:	4a07      	ldr	r2, [pc, #28]	; (8000cbc <HAL_NVIC_SetPriorityGrouping+0x20>)
 8000c9e:	68d3      	ldr	r3, [r2, #12]
 8000ca0:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8000ca4:	041b      	lsls	r3, r3, #16
 8000ca6:	0c1b      	lsrs	r3, r3, #16
 8000ca8:	0200      	lsls	r0, r0, #8
 8000caa:	f400 60e0 	and.w	r0, r0, #1792	; 0x700
 8000cae:	4303      	orrs	r3, r0
 8000cb0:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000cb4:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000cb8:	60d3      	str	r3, [r2, #12]
 8000cba:	4770      	bx	lr
 8000cbc:	e000ed00 	and	lr, r0, r0, lsl #26

08000cc0 <HAL_NVIC_SetPriority>:
 8000cc0:	b510      	push	{r4, lr}
 8000cc2:	4604      	mov	r4, r0
 8000cc4:	4b05      	ldr	r3, [pc, #20]	; (8000cdc <HAL_NVIC_SetPriority+0x1c>)
 8000cc6:	68d8      	ldr	r0, [r3, #12]
 8000cc8:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8000ccc:	f7ff ffc6 	bl	8000c5c <NVIC_EncodePriority>
 8000cd0:	4601      	mov	r1, r0
 8000cd2:	4620      	mov	r0, r4
 8000cd4:	f7ff ffae 	bl	8000c34 <__NVIC_SetPriority>
 8000cd8:	bd10      	pop	{r4, pc}
 8000cda:	bf00      	nop
 8000cdc:	e000ed00 	and	lr, r0, r0, lsl #26

08000ce0 <HAL_SYSTICK_Config>:
 8000ce0:	3801      	subs	r0, #1
 8000ce2:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 8000ce6:	d20b      	bcs.n	8000d00 <HAL_SYSTICK_Config+0x20>
 8000ce8:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 8000cec:	6158      	str	r0, [r3, #20]
 8000cee:	4a05      	ldr	r2, [pc, #20]	; (8000d04 <HAL_SYSTICK_Config+0x24>)
 8000cf0:	21f0      	movs	r1, #240	; 0xf0
 8000cf2:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8000cf6:	2000      	movs	r0, #0
 8000cf8:	6198      	str	r0, [r3, #24]
 8000cfa:	2207      	movs	r2, #7
 8000cfc:	611a      	str	r2, [r3, #16]
 8000cfe:	4770      	bx	lr
 8000d00:	2001      	movs	r0, #1
 8000d02:	4770      	bx	lr
 8000d04:	e000ed00 	and	lr, r0, r0, lsl #26

08000d08 <SystemInit>:
 8000d08:	4770      	bx	lr
 8000d0a:	0000      	movs	r0, r0

08000d0c <Reset_Handler>:
 8000d0c:	f7ff fffc 	bl	8000d08 <SystemInit>
 8000d10:	480b      	ldr	r0, [pc, #44]	; (8000d40 <LoopFillZerobss+0xe>)
 8000d12:	490c      	ldr	r1, [pc, #48]	; (8000d44 <LoopFillZerobss+0x12>)
 8000d14:	4a0c      	ldr	r2, [pc, #48]	; (8000d48 <LoopFillZerobss+0x16>)
 8000d16:	2300      	movs	r3, #0
 8000d18:	e002      	b.n	8000d20 <LoopCopyDataInit>

08000d1a <CopyDataInit>:
 8000d1a:	58d4      	ldr	r4, [r2, r3]
 8000d1c:	50c4      	str	r4, [r0, r3]
 8000d1e:	3304      	adds	r3, #4

08000d20 <LoopCopyDataInit>:
 8000d20:	18c4      	adds	r4, r0, r3
 8000d22:	428c      	cmp	r4, r1
 8000d24:	d3f9      	bcc.n	8000d1a <CopyDataInit>
 8000d26:	4a09      	ldr	r2, [pc, #36]	; (8000d4c <LoopFillZerobss+0x1a>)
 8000d28:	4c09      	ldr	r4, [pc, #36]	; (8000d50 <LoopFillZerobss+0x1e>)
 8000d2a:	2300      	movs	r3, #0
 8000d2c:	e001      	b.n	8000d32 <LoopFillZerobss>

08000d2e <FillZerobss>:
 8000d2e:	6013      	str	r3, [r2, #0]
 8000d30:	3204      	adds	r2, #4

08000d32 <LoopFillZerobss>:
 8000d32:	42a2      	cmp	r2, r4
 8000d34:	d3fb      	bcc.n	8000d2e <FillZerobss>
 8000d36:	f000 f817 	bl	8000d68 <__libc_init_array>
 8000d3a:	f7ff fab5 	bl	80002a8 <main>
 8000d3e:	4770      	bx	lr
 8000d40:	20000000 	andcs	r0, r0, r0
 8000d44:	2000000c 	andcs	r0, r0, ip
 8000d48:	08000df4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, sl, fp}
 8000d4c:	2000000c 	andcs	r0, r0, ip
 8000d50:	2000002c 	andcs	r0, r0, ip, lsr #32

08000d54 <ADC1_2_IRQHandler>:
 8000d54:	e7fe      	b.n	8000d54 <ADC1_2_IRQHandler>

08000d56 <memset>:
 8000d56:	4603      	mov	r3, r0
 8000d58:	4402      	add	r2, r0
 8000d5a:	4293      	cmp	r3, r2
 8000d5c:	d100      	bne.n	8000d60 <memset+0xa>
 8000d5e:	4770      	bx	lr
 8000d60:	f803 1b01 	strb.w	r1, [r3], #1
 8000d64:	e7f9      	b.n	8000d5a <memset+0x4>
 8000d66:	0000      	movs	r0, r0

08000d68 <__libc_init_array>:
 8000d68:	b570      	push	{r4, r5, r6, lr}
 8000d6a:	2600      	movs	r6, #0
 8000d6c:	4d0c      	ldr	r5, [pc, #48]	; (8000da0 <__libc_init_array+0x38>)
 8000d6e:	4c0d      	ldr	r4, [pc, #52]	; (8000da4 <__libc_init_array+0x3c>)
 8000d70:	1b64      	subs	r4, r4, r5
 8000d72:	10a4      	asrs	r4, r4, #2
 8000d74:	42a6      	cmp	r6, r4
 8000d76:	d109      	bne.n	8000d8c <__libc_init_array+0x24>
 8000d78:	f000 f81a 	bl	8000db0 <_init>
 8000d7c:	2600      	movs	r6, #0
 8000d7e:	4d0a      	ldr	r5, [pc, #40]	; (8000da8 <__libc_init_array+0x40>)
 8000d80:	4c0a      	ldr	r4, [pc, #40]	; (8000dac <__libc_init_array+0x44>)
 8000d82:	1b64      	subs	r4, r4, r5
 8000d84:	10a4      	asrs	r4, r4, #2
 8000d86:	42a6      	cmp	r6, r4
 8000d88:	d105      	bne.n	8000d96 <__libc_init_array+0x2e>
 8000d8a:	bd70      	pop	{r4, r5, r6, pc}
 8000d8c:	f855 3b04 	ldr.w	r3, [r5], #4
 8000d90:	4798      	blx	r3
 8000d92:	3601      	adds	r6, #1
 8000d94:	e7ee      	b.n	8000d74 <__libc_init_array+0xc>
 8000d96:	f855 3b04 	ldr.w	r3, [r5], #4
 8000d9a:	4798      	blx	r3
 8000d9c:	3601      	adds	r6, #1
 8000d9e:	e7f2      	b.n	8000d86 <__libc_init_array+0x1e>
 8000da0:	08000dec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8, sl, fp}
 8000da4:	08000dec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8, sl, fp}
 8000da8:	08000dec 	stmdaeq	r0, {r2, r3, r5, r6, r7, r8, sl, fp}
 8000dac:	08000df0 	stmdaeq	r0, {r4, r5, r6, r7, r8, sl, fp}

08000db0 <_init>:
 8000db0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000db2:	bf00      	nop
 8000db4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000db6:	bc08      	pop	{r3}
 8000db8:	469e      	mov	lr, r3
 8000dba:	4770      	bx	lr

08000dbc <_fini>:
 8000dbc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000dbe:	bf00      	nop
 8000dc0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000dc2:	bc08      	pop	{r3}
 8000dc4:	469e      	mov	lr, r3
 8000dc6:	4770      	bx	lr
