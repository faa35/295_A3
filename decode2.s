	.file	"decode2.c"
	.text
	.globl	decode2
	.type	decode2, @function
decode2:
.LFB23:
	.cfi_startproc
	endbr64
	subq	%rdx, %rsi
	imulq	%rsi, %rdi
	sarq	$63, %rsi
	movq	%rdi, %rax
	xorq	%rsi, %rax
	ret
	.cfi_endproc
.LFE23:
	.size	decode2, .-decode2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"decode2(%ld, %ld, %ld) = %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$3, %edx
	movl	$5, %esi
	movl	$10, %edi
	call	decode2
	movq	%rax, %r9
	movl	$3, %r8d
	movl	$5, %ecx
	movl	$10, %edx
	leaq	.LC0(%rip), %rbx
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$5, %edx
	movl	$3, %esi
	movl	$10, %edi
	call	decode2
	movq	%rax, %r9
	movl	$5, %r8d
	movl	$3, %ecx
	movl	$10, %edx
	movq	%rbx, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
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
