	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"interrupts_msp432p401r_gcc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text:Reset_Handler,"ax",%progbits
	.align	1
	.global	Reset_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Reset_Handler, %function
Reset_Handler:
.LFB0:
	.file 1 "interrupts_msp432p401r_gcc.c"
	.loc 1 69 1
	.cfi_startproc
	@ Stack Align: May be called with mis-aligned SP.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	r0, sp
	.cfi_register 13, 0
	bic	r1, r0, #7
	mov	sp, r1
	push	{r0, r7, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 13, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
	.cfi_def_cfa_register 7
	.loc 1 73 15
	ldr	r3, .L4
	str	r3, [r7, #4]
	.loc 1 74 20
	ldr	r3, .L4+4
	str	r3, [r7]
	.loc 1 74 6
	b	.L2
.L3:
	.loc 1 76 34
	ldr	r2, [r7, #4]
	adds	r3, r2, #4
	str	r3, [r7, #4]
	.loc 1 76 20
	ldr	r3, [r7]
	adds	r1, r3, #4
	str	r1, [r7]
	.loc 1 76 25
	ldr	r2, [r2]
	.loc 1 76 23
	str	r2, [r3]
.L2:
	.loc 1 74 6 discriminator 1
	ldr	r3, [r7]
	ldr	r2, .L4+8
	cmp	r3, r2
	bcc	.L3
	.loc 1 80 6
	.syntax unified
@ 80 "interrupts_msp432p401r_gcc.c" 1
	    ldr     r0, =__bss_start__
    ldr     r1, =__bss_end__
    mov     r2, #0
    .thumb_func
zero_loop:
    cmp     r0, r1
    it      lt
    strlt   r2, [r0], #4
    blt     zero_loop
@ 0 "" 2
	.loc 1 91 3
	.thumb
	.syntax unified
	bl	SystemInit
	.loc 1 94 6
	bl	main
	.loc 1 95 1
	nop
	adds	r7, r7, #12
	.cfi_def_cfa_offset 12
	mov	sp, r7
	.cfi_def_cfa_register 13
	@ sp needed
	pop	{r0, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	mov	sp, r0
	bx	lr
.L5:
	.align	2
.L4:
	.word	__data_load__
	.word	__data_start__
	.word	__data_end__
	.cfi_endproc
.LFE0:
	.size	Reset_Handler, .-Reset_Handler
	.section	.text:NMI_Handler,"ax",%progbits
	.align	1
	.global	NMI_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	NMI_Handler, %function
NMI_Handler:
.LFB1:
	.loc 1 102 1
	.cfi_startproc
	@ Stack Align: May be called with mis-aligned SP.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, sp
	.cfi_register 13, 0
	bic	r1, r0, #7
	mov	sp, r1
	push	{r0, r7}
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -8
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L7:
	.loc 1 104 10 discriminator 1
	b	.L7
	.cfi_endproc
.LFE1:
	.size	NMI_Handler, .-NMI_Handler
	.section	.text:HardFault_Handler,"ax",%progbits
	.align	1
	.global	HardFault_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	HardFault_Handler, %function
HardFault_Handler:
.LFB2:
	.loc 1 115 1
	.cfi_startproc
	@ Stack Align: May be called with mis-aligned SP.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, sp
	.cfi_register 13, 0
	bic	r1, r0, #7
	mov	sp, r1
	push	{r0, r7}
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -8
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L9:
	.loc 1 117 10 discriminator 1
	b	.L9
	.cfi_endproc
.LFE2:
	.size	HardFault_Handler, .-HardFault_Handler
	.section	.text:Default_Handler,"ax",%progbits
	.align	1
	.global	Default_Handler
	.syntax unified
	.thumb
	.thumb_func
	.type	Default_Handler, %function
Default_Handler:
.LFB3:
	.loc 1 124 1
	.cfi_startproc
	@ Stack Align: May be called with mis-aligned SP.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, sp
	.cfi_register 13, 0
	bic	r1, r0, #7
	mov	sp, r1
	push	{r0, r7}
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -8
	.cfi_offset 7, -4
	add	r7, sp, #0
	.cfi_def_cfa_register 7
.L11:
	.loc 1 126 7 discriminator 1
	b	.L11
	.cfi_endproc
.LFE3:
	.size	Default_Handler, .-Default_Handler
	.weak	PORT6_IRQHandler
	.thumb_set PORT6_IRQHandler,Default_Handler
	.weak	PORT5_IRQHandler
	.thumb_set PORT5_IRQHandler,Default_Handler
	.weak	PORT4_IRQHandler
	.thumb_set PORT4_IRQHandler,Default_Handler
	.weak	PORT3_IRQHandler
	.thumb_set PORT3_IRQHandler,Default_Handler
	.weak	PORT2_IRQHandler
	.thumb_set PORT2_IRQHandler,Default_Handler
	.weak	PORT1_IRQHandler
	.thumb_set PORT1_IRQHandler,Default_Handler
	.weak	DMA_INT0_IRQHandler
	.thumb_set DMA_INT0_IRQHandler,Default_Handler
	.weak	DMA_INT1_IRQHandler
	.thumb_set DMA_INT1_IRQHandler,Default_Handler
	.weak	DMA_INT2_IRQHandler
	.thumb_set DMA_INT2_IRQHandler,Default_Handler
	.weak	DMA_INT3_IRQHandler
	.thumb_set DMA_INT3_IRQHandler,Default_Handler
	.weak	DMA_ERR_IRQHandler
	.thumb_set DMA_ERR_IRQHandler,Default_Handler
	.weak	RTC_C_IRQHandler
	.thumb_set RTC_C_IRQHandler,Default_Handler
	.weak	AES256_IRQHandler
	.thumb_set AES256_IRQHandler,Default_Handler
	.weak	T32_INTC_IRQHandler
	.thumb_set T32_INTC_IRQHandler,Default_Handler
	.weak	T32_INT2_IRQHandler
	.thumb_set T32_INT2_IRQHandler,Default_Handler
	.weak	T32_INT1_IRQHandler
	.thumb_set T32_INT1_IRQHandler,Default_Handler
	.weak	ADC14_IRQHandler
	.thumb_set ADC14_IRQHandler,Default_Handler
	.weak	EUSCIB3_IRQHandler
	.thumb_set EUSCIB3_IRQHandler,Default_Handler
	.weak	EUSCIB2_IRQHandler
	.thumb_set EUSCIB2_IRQHandler,Default_Handler
	.weak	EUSCIB1_IRQHandler
	.thumb_set EUSCIB1_IRQHandler,Default_Handler
	.weak	EUSCIB0_IRQHandler
	.thumb_set EUSCIB0_IRQHandler,Default_Handler
	.weak	EUSCIA3_IRQHandler
	.thumb_set EUSCIA3_IRQHandler,Default_Handler
	.weak	EUSCIA2_IRQHandler
	.thumb_set EUSCIA2_IRQHandler,Default_Handler
	.weak	EUSCIA1_IRQHandler
	.thumb_set EUSCIA1_IRQHandler,Default_Handler
	.weak	EUSCIA0_IRQHandler
	.thumb_set EUSCIA0_IRQHandler,Default_Handler
	.weak	TA3_N_IRQHandler
	.thumb_set TA3_N_IRQHandler,Default_Handler
	.weak	TA3_0_IRQHandler
	.thumb_set TA3_0_IRQHandler,Default_Handler
	.weak	TA2_N_IRQHandler
	.thumb_set TA2_N_IRQHandler,Default_Handler
	.weak	TA2_0_IRQHandler
	.thumb_set TA2_0_IRQHandler,Default_Handler
	.weak	TA1_N_IRQHandler
	.thumb_set TA1_N_IRQHandler,Default_Handler
	.weak	TA1_0_IRQHandler
	.thumb_set TA1_0_IRQHandler,Default_Handler
	.weak	TA0_N_IRQHandler
	.thumb_set TA0_N_IRQHandler,Default_Handler
	.weak	TA0_0_IRQHandler
	.thumb_set TA0_0_IRQHandler,Default_Handler
	.weak	COMP_E1_IRQHandler
	.thumb_set COMP_E1_IRQHandler,Default_Handler
	.weak	COMP_E0_IRQHandler
	.thumb_set COMP_E0_IRQHandler,Default_Handler
	.weak	FLCTL_IRQHandler
	.thumb_set FLCTL_IRQHandler,Default_Handler
	.weak	FPU_IRQHandler
	.thumb_set FPU_IRQHandler,Default_Handler
	.weak	WDT_A_IRQHandler
	.thumb_set WDT_A_IRQHandler,Default_Handler
	.weak	PCM_IRQHandler
	.thumb_set PCM_IRQHandler,Default_Handler
	.weak	CS_IRQHandler
	.thumb_set CS_IRQHandler,Default_Handler
	.weak	PSS_IRQHandler
	.thumb_set PSS_IRQHandler,Default_Handler
	.weak	SysTick_Handler
	.thumb_set SysTick_Handler,Default_Handler
	.weak	PendSV_Handler
	.thumb_set PendSV_Handler,Default_Handler
	.weak	DebugMon_Handler
	.thumb_set DebugMon_Handler,Default_Handler
	.weak	SVC_Handler
	.thumb_set SVC_Handler,Default_Handler
	.weak	UsageFault_Handler
	.thumb_set UsageFault_Handler,Default_Handler
	.weak	BusFault_Handler
	.thumb_set BusFault_Handler,Default_Handler
	.weak	MemManage_Handler
	.thumb_set MemManage_Handler,Default_Handler
	.text
.Letext0:
	.file 2 "/usr/bin/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/bin/gcc-arm-none-eabi-10.3-2021.10/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x115
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x54
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3b
	.byte	0x11
	.4byte	0x77
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x3c
	.byte	0x11
	.4byte	0x77
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0x77
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7b
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x47
	.byte	0x10
	.4byte	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x47
	.byte	0x1b
	.4byte	0x112
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x77
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"Reset_Handler\000"
.LASF11:
	.ascii	"__data_load__\000"
.LASF21:
	.ascii	"/mnt/c/Introduction_To_Embedded_Systems_UC/ese-cour"
	.ascii	"sera-course1/assessments/m2/src\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF20:
	.ascii	"interrupts_msp432p401r_gcc.c\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"pui32Src\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"NMI_Handler\000"
.LASF18:
	.ascii	"pui32Dest\000"
.LASF19:
	.ascii	"GNU C99 10.3.1 20210824 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -march=ar"
	.ascii	"mv7e-m+fp -g -O0 -std=c99\000"
.LASF15:
	.ascii	"HardFault_Handler\000"
.LASF14:
	.ascii	"Default_Handler\000"
.LASF2:
	.ascii	"short int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"__data_start__\000"
.LASF13:
	.ascii	"__data_end__\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10.3-2021.10) 10.3.1 20210824 (release)"
