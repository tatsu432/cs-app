	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_var_ele                        ## -- Begin function var_ele
	.p2align	4, 0x90
_var_ele:                               ## @var_ele
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	imulq	%rdx, %rdi
	leaq	(%rsi,%rdi,4), %rax
	movl	(%rax,%rcx,4), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
