
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
 8000170:	08000d94 	stmdaeq	r0, {r2, r4, r7, r8, sl, fp}

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
 8000194:	08000d94 	stmdaeq	r0, {r2, r4, r7, r8, sl, fp}

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
 80001e8:	f000 fd10 	bl	8000c0c <HAL_GPIO_WritePin>
 80001ec:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80001f0:	9304      	str	r3, [sp, #16]
 80001f2:	2301      	movs	r3, #1
 80001f4:	9305      	str	r3, [sp, #20]
 80001f6:	9406      	str	r4, [sp, #24]
 80001f8:	2302      	movs	r3, #2
 80001fa:	9307      	str	r3, [sp, #28]
 80001fc:	a904      	add	r1, sp, #16
 80001fe:	4628      	mov	r0, r5
 8000200:	f000 fbf6 	bl	80009f0 <HAL_GPIO_Init>
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
 800021c:	f000 fcf6 	bl	8000c0c <HAL_GPIO_WritePin>
 8000220:	2064      	movs	r0, #100	; 0x64
 8000222:	f000 f8d3 	bl	80003cc <HAL_Delay>
 8000226:	2200      	movs	r2, #0
 8000228:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800022c:	4620      	mov	r0, r4
 800022e:	f000 fced 	bl	8000c0c <HAL_GPIO_WritePin>
 8000232:	2064      	movs	r0, #100	; 0x64
 8000234:	f000 f8ca 	bl	80003cc <HAL_Delay>
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
 800024e:	f000 fd74 	bl	8000d3a <memset>
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
 8000278:	f000 f8d2 	bl	8000420 <HAL_RCC_OscConfig>
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
 8000294:	f000 faf6 	bl	8000884 <HAL_RCC_ClockConfig>
 8000298:	b920      	cbnz	r0, 80002a4 <SystemClock_Config+0x60>
 800029a:	b011      	add	sp, #68	; 0x44
 800029c:	f85d fb04 	ldr.w	pc, [sp], #4
 80002a0:	f7ff ffce 	bl	8000240 <Error_Handler>
 80002a4:	f7ff ffcc 	bl	8000240 <Error_Handler>

080002a8 <main>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f000 f86b 	bl	8000384 <HAL_Init>
 80002ae:	f7ff ffc9 	bl	8000244 <SystemClock_Config>
 80002b2:	f7ff ff71 	bl	8000198 <MX_GPIO_Init>
 80002b6:	f7ff ffab 	bl	8000210 <my_function>
 80002ba:	e7fc      	b.n	80002b6 <main+0xe>

080002bc <my_function>:
 80002bc:	b508      	push	{r3, lr}
 80002be:	2201      	movs	r2, #1
 80002c0:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80002c4:	4803      	ldr	r0, [pc, #12]	; (80002d4 <my_function+0x18>)
 80002c6:	f000 fca1 	bl	8000c0c <HAL_GPIO_WritePin>
 80002ca:	2064      	movs	r0, #100	; 0x64
 80002cc:	f000 f87e 	bl	80003cc <HAL_Delay>
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
 80002ea:	f000 f85d 	bl	80003a8 <HAL_IncTick>
 80002ee:	f7ff ffe5 	bl	80002bc <my_function>
 80002f2:	bd08      	pop	{r3, pc}

080002f4 <HAL_MspInit>:
 80002f4:	b082      	sub	sp, #8
 80002f6:	4b0e      	ldr	r3, [pc, #56]	; (8000330 <HAL_MspInit+0x3c>)
 80002f8:	699a      	ldr	r2, [r3, #24]
 80002fa:	f042 0201 	orr.w	r2, r2, #1
 80002fe:	619a      	str	r2, [r3, #24]
 8000300:	699a      	ldr	r2, [r3, #24]
 8000302:	f002 0201 	and.w	r2, r2, #1
 8000306:	9200      	str	r2, [sp, #0]
 8000308:	9a00      	ldr	r2, [sp, #0]
 800030a:	69da      	ldr	r2, [r3, #28]
 800030c:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 8000310:	61da      	str	r2, [r3, #28]
 8000312:	69db      	ldr	r3, [r3, #28]
 8000314:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000318:	9301      	str	r3, [sp, #4]
 800031a:	9b01      	ldr	r3, [sp, #4]
 800031c:	4a05      	ldr	r2, [pc, #20]	; (8000334 <HAL_MspInit+0x40>)
 800031e:	6853      	ldr	r3, [r2, #4]
 8000320:	f023 63e0 	bic.w	r3, r3, #117440512	; 0x7000000
 8000324:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 8000328:	6053      	str	r3, [r2, #4]
 800032a:	b002      	add	sp, #8
 800032c:	4770      	bx	lr
 800032e:	bf00      	nop
 8000330:	40021000 	andmi	r1, r2, r0
 8000334:	40010000 	andmi	r0, r1, r0

08000338 <HAL_InitTick>:
 8000338:	b510      	push	{r4, lr}
 800033a:	4604      	mov	r4, r0
 800033c:	4b0e      	ldr	r3, [pc, #56]	; (8000378 <HAL_InitTick+0x40>)
 800033e:	781a      	ldrb	r2, [r3, #0]
 8000340:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000344:	fbb3 f3f2 	udiv	r3, r3, r2
 8000348:	4a0c      	ldr	r2, [pc, #48]	; (800037c <HAL_InitTick+0x44>)
 800034a:	6810      	ldr	r0, [r2, #0]
 800034c:	fbb0 f0f3 	udiv	r0, r0, r3
 8000350:	f000 fcb8 	bl	8000cc4 <HAL_SYSTICK_Config>
 8000354:	b968      	cbnz	r0, 8000372 <HAL_InitTick+0x3a>
 8000356:	2c0f      	cmp	r4, #15
 8000358:	d901      	bls.n	800035e <HAL_InitTick+0x26>
 800035a:	2001      	movs	r0, #1
 800035c:	e00a      	b.n	8000374 <HAL_InitTick+0x3c>
 800035e:	2200      	movs	r2, #0
 8000360:	4621      	mov	r1, r4
 8000362:	f04f 30ff 	mov.w	r0, #4294967295
 8000366:	f000 fc9d 	bl	8000ca4 <HAL_NVIC_SetPriority>
 800036a:	4b05      	ldr	r3, [pc, #20]	; (8000380 <HAL_InitTick+0x48>)
 800036c:	601c      	str	r4, [r3, #0]
 800036e:	2000      	movs	r0, #0
 8000370:	e000      	b.n	8000374 <HAL_InitTick+0x3c>
 8000372:	2001      	movs	r0, #1
 8000374:	bd10      	pop	{r4, pc}
 8000376:	bf00      	nop
 8000378:	20000000 	andcs	r0, r0, r0
 800037c:	20000008 	andcs	r0, r0, r8
 8000380:	20000004 	andcs	r0, r0, r4

08000384 <HAL_Init>:
 8000384:	b508      	push	{r3, lr}
 8000386:	4a07      	ldr	r2, [pc, #28]	; (80003a4 <HAL_Init+0x20>)
 8000388:	6813      	ldr	r3, [r2, #0]
 800038a:	f043 0310 	orr.w	r3, r3, #16
 800038e:	6013      	str	r3, [r2, #0]
 8000390:	2003      	movs	r0, #3
 8000392:	f000 fc75 	bl	8000c80 <HAL_NVIC_SetPriorityGrouping>
 8000396:	200f      	movs	r0, #15
 8000398:	f7ff ffce 	bl	8000338 <HAL_InitTick>
 800039c:	f7ff ffaa 	bl	80002f4 <HAL_MspInit>
 80003a0:	2000      	movs	r0, #0
 80003a2:	bd08      	pop	{r3, pc}
 80003a4:	40022000 	andmi	r2, r2, r0

080003a8 <HAL_IncTick>:
 80003a8:	4a03      	ldr	r2, [pc, #12]	; (80003b8 <HAL_IncTick+0x10>)
 80003aa:	6811      	ldr	r1, [r2, #0]
 80003ac:	4b03      	ldr	r3, [pc, #12]	; (80003bc <HAL_IncTick+0x14>)
 80003ae:	781b      	ldrb	r3, [r3, #0]
 80003b0:	440b      	add	r3, r1
 80003b2:	6013      	str	r3, [r2, #0]
 80003b4:	4770      	bx	lr
 80003b6:	bf00      	nop
 80003b8:	20000028 	andcs	r0, r0, r8, lsr #32
 80003bc:	20000000 	andcs	r0, r0, r0

080003c0 <HAL_GetTick>:
 80003c0:	4b01      	ldr	r3, [pc, #4]	; (80003c8 <HAL_GetTick+0x8>)
 80003c2:	6818      	ldr	r0, [r3, #0]
 80003c4:	4770      	bx	lr
 80003c6:	bf00      	nop
 80003c8:	20000028 	andcs	r0, r0, r8, lsr #32

080003cc <HAL_Delay>:
 80003cc:	b538      	push	{r3, r4, r5, lr}
 80003ce:	4604      	mov	r4, r0
 80003d0:	f7ff fff6 	bl	80003c0 <HAL_GetTick>
 80003d4:	4605      	mov	r5, r0
 80003d6:	f1b4 3fff 	cmp.w	r4, #4294967295
 80003da:	d002      	beq.n	80003e2 <HAL_Delay+0x16>
 80003dc:	4b04      	ldr	r3, [pc, #16]	; (80003f0 <HAL_Delay+0x24>)
 80003de:	781b      	ldrb	r3, [r3, #0]
 80003e0:	441c      	add	r4, r3
 80003e2:	f7ff ffed 	bl	80003c0 <HAL_GetTick>
 80003e6:	1b40      	subs	r0, r0, r5
 80003e8:	42a0      	cmp	r0, r4
 80003ea:	d3fa      	bcc.n	80003e2 <HAL_Delay+0x16>
 80003ec:	bd38      	pop	{r3, r4, r5, pc}
 80003ee:	bf00      	nop
 80003f0:	20000000 	andcs	r0, r0, r0

080003f4 <RCC_Delay>:
 80003f4:	b082      	sub	sp, #8
 80003f6:	4b08      	ldr	r3, [pc, #32]	; (8000418 <RCC_Delay+0x24>)
 80003f8:	681b      	ldr	r3, [r3, #0]
 80003fa:	4a08      	ldr	r2, [pc, #32]	; (800041c <RCC_Delay+0x28>)
 80003fc:	fba2 2303 	umull	r2, r3, r2, r3
 8000400:	0a5b      	lsrs	r3, r3, #9
 8000402:	fb00 f303 	mul.w	r3, r0, r3
 8000406:	9301      	str	r3, [sp, #4]
 8000408:	bf00      	nop
 800040a:	9b01      	ldr	r3, [sp, #4]
 800040c:	1e5a      	subs	r2, r3, #1
 800040e:	9201      	str	r2, [sp, #4]
 8000410:	2b00      	cmp	r3, #0
 8000412:	d1f9      	bne.n	8000408 <RCC_Delay+0x14>
 8000414:	b002      	add	sp, #8
 8000416:	4770      	bx	lr
 8000418:	20000008 	andcs	r0, r0, r8
 800041c:	10624dd3 	ldrdne	r4, [r2], #-211	; 0xffffff2d	; <UNPREDICTABLE>

08000420 <HAL_RCC_OscConfig>:
 8000420:	2800      	cmp	r0, #0
 8000422:	f000 81f1 	beq.w	8000808 <HAL_RCC_OscConfig+0x3e8>
 8000426:	b570      	push	{r4, r5, r6, lr}
 8000428:	b082      	sub	sp, #8
 800042a:	4604      	mov	r4, r0
 800042c:	6803      	ldr	r3, [r0, #0]
 800042e:	f013 0f01 	tst.w	r3, #1
 8000432:	d02c      	beq.n	800048e <HAL_RCC_OscConfig+0x6e>
 8000434:	4b99      	ldr	r3, [pc, #612]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000436:	685b      	ldr	r3, [r3, #4]
 8000438:	f003 030c 	and.w	r3, r3, #12
 800043c:	2b04      	cmp	r3, #4
 800043e:	d01d      	beq.n	800047c <HAL_RCC_OscConfig+0x5c>
 8000440:	4b96      	ldr	r3, [pc, #600]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000442:	685b      	ldr	r3, [r3, #4]
 8000444:	f003 030c 	and.w	r3, r3, #12
 8000448:	2b08      	cmp	r3, #8
 800044a:	d012      	beq.n	8000472 <HAL_RCC_OscConfig+0x52>
 800044c:	6863      	ldr	r3, [r4, #4]
 800044e:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000452:	d041      	beq.n	80004d8 <HAL_RCC_OscConfig+0xb8>
 8000454:	2b00      	cmp	r3, #0
 8000456:	d155      	bne.n	8000504 <HAL_RCC_OscConfig+0xe4>
 8000458:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800045c:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 8000460:	681a      	ldr	r2, [r3, #0]
 8000462:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8000466:	601a      	str	r2, [r3, #0]
 8000468:	681a      	ldr	r2, [r3, #0]
 800046a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800046e:	601a      	str	r2, [r3, #0]
 8000470:	e037      	b.n	80004e2 <HAL_RCC_OscConfig+0xc2>
 8000472:	4b8a      	ldr	r3, [pc, #552]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000474:	685b      	ldr	r3, [r3, #4]
 8000476:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800047a:	d0e7      	beq.n	800044c <HAL_RCC_OscConfig+0x2c>
 800047c:	4b87      	ldr	r3, [pc, #540]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 800047e:	681b      	ldr	r3, [r3, #0]
 8000480:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000484:	d003      	beq.n	800048e <HAL_RCC_OscConfig+0x6e>
 8000486:	6863      	ldr	r3, [r4, #4]
 8000488:	2b00      	cmp	r3, #0
 800048a:	f000 81bf 	beq.w	800080c <HAL_RCC_OscConfig+0x3ec>
 800048e:	6823      	ldr	r3, [r4, #0]
 8000490:	f013 0f02 	tst.w	r3, #2
 8000494:	d075      	beq.n	8000582 <HAL_RCC_OscConfig+0x162>
 8000496:	4b81      	ldr	r3, [pc, #516]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000498:	685b      	ldr	r3, [r3, #4]
 800049a:	f013 0f0c 	tst.w	r3, #12
 800049e:	d05f      	beq.n	8000560 <HAL_RCC_OscConfig+0x140>
 80004a0:	4b7e      	ldr	r3, [pc, #504]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80004a2:	685b      	ldr	r3, [r3, #4]
 80004a4:	f003 030c 	and.w	r3, r3, #12
 80004a8:	2b08      	cmp	r3, #8
 80004aa:	d054      	beq.n	8000556 <HAL_RCC_OscConfig+0x136>
 80004ac:	6923      	ldr	r3, [r4, #16]
 80004ae:	2b00      	cmp	r3, #0
 80004b0:	f000 808a 	beq.w	80005c8 <HAL_RCC_OscConfig+0x1a8>
 80004b4:	4b7a      	ldr	r3, [pc, #488]	; (80006a0 <HAL_RCC_OscConfig+0x280>)
 80004b6:	2201      	movs	r2, #1
 80004b8:	601a      	str	r2, [r3, #0]
 80004ba:	f7ff ff81 	bl	80003c0 <HAL_GetTick>
 80004be:	4605      	mov	r5, r0
 80004c0:	4b76      	ldr	r3, [pc, #472]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80004c2:	681b      	ldr	r3, [r3, #0]
 80004c4:	f013 0f02 	tst.w	r3, #2
 80004c8:	d175      	bne.n	80005b6 <HAL_RCC_OscConfig+0x196>
 80004ca:	f7ff ff79 	bl	80003c0 <HAL_GetTick>
 80004ce:	1b40      	subs	r0, r0, r5
 80004d0:	2802      	cmp	r0, #2
 80004d2:	d9f5      	bls.n	80004c0 <HAL_RCC_OscConfig+0xa0>
 80004d4:	2003      	movs	r0, #3
 80004d6:	e19e      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80004d8:	4a70      	ldr	r2, [pc, #448]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80004da:	6813      	ldr	r3, [r2, #0]
 80004dc:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80004e0:	6013      	str	r3, [r2, #0]
 80004e2:	6863      	ldr	r3, [r4, #4]
 80004e4:	b343      	cbz	r3, 8000538 <HAL_RCC_OscConfig+0x118>
 80004e6:	f7ff ff6b 	bl	80003c0 <HAL_GetTick>
 80004ea:	4605      	mov	r5, r0
 80004ec:	4b6b      	ldr	r3, [pc, #428]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80004ee:	681b      	ldr	r3, [r3, #0]
 80004f0:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 80004f4:	d1cb      	bne.n	800048e <HAL_RCC_OscConfig+0x6e>
 80004f6:	f7ff ff63 	bl	80003c0 <HAL_GetTick>
 80004fa:	1b40      	subs	r0, r0, r5
 80004fc:	2864      	cmp	r0, #100	; 0x64
 80004fe:	d9f5      	bls.n	80004ec <HAL_RCC_OscConfig+0xcc>
 8000500:	2003      	movs	r0, #3
 8000502:	e188      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000504:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 8000508:	d009      	beq.n	800051e <HAL_RCC_OscConfig+0xfe>
 800050a:	4b64      	ldr	r3, [pc, #400]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 800050c:	681a      	ldr	r2, [r3, #0]
 800050e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8000512:	601a      	str	r2, [r3, #0]
 8000514:	681a      	ldr	r2, [r3, #0]
 8000516:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800051a:	601a      	str	r2, [r3, #0]
 800051c:	e7e1      	b.n	80004e2 <HAL_RCC_OscConfig+0xc2>
 800051e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000522:	f5a3 333c 	sub.w	r3, r3, #192512	; 0x2f000
 8000526:	681a      	ldr	r2, [r3, #0]
 8000528:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 800052c:	601a      	str	r2, [r3, #0]
 800052e:	681a      	ldr	r2, [r3, #0]
 8000530:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000534:	601a      	str	r2, [r3, #0]
 8000536:	e7d4      	b.n	80004e2 <HAL_RCC_OscConfig+0xc2>
 8000538:	f7ff ff42 	bl	80003c0 <HAL_GetTick>
 800053c:	4605      	mov	r5, r0
 800053e:	4b57      	ldr	r3, [pc, #348]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000540:	681b      	ldr	r3, [r3, #0]
 8000542:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000546:	d0a2      	beq.n	800048e <HAL_RCC_OscConfig+0x6e>
 8000548:	f7ff ff3a 	bl	80003c0 <HAL_GetTick>
 800054c:	1b40      	subs	r0, r0, r5
 800054e:	2864      	cmp	r0, #100	; 0x64
 8000550:	d9f5      	bls.n	800053e <HAL_RCC_OscConfig+0x11e>
 8000552:	2003      	movs	r0, #3
 8000554:	e15f      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000556:	4b51      	ldr	r3, [pc, #324]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000558:	685b      	ldr	r3, [r3, #4]
 800055a:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800055e:	d1a5      	bne.n	80004ac <HAL_RCC_OscConfig+0x8c>
 8000560:	4b4e      	ldr	r3, [pc, #312]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000562:	681b      	ldr	r3, [r3, #0]
 8000564:	f013 0f02 	tst.w	r3, #2
 8000568:	d003      	beq.n	8000572 <HAL_RCC_OscConfig+0x152>
 800056a:	6923      	ldr	r3, [r4, #16]
 800056c:	2b01      	cmp	r3, #1
 800056e:	f040 814f 	bne.w	8000810 <HAL_RCC_OscConfig+0x3f0>
 8000572:	4a4a      	ldr	r2, [pc, #296]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000574:	6813      	ldr	r3, [r2, #0]
 8000576:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 800057a:	6961      	ldr	r1, [r4, #20]
 800057c:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 8000580:	6013      	str	r3, [r2, #0]
 8000582:	6823      	ldr	r3, [r4, #0]
 8000584:	f013 0f08 	tst.w	r3, #8
 8000588:	d033      	beq.n	80005f2 <HAL_RCC_OscConfig+0x1d2>
 800058a:	69a3      	ldr	r3, [r4, #24]
 800058c:	2b00      	cmp	r3, #0
 800058e:	d05c      	beq.n	800064a <HAL_RCC_OscConfig+0x22a>
 8000590:	4b43      	ldr	r3, [pc, #268]	; (80006a0 <HAL_RCC_OscConfig+0x280>)
 8000592:	2201      	movs	r2, #1
 8000594:	f8c3 2480 	str.w	r2, [r3, #1152]	; 0x480
 8000598:	f7ff ff12 	bl	80003c0 <HAL_GetTick>
 800059c:	4605      	mov	r5, r0
 800059e:	4b3f      	ldr	r3, [pc, #252]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80005a0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80005a2:	f013 0f02 	tst.w	r3, #2
 80005a6:	d121      	bne.n	80005ec <HAL_RCC_OscConfig+0x1cc>
 80005a8:	f7ff ff0a 	bl	80003c0 <HAL_GetTick>
 80005ac:	1b40      	subs	r0, r0, r5
 80005ae:	2802      	cmp	r0, #2
 80005b0:	d9f5      	bls.n	800059e <HAL_RCC_OscConfig+0x17e>
 80005b2:	2003      	movs	r0, #3
 80005b4:	e12f      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80005b6:	4a39      	ldr	r2, [pc, #228]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80005b8:	6813      	ldr	r3, [r2, #0]
 80005ba:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 80005be:	6961      	ldr	r1, [r4, #20]
 80005c0:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 80005c4:	6013      	str	r3, [r2, #0]
 80005c6:	e7dc      	b.n	8000582 <HAL_RCC_OscConfig+0x162>
 80005c8:	4b35      	ldr	r3, [pc, #212]	; (80006a0 <HAL_RCC_OscConfig+0x280>)
 80005ca:	2200      	movs	r2, #0
 80005cc:	601a      	str	r2, [r3, #0]
 80005ce:	f7ff fef7 	bl	80003c0 <HAL_GetTick>
 80005d2:	4605      	mov	r5, r0
 80005d4:	4b31      	ldr	r3, [pc, #196]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80005d6:	681b      	ldr	r3, [r3, #0]
 80005d8:	f013 0f02 	tst.w	r3, #2
 80005dc:	d0d1      	beq.n	8000582 <HAL_RCC_OscConfig+0x162>
 80005de:	f7ff feef 	bl	80003c0 <HAL_GetTick>
 80005e2:	1b40      	subs	r0, r0, r5
 80005e4:	2802      	cmp	r0, #2
 80005e6:	d9f5      	bls.n	80005d4 <HAL_RCC_OscConfig+0x1b4>
 80005e8:	2003      	movs	r0, #3
 80005ea:	e114      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80005ec:	2001      	movs	r0, #1
 80005ee:	f7ff ff01 	bl	80003f4 <RCC_Delay>
 80005f2:	6823      	ldr	r3, [r4, #0]
 80005f4:	f013 0f04 	tst.w	r3, #4
 80005f8:	f000 8096 	beq.w	8000728 <HAL_RCC_OscConfig+0x308>
 80005fc:	4b27      	ldr	r3, [pc, #156]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 80005fe:	69db      	ldr	r3, [r3, #28]
 8000600:	f013 5f80 	tst.w	r3, #268435456	; 0x10000000
 8000604:	d134      	bne.n	8000670 <HAL_RCC_OscConfig+0x250>
 8000606:	4b25      	ldr	r3, [pc, #148]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 8000608:	69da      	ldr	r2, [r3, #28]
 800060a:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 800060e:	61da      	str	r2, [r3, #28]
 8000610:	69db      	ldr	r3, [r3, #28]
 8000612:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000616:	9301      	str	r3, [sp, #4]
 8000618:	9b01      	ldr	r3, [sp, #4]
 800061a:	2501      	movs	r5, #1
 800061c:	4b21      	ldr	r3, [pc, #132]	; (80006a4 <HAL_RCC_OscConfig+0x284>)
 800061e:	681b      	ldr	r3, [r3, #0]
 8000620:	f413 7f80 	tst.w	r3, #256	; 0x100
 8000624:	d026      	beq.n	8000674 <HAL_RCC_OscConfig+0x254>
 8000626:	68e3      	ldr	r3, [r4, #12]
 8000628:	2b01      	cmp	r3, #1
 800062a:	d03d      	beq.n	80006a8 <HAL_RCC_OscConfig+0x288>
 800062c:	2b00      	cmp	r3, #0
 800062e:	d153      	bne.n	80006d8 <HAL_RCC_OscConfig+0x2b8>
 8000630:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000634:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 8000638:	6a1a      	ldr	r2, [r3, #32]
 800063a:	f022 0201 	bic.w	r2, r2, #1
 800063e:	621a      	str	r2, [r3, #32]
 8000640:	6a1a      	ldr	r2, [r3, #32]
 8000642:	f022 0204 	bic.w	r2, r2, #4
 8000646:	621a      	str	r2, [r3, #32]
 8000648:	e033      	b.n	80006b2 <HAL_RCC_OscConfig+0x292>
 800064a:	4b15      	ldr	r3, [pc, #84]	; (80006a0 <HAL_RCC_OscConfig+0x280>)
 800064c:	2200      	movs	r2, #0
 800064e:	f8c3 2480 	str.w	r2, [r3, #1152]	; 0x480
 8000652:	f7ff feb5 	bl	80003c0 <HAL_GetTick>
 8000656:	4605      	mov	r5, r0
 8000658:	4b10      	ldr	r3, [pc, #64]	; (800069c <HAL_RCC_OscConfig+0x27c>)
 800065a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800065c:	f013 0f02 	tst.w	r3, #2
 8000660:	d0c7      	beq.n	80005f2 <HAL_RCC_OscConfig+0x1d2>
 8000662:	f7ff fead 	bl	80003c0 <HAL_GetTick>
 8000666:	1b40      	subs	r0, r0, r5
 8000668:	2802      	cmp	r0, #2
 800066a:	d9f5      	bls.n	8000658 <HAL_RCC_OscConfig+0x238>
 800066c:	2003      	movs	r0, #3
 800066e:	e0d2      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000670:	2500      	movs	r5, #0
 8000672:	e7d3      	b.n	800061c <HAL_RCC_OscConfig+0x1fc>
 8000674:	4a0b      	ldr	r2, [pc, #44]	; (80006a4 <HAL_RCC_OscConfig+0x284>)
 8000676:	6813      	ldr	r3, [r2, #0]
 8000678:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800067c:	6013      	str	r3, [r2, #0]
 800067e:	f7ff fe9f 	bl	80003c0 <HAL_GetTick>
 8000682:	4606      	mov	r6, r0
 8000684:	4b07      	ldr	r3, [pc, #28]	; (80006a4 <HAL_RCC_OscConfig+0x284>)
 8000686:	681b      	ldr	r3, [r3, #0]
 8000688:	f413 7f80 	tst.w	r3, #256	; 0x100
 800068c:	d1cb      	bne.n	8000626 <HAL_RCC_OscConfig+0x206>
 800068e:	f7ff fe97 	bl	80003c0 <HAL_GetTick>
 8000692:	1b80      	subs	r0, r0, r6
 8000694:	2864      	cmp	r0, #100	; 0x64
 8000696:	d9f5      	bls.n	8000684 <HAL_RCC_OscConfig+0x264>
 8000698:	2003      	movs	r0, #3
 800069a:	e0bc      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 800069c:	40021000 	andmi	r1, r2, r0
 80006a0:	42420000 	submi	r0, r2, #0
 80006a4:	40007000 	andmi	r7, r0, r0
 80006a8:	4a5f      	ldr	r2, [pc, #380]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80006aa:	6a13      	ldr	r3, [r2, #32]
 80006ac:	f043 0301 	orr.w	r3, r3, #1
 80006b0:	6213      	str	r3, [r2, #32]
 80006b2:	68e3      	ldr	r3, [r4, #12]
 80006b4:	b333      	cbz	r3, 8000704 <HAL_RCC_OscConfig+0x2e4>
 80006b6:	f7ff fe83 	bl	80003c0 <HAL_GetTick>
 80006ba:	4606      	mov	r6, r0
 80006bc:	4b5a      	ldr	r3, [pc, #360]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80006be:	6a1b      	ldr	r3, [r3, #32]
 80006c0:	f013 0f02 	tst.w	r3, #2
 80006c4:	d12f      	bne.n	8000726 <HAL_RCC_OscConfig+0x306>
 80006c6:	f7ff fe7b 	bl	80003c0 <HAL_GetTick>
 80006ca:	1b80      	subs	r0, r0, r6
 80006cc:	f241 3388 	movw	r3, #5000	; 0x1388
 80006d0:	4298      	cmp	r0, r3
 80006d2:	d9f3      	bls.n	80006bc <HAL_RCC_OscConfig+0x29c>
 80006d4:	2003      	movs	r0, #3
 80006d6:	e09e      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80006d8:	2b05      	cmp	r3, #5
 80006da:	d009      	beq.n	80006f0 <HAL_RCC_OscConfig+0x2d0>
 80006dc:	4b52      	ldr	r3, [pc, #328]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80006de:	6a1a      	ldr	r2, [r3, #32]
 80006e0:	f022 0201 	bic.w	r2, r2, #1
 80006e4:	621a      	str	r2, [r3, #32]
 80006e6:	6a1a      	ldr	r2, [r3, #32]
 80006e8:	f022 0204 	bic.w	r2, r2, #4
 80006ec:	621a      	str	r2, [r3, #32]
 80006ee:	e7e0      	b.n	80006b2 <HAL_RCC_OscConfig+0x292>
 80006f0:	4b4d      	ldr	r3, [pc, #308]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80006f2:	6a1a      	ldr	r2, [r3, #32]
 80006f4:	f042 0204 	orr.w	r2, r2, #4
 80006f8:	621a      	str	r2, [r3, #32]
 80006fa:	6a1a      	ldr	r2, [r3, #32]
 80006fc:	f042 0201 	orr.w	r2, r2, #1
 8000700:	621a      	str	r2, [r3, #32]
 8000702:	e7d6      	b.n	80006b2 <HAL_RCC_OscConfig+0x292>
 8000704:	f7ff fe5c 	bl	80003c0 <HAL_GetTick>
 8000708:	4606      	mov	r6, r0
 800070a:	4b47      	ldr	r3, [pc, #284]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 800070c:	6a1b      	ldr	r3, [r3, #32]
 800070e:	f013 0f02 	tst.w	r3, #2
 8000712:	d008      	beq.n	8000726 <HAL_RCC_OscConfig+0x306>
 8000714:	f7ff fe54 	bl	80003c0 <HAL_GetTick>
 8000718:	1b80      	subs	r0, r0, r6
 800071a:	f241 3388 	movw	r3, #5000	; 0x1388
 800071e:	4298      	cmp	r0, r3
 8000720:	d9f3      	bls.n	800070a <HAL_RCC_OscConfig+0x2ea>
 8000722:	2003      	movs	r0, #3
 8000724:	e077      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000726:	b9e5      	cbnz	r5, 8000762 <HAL_RCC_OscConfig+0x342>
 8000728:	69e3      	ldr	r3, [r4, #28]
 800072a:	2b00      	cmp	r3, #0
 800072c:	d072      	beq.n	8000814 <HAL_RCC_OscConfig+0x3f4>
 800072e:	4a3e      	ldr	r2, [pc, #248]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 8000730:	6852      	ldr	r2, [r2, #4]
 8000732:	f002 020c 	and.w	r2, r2, #12
 8000736:	2a08      	cmp	r2, #8
 8000738:	d056      	beq.n	80007e8 <HAL_RCC_OscConfig+0x3c8>
 800073a:	2b02      	cmp	r3, #2
 800073c:	d017      	beq.n	800076e <HAL_RCC_OscConfig+0x34e>
 800073e:	4b3b      	ldr	r3, [pc, #236]	; (800082c <HAL_RCC_OscConfig+0x40c>)
 8000740:	2200      	movs	r2, #0
 8000742:	661a      	str	r2, [r3, #96]	; 0x60
 8000744:	f7ff fe3c 	bl	80003c0 <HAL_GetTick>
 8000748:	4604      	mov	r4, r0
 800074a:	4b37      	ldr	r3, [pc, #220]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 800074c:	681b      	ldr	r3, [r3, #0]
 800074e:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 8000752:	d047      	beq.n	80007e4 <HAL_RCC_OscConfig+0x3c4>
 8000754:	f7ff fe34 	bl	80003c0 <HAL_GetTick>
 8000758:	1b00      	subs	r0, r0, r4
 800075a:	2802      	cmp	r0, #2
 800075c:	d9f5      	bls.n	800074a <HAL_RCC_OscConfig+0x32a>
 800075e:	2003      	movs	r0, #3
 8000760:	e059      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000762:	4a31      	ldr	r2, [pc, #196]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 8000764:	69d3      	ldr	r3, [r2, #28]
 8000766:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 800076a:	61d3      	str	r3, [r2, #28]
 800076c:	e7dc      	b.n	8000728 <HAL_RCC_OscConfig+0x308>
 800076e:	4b2f      	ldr	r3, [pc, #188]	; (800082c <HAL_RCC_OscConfig+0x40c>)
 8000770:	2200      	movs	r2, #0
 8000772:	661a      	str	r2, [r3, #96]	; 0x60
 8000774:	f7ff fe24 	bl	80003c0 <HAL_GetTick>
 8000778:	4605      	mov	r5, r0
 800077a:	4b2b      	ldr	r3, [pc, #172]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 800077c:	681b      	ldr	r3, [r3, #0]
 800077e:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 8000782:	d006      	beq.n	8000792 <HAL_RCC_OscConfig+0x372>
 8000784:	f7ff fe1c 	bl	80003c0 <HAL_GetTick>
 8000788:	1b40      	subs	r0, r0, r5
 800078a:	2802      	cmp	r0, #2
 800078c:	d9f5      	bls.n	800077a <HAL_RCC_OscConfig+0x35a>
 800078e:	2003      	movs	r0, #3
 8000790:	e041      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000792:	6a23      	ldr	r3, [r4, #32]
 8000794:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000798:	d01a      	beq.n	80007d0 <HAL_RCC_OscConfig+0x3b0>
 800079a:	4923      	ldr	r1, [pc, #140]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 800079c:	684b      	ldr	r3, [r1, #4]
 800079e:	f423 1374 	bic.w	r3, r3, #3997696	; 0x3d0000
 80007a2:	6a22      	ldr	r2, [r4, #32]
 80007a4:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80007a6:	4302      	orrs	r2, r0
 80007a8:	4313      	orrs	r3, r2
 80007aa:	604b      	str	r3, [r1, #4]
 80007ac:	4b1f      	ldr	r3, [pc, #124]	; (800082c <HAL_RCC_OscConfig+0x40c>)
 80007ae:	2201      	movs	r2, #1
 80007b0:	661a      	str	r2, [r3, #96]	; 0x60
 80007b2:	f7ff fe05 	bl	80003c0 <HAL_GetTick>
 80007b6:	4604      	mov	r4, r0
 80007b8:	4b1b      	ldr	r3, [pc, #108]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80007ba:	681b      	ldr	r3, [r3, #0]
 80007bc:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 80007c0:	d10e      	bne.n	80007e0 <HAL_RCC_OscConfig+0x3c0>
 80007c2:	f7ff fdfd 	bl	80003c0 <HAL_GetTick>
 80007c6:	1b00      	subs	r0, r0, r4
 80007c8:	2802      	cmp	r0, #2
 80007ca:	d9f5      	bls.n	80007b8 <HAL_RCC_OscConfig+0x398>
 80007cc:	2003      	movs	r0, #3
 80007ce:	e022      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80007d0:	4a15      	ldr	r2, [pc, #84]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80007d2:	6853      	ldr	r3, [r2, #4]
 80007d4:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 80007d8:	68a1      	ldr	r1, [r4, #8]
 80007da:	430b      	orrs	r3, r1
 80007dc:	6053      	str	r3, [r2, #4]
 80007de:	e7dc      	b.n	800079a <HAL_RCC_OscConfig+0x37a>
 80007e0:	2000      	movs	r0, #0
 80007e2:	e018      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80007e4:	2000      	movs	r0, #0
 80007e6:	e016      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 80007e8:	2b01      	cmp	r3, #1
 80007ea:	d016      	beq.n	800081a <HAL_RCC_OscConfig+0x3fa>
 80007ec:	4b0e      	ldr	r3, [pc, #56]	; (8000828 <HAL_RCC_OscConfig+0x408>)
 80007ee:	685b      	ldr	r3, [r3, #4]
 80007f0:	f403 3180 	and.w	r1, r3, #65536	; 0x10000
 80007f4:	6a22      	ldr	r2, [r4, #32]
 80007f6:	4291      	cmp	r1, r2
 80007f8:	d111      	bne.n	800081e <HAL_RCC_OscConfig+0x3fe>
 80007fa:	f403 1370 	and.w	r3, r3, #3932160	; 0x3c0000
 80007fe:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8000800:	4293      	cmp	r3, r2
 8000802:	d10e      	bne.n	8000822 <HAL_RCC_OscConfig+0x402>
 8000804:	2000      	movs	r0, #0
 8000806:	e006      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000808:	2001      	movs	r0, #1
 800080a:	4770      	bx	lr
 800080c:	2001      	movs	r0, #1
 800080e:	e002      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000810:	2001      	movs	r0, #1
 8000812:	e000      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000814:	2000      	movs	r0, #0
 8000816:	b002      	add	sp, #8
 8000818:	bd70      	pop	{r4, r5, r6, pc}
 800081a:	2001      	movs	r0, #1
 800081c:	e7fb      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 800081e:	2001      	movs	r0, #1
 8000820:	e7f9      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000822:	2001      	movs	r0, #1
 8000824:	e7f7      	b.n	8000816 <HAL_RCC_OscConfig+0x3f6>
 8000826:	bf00      	nop
 8000828:	40021000 	andmi	r1, r2, r0
 800082c:	42420000 	submi	r0, r2, #0

08000830 <HAL_RCC_GetSysClockFreq>:
 8000830:	4b0f      	ldr	r3, [pc, #60]	; (8000870 <HAL_RCC_GetSysClockFreq+0x40>)
 8000832:	685b      	ldr	r3, [r3, #4]
 8000834:	f003 020c 	and.w	r2, r3, #12
 8000838:	2a08      	cmp	r2, #8
 800083a:	d001      	beq.n	8000840 <HAL_RCC_GetSysClockFreq+0x10>
 800083c:	480d      	ldr	r0, [pc, #52]	; (8000874 <HAL_RCC_GetSysClockFreq+0x44>)
 800083e:	4770      	bx	lr
 8000840:	f3c3 4283 	ubfx	r2, r3, #18, #4
 8000844:	490c      	ldr	r1, [pc, #48]	; (8000878 <HAL_RCC_GetSysClockFreq+0x48>)
 8000846:	5c88      	ldrb	r0, [r1, r2]
 8000848:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800084c:	d00b      	beq.n	8000866 <HAL_RCC_GetSysClockFreq+0x36>
 800084e:	4b08      	ldr	r3, [pc, #32]	; (8000870 <HAL_RCC_GetSysClockFreq+0x40>)
 8000850:	685b      	ldr	r3, [r3, #4]
 8000852:	f3c3 4340 	ubfx	r3, r3, #17, #1
 8000856:	4a09      	ldr	r2, [pc, #36]	; (800087c <HAL_RCC_GetSysClockFreq+0x4c>)
 8000858:	5cd3      	ldrb	r3, [r2, r3]
 800085a:	4a06      	ldr	r2, [pc, #24]	; (8000874 <HAL_RCC_GetSysClockFreq+0x44>)
 800085c:	fb02 f000 	mul.w	r0, r2, r0
 8000860:	fbb0 f0f3 	udiv	r0, r0, r3
 8000864:	4770      	bx	lr
 8000866:	4b06      	ldr	r3, [pc, #24]	; (8000880 <HAL_RCC_GetSysClockFreq+0x50>)
 8000868:	fb03 f000 	mul.w	r0, r3, r0
 800086c:	4770      	bx	lr
 800086e:	bf00      	nop
 8000870:	40021000 	andmi	r1, r2, r0
 8000874:	007a1200 	rsbseq	r1, sl, r0, lsl #4
 8000878:	08000db0 	stmdaeq	r0, {r4, r5, r7, r8, sl, fp}
 800087c:	08000dac 	stmdaeq	r0, {r2, r3, r5, r7, r8, sl, fp}
 8000880:	003d0900 	eorseq	r0, sp, r0, lsl #18

08000884 <HAL_RCC_ClockConfig>:
 8000884:	2800      	cmp	r0, #0
 8000886:	f000 80a0 	beq.w	80009ca <HAL_RCC_ClockConfig+0x146>
 800088a:	b570      	push	{r4, r5, r6, lr}
 800088c:	460d      	mov	r5, r1
 800088e:	4604      	mov	r4, r0
 8000890:	4b52      	ldr	r3, [pc, #328]	; (80009dc <HAL_RCC_ClockConfig+0x158>)
 8000892:	681b      	ldr	r3, [r3, #0]
 8000894:	f003 0307 	and.w	r3, r3, #7
 8000898:	428b      	cmp	r3, r1
 800089a:	d20b      	bcs.n	80008b4 <HAL_RCC_ClockConfig+0x30>
 800089c:	4a4f      	ldr	r2, [pc, #316]	; (80009dc <HAL_RCC_ClockConfig+0x158>)
 800089e:	6813      	ldr	r3, [r2, #0]
 80008a0:	f023 0307 	bic.w	r3, r3, #7
 80008a4:	430b      	orrs	r3, r1
 80008a6:	6013      	str	r3, [r2, #0]
 80008a8:	6813      	ldr	r3, [r2, #0]
 80008aa:	f003 0307 	and.w	r3, r3, #7
 80008ae:	428b      	cmp	r3, r1
 80008b0:	f040 808d 	bne.w	80009ce <HAL_RCC_ClockConfig+0x14a>
 80008b4:	6823      	ldr	r3, [r4, #0]
 80008b6:	f013 0f02 	tst.w	r3, #2
 80008ba:	d017      	beq.n	80008ec <HAL_RCC_ClockConfig+0x68>
 80008bc:	f013 0f04 	tst.w	r3, #4
 80008c0:	d004      	beq.n	80008cc <HAL_RCC_ClockConfig+0x48>
 80008c2:	4a47      	ldr	r2, [pc, #284]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 80008c4:	6853      	ldr	r3, [r2, #4]
 80008c6:	f443 63e0 	orr.w	r3, r3, #1792	; 0x700
 80008ca:	6053      	str	r3, [r2, #4]
 80008cc:	6823      	ldr	r3, [r4, #0]
 80008ce:	f013 0f08 	tst.w	r3, #8
 80008d2:	d004      	beq.n	80008de <HAL_RCC_ClockConfig+0x5a>
 80008d4:	4a42      	ldr	r2, [pc, #264]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 80008d6:	6853      	ldr	r3, [r2, #4]
 80008d8:	f443 5360 	orr.w	r3, r3, #14336	; 0x3800
 80008dc:	6053      	str	r3, [r2, #4]
 80008de:	4a40      	ldr	r2, [pc, #256]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 80008e0:	6853      	ldr	r3, [r2, #4]
 80008e2:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80008e6:	68a1      	ldr	r1, [r4, #8]
 80008e8:	430b      	orrs	r3, r1
 80008ea:	6053      	str	r3, [r2, #4]
 80008ec:	6823      	ldr	r3, [r4, #0]
 80008ee:	f013 0f01 	tst.w	r3, #1
 80008f2:	d031      	beq.n	8000958 <HAL_RCC_ClockConfig+0xd4>
 80008f4:	6863      	ldr	r3, [r4, #4]
 80008f6:	2b01      	cmp	r3, #1
 80008f8:	d020      	beq.n	800093c <HAL_RCC_ClockConfig+0xb8>
 80008fa:	2b02      	cmp	r3, #2
 80008fc:	d025      	beq.n	800094a <HAL_RCC_ClockConfig+0xc6>
 80008fe:	4a38      	ldr	r2, [pc, #224]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 8000900:	6812      	ldr	r2, [r2, #0]
 8000902:	f012 0f02 	tst.w	r2, #2
 8000906:	d064      	beq.n	80009d2 <HAL_RCC_ClockConfig+0x14e>
 8000908:	4935      	ldr	r1, [pc, #212]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 800090a:	684a      	ldr	r2, [r1, #4]
 800090c:	f022 0203 	bic.w	r2, r2, #3
 8000910:	4313      	orrs	r3, r2
 8000912:	604b      	str	r3, [r1, #4]
 8000914:	f7ff fd54 	bl	80003c0 <HAL_GetTick>
 8000918:	4606      	mov	r6, r0
 800091a:	4b31      	ldr	r3, [pc, #196]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 800091c:	685b      	ldr	r3, [r3, #4]
 800091e:	f003 030c 	and.w	r3, r3, #12
 8000922:	6862      	ldr	r2, [r4, #4]
 8000924:	ebb3 0f82 	cmp.w	r3, r2, lsl #2
 8000928:	d016      	beq.n	8000958 <HAL_RCC_ClockConfig+0xd4>
 800092a:	f7ff fd49 	bl	80003c0 <HAL_GetTick>
 800092e:	1b80      	subs	r0, r0, r6
 8000930:	f241 3388 	movw	r3, #5000	; 0x1388
 8000934:	4298      	cmp	r0, r3
 8000936:	d9f0      	bls.n	800091a <HAL_RCC_ClockConfig+0x96>
 8000938:	2003      	movs	r0, #3
 800093a:	e045      	b.n	80009c8 <HAL_RCC_ClockConfig+0x144>
 800093c:	4a28      	ldr	r2, [pc, #160]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 800093e:	6812      	ldr	r2, [r2, #0]
 8000940:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 8000944:	d1e0      	bne.n	8000908 <HAL_RCC_ClockConfig+0x84>
 8000946:	2001      	movs	r0, #1
 8000948:	e03e      	b.n	80009c8 <HAL_RCC_ClockConfig+0x144>
 800094a:	4a25      	ldr	r2, [pc, #148]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 800094c:	6812      	ldr	r2, [r2, #0]
 800094e:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
 8000952:	d1d9      	bne.n	8000908 <HAL_RCC_ClockConfig+0x84>
 8000954:	2001      	movs	r0, #1
 8000956:	e037      	b.n	80009c8 <HAL_RCC_ClockConfig+0x144>
 8000958:	4b20      	ldr	r3, [pc, #128]	; (80009dc <HAL_RCC_ClockConfig+0x158>)
 800095a:	681b      	ldr	r3, [r3, #0]
 800095c:	f003 0307 	and.w	r3, r3, #7
 8000960:	42ab      	cmp	r3, r5
 8000962:	d90a      	bls.n	800097a <HAL_RCC_ClockConfig+0xf6>
 8000964:	4a1d      	ldr	r2, [pc, #116]	; (80009dc <HAL_RCC_ClockConfig+0x158>)
 8000966:	6813      	ldr	r3, [r2, #0]
 8000968:	f023 0307 	bic.w	r3, r3, #7
 800096c:	432b      	orrs	r3, r5
 800096e:	6013      	str	r3, [r2, #0]
 8000970:	6813      	ldr	r3, [r2, #0]
 8000972:	f003 0307 	and.w	r3, r3, #7
 8000976:	42ab      	cmp	r3, r5
 8000978:	d12d      	bne.n	80009d6 <HAL_RCC_ClockConfig+0x152>
 800097a:	6823      	ldr	r3, [r4, #0]
 800097c:	f013 0f04 	tst.w	r3, #4
 8000980:	d006      	beq.n	8000990 <HAL_RCC_ClockConfig+0x10c>
 8000982:	4a17      	ldr	r2, [pc, #92]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 8000984:	6853      	ldr	r3, [r2, #4]
 8000986:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 800098a:	68e1      	ldr	r1, [r4, #12]
 800098c:	430b      	orrs	r3, r1
 800098e:	6053      	str	r3, [r2, #4]
 8000990:	6823      	ldr	r3, [r4, #0]
 8000992:	f013 0f08 	tst.w	r3, #8
 8000996:	d007      	beq.n	80009a8 <HAL_RCC_ClockConfig+0x124>
 8000998:	4a11      	ldr	r2, [pc, #68]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 800099a:	6853      	ldr	r3, [r2, #4]
 800099c:	f423 5360 	bic.w	r3, r3, #14336	; 0x3800
 80009a0:	6921      	ldr	r1, [r4, #16]
 80009a2:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 80009a6:	6053      	str	r3, [r2, #4]
 80009a8:	f7ff ff42 	bl	8000830 <HAL_RCC_GetSysClockFreq>
 80009ac:	4b0c      	ldr	r3, [pc, #48]	; (80009e0 <HAL_RCC_ClockConfig+0x15c>)
 80009ae:	685b      	ldr	r3, [r3, #4]
 80009b0:	f3c3 1303 	ubfx	r3, r3, #4, #4
 80009b4:	4a0b      	ldr	r2, [pc, #44]	; (80009e4 <HAL_RCC_ClockConfig+0x160>)
 80009b6:	5cd3      	ldrb	r3, [r2, r3]
 80009b8:	40d8      	lsrs	r0, r3
 80009ba:	4b0b      	ldr	r3, [pc, #44]	; (80009e8 <HAL_RCC_ClockConfig+0x164>)
 80009bc:	6018      	str	r0, [r3, #0]
 80009be:	4b0b      	ldr	r3, [pc, #44]	; (80009ec <HAL_RCC_ClockConfig+0x168>)
 80009c0:	6818      	ldr	r0, [r3, #0]
 80009c2:	f7ff fcb9 	bl	8000338 <HAL_InitTick>
 80009c6:	2000      	movs	r0, #0
 80009c8:	bd70      	pop	{r4, r5, r6, pc}
 80009ca:	2001      	movs	r0, #1
 80009cc:	4770      	bx	lr
 80009ce:	2001      	movs	r0, #1
 80009d0:	e7fa      	b.n	80009c8 <HAL_RCC_ClockConfig+0x144>
 80009d2:	2001      	movs	r0, #1
 80009d4:	e7f8      	b.n	80009c8 <HAL_RCC_ClockConfig+0x144>
 80009d6:	2001      	movs	r0, #1
 80009d8:	e7f6      	b.n	80009c8 <HAL_RCC_ClockConfig+0x144>
 80009da:	bf00      	nop
 80009dc:	40022000 	andmi	r2, r2, r0
 80009e0:	40021000 	andmi	r1, r2, r0
 80009e4:	08000dc0 	stmdaeq	r0, {r6, r7, r8, sl, fp}
 80009e8:	20000008 	andcs	r0, r0, r8
 80009ec:	20000004 	andcs	r0, r0, r4

080009f0 <HAL_GPIO_Init>:
 80009f0:	b570      	push	{r4, r5, r6, lr}
 80009f2:	b082      	sub	sp, #8
 80009f4:	2400      	movs	r4, #0
 80009f6:	46a4      	mov	ip, r4
 80009f8:	e0a2      	b.n	8000b40 <HAL_GPIO_Init+0x150>
 80009fa:	4d7e      	ldr	r5, [pc, #504]	; (8000bf4 <HAL_GPIO_Init+0x204>)
 80009fc:	42ab      	cmp	r3, r5
 80009fe:	d010      	beq.n	8000a22 <HAL_GPIO_Init+0x32>
 8000a00:	d907      	bls.n	8000a12 <HAL_GPIO_Init+0x22>
 8000a02:	4d7d      	ldr	r5, [pc, #500]	; (8000bf8 <HAL_GPIO_Init+0x208>)
 8000a04:	42ab      	cmp	r3, r5
 8000a06:	d00c      	beq.n	8000a22 <HAL_GPIO_Init+0x32>
 8000a08:	f505 3580 	add.w	r5, r5, #65536	; 0x10000
 8000a0c:	42ab      	cmp	r3, r5
 8000a0e:	d008      	beq.n	8000a22 <HAL_GPIO_Init+0x32>
 8000a10:	e013      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000a12:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8000a16:	42ab      	cmp	r3, r5
 8000a18:	d003      	beq.n	8000a22 <HAL_GPIO_Init+0x32>
 8000a1a:	f505 2570 	add.w	r5, r5, #983040	; 0xf0000
 8000a1e:	42ab      	cmp	r3, r5
 8000a20:	d107      	bne.n	8000a32 <HAL_GPIO_Init+0x42>
 8000a22:	688b      	ldr	r3, [r1, #8]
 8000a24:	2b00      	cmp	r3, #0
 8000a26:	d055      	beq.n	8000ad4 <HAL_GPIO_Init+0xe4>
 8000a28:	2b01      	cmp	r3, #1
 8000a2a:	d04e      	beq.n	8000aca <HAL_GPIO_Init+0xda>
 8000a2c:	6142      	str	r2, [r0, #20]
 8000a2e:	2408      	movs	r4, #8
 8000a30:	e003      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000a32:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8000a36:	42ab      	cmp	r3, r5
 8000a38:	d0f3      	beq.n	8000a22 <HAL_GPIO_Init+0x32>
 8000a3a:	f1be 0fff 	cmp.w	lr, #255	; 0xff
 8000a3e:	d84b      	bhi.n	8000ad8 <HAL_GPIO_Init+0xe8>
 8000a40:	4606      	mov	r6, r0
 8000a42:	ea4f 028c 	mov.w	r2, ip, lsl #2
 8000a46:	6833      	ldr	r3, [r6, #0]
 8000a48:	250f      	movs	r5, #15
 8000a4a:	4095      	lsls	r5, r2
 8000a4c:	ea23 0305 	bic.w	r3, r3, r5
 8000a50:	fa04 f202 	lsl.w	r2, r4, r2
 8000a54:	4313      	orrs	r3, r2
 8000a56:	6033      	str	r3, [r6, #0]
 8000a58:	684b      	ldr	r3, [r1, #4]
 8000a5a:	f013 5f80 	tst.w	r3, #268435456	; 0x10000000
 8000a5e:	d06d      	beq.n	8000b3c <HAL_GPIO_Init+0x14c>
 8000a60:	4b66      	ldr	r3, [pc, #408]	; (8000bfc <HAL_GPIO_Init+0x20c>)
 8000a62:	699a      	ldr	r2, [r3, #24]
 8000a64:	f042 0201 	orr.w	r2, r2, #1
 8000a68:	619a      	str	r2, [r3, #24]
 8000a6a:	699b      	ldr	r3, [r3, #24]
 8000a6c:	f003 0301 	and.w	r3, r3, #1
 8000a70:	9301      	str	r3, [sp, #4]
 8000a72:	9b01      	ldr	r3, [sp, #4]
 8000a74:	ea4f 029c 	mov.w	r2, ip, lsr #2
 8000a78:	1c95      	adds	r5, r2, #2
 8000a7a:	4b61      	ldr	r3, [pc, #388]	; (8000c00 <HAL_GPIO_Init+0x210>)
 8000a7c:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 8000a80:	f00c 0503 	and.w	r5, ip, #3
 8000a84:	00ad      	lsls	r5, r5, #2
 8000a86:	230f      	movs	r3, #15
 8000a88:	40ab      	lsls	r3, r5
 8000a8a:	ea26 0603 	bic.w	r6, r6, r3
 8000a8e:	4b5d      	ldr	r3, [pc, #372]	; (8000c04 <HAL_GPIO_Init+0x214>)
 8000a90:	4298      	cmp	r0, r3
 8000a92:	d028      	beq.n	8000ae6 <HAL_GPIO_Init+0xf6>
 8000a94:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000a98:	4298      	cmp	r0, r3
 8000a9a:	f000 808d 	beq.w	8000bb8 <HAL_GPIO_Init+0x1c8>
 8000a9e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000aa2:	4298      	cmp	r0, r3
 8000aa4:	f000 808a 	beq.w	8000bbc <HAL_GPIO_Init+0x1cc>
 8000aa8:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000aac:	4298      	cmp	r0, r3
 8000aae:	d018      	beq.n	8000ae2 <HAL_GPIO_Init+0xf2>
 8000ab0:	2304      	movs	r3, #4
 8000ab2:	e019      	b.n	8000ae8 <HAL_GPIO_Init+0xf8>
 8000ab4:	68cc      	ldr	r4, [r1, #12]
 8000ab6:	e7c0      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000ab8:	68cc      	ldr	r4, [r1, #12]
 8000aba:	3404      	adds	r4, #4
 8000abc:	e7bd      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000abe:	68cc      	ldr	r4, [r1, #12]
 8000ac0:	3408      	adds	r4, #8
 8000ac2:	e7ba      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000ac4:	68cc      	ldr	r4, [r1, #12]
 8000ac6:	340c      	adds	r4, #12
 8000ac8:	e7b7      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000aca:	6102      	str	r2, [r0, #16]
 8000acc:	2408      	movs	r4, #8
 8000ace:	e7b4      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000ad0:	2400      	movs	r4, #0
 8000ad2:	e7b2      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000ad4:	2404      	movs	r4, #4
 8000ad6:	e7b0      	b.n	8000a3a <HAL_GPIO_Init+0x4a>
 8000ad8:	1d06      	adds	r6, r0, #4
 8000ada:	f1ac 0208 	sub.w	r2, ip, #8
 8000ade:	0092      	lsls	r2, r2, #2
 8000ae0:	e7b1      	b.n	8000a46 <HAL_GPIO_Init+0x56>
 8000ae2:	2303      	movs	r3, #3
 8000ae4:	e000      	b.n	8000ae8 <HAL_GPIO_Init+0xf8>
 8000ae6:	2300      	movs	r3, #0
 8000ae8:	40ab      	lsls	r3, r5
 8000aea:	4333      	orrs	r3, r6
 8000aec:	3202      	adds	r2, #2
 8000aee:	4d44      	ldr	r5, [pc, #272]	; (8000c00 <HAL_GPIO_Init+0x210>)
 8000af0:	f845 3022 	str.w	r3, [r5, r2, lsl #2]
 8000af4:	684b      	ldr	r3, [r1, #4]
 8000af6:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000afa:	d061      	beq.n	8000bc0 <HAL_GPIO_Init+0x1d0>
 8000afc:	4a42      	ldr	r2, [pc, #264]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000afe:	6893      	ldr	r3, [r2, #8]
 8000b00:	ea43 030e 	orr.w	r3, r3, lr
 8000b04:	6093      	str	r3, [r2, #8]
 8000b06:	684b      	ldr	r3, [r1, #4]
 8000b08:	f413 1f00 	tst.w	r3, #2097152	; 0x200000
 8000b0c:	d05e      	beq.n	8000bcc <HAL_GPIO_Init+0x1dc>
 8000b0e:	4a3e      	ldr	r2, [pc, #248]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000b10:	68d3      	ldr	r3, [r2, #12]
 8000b12:	ea43 030e 	orr.w	r3, r3, lr
 8000b16:	60d3      	str	r3, [r2, #12]
 8000b18:	684b      	ldr	r3, [r1, #4]
 8000b1a:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000b1e:	d05b      	beq.n	8000bd8 <HAL_GPIO_Init+0x1e8>
 8000b20:	4a39      	ldr	r2, [pc, #228]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000b22:	6853      	ldr	r3, [r2, #4]
 8000b24:	ea43 030e 	orr.w	r3, r3, lr
 8000b28:	6053      	str	r3, [r2, #4]
 8000b2a:	684b      	ldr	r3, [r1, #4]
 8000b2c:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8000b30:	d058      	beq.n	8000be4 <HAL_GPIO_Init+0x1f4>
 8000b32:	4a35      	ldr	r2, [pc, #212]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000b34:	6813      	ldr	r3, [r2, #0]
 8000b36:	ea43 030e 	orr.w	r3, r3, lr
 8000b3a:	6013      	str	r3, [r2, #0]
 8000b3c:	f10c 0c01 	add.w	ip, ip, #1
 8000b40:	680b      	ldr	r3, [r1, #0]
 8000b42:	fa33 f20c 	lsrs.w	r2, r3, ip
 8000b46:	d053      	beq.n	8000bf0 <HAL_GPIO_Init+0x200>
 8000b48:	2201      	movs	r2, #1
 8000b4a:	fa02 f20c 	lsl.w	r2, r2, ip
 8000b4e:	ea03 0e02 	and.w	lr, r3, r2
 8000b52:	ea32 0303 	bics.w	r3, r2, r3
 8000b56:	d1f1      	bne.n	8000b3c <HAL_GPIO_Init+0x14c>
 8000b58:	684b      	ldr	r3, [r1, #4]
 8000b5a:	2b12      	cmp	r3, #18
 8000b5c:	f63f af4d 	bhi.w	80009fa <HAL_GPIO_Init+0xa>
 8000b60:	2b12      	cmp	r3, #18
 8000b62:	f63f af6a 	bhi.w	8000a3a <HAL_GPIO_Init+0x4a>
 8000b66:	a501      	add	r5, pc, #4	; (adr r5, 8000b6c <HAL_GPIO_Init+0x17c>)
 8000b68:	f855 f023 	ldr.w	pc, [r5, r3, lsl #2]
 8000b6c:	08000a23 	stmdaeq	r0, {r0, r1, r5, r9, fp}
 8000b70:	08000ab5 	stmdaeq	r0, {r0, r2, r4, r5, r7, r9, fp}
 8000b74:	08000abf 	stmdaeq	r0, {r0, r1, r2, r3, r4, r5, r7, r9, fp}
 8000b78:	08000ad1 	stmdaeq	r0, {r0, r4, r6, r7, r9, fp}
 8000b7c:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b80:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b84:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b88:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b8c:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b90:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b94:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b98:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000b9c:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000ba0:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000ba4:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000ba8:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000bac:	08000a3b 	stmdaeq	r0, {r0, r1, r3, r4, r5, r9, fp}
 8000bb0:	08000ab9 	stmdaeq	r0, {r0, r3, r4, r5, r7, r9, fp}
 8000bb4:	08000ac5 	stmdaeq	r0, {r0, r2, r6, r7, r9, fp}
 8000bb8:	2301      	movs	r3, #1
 8000bba:	e795      	b.n	8000ae8 <HAL_GPIO_Init+0xf8>
 8000bbc:	2302      	movs	r3, #2
 8000bbe:	e793      	b.n	8000ae8 <HAL_GPIO_Init+0xf8>
 8000bc0:	4a11      	ldr	r2, [pc, #68]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000bc2:	6893      	ldr	r3, [r2, #8]
 8000bc4:	ea23 030e 	bic.w	r3, r3, lr
 8000bc8:	6093      	str	r3, [r2, #8]
 8000bca:	e79c      	b.n	8000b06 <HAL_GPIO_Init+0x116>
 8000bcc:	4a0e      	ldr	r2, [pc, #56]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000bce:	68d3      	ldr	r3, [r2, #12]
 8000bd0:	ea23 030e 	bic.w	r3, r3, lr
 8000bd4:	60d3      	str	r3, [r2, #12]
 8000bd6:	e79f      	b.n	8000b18 <HAL_GPIO_Init+0x128>
 8000bd8:	4a0b      	ldr	r2, [pc, #44]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000bda:	6853      	ldr	r3, [r2, #4]
 8000bdc:	ea23 030e 	bic.w	r3, r3, lr
 8000be0:	6053      	str	r3, [r2, #4]
 8000be2:	e7a2      	b.n	8000b2a <HAL_GPIO_Init+0x13a>
 8000be4:	4a08      	ldr	r2, [pc, #32]	; (8000c08 <HAL_GPIO_Init+0x218>)
 8000be6:	6813      	ldr	r3, [r2, #0]
 8000be8:	ea23 030e 	bic.w	r3, r3, lr
 8000bec:	6013      	str	r3, [r2, #0]
 8000bee:	e7a5      	b.n	8000b3c <HAL_GPIO_Init+0x14c>
 8000bf0:	b002      	add	sp, #8
 8000bf2:	bd70      	pop	{r4, r5, r6, pc}
 8000bf4:	10220000 	eorne	r0, r2, r0
 8000bf8:	10310000 	eorsne	r0, r1, r0
 8000bfc:	40021000 	andmi	r1, r2, r0
 8000c00:	40010000 	andmi	r0, r1, r0
 8000c04:	40010800 	andmi	r0, r1, r0, lsl #16
 8000c08:	40010400 	andmi	r0, r1, r0, lsl #8

08000c0c <HAL_GPIO_WritePin>:
 8000c0c:	b10a      	cbz	r2, 8000c12 <HAL_GPIO_WritePin+0x6>
 8000c0e:	6101      	str	r1, [r0, #16]
 8000c10:	4770      	bx	lr
 8000c12:	0409      	lsls	r1, r1, #16
 8000c14:	6101      	str	r1, [r0, #16]
 8000c16:	4770      	bx	lr

08000c18 <__NVIC_SetPriority>:
 8000c18:	2800      	cmp	r0, #0
 8000c1a:	db08      	blt.n	8000c2e <__NVIC_SetPriority+0x16>
 8000c1c:	0109      	lsls	r1, r1, #4
 8000c1e:	b2c9      	uxtb	r1, r1
 8000c20:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
 8000c24:	f500 4061 	add.w	r0, r0, #57600	; 0xe100
 8000c28:	f880 1300 	strb.w	r1, [r0, #768]	; 0x300
 8000c2c:	4770      	bx	lr
 8000c2e:	f000 000f 	and.w	r0, r0, #15
 8000c32:	0109      	lsls	r1, r1, #4
 8000c34:	b2c9      	uxtb	r1, r1
 8000c36:	4b01      	ldr	r3, [pc, #4]	; (8000c3c <__NVIC_SetPriority+0x24>)
 8000c38:	5419      	strb	r1, [r3, r0]
 8000c3a:	4770      	bx	lr
 8000c3c:	e000ed14 	and	lr, r0, r4, lsl sp

08000c40 <NVIC_EncodePriority>:
 8000c40:	b500      	push	{lr}
 8000c42:	f000 0007 	and.w	r0, r0, #7
 8000c46:	f1c0 0c07 	rsb	ip, r0, #7
 8000c4a:	f1bc 0f04 	cmp.w	ip, #4
 8000c4e:	bf28      	it	cs
 8000c50:	f04f 0c04 	movcs.w	ip, #4
 8000c54:	1d03      	adds	r3, r0, #4
 8000c56:	2b06      	cmp	r3, #6
 8000c58:	d90f      	bls.n	8000c7a <NVIC_EncodePriority+0x3a>
 8000c5a:	1ec3      	subs	r3, r0, #3
 8000c5c:	f04f 3eff 	mov.w	lr, #4294967295
 8000c60:	fa0e f00c 	lsl.w	r0, lr, ip
 8000c64:	ea21 0100 	bic.w	r1, r1, r0
 8000c68:	4099      	lsls	r1, r3
 8000c6a:	fa0e fe03 	lsl.w	lr, lr, r3
 8000c6e:	ea22 020e 	bic.w	r2, r2, lr
 8000c72:	ea41 0002 	orr.w	r0, r1, r2
 8000c76:	f85d fb04 	ldr.w	pc, [sp], #4
 8000c7a:	2300      	movs	r3, #0
 8000c7c:	e7ee      	b.n	8000c5c <NVIC_EncodePriority+0x1c>
 8000c7e:	0000      	movs	r0, r0

08000c80 <HAL_NVIC_SetPriorityGrouping>:
 8000c80:	4a07      	ldr	r2, [pc, #28]	; (8000ca0 <HAL_NVIC_SetPriorityGrouping+0x20>)
 8000c82:	68d3      	ldr	r3, [r2, #12]
 8000c84:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8000c88:	041b      	lsls	r3, r3, #16
 8000c8a:	0c1b      	lsrs	r3, r3, #16
 8000c8c:	0200      	lsls	r0, r0, #8
 8000c8e:	f400 60e0 	and.w	r0, r0, #1792	; 0x700
 8000c92:	4303      	orrs	r3, r0
 8000c94:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000c98:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000c9c:	60d3      	str	r3, [r2, #12]
 8000c9e:	4770      	bx	lr
 8000ca0:	e000ed00 	and	lr, r0, r0, lsl #26

08000ca4 <HAL_NVIC_SetPriority>:
 8000ca4:	b510      	push	{r4, lr}
 8000ca6:	4604      	mov	r4, r0
 8000ca8:	4b05      	ldr	r3, [pc, #20]	; (8000cc0 <HAL_NVIC_SetPriority+0x1c>)
 8000caa:	68d8      	ldr	r0, [r3, #12]
 8000cac:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8000cb0:	f7ff ffc6 	bl	8000c40 <NVIC_EncodePriority>
 8000cb4:	4601      	mov	r1, r0
 8000cb6:	4620      	mov	r0, r4
 8000cb8:	f7ff ffae 	bl	8000c18 <__NVIC_SetPriority>
 8000cbc:	bd10      	pop	{r4, pc}
 8000cbe:	bf00      	nop
 8000cc0:	e000ed00 	and	lr, r0, r0, lsl #26

08000cc4 <HAL_SYSTICK_Config>:
 8000cc4:	3801      	subs	r0, #1
 8000cc6:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 8000cca:	d20b      	bcs.n	8000ce4 <HAL_SYSTICK_Config+0x20>
 8000ccc:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 8000cd0:	6158      	str	r0, [r3, #20]
 8000cd2:	4a05      	ldr	r2, [pc, #20]	; (8000ce8 <HAL_SYSTICK_Config+0x24>)
 8000cd4:	21f0      	movs	r1, #240	; 0xf0
 8000cd6:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8000cda:	2000      	movs	r0, #0
 8000cdc:	6198      	str	r0, [r3, #24]
 8000cde:	2207      	movs	r2, #7
 8000ce0:	611a      	str	r2, [r3, #16]
 8000ce2:	4770      	bx	lr
 8000ce4:	2001      	movs	r0, #1
 8000ce6:	4770      	bx	lr
 8000ce8:	e000ed00 	and	lr, r0, r0, lsl #26

08000cec <SystemInit>:
 8000cec:	4770      	bx	lr
 8000cee:	0000      	movs	r0, r0

08000cf0 <Reset_Handler>:
 8000cf0:	f7ff fffc 	bl	8000cec <SystemInit>
 8000cf4:	480b      	ldr	r0, [pc, #44]	; (8000d24 <LoopFillZerobss+0xe>)
 8000cf6:	490c      	ldr	r1, [pc, #48]	; (8000d28 <LoopFillZerobss+0x12>)
 8000cf8:	4a0c      	ldr	r2, [pc, #48]	; (8000d2c <LoopFillZerobss+0x16>)
 8000cfa:	2300      	movs	r3, #0
 8000cfc:	e002      	b.n	8000d04 <LoopCopyDataInit>

08000cfe <CopyDataInit>:
 8000cfe:	58d4      	ldr	r4, [r2, r3]
 8000d00:	50c4      	str	r4, [r0, r3]
 8000d02:	3304      	adds	r3, #4

08000d04 <LoopCopyDataInit>:
 8000d04:	18c4      	adds	r4, r0, r3
 8000d06:	428c      	cmp	r4, r1
 8000d08:	d3f9      	bcc.n	8000cfe <CopyDataInit>
 8000d0a:	4a09      	ldr	r2, [pc, #36]	; (8000d30 <LoopFillZerobss+0x1a>)
 8000d0c:	4c09      	ldr	r4, [pc, #36]	; (8000d34 <LoopFillZerobss+0x1e>)
 8000d0e:	2300      	movs	r3, #0
 8000d10:	e001      	b.n	8000d16 <LoopFillZerobss>

08000d12 <FillZerobss>:
 8000d12:	6013      	str	r3, [r2, #0]
 8000d14:	3204      	adds	r2, #4

08000d16 <LoopFillZerobss>:
 8000d16:	42a2      	cmp	r2, r4
 8000d18:	d3fb      	bcc.n	8000d12 <FillZerobss>
 8000d1a:	f000 f817 	bl	8000d4c <__libc_init_array>
 8000d1e:	f7ff fac3 	bl	80002a8 <main>
 8000d22:	4770      	bx	lr
 8000d24:	20000000 	andcs	r0, r0, r0
 8000d28:	2000000c 	andcs	r0, r0, ip
 8000d2c:	08000dd8 	stmdaeq	r0, {r3, r4, r6, r7, r8, sl, fp}
 8000d30:	2000000c 	andcs	r0, r0, ip
 8000d34:	2000002c 	andcs	r0, r0, ip, lsr #32

08000d38 <ADC1_2_IRQHandler>:
 8000d38:	e7fe      	b.n	8000d38 <ADC1_2_IRQHandler>

08000d3a <memset>:
 8000d3a:	4603      	mov	r3, r0
 8000d3c:	4402      	add	r2, r0
 8000d3e:	4293      	cmp	r3, r2
 8000d40:	d100      	bne.n	8000d44 <memset+0xa>
 8000d42:	4770      	bx	lr
 8000d44:	f803 1b01 	strb.w	r1, [r3], #1
 8000d48:	e7f9      	b.n	8000d3e <memset+0x4>
 8000d4a:	0000      	movs	r0, r0

08000d4c <__libc_init_array>:
 8000d4c:	b570      	push	{r4, r5, r6, lr}
 8000d4e:	2600      	movs	r6, #0
 8000d50:	4d0c      	ldr	r5, [pc, #48]	; (8000d84 <__libc_init_array+0x38>)
 8000d52:	4c0d      	ldr	r4, [pc, #52]	; (8000d88 <__libc_init_array+0x3c>)
 8000d54:	1b64      	subs	r4, r4, r5
 8000d56:	10a4      	asrs	r4, r4, #2
 8000d58:	42a6      	cmp	r6, r4
 8000d5a:	d109      	bne.n	8000d70 <__libc_init_array+0x24>
 8000d5c:	f000 f81a 	bl	8000d94 <_init>
 8000d60:	2600      	movs	r6, #0
 8000d62:	4d0a      	ldr	r5, [pc, #40]	; (8000d8c <__libc_init_array+0x40>)
 8000d64:	4c0a      	ldr	r4, [pc, #40]	; (8000d90 <__libc_init_array+0x44>)
 8000d66:	1b64      	subs	r4, r4, r5
 8000d68:	10a4      	asrs	r4, r4, #2
 8000d6a:	42a6      	cmp	r6, r4
 8000d6c:	d105      	bne.n	8000d7a <__libc_init_array+0x2e>
 8000d6e:	bd70      	pop	{r4, r5, r6, pc}
 8000d70:	f855 3b04 	ldr.w	r3, [r5], #4
 8000d74:	4798      	blx	r3
 8000d76:	3601      	adds	r6, #1
 8000d78:	e7ee      	b.n	8000d58 <__libc_init_array+0xc>
 8000d7a:	f855 3b04 	ldr.w	r3, [r5], #4
 8000d7e:	4798      	blx	r3
 8000d80:	3601      	adds	r6, #1
 8000d82:	e7f2      	b.n	8000d6a <__libc_init_array+0x1e>
 8000d84:	08000dd0 	stmdaeq	r0, {r4, r6, r7, r8, sl, fp}
 8000d88:	08000dd0 	stmdaeq	r0, {r4, r6, r7, r8, sl, fp}
 8000d8c:	08000dd0 	stmdaeq	r0, {r4, r6, r7, r8, sl, fp}
 8000d90:	08000dd4 	stmdaeq	r0, {r2, r4, r6, r7, r8, sl, fp}

08000d94 <_init>:
 8000d94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d96:	bf00      	nop
 8000d98:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d9a:	bc08      	pop	{r3}
 8000d9c:	469e      	mov	lr, r3
 8000d9e:	4770      	bx	lr

08000da0 <_fini>:
 8000da0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000da2:	bf00      	nop
 8000da4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000da6:	bc08      	pop	{r3}
 8000da8:	469e      	mov	lr, r3
 8000daa:	4770      	bx	lr
