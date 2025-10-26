	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_Q                              ## -- Begin function Q
	.p2align	4, 0x90
_Q:                                     ## @Q
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	10(%rdi), %rax
	testq	%rdi, %rdi
	cmovnsq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_P                              ## -- Begin function P
	.p2align	4, 0x90
_P:                                     ## @P
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	10(%rsi), %rcx
	testq	%rsi, %rsi
	cmovnsq	%rsi, %rcx
	leaq	10(%rdi), %rax
	testq	%rdi, %rdi
	cmovnsq	%rdi, %rax
	addq	%rcx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
