	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/mnt/c/Introduction_To_Embedded_Systems_UC/ese-coursera-course1/assessments/m2/src" "main.c"
	.globl	buffer
	.bss
	.align 8
	.type	buffer, @object
	.size	buffer, 10
buffer:
	.zero	10
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 30 16
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 1 35 3
	movl	$10, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	clear_all@PLT
	.loc 1 36 3
	leaq	8+buffer(%rip), %rax
	movl	$2, %edx
	movl	$43, %esi
	movq	%rax, %rdi
	call	set_all@PLT
	.loc 1 37 3
	movl	$97, %edx
	movl	$0, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 38 11
	movl	$9, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	get_value@PLT
	movb	%al, -5(%rbp)
	.loc 1 39 31
	movzbl	-5(%rbp), %eax
	addl	$39, %eax
	.loc 1 39 3
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$9, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 40 3
	movl	$55, %edx
	movl	$3, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 41 3
	movl	$88, %edx
	movl	$1, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 42 3
	movl	$50, %edx
	movl	$4, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 43 11
	movl	$1, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	get_value@PLT
	movb	%al, -5(%rbp)
	.loc 1 44 3
	movl	$121, %edx
	movl	$2, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 45 31
	movzbl	-5(%rbp), %eax
	subl	$12, %eax
	.loc 1 45 3
	movsbl	%al, %eax
	movl	%eax, %edx
	movl	$7, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 46 3
	movl	$95, %edx
	movl	$5, %esi
	leaq	buffer(%rip), %rax
	movq	%rax, %rdi
	call	set_value@PLT
	.loc 1 48 11
	movl	$0, -4(%rbp)
	.loc 1 48 3
	jmp	.L2
.L3:
	.loc 1 49 5 discriminator 3
	movl	-4(%rbp), %eax
	leaq	buffer(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	.loc 1 48 33 discriminator 3
	addl	$1, -4(%rbp)
.L2:
	.loc 1 48 18 discriminator 1
	cmpl	$9, -4(%rbp)
	jbe	.L3
	.loc 1 51 3
	movl	$10, %edi
	call	putchar@PLT
	.loc 1 52 10
	movl	$0, %eax
	.loc 1 53 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "../include/common/memory.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x135
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x4
	.long	.LASF14
	.byte	0xc
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x6c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x7
	.long	0x6c
	.long	0x83
	.uleb128 0x8
	.long	0x2e
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.long	0x73
	.uleb128 0x9
	.byte	0x3
	.quad	buffer
	.uleb128 0xa
	.long	.LASF16
	.byte	0x2
	.byte	0x3f
	.byte	0x6
	.long	0x6c
	.long	0xb4
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x3
	.long	.LASF10
	.byte	0x25
	.long	0xce
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x35
	.uleb128 0x1
	.long	0x6c
	.byte	0
	.uleb128 0x3
	.long	.LASF11
	.byte	0x4e
	.long	0xe8
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x6c
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x5b
	.long	0xfd
	.uleb128 0x1
	.long	0x66
	.uleb128 0x1
	.long	0x35
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.long	0x58
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.long	0x35
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.long	.LASF13
	.byte	0x1
	.byte	0x20
	.byte	0x8
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"unsigned int"
.LASF15:
	.string	"buffer"
.LASF16:
	.string	"get_value"
.LASF2:
	.string	"long unsigned int"
.LASF14:
	.string	"GNU C99 11.4.0 -mtune=generic -march=x86-64 -g -O0 -std=c99 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF12:
	.string	"clear_all"
.LASF4:
	.string	"unsigned char"
.LASF11:
	.string	"set_all"
.LASF17:
	.string	"main"
.LASF8:
	.string	"long int"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF13:
	.string	"value"
.LASF7:
	.string	"short int"
.LASF10:
	.string	"set_value"
.LASF9:
	.string	"char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/mnt/c/Introduction_To_Embedded_Systems_UC/ese-coursera-course1/assessments/m2/src"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
