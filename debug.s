
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
 8000170:	08000d74 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl, fp}

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
 8000194:	08000d74 	stmdaeq	r0, {r2, r4, r5, r6, r8, sl, fp}

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
 80001e8:	f000 fd00 	bl	8000bec <HAL_GPIO_WritePin>
 80001ec:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80001f0:	9304      	str	r3, [sp, #16]
 80001f2:	2301      	movs	r3, #1
 80001f4:	9305      	str	r3, [sp, #20]
 80001f6:	9406      	str	r4, [sp, #24]
 80001f8:	2302      	movs	r3, #2
 80001fa:	9307      	str	r3, [sp, #28]
 80001fc:	a904      	add	r1, sp, #16
 80001fe:	4628      	mov	r0, r5
 8000200:	f000 fbe6 	bl	80009d0 <HAL_GPIO_Init>
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
 800021c:	f000 fce6 	bl	8000bec <HAL_GPIO_WritePin>
 8000220:	2064      	movs	r0, #100	; 0x64
 8000222:	f000 f8c3 	bl	80003ac <HAL_Delay>
 8000226:	2200      	movs	r2, #0
 8000228:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 800022c:	4620      	mov	r0, r4
 800022e:	f000 fcdd 	bl	8000bec <HAL_GPIO_WritePin>
 8000232:	2064      	movs	r0, #100	; 0x64
 8000234:	f000 f8ba 	bl	80003ac <HAL_Delay>
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
 800024e:	f000 fd64 	bl	8000d1a <memset>
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
 8000278:	f000 f8c2 	bl	8000400 <HAL_RCC_OscConfig>
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
 8000294:	f000 fae6 	bl	8000864 <HAL_RCC_ClockConfig>
 8000298:	b920      	cbnz	r0, 80002a4 <SystemClock_Config+0x60>
 800029a:	b011      	add	sp, #68	; 0x44
 800029c:	f85d fb04 	ldr.w	pc, [sp], #4
 80002a0:	f7ff ffce 	bl	8000240 <Error_Handler>
 80002a4:	f7ff ffcc 	bl	8000240 <Error_Handler>

080002a8 <main>:
 80002a8:	b508      	push	{r3, lr}
 80002aa:	f000 f85b 	bl	8000364 <HAL_Init>
 80002ae:	f7ff ffc9 	bl	8000244 <SystemClock_Config>
 80002b2:	f7ff ff71 	bl	8000198 <MX_GPIO_Init>
 80002b6:	f7ff ffab 	bl	8000210 <my_function>
 80002ba:	e7fc      	b.n	80002b6 <main+0xe>

080002bc <NMI_Handler>:
 80002bc:	e7fe      	b.n	80002bc <NMI_Handler>

080002be <HardFault_Handler>:
 80002be:	e7fe      	b.n	80002be <HardFault_Handler>

080002c0 <MemManage_Handler>:
 80002c0:	e7fe      	b.n	80002c0 <MemManage_Handler>

080002c2 <BusFault_Handler>:
 80002c2:	e7fe      	b.n	80002c2 <BusFault_Handler>

080002c4 <UsageFault_Handler>:
 80002c4:	e7fe      	b.n	80002c4 <UsageFault_Handler>

080002c6 <SVC_Handler>:
 80002c6:	4770      	bx	lr

080002c8 <DebugMon_Handler>:
 80002c8:	4770      	bx	lr

080002ca <PendSV_Handler>:
 80002ca:	4770      	bx	lr

080002cc <SysTick_Handler>:
 80002cc:	b508      	push	{r3, lr}
 80002ce:	f000 f85b 	bl	8000388 <HAL_IncTick>
 80002d2:	bd08      	pop	{r3, pc}

080002d4 <HAL_MspInit>:
 80002d4:	b082      	sub	sp, #8
 80002d6:	4b0e      	ldr	r3, [pc, #56]	; (8000310 <HAL_MspInit+0x3c>)
 80002d8:	699a      	ldr	r2, [r3, #24]
 80002da:	f042 0201 	orr.w	r2, r2, #1
 80002de:	619a      	str	r2, [r3, #24]
 80002e0:	699a      	ldr	r2, [r3, #24]
 80002e2:	f002 0201 	and.w	r2, r2, #1
 80002e6:	9200      	str	r2, [sp, #0]
 80002e8:	9a00      	ldr	r2, [sp, #0]
 80002ea:	69da      	ldr	r2, [r3, #28]
 80002ec:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 80002f0:	61da      	str	r2, [r3, #28]
 80002f2:	69db      	ldr	r3, [r3, #28]
 80002f4:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80002f8:	9301      	str	r3, [sp, #4]
 80002fa:	9b01      	ldr	r3, [sp, #4]
 80002fc:	4a05      	ldr	r2, [pc, #20]	; (8000314 <HAL_MspInit+0x40>)
 80002fe:	6853      	ldr	r3, [r2, #4]
 8000300:	f023 63e0 	bic.w	r3, r3, #117440512	; 0x7000000
 8000304:	f043 7300 	orr.w	r3, r3, #33554432	; 0x2000000
 8000308:	6053      	str	r3, [r2, #4]
 800030a:	b002      	add	sp, #8
 800030c:	4770      	bx	lr
 800030e:	bf00      	nop
 8000310:	40021000 	andmi	r1, r2, r0
 8000314:	40010000 	andmi	r0, r1, r0

08000318 <HAL_InitTick>:
 8000318:	b510      	push	{r4, lr}
 800031a:	4604      	mov	r4, r0
 800031c:	4b0e      	ldr	r3, [pc, #56]	; (8000358 <HAL_InitTick+0x40>)
 800031e:	781a      	ldrb	r2, [r3, #0]
 8000320:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000324:	fbb3 f3f2 	udiv	r3, r3, r2
 8000328:	4a0c      	ldr	r2, [pc, #48]	; (800035c <HAL_InitTick+0x44>)
 800032a:	6810      	ldr	r0, [r2, #0]
 800032c:	fbb0 f0f3 	udiv	r0, r0, r3
 8000330:	f000 fcb8 	bl	8000ca4 <HAL_SYSTICK_Config>
 8000334:	b968      	cbnz	r0, 8000352 <HAL_InitTick+0x3a>
 8000336:	2c0f      	cmp	r4, #15
 8000338:	d901      	bls.n	800033e <HAL_InitTick+0x26>
 800033a:	2001      	movs	r0, #1
 800033c:	e00a      	b.n	8000354 <HAL_InitTick+0x3c>
 800033e:	2200      	movs	r2, #0
 8000340:	4621      	mov	r1, r4
 8000342:	f04f 30ff 	mov.w	r0, #4294967295
 8000346:	f000 fc9d 	bl	8000c84 <HAL_NVIC_SetPriority>
 800034a:	4b05      	ldr	r3, [pc, #20]	; (8000360 <HAL_InitTick+0x48>)
 800034c:	601c      	str	r4, [r3, #0]
 800034e:	2000      	movs	r0, #0
 8000350:	e000      	b.n	8000354 <HAL_InitTick+0x3c>
 8000352:	2001      	movs	r0, #1
 8000354:	bd10      	pop	{r4, pc}
 8000356:	bf00      	nop
 8000358:	20000000 	andcs	r0, r0, r0
 800035c:	20000008 	andcs	r0, r0, r8
 8000360:	20000004 	andcs	r0, r0, r4

08000364 <HAL_Init>:
 8000364:	b508      	push	{r3, lr}
 8000366:	4a07      	ldr	r2, [pc, #28]	; (8000384 <HAL_Init+0x20>)
 8000368:	6813      	ldr	r3, [r2, #0]
 800036a:	f043 0310 	orr.w	r3, r3, #16
 800036e:	6013      	str	r3, [r2, #0]
 8000370:	2003      	movs	r0, #3
 8000372:	f000 fc75 	bl	8000c60 <HAL_NVIC_SetPriorityGrouping>
 8000376:	200f      	movs	r0, #15
 8000378:	f7ff ffce 	bl	8000318 <HAL_InitTick>
 800037c:	f7ff ffaa 	bl	80002d4 <HAL_MspInit>
 8000380:	2000      	movs	r0, #0
 8000382:	bd08      	pop	{r3, pc}
 8000384:	40022000 	andmi	r2, r2, r0

08000388 <HAL_IncTick>:
 8000388:	4a03      	ldr	r2, [pc, #12]	; (8000398 <HAL_IncTick+0x10>)
 800038a:	6811      	ldr	r1, [r2, #0]
 800038c:	4b03      	ldr	r3, [pc, #12]	; (800039c <HAL_IncTick+0x14>)
 800038e:	781b      	ldrb	r3, [r3, #0]
 8000390:	440b      	add	r3, r1
 8000392:	6013      	str	r3, [r2, #0]
 8000394:	4770      	bx	lr
 8000396:	bf00      	nop
 8000398:	20000028 	andcs	r0, r0, r8, lsr #32
 800039c:	20000000 	andcs	r0, r0, r0

080003a0 <HAL_GetTick>:
 80003a0:	4b01      	ldr	r3, [pc, #4]	; (80003a8 <HAL_GetTick+0x8>)
 80003a2:	6818      	ldr	r0, [r3, #0]
 80003a4:	4770      	bx	lr
 80003a6:	bf00      	nop
 80003a8:	20000028 	andcs	r0, r0, r8, lsr #32

080003ac <HAL_Delay>:
 80003ac:	b538      	push	{r3, r4, r5, lr}
 80003ae:	4604      	mov	r4, r0
 80003b0:	f7ff fff6 	bl	80003a0 <HAL_GetTick>
 80003b4:	4605      	mov	r5, r0
 80003b6:	f1b4 3fff 	cmp.w	r4, #4294967295
 80003ba:	d002      	beq.n	80003c2 <HAL_Delay+0x16>
 80003bc:	4b04      	ldr	r3, [pc, #16]	; (80003d0 <HAL_Delay+0x24>)
 80003be:	781b      	ldrb	r3, [r3, #0]
 80003c0:	441c      	add	r4, r3
 80003c2:	f7ff ffed 	bl	80003a0 <HAL_GetTick>
 80003c6:	1b40      	subs	r0, r0, r5
 80003c8:	42a0      	cmp	r0, r4
 80003ca:	d3fa      	bcc.n	80003c2 <HAL_Delay+0x16>
 80003cc:	bd38      	pop	{r3, r4, r5, pc}
 80003ce:	bf00      	nop
 80003d0:	20000000 	andcs	r0, r0, r0

080003d4 <RCC_Delay>:
 80003d4:	b082      	sub	sp, #8
 80003d6:	4b08      	ldr	r3, [pc, #32]	; (80003f8 <RCC_Delay+0x24>)
 80003d8:	681b      	ldr	r3, [r3, #0]
 80003da:	4a08      	ldr	r2, [pc, #32]	; (80003fc <RCC_Delay+0x28>)
 80003dc:	fba2 2303 	umull	r2, r3, r2, r3
 80003e0:	0a5b      	lsrs	r3, r3, #9
 80003e2:	fb00 f303 	mul.w	r3, r0, r3
 80003e6:	9301      	str	r3, [sp, #4]
 80003e8:	bf00      	nop
 80003ea:	9b01      	ldr	r3, [sp, #4]
 80003ec:	1e5a      	subs	r2, r3, #1
 80003ee:	9201      	str	r2, [sp, #4]
 80003f0:	2b00      	cmp	r3, #0
 80003f2:	d1f9      	bne.n	80003e8 <RCC_Delay+0x14>
 80003f4:	b002      	add	sp, #8
 80003f6:	4770      	bx	lr
 80003f8:	20000008 	andcs	r0, r0, r8
 80003fc:	10624dd3 	ldrdne	r4, [r2], #-211	; 0xffffff2d	; <UNPREDICTABLE>

08000400 <HAL_RCC_OscConfig>:
 8000400:	2800      	cmp	r0, #0
 8000402:	f000 81f1 	beq.w	80007e8 <HAL_RCC_OscConfig+0x3e8>
 8000406:	b570      	push	{r4, r5, r6, lr}
 8000408:	b082      	sub	sp, #8
 800040a:	4604      	mov	r4, r0
 800040c:	6803      	ldr	r3, [r0, #0]
 800040e:	f013 0f01 	tst.w	r3, #1
 8000412:	d02c      	beq.n	800046e <HAL_RCC_OscConfig+0x6e>
 8000414:	4b99      	ldr	r3, [pc, #612]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000416:	685b      	ldr	r3, [r3, #4]
 8000418:	f003 030c 	and.w	r3, r3, #12
 800041c:	2b04      	cmp	r3, #4
 800041e:	d01d      	beq.n	800045c <HAL_RCC_OscConfig+0x5c>
 8000420:	4b96      	ldr	r3, [pc, #600]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000422:	685b      	ldr	r3, [r3, #4]
 8000424:	f003 030c 	and.w	r3, r3, #12
 8000428:	2b08      	cmp	r3, #8
 800042a:	d012      	beq.n	8000452 <HAL_RCC_OscConfig+0x52>
 800042c:	6863      	ldr	r3, [r4, #4]
 800042e:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000432:	d041      	beq.n	80004b8 <HAL_RCC_OscConfig+0xb8>
 8000434:	2b00      	cmp	r3, #0
 8000436:	d155      	bne.n	80004e4 <HAL_RCC_OscConfig+0xe4>
 8000438:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 800043c:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 8000440:	681a      	ldr	r2, [r3, #0]
 8000442:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8000446:	601a      	str	r2, [r3, #0]
 8000448:	681a      	ldr	r2, [r3, #0]
 800044a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800044e:	601a      	str	r2, [r3, #0]
 8000450:	e037      	b.n	80004c2 <HAL_RCC_OscConfig+0xc2>
 8000452:	4b8a      	ldr	r3, [pc, #552]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000454:	685b      	ldr	r3, [r3, #4]
 8000456:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800045a:	d0e7      	beq.n	800042c <HAL_RCC_OscConfig+0x2c>
 800045c:	4b87      	ldr	r3, [pc, #540]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 800045e:	681b      	ldr	r3, [r3, #0]
 8000460:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000464:	d003      	beq.n	800046e <HAL_RCC_OscConfig+0x6e>
 8000466:	6863      	ldr	r3, [r4, #4]
 8000468:	2b00      	cmp	r3, #0
 800046a:	f000 81bf 	beq.w	80007ec <HAL_RCC_OscConfig+0x3ec>
 800046e:	6823      	ldr	r3, [r4, #0]
 8000470:	f013 0f02 	tst.w	r3, #2
 8000474:	d075      	beq.n	8000562 <HAL_RCC_OscConfig+0x162>
 8000476:	4b81      	ldr	r3, [pc, #516]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000478:	685b      	ldr	r3, [r3, #4]
 800047a:	f013 0f0c 	tst.w	r3, #12
 800047e:	d05f      	beq.n	8000540 <HAL_RCC_OscConfig+0x140>
 8000480:	4b7e      	ldr	r3, [pc, #504]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000482:	685b      	ldr	r3, [r3, #4]
 8000484:	f003 030c 	and.w	r3, r3, #12
 8000488:	2b08      	cmp	r3, #8
 800048a:	d054      	beq.n	8000536 <HAL_RCC_OscConfig+0x136>
 800048c:	6923      	ldr	r3, [r4, #16]
 800048e:	2b00      	cmp	r3, #0
 8000490:	f000 808a 	beq.w	80005a8 <HAL_RCC_OscConfig+0x1a8>
 8000494:	4b7a      	ldr	r3, [pc, #488]	; (8000680 <HAL_RCC_OscConfig+0x280>)
 8000496:	2201      	movs	r2, #1
 8000498:	601a      	str	r2, [r3, #0]
 800049a:	f7ff ff81 	bl	80003a0 <HAL_GetTick>
 800049e:	4605      	mov	r5, r0
 80004a0:	4b76      	ldr	r3, [pc, #472]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80004a2:	681b      	ldr	r3, [r3, #0]
 80004a4:	f013 0f02 	tst.w	r3, #2
 80004a8:	d175      	bne.n	8000596 <HAL_RCC_OscConfig+0x196>
 80004aa:	f7ff ff79 	bl	80003a0 <HAL_GetTick>
 80004ae:	1b40      	subs	r0, r0, r5
 80004b0:	2802      	cmp	r0, #2
 80004b2:	d9f5      	bls.n	80004a0 <HAL_RCC_OscConfig+0xa0>
 80004b4:	2003      	movs	r0, #3
 80004b6:	e19e      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80004b8:	4a70      	ldr	r2, [pc, #448]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80004ba:	6813      	ldr	r3, [r2, #0]
 80004bc:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80004c0:	6013      	str	r3, [r2, #0]
 80004c2:	6863      	ldr	r3, [r4, #4]
 80004c4:	b343      	cbz	r3, 8000518 <HAL_RCC_OscConfig+0x118>
 80004c6:	f7ff ff6b 	bl	80003a0 <HAL_GetTick>
 80004ca:	4605      	mov	r5, r0
 80004cc:	4b6b      	ldr	r3, [pc, #428]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80004ce:	681b      	ldr	r3, [r3, #0]
 80004d0:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 80004d4:	d1cb      	bne.n	800046e <HAL_RCC_OscConfig+0x6e>
 80004d6:	f7ff ff63 	bl	80003a0 <HAL_GetTick>
 80004da:	1b40      	subs	r0, r0, r5
 80004dc:	2864      	cmp	r0, #100	; 0x64
 80004de:	d9f5      	bls.n	80004cc <HAL_RCC_OscConfig+0xcc>
 80004e0:	2003      	movs	r0, #3
 80004e2:	e188      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80004e4:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 80004e8:	d009      	beq.n	80004fe <HAL_RCC_OscConfig+0xfe>
 80004ea:	4b64      	ldr	r3, [pc, #400]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80004ec:	681a      	ldr	r2, [r3, #0]
 80004ee:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80004f2:	601a      	str	r2, [r3, #0]
 80004f4:	681a      	ldr	r2, [r3, #0]
 80004f6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80004fa:	601a      	str	r2, [r3, #0]
 80004fc:	e7e1      	b.n	80004c2 <HAL_RCC_OscConfig+0xc2>
 80004fe:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000502:	f5a3 333c 	sub.w	r3, r3, #192512	; 0x2f000
 8000506:	681a      	ldr	r2, [r3, #0]
 8000508:	f442 2280 	orr.w	r2, r2, #262144	; 0x40000
 800050c:	601a      	str	r2, [r3, #0]
 800050e:	681a      	ldr	r2, [r3, #0]
 8000510:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8000514:	601a      	str	r2, [r3, #0]
 8000516:	e7d4      	b.n	80004c2 <HAL_RCC_OscConfig+0xc2>
 8000518:	f7ff ff42 	bl	80003a0 <HAL_GetTick>
 800051c:	4605      	mov	r5, r0
 800051e:	4b57      	ldr	r3, [pc, #348]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000520:	681b      	ldr	r3, [r3, #0]
 8000522:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000526:	d0a2      	beq.n	800046e <HAL_RCC_OscConfig+0x6e>
 8000528:	f7ff ff3a 	bl	80003a0 <HAL_GetTick>
 800052c:	1b40      	subs	r0, r0, r5
 800052e:	2864      	cmp	r0, #100	; 0x64
 8000530:	d9f5      	bls.n	800051e <HAL_RCC_OscConfig+0x11e>
 8000532:	2003      	movs	r0, #3
 8000534:	e15f      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000536:	4b51      	ldr	r3, [pc, #324]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000538:	685b      	ldr	r3, [r3, #4]
 800053a:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800053e:	d1a5      	bne.n	800048c <HAL_RCC_OscConfig+0x8c>
 8000540:	4b4e      	ldr	r3, [pc, #312]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000542:	681b      	ldr	r3, [r3, #0]
 8000544:	f013 0f02 	tst.w	r3, #2
 8000548:	d003      	beq.n	8000552 <HAL_RCC_OscConfig+0x152>
 800054a:	6923      	ldr	r3, [r4, #16]
 800054c:	2b01      	cmp	r3, #1
 800054e:	f040 814f 	bne.w	80007f0 <HAL_RCC_OscConfig+0x3f0>
 8000552:	4a4a      	ldr	r2, [pc, #296]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000554:	6813      	ldr	r3, [r2, #0]
 8000556:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 800055a:	6961      	ldr	r1, [r4, #20]
 800055c:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 8000560:	6013      	str	r3, [r2, #0]
 8000562:	6823      	ldr	r3, [r4, #0]
 8000564:	f013 0f08 	tst.w	r3, #8
 8000568:	d033      	beq.n	80005d2 <HAL_RCC_OscConfig+0x1d2>
 800056a:	69a3      	ldr	r3, [r4, #24]
 800056c:	2b00      	cmp	r3, #0
 800056e:	d05c      	beq.n	800062a <HAL_RCC_OscConfig+0x22a>
 8000570:	4b43      	ldr	r3, [pc, #268]	; (8000680 <HAL_RCC_OscConfig+0x280>)
 8000572:	2201      	movs	r2, #1
 8000574:	f8c3 2480 	str.w	r2, [r3, #1152]	; 0x480
 8000578:	f7ff ff12 	bl	80003a0 <HAL_GetTick>
 800057c:	4605      	mov	r5, r0
 800057e:	4b3f      	ldr	r3, [pc, #252]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000580:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000582:	f013 0f02 	tst.w	r3, #2
 8000586:	d121      	bne.n	80005cc <HAL_RCC_OscConfig+0x1cc>
 8000588:	f7ff ff0a 	bl	80003a0 <HAL_GetTick>
 800058c:	1b40      	subs	r0, r0, r5
 800058e:	2802      	cmp	r0, #2
 8000590:	d9f5      	bls.n	800057e <HAL_RCC_OscConfig+0x17e>
 8000592:	2003      	movs	r0, #3
 8000594:	e12f      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000596:	4a39      	ldr	r2, [pc, #228]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 8000598:	6813      	ldr	r3, [r2, #0]
 800059a:	f023 03f8 	bic.w	r3, r3, #248	; 0xf8
 800059e:	6961      	ldr	r1, [r4, #20]
 80005a0:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 80005a4:	6013      	str	r3, [r2, #0]
 80005a6:	e7dc      	b.n	8000562 <HAL_RCC_OscConfig+0x162>
 80005a8:	4b35      	ldr	r3, [pc, #212]	; (8000680 <HAL_RCC_OscConfig+0x280>)
 80005aa:	2200      	movs	r2, #0
 80005ac:	601a      	str	r2, [r3, #0]
 80005ae:	f7ff fef7 	bl	80003a0 <HAL_GetTick>
 80005b2:	4605      	mov	r5, r0
 80005b4:	4b31      	ldr	r3, [pc, #196]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80005b6:	681b      	ldr	r3, [r3, #0]
 80005b8:	f013 0f02 	tst.w	r3, #2
 80005bc:	d0d1      	beq.n	8000562 <HAL_RCC_OscConfig+0x162>
 80005be:	f7ff feef 	bl	80003a0 <HAL_GetTick>
 80005c2:	1b40      	subs	r0, r0, r5
 80005c4:	2802      	cmp	r0, #2
 80005c6:	d9f5      	bls.n	80005b4 <HAL_RCC_OscConfig+0x1b4>
 80005c8:	2003      	movs	r0, #3
 80005ca:	e114      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80005cc:	2001      	movs	r0, #1
 80005ce:	f7ff ff01 	bl	80003d4 <RCC_Delay>
 80005d2:	6823      	ldr	r3, [r4, #0]
 80005d4:	f013 0f04 	tst.w	r3, #4
 80005d8:	f000 8096 	beq.w	8000708 <HAL_RCC_OscConfig+0x308>
 80005dc:	4b27      	ldr	r3, [pc, #156]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80005de:	69db      	ldr	r3, [r3, #28]
 80005e0:	f013 5f80 	tst.w	r3, #268435456	; 0x10000000
 80005e4:	d134      	bne.n	8000650 <HAL_RCC_OscConfig+0x250>
 80005e6:	4b25      	ldr	r3, [pc, #148]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 80005e8:	69da      	ldr	r2, [r3, #28]
 80005ea:	f042 5280 	orr.w	r2, r2, #268435456	; 0x10000000
 80005ee:	61da      	str	r2, [r3, #28]
 80005f0:	69db      	ldr	r3, [r3, #28]
 80005f2:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80005f6:	9301      	str	r3, [sp, #4]
 80005f8:	9b01      	ldr	r3, [sp, #4]
 80005fa:	2501      	movs	r5, #1
 80005fc:	4b21      	ldr	r3, [pc, #132]	; (8000684 <HAL_RCC_OscConfig+0x284>)
 80005fe:	681b      	ldr	r3, [r3, #0]
 8000600:	f413 7f80 	tst.w	r3, #256	; 0x100
 8000604:	d026      	beq.n	8000654 <HAL_RCC_OscConfig+0x254>
 8000606:	68e3      	ldr	r3, [r4, #12]
 8000608:	2b01      	cmp	r3, #1
 800060a:	d03d      	beq.n	8000688 <HAL_RCC_OscConfig+0x288>
 800060c:	2b00      	cmp	r3, #0
 800060e:	d153      	bne.n	80006b8 <HAL_RCC_OscConfig+0x2b8>
 8000610:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 8000614:	f503 3304 	add.w	r3, r3, #135168	; 0x21000
 8000618:	6a1a      	ldr	r2, [r3, #32]
 800061a:	f022 0201 	bic.w	r2, r2, #1
 800061e:	621a      	str	r2, [r3, #32]
 8000620:	6a1a      	ldr	r2, [r3, #32]
 8000622:	f022 0204 	bic.w	r2, r2, #4
 8000626:	621a      	str	r2, [r3, #32]
 8000628:	e033      	b.n	8000692 <HAL_RCC_OscConfig+0x292>
 800062a:	4b15      	ldr	r3, [pc, #84]	; (8000680 <HAL_RCC_OscConfig+0x280>)
 800062c:	2200      	movs	r2, #0
 800062e:	f8c3 2480 	str.w	r2, [r3, #1152]	; 0x480
 8000632:	f7ff feb5 	bl	80003a0 <HAL_GetTick>
 8000636:	4605      	mov	r5, r0
 8000638:	4b10      	ldr	r3, [pc, #64]	; (800067c <HAL_RCC_OscConfig+0x27c>)
 800063a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800063c:	f013 0f02 	tst.w	r3, #2
 8000640:	d0c7      	beq.n	80005d2 <HAL_RCC_OscConfig+0x1d2>
 8000642:	f7ff fead 	bl	80003a0 <HAL_GetTick>
 8000646:	1b40      	subs	r0, r0, r5
 8000648:	2802      	cmp	r0, #2
 800064a:	d9f5      	bls.n	8000638 <HAL_RCC_OscConfig+0x238>
 800064c:	2003      	movs	r0, #3
 800064e:	e0d2      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000650:	2500      	movs	r5, #0
 8000652:	e7d3      	b.n	80005fc <HAL_RCC_OscConfig+0x1fc>
 8000654:	4a0b      	ldr	r2, [pc, #44]	; (8000684 <HAL_RCC_OscConfig+0x284>)
 8000656:	6813      	ldr	r3, [r2, #0]
 8000658:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800065c:	6013      	str	r3, [r2, #0]
 800065e:	f7ff fe9f 	bl	80003a0 <HAL_GetTick>
 8000662:	4606      	mov	r6, r0
 8000664:	4b07      	ldr	r3, [pc, #28]	; (8000684 <HAL_RCC_OscConfig+0x284>)
 8000666:	681b      	ldr	r3, [r3, #0]
 8000668:	f413 7f80 	tst.w	r3, #256	; 0x100
 800066c:	d1cb      	bne.n	8000606 <HAL_RCC_OscConfig+0x206>
 800066e:	f7ff fe97 	bl	80003a0 <HAL_GetTick>
 8000672:	1b80      	subs	r0, r0, r6
 8000674:	2864      	cmp	r0, #100	; 0x64
 8000676:	d9f5      	bls.n	8000664 <HAL_RCC_OscConfig+0x264>
 8000678:	2003      	movs	r0, #3
 800067a:	e0bc      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 800067c:	40021000 	andmi	r1, r2, r0
 8000680:	42420000 	submi	r0, r2, #0
 8000684:	40007000 	andmi	r7, r0, r0
 8000688:	4a5f      	ldr	r2, [pc, #380]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 800068a:	6a13      	ldr	r3, [r2, #32]
 800068c:	f043 0301 	orr.w	r3, r3, #1
 8000690:	6213      	str	r3, [r2, #32]
 8000692:	68e3      	ldr	r3, [r4, #12]
 8000694:	b333      	cbz	r3, 80006e4 <HAL_RCC_OscConfig+0x2e4>
 8000696:	f7ff fe83 	bl	80003a0 <HAL_GetTick>
 800069a:	4606      	mov	r6, r0
 800069c:	4b5a      	ldr	r3, [pc, #360]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 800069e:	6a1b      	ldr	r3, [r3, #32]
 80006a0:	f013 0f02 	tst.w	r3, #2
 80006a4:	d12f      	bne.n	8000706 <HAL_RCC_OscConfig+0x306>
 80006a6:	f7ff fe7b 	bl	80003a0 <HAL_GetTick>
 80006aa:	1b80      	subs	r0, r0, r6
 80006ac:	f241 3388 	movw	r3, #5000	; 0x1388
 80006b0:	4298      	cmp	r0, r3
 80006b2:	d9f3      	bls.n	800069c <HAL_RCC_OscConfig+0x29c>
 80006b4:	2003      	movs	r0, #3
 80006b6:	e09e      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80006b8:	2b05      	cmp	r3, #5
 80006ba:	d009      	beq.n	80006d0 <HAL_RCC_OscConfig+0x2d0>
 80006bc:	4b52      	ldr	r3, [pc, #328]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 80006be:	6a1a      	ldr	r2, [r3, #32]
 80006c0:	f022 0201 	bic.w	r2, r2, #1
 80006c4:	621a      	str	r2, [r3, #32]
 80006c6:	6a1a      	ldr	r2, [r3, #32]
 80006c8:	f022 0204 	bic.w	r2, r2, #4
 80006cc:	621a      	str	r2, [r3, #32]
 80006ce:	e7e0      	b.n	8000692 <HAL_RCC_OscConfig+0x292>
 80006d0:	4b4d      	ldr	r3, [pc, #308]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 80006d2:	6a1a      	ldr	r2, [r3, #32]
 80006d4:	f042 0204 	orr.w	r2, r2, #4
 80006d8:	621a      	str	r2, [r3, #32]
 80006da:	6a1a      	ldr	r2, [r3, #32]
 80006dc:	f042 0201 	orr.w	r2, r2, #1
 80006e0:	621a      	str	r2, [r3, #32]
 80006e2:	e7d6      	b.n	8000692 <HAL_RCC_OscConfig+0x292>
 80006e4:	f7ff fe5c 	bl	80003a0 <HAL_GetTick>
 80006e8:	4606      	mov	r6, r0
 80006ea:	4b47      	ldr	r3, [pc, #284]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 80006ec:	6a1b      	ldr	r3, [r3, #32]
 80006ee:	f013 0f02 	tst.w	r3, #2
 80006f2:	d008      	beq.n	8000706 <HAL_RCC_OscConfig+0x306>
 80006f4:	f7ff fe54 	bl	80003a0 <HAL_GetTick>
 80006f8:	1b80      	subs	r0, r0, r6
 80006fa:	f241 3388 	movw	r3, #5000	; 0x1388
 80006fe:	4298      	cmp	r0, r3
 8000700:	d9f3      	bls.n	80006ea <HAL_RCC_OscConfig+0x2ea>
 8000702:	2003      	movs	r0, #3
 8000704:	e077      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000706:	b9e5      	cbnz	r5, 8000742 <HAL_RCC_OscConfig+0x342>
 8000708:	69e3      	ldr	r3, [r4, #28]
 800070a:	2b00      	cmp	r3, #0
 800070c:	d072      	beq.n	80007f4 <HAL_RCC_OscConfig+0x3f4>
 800070e:	4a3e      	ldr	r2, [pc, #248]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 8000710:	6852      	ldr	r2, [r2, #4]
 8000712:	f002 020c 	and.w	r2, r2, #12
 8000716:	2a08      	cmp	r2, #8
 8000718:	d056      	beq.n	80007c8 <HAL_RCC_OscConfig+0x3c8>
 800071a:	2b02      	cmp	r3, #2
 800071c:	d017      	beq.n	800074e <HAL_RCC_OscConfig+0x34e>
 800071e:	4b3b      	ldr	r3, [pc, #236]	; (800080c <HAL_RCC_OscConfig+0x40c>)
 8000720:	2200      	movs	r2, #0
 8000722:	661a      	str	r2, [r3, #96]	; 0x60
 8000724:	f7ff fe3c 	bl	80003a0 <HAL_GetTick>
 8000728:	4604      	mov	r4, r0
 800072a:	4b37      	ldr	r3, [pc, #220]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 800072c:	681b      	ldr	r3, [r3, #0]
 800072e:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 8000732:	d047      	beq.n	80007c4 <HAL_RCC_OscConfig+0x3c4>
 8000734:	f7ff fe34 	bl	80003a0 <HAL_GetTick>
 8000738:	1b00      	subs	r0, r0, r4
 800073a:	2802      	cmp	r0, #2
 800073c:	d9f5      	bls.n	800072a <HAL_RCC_OscConfig+0x32a>
 800073e:	2003      	movs	r0, #3
 8000740:	e059      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000742:	4a31      	ldr	r2, [pc, #196]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 8000744:	69d3      	ldr	r3, [r2, #28]
 8000746:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 800074a:	61d3      	str	r3, [r2, #28]
 800074c:	e7dc      	b.n	8000708 <HAL_RCC_OscConfig+0x308>
 800074e:	4b2f      	ldr	r3, [pc, #188]	; (800080c <HAL_RCC_OscConfig+0x40c>)
 8000750:	2200      	movs	r2, #0
 8000752:	661a      	str	r2, [r3, #96]	; 0x60
 8000754:	f7ff fe24 	bl	80003a0 <HAL_GetTick>
 8000758:	4605      	mov	r5, r0
 800075a:	4b2b      	ldr	r3, [pc, #172]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 800075c:	681b      	ldr	r3, [r3, #0]
 800075e:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 8000762:	d006      	beq.n	8000772 <HAL_RCC_OscConfig+0x372>
 8000764:	f7ff fe1c 	bl	80003a0 <HAL_GetTick>
 8000768:	1b40      	subs	r0, r0, r5
 800076a:	2802      	cmp	r0, #2
 800076c:	d9f5      	bls.n	800075a <HAL_RCC_OscConfig+0x35a>
 800076e:	2003      	movs	r0, #3
 8000770:	e041      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000772:	6a23      	ldr	r3, [r4, #32]
 8000774:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000778:	d01a      	beq.n	80007b0 <HAL_RCC_OscConfig+0x3b0>
 800077a:	4923      	ldr	r1, [pc, #140]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 800077c:	684b      	ldr	r3, [r1, #4]
 800077e:	f423 1374 	bic.w	r3, r3, #3997696	; 0x3d0000
 8000782:	6a22      	ldr	r2, [r4, #32]
 8000784:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8000786:	4302      	orrs	r2, r0
 8000788:	4313      	orrs	r3, r2
 800078a:	604b      	str	r3, [r1, #4]
 800078c:	4b1f      	ldr	r3, [pc, #124]	; (800080c <HAL_RCC_OscConfig+0x40c>)
 800078e:	2201      	movs	r2, #1
 8000790:	661a      	str	r2, [r3, #96]	; 0x60
 8000792:	f7ff fe05 	bl	80003a0 <HAL_GetTick>
 8000796:	4604      	mov	r4, r0
 8000798:	4b1b      	ldr	r3, [pc, #108]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 800079a:	681b      	ldr	r3, [r3, #0]
 800079c:	f013 7f00 	tst.w	r3, #33554432	; 0x2000000
 80007a0:	d10e      	bne.n	80007c0 <HAL_RCC_OscConfig+0x3c0>
 80007a2:	f7ff fdfd 	bl	80003a0 <HAL_GetTick>
 80007a6:	1b00      	subs	r0, r0, r4
 80007a8:	2802      	cmp	r0, #2
 80007aa:	d9f5      	bls.n	8000798 <HAL_RCC_OscConfig+0x398>
 80007ac:	2003      	movs	r0, #3
 80007ae:	e022      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007b0:	4a15      	ldr	r2, [pc, #84]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 80007b2:	6853      	ldr	r3, [r2, #4]
 80007b4:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 80007b8:	68a1      	ldr	r1, [r4, #8]
 80007ba:	430b      	orrs	r3, r1
 80007bc:	6053      	str	r3, [r2, #4]
 80007be:	e7dc      	b.n	800077a <HAL_RCC_OscConfig+0x37a>
 80007c0:	2000      	movs	r0, #0
 80007c2:	e018      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007c4:	2000      	movs	r0, #0
 80007c6:	e016      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007c8:	2b01      	cmp	r3, #1
 80007ca:	d016      	beq.n	80007fa <HAL_RCC_OscConfig+0x3fa>
 80007cc:	4b0e      	ldr	r3, [pc, #56]	; (8000808 <HAL_RCC_OscConfig+0x408>)
 80007ce:	685b      	ldr	r3, [r3, #4]
 80007d0:	f403 3180 	and.w	r1, r3, #65536	; 0x10000
 80007d4:	6a22      	ldr	r2, [r4, #32]
 80007d6:	4291      	cmp	r1, r2
 80007d8:	d111      	bne.n	80007fe <HAL_RCC_OscConfig+0x3fe>
 80007da:	f403 1370 	and.w	r3, r3, #3932160	; 0x3c0000
 80007de:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80007e0:	4293      	cmp	r3, r2
 80007e2:	d10e      	bne.n	8000802 <HAL_RCC_OscConfig+0x402>
 80007e4:	2000      	movs	r0, #0
 80007e6:	e006      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007e8:	2001      	movs	r0, #1
 80007ea:	4770      	bx	lr
 80007ec:	2001      	movs	r0, #1
 80007ee:	e002      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007f0:	2001      	movs	r0, #1
 80007f2:	e000      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007f4:	2000      	movs	r0, #0
 80007f6:	b002      	add	sp, #8
 80007f8:	bd70      	pop	{r4, r5, r6, pc}
 80007fa:	2001      	movs	r0, #1
 80007fc:	e7fb      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 80007fe:	2001      	movs	r0, #1
 8000800:	e7f9      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000802:	2001      	movs	r0, #1
 8000804:	e7f7      	b.n	80007f6 <HAL_RCC_OscConfig+0x3f6>
 8000806:	bf00      	nop
 8000808:	40021000 	andmi	r1, r2, r0
 800080c:	42420000 	submi	r0, r2, #0

08000810 <HAL_RCC_GetSysClockFreq>:
 8000810:	4b0f      	ldr	r3, [pc, #60]	; (8000850 <HAL_RCC_GetSysClockFreq+0x40>)
 8000812:	685b      	ldr	r3, [r3, #4]
 8000814:	f003 020c 	and.w	r2, r3, #12
 8000818:	2a08      	cmp	r2, #8
 800081a:	d001      	beq.n	8000820 <HAL_RCC_GetSysClockFreq+0x10>
 800081c:	480d      	ldr	r0, [pc, #52]	; (8000854 <HAL_RCC_GetSysClockFreq+0x44>)
 800081e:	4770      	bx	lr
 8000820:	f3c3 4283 	ubfx	r2, r3, #18, #4
 8000824:	490c      	ldr	r1, [pc, #48]	; (8000858 <HAL_RCC_GetSysClockFreq+0x48>)
 8000826:	5c88      	ldrb	r0, [r1, r2]
 8000828:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 800082c:	d00b      	beq.n	8000846 <HAL_RCC_GetSysClockFreq+0x36>
 800082e:	4b08      	ldr	r3, [pc, #32]	; (8000850 <HAL_RCC_GetSysClockFreq+0x40>)
 8000830:	685b      	ldr	r3, [r3, #4]
 8000832:	f3c3 4340 	ubfx	r3, r3, #17, #1
 8000836:	4a09      	ldr	r2, [pc, #36]	; (800085c <HAL_RCC_GetSysClockFreq+0x4c>)
 8000838:	5cd3      	ldrb	r3, [r2, r3]
 800083a:	4a06      	ldr	r2, [pc, #24]	; (8000854 <HAL_RCC_GetSysClockFreq+0x44>)
 800083c:	fb02 f000 	mul.w	r0, r2, r0
 8000840:	fbb0 f0f3 	udiv	r0, r0, r3
 8000844:	4770      	bx	lr
 8000846:	4b06      	ldr	r3, [pc, #24]	; (8000860 <HAL_RCC_GetSysClockFreq+0x50>)
 8000848:	fb03 f000 	mul.w	r0, r3, r0
 800084c:	4770      	bx	lr
 800084e:	bf00      	nop
 8000850:	40021000 	andmi	r1, r2, r0
 8000854:	007a1200 	rsbseq	r1, sl, r0, lsl #4
 8000858:	08000d90 	stmdaeq	r0, {r4, r7, r8, sl, fp}
 800085c:	08000d8c 	stmdaeq	r0, {r2, r3, r7, r8, sl, fp}
 8000860:	003d0900 	eorseq	r0, sp, r0, lsl #18

08000864 <HAL_RCC_ClockConfig>:
 8000864:	2800      	cmp	r0, #0
 8000866:	f000 80a0 	beq.w	80009aa <HAL_RCC_ClockConfig+0x146>
 800086a:	b570      	push	{r4, r5, r6, lr}
 800086c:	460d      	mov	r5, r1
 800086e:	4604      	mov	r4, r0
 8000870:	4b52      	ldr	r3, [pc, #328]	; (80009bc <HAL_RCC_ClockConfig+0x158>)
 8000872:	681b      	ldr	r3, [r3, #0]
 8000874:	f003 0307 	and.w	r3, r3, #7
 8000878:	428b      	cmp	r3, r1
 800087a:	d20b      	bcs.n	8000894 <HAL_RCC_ClockConfig+0x30>
 800087c:	4a4f      	ldr	r2, [pc, #316]	; (80009bc <HAL_RCC_ClockConfig+0x158>)
 800087e:	6813      	ldr	r3, [r2, #0]
 8000880:	f023 0307 	bic.w	r3, r3, #7
 8000884:	430b      	orrs	r3, r1
 8000886:	6013      	str	r3, [r2, #0]
 8000888:	6813      	ldr	r3, [r2, #0]
 800088a:	f003 0307 	and.w	r3, r3, #7
 800088e:	428b      	cmp	r3, r1
 8000890:	f040 808d 	bne.w	80009ae <HAL_RCC_ClockConfig+0x14a>
 8000894:	6823      	ldr	r3, [r4, #0]
 8000896:	f013 0f02 	tst.w	r3, #2
 800089a:	d017      	beq.n	80008cc <HAL_RCC_ClockConfig+0x68>
 800089c:	f013 0f04 	tst.w	r3, #4
 80008a0:	d004      	beq.n	80008ac <HAL_RCC_ClockConfig+0x48>
 80008a2:	4a47      	ldr	r2, [pc, #284]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 80008a4:	6853      	ldr	r3, [r2, #4]
 80008a6:	f443 63e0 	orr.w	r3, r3, #1792	; 0x700
 80008aa:	6053      	str	r3, [r2, #4]
 80008ac:	6823      	ldr	r3, [r4, #0]
 80008ae:	f013 0f08 	tst.w	r3, #8
 80008b2:	d004      	beq.n	80008be <HAL_RCC_ClockConfig+0x5a>
 80008b4:	4a42      	ldr	r2, [pc, #264]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 80008b6:	6853      	ldr	r3, [r2, #4]
 80008b8:	f443 5360 	orr.w	r3, r3, #14336	; 0x3800
 80008bc:	6053      	str	r3, [r2, #4]
 80008be:	4a40      	ldr	r2, [pc, #256]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 80008c0:	6853      	ldr	r3, [r2, #4]
 80008c2:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80008c6:	68a1      	ldr	r1, [r4, #8]
 80008c8:	430b      	orrs	r3, r1
 80008ca:	6053      	str	r3, [r2, #4]
 80008cc:	6823      	ldr	r3, [r4, #0]
 80008ce:	f013 0f01 	tst.w	r3, #1
 80008d2:	d031      	beq.n	8000938 <HAL_RCC_ClockConfig+0xd4>
 80008d4:	6863      	ldr	r3, [r4, #4]
 80008d6:	2b01      	cmp	r3, #1
 80008d8:	d020      	beq.n	800091c <HAL_RCC_ClockConfig+0xb8>
 80008da:	2b02      	cmp	r3, #2
 80008dc:	d025      	beq.n	800092a <HAL_RCC_ClockConfig+0xc6>
 80008de:	4a38      	ldr	r2, [pc, #224]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 80008e0:	6812      	ldr	r2, [r2, #0]
 80008e2:	f012 0f02 	tst.w	r2, #2
 80008e6:	d064      	beq.n	80009b2 <HAL_RCC_ClockConfig+0x14e>
 80008e8:	4935      	ldr	r1, [pc, #212]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 80008ea:	684a      	ldr	r2, [r1, #4]
 80008ec:	f022 0203 	bic.w	r2, r2, #3
 80008f0:	4313      	orrs	r3, r2
 80008f2:	604b      	str	r3, [r1, #4]
 80008f4:	f7ff fd54 	bl	80003a0 <HAL_GetTick>
 80008f8:	4606      	mov	r6, r0
 80008fa:	4b31      	ldr	r3, [pc, #196]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 80008fc:	685b      	ldr	r3, [r3, #4]
 80008fe:	f003 030c 	and.w	r3, r3, #12
 8000902:	6862      	ldr	r2, [r4, #4]
 8000904:	ebb3 0f82 	cmp.w	r3, r2, lsl #2
 8000908:	d016      	beq.n	8000938 <HAL_RCC_ClockConfig+0xd4>
 800090a:	f7ff fd49 	bl	80003a0 <HAL_GetTick>
 800090e:	1b80      	subs	r0, r0, r6
 8000910:	f241 3388 	movw	r3, #5000	; 0x1388
 8000914:	4298      	cmp	r0, r3
 8000916:	d9f0      	bls.n	80008fa <HAL_RCC_ClockConfig+0x96>
 8000918:	2003      	movs	r0, #3
 800091a:	e045      	b.n	80009a8 <HAL_RCC_ClockConfig+0x144>
 800091c:	4a28      	ldr	r2, [pc, #160]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 800091e:	6812      	ldr	r2, [r2, #0]
 8000920:	f412 3f00 	tst.w	r2, #131072	; 0x20000
 8000924:	d1e0      	bne.n	80008e8 <HAL_RCC_ClockConfig+0x84>
 8000926:	2001      	movs	r0, #1
 8000928:	e03e      	b.n	80009a8 <HAL_RCC_ClockConfig+0x144>
 800092a:	4a25      	ldr	r2, [pc, #148]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 800092c:	6812      	ldr	r2, [r2, #0]
 800092e:	f012 7f00 	tst.w	r2, #33554432	; 0x2000000
 8000932:	d1d9      	bne.n	80008e8 <HAL_RCC_ClockConfig+0x84>
 8000934:	2001      	movs	r0, #1
 8000936:	e037      	b.n	80009a8 <HAL_RCC_ClockConfig+0x144>
 8000938:	4b20      	ldr	r3, [pc, #128]	; (80009bc <HAL_RCC_ClockConfig+0x158>)
 800093a:	681b      	ldr	r3, [r3, #0]
 800093c:	f003 0307 	and.w	r3, r3, #7
 8000940:	42ab      	cmp	r3, r5
 8000942:	d90a      	bls.n	800095a <HAL_RCC_ClockConfig+0xf6>
 8000944:	4a1d      	ldr	r2, [pc, #116]	; (80009bc <HAL_RCC_ClockConfig+0x158>)
 8000946:	6813      	ldr	r3, [r2, #0]
 8000948:	f023 0307 	bic.w	r3, r3, #7
 800094c:	432b      	orrs	r3, r5
 800094e:	6013      	str	r3, [r2, #0]
 8000950:	6813      	ldr	r3, [r2, #0]
 8000952:	f003 0307 	and.w	r3, r3, #7
 8000956:	42ab      	cmp	r3, r5
 8000958:	d12d      	bne.n	80009b6 <HAL_RCC_ClockConfig+0x152>
 800095a:	6823      	ldr	r3, [r4, #0]
 800095c:	f013 0f04 	tst.w	r3, #4
 8000960:	d006      	beq.n	8000970 <HAL_RCC_ClockConfig+0x10c>
 8000962:	4a17      	ldr	r2, [pc, #92]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 8000964:	6853      	ldr	r3, [r2, #4]
 8000966:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 800096a:	68e1      	ldr	r1, [r4, #12]
 800096c:	430b      	orrs	r3, r1
 800096e:	6053      	str	r3, [r2, #4]
 8000970:	6823      	ldr	r3, [r4, #0]
 8000972:	f013 0f08 	tst.w	r3, #8
 8000976:	d007      	beq.n	8000988 <HAL_RCC_ClockConfig+0x124>
 8000978:	4a11      	ldr	r2, [pc, #68]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 800097a:	6853      	ldr	r3, [r2, #4]
 800097c:	f423 5360 	bic.w	r3, r3, #14336	; 0x3800
 8000980:	6921      	ldr	r1, [r4, #16]
 8000982:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 8000986:	6053      	str	r3, [r2, #4]
 8000988:	f7ff ff42 	bl	8000810 <HAL_RCC_GetSysClockFreq>
 800098c:	4b0c      	ldr	r3, [pc, #48]	; (80009c0 <HAL_RCC_ClockConfig+0x15c>)
 800098e:	685b      	ldr	r3, [r3, #4]
 8000990:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8000994:	4a0b      	ldr	r2, [pc, #44]	; (80009c4 <HAL_RCC_ClockConfig+0x160>)
 8000996:	5cd3      	ldrb	r3, [r2, r3]
 8000998:	40d8      	lsrs	r0, r3
 800099a:	4b0b      	ldr	r3, [pc, #44]	; (80009c8 <HAL_RCC_ClockConfig+0x164>)
 800099c:	6018      	str	r0, [r3, #0]
 800099e:	4b0b      	ldr	r3, [pc, #44]	; (80009cc <HAL_RCC_ClockConfig+0x168>)
 80009a0:	6818      	ldr	r0, [r3, #0]
 80009a2:	f7ff fcb9 	bl	8000318 <HAL_InitTick>
 80009a6:	2000      	movs	r0, #0
 80009a8:	bd70      	pop	{r4, r5, r6, pc}
 80009aa:	2001      	movs	r0, #1
 80009ac:	4770      	bx	lr
 80009ae:	2001      	movs	r0, #1
 80009b0:	e7fa      	b.n	80009a8 <HAL_RCC_ClockConfig+0x144>
 80009b2:	2001      	movs	r0, #1
 80009b4:	e7f8      	b.n	80009a8 <HAL_RCC_ClockConfig+0x144>
 80009b6:	2001      	movs	r0, #1
 80009b8:	e7f6      	b.n	80009a8 <HAL_RCC_ClockConfig+0x144>
 80009ba:	bf00      	nop
 80009bc:	40022000 	andmi	r2, r2, r0
 80009c0:	40021000 	andmi	r1, r2, r0
 80009c4:	08000da0 	stmdaeq	r0, {r5, r7, r8, sl, fp}
 80009c8:	20000008 	andcs	r0, r0, r8
 80009cc:	20000004 	andcs	r0, r0, r4

080009d0 <HAL_GPIO_Init>:
 80009d0:	b570      	push	{r4, r5, r6, lr}
 80009d2:	b082      	sub	sp, #8
 80009d4:	2400      	movs	r4, #0
 80009d6:	46a4      	mov	ip, r4
 80009d8:	e0a2      	b.n	8000b20 <HAL_GPIO_Init+0x150>
 80009da:	4d7e      	ldr	r5, [pc, #504]	; (8000bd4 <HAL_GPIO_Init+0x204>)
 80009dc:	42ab      	cmp	r3, r5
 80009de:	d010      	beq.n	8000a02 <HAL_GPIO_Init+0x32>
 80009e0:	d907      	bls.n	80009f2 <HAL_GPIO_Init+0x22>
 80009e2:	4d7d      	ldr	r5, [pc, #500]	; (8000bd8 <HAL_GPIO_Init+0x208>)
 80009e4:	42ab      	cmp	r3, r5
 80009e6:	d00c      	beq.n	8000a02 <HAL_GPIO_Init+0x32>
 80009e8:	f505 3580 	add.w	r5, r5, #65536	; 0x10000
 80009ec:	42ab      	cmp	r3, r5
 80009ee:	d008      	beq.n	8000a02 <HAL_GPIO_Init+0x32>
 80009f0:	e013      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 80009f2:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 80009f6:	42ab      	cmp	r3, r5
 80009f8:	d003      	beq.n	8000a02 <HAL_GPIO_Init+0x32>
 80009fa:	f505 2570 	add.w	r5, r5, #983040	; 0xf0000
 80009fe:	42ab      	cmp	r3, r5
 8000a00:	d107      	bne.n	8000a12 <HAL_GPIO_Init+0x42>
 8000a02:	688b      	ldr	r3, [r1, #8]
 8000a04:	2b00      	cmp	r3, #0
 8000a06:	d055      	beq.n	8000ab4 <HAL_GPIO_Init+0xe4>
 8000a08:	2b01      	cmp	r3, #1
 8000a0a:	d04e      	beq.n	8000aaa <HAL_GPIO_Init+0xda>
 8000a0c:	6142      	str	r2, [r0, #20]
 8000a0e:	2408      	movs	r4, #8
 8000a10:	e003      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000a12:	f5a5 1580 	sub.w	r5, r5, #1048576	; 0x100000
 8000a16:	42ab      	cmp	r3, r5
 8000a18:	d0f3      	beq.n	8000a02 <HAL_GPIO_Init+0x32>
 8000a1a:	f1be 0fff 	cmp.w	lr, #255	; 0xff
 8000a1e:	d84b      	bhi.n	8000ab8 <HAL_GPIO_Init+0xe8>
 8000a20:	4606      	mov	r6, r0
 8000a22:	ea4f 028c 	mov.w	r2, ip, lsl #2
 8000a26:	6833      	ldr	r3, [r6, #0]
 8000a28:	250f      	movs	r5, #15
 8000a2a:	4095      	lsls	r5, r2
 8000a2c:	ea23 0305 	bic.w	r3, r3, r5
 8000a30:	fa04 f202 	lsl.w	r2, r4, r2
 8000a34:	4313      	orrs	r3, r2
 8000a36:	6033      	str	r3, [r6, #0]
 8000a38:	684b      	ldr	r3, [r1, #4]
 8000a3a:	f013 5f80 	tst.w	r3, #268435456	; 0x10000000
 8000a3e:	d06d      	beq.n	8000b1c <HAL_GPIO_Init+0x14c>
 8000a40:	4b66      	ldr	r3, [pc, #408]	; (8000bdc <HAL_GPIO_Init+0x20c>)
 8000a42:	699a      	ldr	r2, [r3, #24]
 8000a44:	f042 0201 	orr.w	r2, r2, #1
 8000a48:	619a      	str	r2, [r3, #24]
 8000a4a:	699b      	ldr	r3, [r3, #24]
 8000a4c:	f003 0301 	and.w	r3, r3, #1
 8000a50:	9301      	str	r3, [sp, #4]
 8000a52:	9b01      	ldr	r3, [sp, #4]
 8000a54:	ea4f 029c 	mov.w	r2, ip, lsr #2
 8000a58:	1c95      	adds	r5, r2, #2
 8000a5a:	4b61      	ldr	r3, [pc, #388]	; (8000be0 <HAL_GPIO_Init+0x210>)
 8000a5c:	f853 6025 	ldr.w	r6, [r3, r5, lsl #2]
 8000a60:	f00c 0503 	and.w	r5, ip, #3
 8000a64:	00ad      	lsls	r5, r5, #2
 8000a66:	230f      	movs	r3, #15
 8000a68:	40ab      	lsls	r3, r5
 8000a6a:	ea26 0603 	bic.w	r6, r6, r3
 8000a6e:	4b5d      	ldr	r3, [pc, #372]	; (8000be4 <HAL_GPIO_Init+0x214>)
 8000a70:	4298      	cmp	r0, r3
 8000a72:	d028      	beq.n	8000ac6 <HAL_GPIO_Init+0xf6>
 8000a74:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000a78:	4298      	cmp	r0, r3
 8000a7a:	f000 808d 	beq.w	8000b98 <HAL_GPIO_Init+0x1c8>
 8000a7e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000a82:	4298      	cmp	r0, r3
 8000a84:	f000 808a 	beq.w	8000b9c <HAL_GPIO_Init+0x1cc>
 8000a88:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8000a8c:	4298      	cmp	r0, r3
 8000a8e:	d018      	beq.n	8000ac2 <HAL_GPIO_Init+0xf2>
 8000a90:	2304      	movs	r3, #4
 8000a92:	e019      	b.n	8000ac8 <HAL_GPIO_Init+0xf8>
 8000a94:	68cc      	ldr	r4, [r1, #12]
 8000a96:	e7c0      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000a98:	68cc      	ldr	r4, [r1, #12]
 8000a9a:	3404      	adds	r4, #4
 8000a9c:	e7bd      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000a9e:	68cc      	ldr	r4, [r1, #12]
 8000aa0:	3408      	adds	r4, #8
 8000aa2:	e7ba      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000aa4:	68cc      	ldr	r4, [r1, #12]
 8000aa6:	340c      	adds	r4, #12
 8000aa8:	e7b7      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000aaa:	6102      	str	r2, [r0, #16]
 8000aac:	2408      	movs	r4, #8
 8000aae:	e7b4      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000ab0:	2400      	movs	r4, #0
 8000ab2:	e7b2      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000ab4:	2404      	movs	r4, #4
 8000ab6:	e7b0      	b.n	8000a1a <HAL_GPIO_Init+0x4a>
 8000ab8:	1d06      	adds	r6, r0, #4
 8000aba:	f1ac 0208 	sub.w	r2, ip, #8
 8000abe:	0092      	lsls	r2, r2, #2
 8000ac0:	e7b1      	b.n	8000a26 <HAL_GPIO_Init+0x56>
 8000ac2:	2303      	movs	r3, #3
 8000ac4:	e000      	b.n	8000ac8 <HAL_GPIO_Init+0xf8>
 8000ac6:	2300      	movs	r3, #0
 8000ac8:	40ab      	lsls	r3, r5
 8000aca:	4333      	orrs	r3, r6
 8000acc:	3202      	adds	r2, #2
 8000ace:	4d44      	ldr	r5, [pc, #272]	; (8000be0 <HAL_GPIO_Init+0x210>)
 8000ad0:	f845 3022 	str.w	r3, [r5, r2, lsl #2]
 8000ad4:	684b      	ldr	r3, [r1, #4]
 8000ad6:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000ada:	d061      	beq.n	8000ba0 <HAL_GPIO_Init+0x1d0>
 8000adc:	4a42      	ldr	r2, [pc, #264]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000ade:	6893      	ldr	r3, [r2, #8]
 8000ae0:	ea43 030e 	orr.w	r3, r3, lr
 8000ae4:	6093      	str	r3, [r2, #8]
 8000ae6:	684b      	ldr	r3, [r1, #4]
 8000ae8:	f413 1f00 	tst.w	r3, #2097152	; 0x200000
 8000aec:	d05e      	beq.n	8000bac <HAL_GPIO_Init+0x1dc>
 8000aee:	4a3e      	ldr	r2, [pc, #248]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000af0:	68d3      	ldr	r3, [r2, #12]
 8000af2:	ea43 030e 	orr.w	r3, r3, lr
 8000af6:	60d3      	str	r3, [r2, #12]
 8000af8:	684b      	ldr	r3, [r1, #4]
 8000afa:	f413 3f00 	tst.w	r3, #131072	; 0x20000
 8000afe:	d05b      	beq.n	8000bb8 <HAL_GPIO_Init+0x1e8>
 8000b00:	4a39      	ldr	r2, [pc, #228]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000b02:	6853      	ldr	r3, [r2, #4]
 8000b04:	ea43 030e 	orr.w	r3, r3, lr
 8000b08:	6053      	str	r3, [r2, #4]
 8000b0a:	684b      	ldr	r3, [r1, #4]
 8000b0c:	f413 3f80 	tst.w	r3, #65536	; 0x10000
 8000b10:	d058      	beq.n	8000bc4 <HAL_GPIO_Init+0x1f4>
 8000b12:	4a35      	ldr	r2, [pc, #212]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000b14:	6813      	ldr	r3, [r2, #0]
 8000b16:	ea43 030e 	orr.w	r3, r3, lr
 8000b1a:	6013      	str	r3, [r2, #0]
 8000b1c:	f10c 0c01 	add.w	ip, ip, #1
 8000b20:	680b      	ldr	r3, [r1, #0]
 8000b22:	fa33 f20c 	lsrs.w	r2, r3, ip
 8000b26:	d053      	beq.n	8000bd0 <HAL_GPIO_Init+0x200>
 8000b28:	2201      	movs	r2, #1
 8000b2a:	fa02 f20c 	lsl.w	r2, r2, ip
 8000b2e:	ea03 0e02 	and.w	lr, r3, r2
 8000b32:	ea32 0303 	bics.w	r3, r2, r3
 8000b36:	d1f1      	bne.n	8000b1c <HAL_GPIO_Init+0x14c>
 8000b38:	684b      	ldr	r3, [r1, #4]
 8000b3a:	2b12      	cmp	r3, #18
 8000b3c:	f63f af4d 	bhi.w	80009da <HAL_GPIO_Init+0xa>
 8000b40:	2b12      	cmp	r3, #18
 8000b42:	f63f af6a 	bhi.w	8000a1a <HAL_GPIO_Init+0x4a>
 8000b46:	a501      	add	r5, pc, #4	; (adr r5, 8000b4c <HAL_GPIO_Init+0x17c>)
 8000b48:	f855 f023 	ldr.w	pc, [r5, r3, lsl #2]
 8000b4c:	08000a03 	stmdaeq	r0, {r0, r1, r9, fp}
 8000b50:	08000a95 	stmdaeq	r0, {r0, r2, r4, r7, r9, fp}
 8000b54:	08000a9f 	stmdaeq	r0, {r0, r1, r2, r3, r4, r7, r9, fp}
 8000b58:	08000ab1 	stmdaeq	r0, {r0, r4, r5, r7, r9, fp}
 8000b5c:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b60:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b64:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b68:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b6c:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b70:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b74:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b78:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b7c:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b80:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b84:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b88:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b8c:	08000a1b 	stmdaeq	r0, {r0, r1, r3, r4, r9, fp}
 8000b90:	08000a99 	stmdaeq	r0, {r0, r3, r4, r7, r9, fp}
 8000b94:	08000aa5 	stmdaeq	r0, {r0, r2, r5, r7, r9, fp}
 8000b98:	2301      	movs	r3, #1
 8000b9a:	e795      	b.n	8000ac8 <HAL_GPIO_Init+0xf8>
 8000b9c:	2302      	movs	r3, #2
 8000b9e:	e793      	b.n	8000ac8 <HAL_GPIO_Init+0xf8>
 8000ba0:	4a11      	ldr	r2, [pc, #68]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000ba2:	6893      	ldr	r3, [r2, #8]
 8000ba4:	ea23 030e 	bic.w	r3, r3, lr
 8000ba8:	6093      	str	r3, [r2, #8]
 8000baa:	e79c      	b.n	8000ae6 <HAL_GPIO_Init+0x116>
 8000bac:	4a0e      	ldr	r2, [pc, #56]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000bae:	68d3      	ldr	r3, [r2, #12]
 8000bb0:	ea23 030e 	bic.w	r3, r3, lr
 8000bb4:	60d3      	str	r3, [r2, #12]
 8000bb6:	e79f      	b.n	8000af8 <HAL_GPIO_Init+0x128>
 8000bb8:	4a0b      	ldr	r2, [pc, #44]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000bba:	6853      	ldr	r3, [r2, #4]
 8000bbc:	ea23 030e 	bic.w	r3, r3, lr
 8000bc0:	6053      	str	r3, [r2, #4]
 8000bc2:	e7a2      	b.n	8000b0a <HAL_GPIO_Init+0x13a>
 8000bc4:	4a08      	ldr	r2, [pc, #32]	; (8000be8 <HAL_GPIO_Init+0x218>)
 8000bc6:	6813      	ldr	r3, [r2, #0]
 8000bc8:	ea23 030e 	bic.w	r3, r3, lr
 8000bcc:	6013      	str	r3, [r2, #0]
 8000bce:	e7a5      	b.n	8000b1c <HAL_GPIO_Init+0x14c>
 8000bd0:	b002      	add	sp, #8
 8000bd2:	bd70      	pop	{r4, r5, r6, pc}
 8000bd4:	10220000 	eorne	r0, r2, r0
 8000bd8:	10310000 	eorsne	r0, r1, r0
 8000bdc:	40021000 	andmi	r1, r2, r0
 8000be0:	40010000 	andmi	r0, r1, r0
 8000be4:	40010800 	andmi	r0, r1, r0, lsl #16
 8000be8:	40010400 	andmi	r0, r1, r0, lsl #8

08000bec <HAL_GPIO_WritePin>:
 8000bec:	b10a      	cbz	r2, 8000bf2 <HAL_GPIO_WritePin+0x6>
 8000bee:	6101      	str	r1, [r0, #16]
 8000bf0:	4770      	bx	lr
 8000bf2:	0409      	lsls	r1, r1, #16
 8000bf4:	6101      	str	r1, [r0, #16]
 8000bf6:	4770      	bx	lr

08000bf8 <__NVIC_SetPriority>:
 8000bf8:	2800      	cmp	r0, #0
 8000bfa:	db08      	blt.n	8000c0e <__NVIC_SetPriority+0x16>
 8000bfc:	0109      	lsls	r1, r1, #4
 8000bfe:	b2c9      	uxtb	r1, r1
 8000c00:	f100 4060 	add.w	r0, r0, #3758096384	; 0xe0000000
 8000c04:	f500 4061 	add.w	r0, r0, #57600	; 0xe100
 8000c08:	f880 1300 	strb.w	r1, [r0, #768]	; 0x300
 8000c0c:	4770      	bx	lr
 8000c0e:	f000 000f 	and.w	r0, r0, #15
 8000c12:	0109      	lsls	r1, r1, #4
 8000c14:	b2c9      	uxtb	r1, r1
 8000c16:	4b01      	ldr	r3, [pc, #4]	; (8000c1c <__NVIC_SetPriority+0x24>)
 8000c18:	5419      	strb	r1, [r3, r0]
 8000c1a:	4770      	bx	lr
 8000c1c:	e000ed14 	and	lr, r0, r4, lsl sp

08000c20 <NVIC_EncodePriority>:
 8000c20:	b500      	push	{lr}
 8000c22:	f000 0007 	and.w	r0, r0, #7
 8000c26:	f1c0 0c07 	rsb	ip, r0, #7
 8000c2a:	f1bc 0f04 	cmp.w	ip, #4
 8000c2e:	bf28      	it	cs
 8000c30:	f04f 0c04 	movcs.w	ip, #4
 8000c34:	1d03      	adds	r3, r0, #4
 8000c36:	2b06      	cmp	r3, #6
 8000c38:	d90f      	bls.n	8000c5a <NVIC_EncodePriority+0x3a>
 8000c3a:	1ec3      	subs	r3, r0, #3
 8000c3c:	f04f 3eff 	mov.w	lr, #4294967295
 8000c40:	fa0e f00c 	lsl.w	r0, lr, ip
 8000c44:	ea21 0100 	bic.w	r1, r1, r0
 8000c48:	4099      	lsls	r1, r3
 8000c4a:	fa0e fe03 	lsl.w	lr, lr, r3
 8000c4e:	ea22 020e 	bic.w	r2, r2, lr
 8000c52:	ea41 0002 	orr.w	r0, r1, r2
 8000c56:	f85d fb04 	ldr.w	pc, [sp], #4
 8000c5a:	2300      	movs	r3, #0
 8000c5c:	e7ee      	b.n	8000c3c <NVIC_EncodePriority+0x1c>
 8000c5e:	0000      	movs	r0, r0

08000c60 <HAL_NVIC_SetPriorityGrouping>:
 8000c60:	4a07      	ldr	r2, [pc, #28]	; (8000c80 <HAL_NVIC_SetPriorityGrouping+0x20>)
 8000c62:	68d3      	ldr	r3, [r2, #12]
 8000c64:	f423 63e0 	bic.w	r3, r3, #1792	; 0x700
 8000c68:	041b      	lsls	r3, r3, #16
 8000c6a:	0c1b      	lsrs	r3, r3, #16
 8000c6c:	0200      	lsls	r0, r0, #8
 8000c6e:	f400 60e0 	and.w	r0, r0, #1792	; 0x700
 8000c72:	4303      	orrs	r3, r0
 8000c74:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000c78:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000c7c:	60d3      	str	r3, [r2, #12]
 8000c7e:	4770      	bx	lr
 8000c80:	e000ed00 	and	lr, r0, r0, lsl #26

08000c84 <HAL_NVIC_SetPriority>:
 8000c84:	b510      	push	{r4, lr}
 8000c86:	4604      	mov	r4, r0
 8000c88:	4b05      	ldr	r3, [pc, #20]	; (8000ca0 <HAL_NVIC_SetPriority+0x1c>)
 8000c8a:	68d8      	ldr	r0, [r3, #12]
 8000c8c:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8000c90:	f7ff ffc6 	bl	8000c20 <NVIC_EncodePriority>
 8000c94:	4601      	mov	r1, r0
 8000c96:	4620      	mov	r0, r4
 8000c98:	f7ff ffae 	bl	8000bf8 <__NVIC_SetPriority>
 8000c9c:	bd10      	pop	{r4, pc}
 8000c9e:	bf00      	nop
 8000ca0:	e000ed00 	and	lr, r0, r0, lsl #26

08000ca4 <HAL_SYSTICK_Config>:
 8000ca4:	3801      	subs	r0, #1
 8000ca6:	f1b0 7f80 	cmp.w	r0, #16777216	; 0x1000000
 8000caa:	d20b      	bcs.n	8000cc4 <HAL_SYSTICK_Config+0x20>
 8000cac:	f04f 23e0 	mov.w	r3, #3758153728	; 0xe000e000
 8000cb0:	6158      	str	r0, [r3, #20]
 8000cb2:	4a05      	ldr	r2, [pc, #20]	; (8000cc8 <HAL_SYSTICK_Config+0x24>)
 8000cb4:	21f0      	movs	r1, #240	; 0xf0
 8000cb6:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8000cba:	2000      	movs	r0, #0
 8000cbc:	6198      	str	r0, [r3, #24]
 8000cbe:	2207      	movs	r2, #7
 8000cc0:	611a      	str	r2, [r3, #16]
 8000cc2:	4770      	bx	lr
 8000cc4:	2001      	movs	r0, #1
 8000cc6:	4770      	bx	lr
 8000cc8:	e000ed00 	and	lr, r0, r0, lsl #26

08000ccc <SystemInit>:
 8000ccc:	4770      	bx	lr
 8000cce:	0000      	movs	r0, r0

08000cd0 <Reset_Handler>:
 8000cd0:	f7ff fffc 	bl	8000ccc <SystemInit>
 8000cd4:	480b      	ldr	r0, [pc, #44]	; (8000d04 <LoopFillZerobss+0xe>)
 8000cd6:	490c      	ldr	r1, [pc, #48]	; (8000d08 <LoopFillZerobss+0x12>)
 8000cd8:	4a0c      	ldr	r2, [pc, #48]	; (8000d0c <LoopFillZerobss+0x16>)
 8000cda:	2300      	movs	r3, #0
 8000cdc:	e002      	b.n	8000ce4 <LoopCopyDataInit>

08000cde <CopyDataInit>:
 8000cde:	58d4      	ldr	r4, [r2, r3]
 8000ce0:	50c4      	str	r4, [r0, r3]
 8000ce2:	3304      	adds	r3, #4

08000ce4 <LoopCopyDataInit>:
 8000ce4:	18c4      	adds	r4, r0, r3
 8000ce6:	428c      	cmp	r4, r1
 8000ce8:	d3f9      	bcc.n	8000cde <CopyDataInit>
 8000cea:	4a09      	ldr	r2, [pc, #36]	; (8000d10 <LoopFillZerobss+0x1a>)
 8000cec:	4c09      	ldr	r4, [pc, #36]	; (8000d14 <LoopFillZerobss+0x1e>)
 8000cee:	2300      	movs	r3, #0
 8000cf0:	e001      	b.n	8000cf6 <LoopFillZerobss>

08000cf2 <FillZerobss>:
 8000cf2:	6013      	str	r3, [r2, #0]
 8000cf4:	3204      	adds	r2, #4

08000cf6 <LoopFillZerobss>:
 8000cf6:	42a2      	cmp	r2, r4
 8000cf8:	d3fb      	bcc.n	8000cf2 <FillZerobss>
 8000cfa:	f000 f817 	bl	8000d2c <__libc_init_array>
 8000cfe:	f7ff fad3 	bl	80002a8 <main>
 8000d02:	4770      	bx	lr
 8000d04:	20000000 	andcs	r0, r0, r0
 8000d08:	2000000c 	andcs	r0, r0, ip
 8000d0c:	08000db8 	stmdaeq	r0, {r3, r4, r5, r7, r8, sl, fp}
 8000d10:	2000000c 	andcs	r0, r0, ip
 8000d14:	2000002c 	andcs	r0, r0, ip, lsr #32

08000d18 <ADC1_2_IRQHandler>:
 8000d18:	e7fe      	b.n	8000d18 <ADC1_2_IRQHandler>

08000d1a <memset>:
 8000d1a:	4603      	mov	r3, r0
 8000d1c:	4402      	add	r2, r0
 8000d1e:	4293      	cmp	r3, r2
 8000d20:	d100      	bne.n	8000d24 <memset+0xa>
 8000d22:	4770      	bx	lr
 8000d24:	f803 1b01 	strb.w	r1, [r3], #1
 8000d28:	e7f9      	b.n	8000d1e <memset+0x4>
 8000d2a:	0000      	movs	r0, r0

08000d2c <__libc_init_array>:
 8000d2c:	b570      	push	{r4, r5, r6, lr}
 8000d2e:	2600      	movs	r6, #0
 8000d30:	4d0c      	ldr	r5, [pc, #48]	; (8000d64 <__libc_init_array+0x38>)
 8000d32:	4c0d      	ldr	r4, [pc, #52]	; (8000d68 <__libc_init_array+0x3c>)
 8000d34:	1b64      	subs	r4, r4, r5
 8000d36:	10a4      	asrs	r4, r4, #2
 8000d38:	42a6      	cmp	r6, r4
 8000d3a:	d109      	bne.n	8000d50 <__libc_init_array+0x24>
 8000d3c:	f000 f81a 	bl	8000d74 <_init>
 8000d40:	2600      	movs	r6, #0
 8000d42:	4d0a      	ldr	r5, [pc, #40]	; (8000d6c <__libc_init_array+0x40>)
 8000d44:	4c0a      	ldr	r4, [pc, #40]	; (8000d70 <__libc_init_array+0x44>)
 8000d46:	1b64      	subs	r4, r4, r5
 8000d48:	10a4      	asrs	r4, r4, #2
 8000d4a:	42a6      	cmp	r6, r4
 8000d4c:	d105      	bne.n	8000d5a <__libc_init_array+0x2e>
 8000d4e:	bd70      	pop	{r4, r5, r6, pc}
 8000d50:	f855 3b04 	ldr.w	r3, [r5], #4
 8000d54:	4798      	blx	r3
 8000d56:	3601      	adds	r6, #1
 8000d58:	e7ee      	b.n	8000d38 <__libc_init_array+0xc>
 8000d5a:	f855 3b04 	ldr.w	r3, [r5], #4
 8000d5e:	4798      	blx	r3
 8000d60:	3601      	adds	r6, #1
 8000d62:	e7f2      	b.n	8000d4a <__libc_init_array+0x1e>
 8000d64:	08000db0 	stmdaeq	r0, {r4, r5, r7, r8, sl, fp}
 8000d68:	08000db0 	stmdaeq	r0, {r4, r5, r7, r8, sl, fp}
 8000d6c:	08000db0 	stmdaeq	r0, {r4, r5, r7, r8, sl, fp}
 8000d70:	08000db4 	stmdaeq	r0, {r2, r4, r5, r7, r8, sl, fp}

08000d74 <_init>:
 8000d74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d76:	bf00      	nop
 8000d78:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d7a:	bc08      	pop	{r3}
 8000d7c:	469e      	mov	lr, r3
 8000d7e:	4770      	bx	lr

08000d80 <_fini>:
 8000d80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d82:	bf00      	nop
 8000d84:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d86:	bc08      	pop	{r3}
 8000d88:	469e      	mov	lr, r3
 8000d8a:	4770      	bx	lr
