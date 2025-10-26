	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_swap_add                       ## -- Begin function swap_add
	.p2align	4, 0x90
_swap_add:                              ## @swap_add
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rcx
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	%rcx, (%rsi)
	addq	%rcx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_caller                         ## -- Begin function caller
	.p2align	4, 0x90
_caller:                                ## @caller
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$832093, %eax                   ## imm = 0xCB25D
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
