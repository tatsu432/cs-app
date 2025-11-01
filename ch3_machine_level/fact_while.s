	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_fact_while                     ## -- Begin function fact_while
	.p2align	4, 0x90
_fact_while:                            ## @fact_while
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	cmpq	$2, %rdi
	jl	LBB0_2
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	imulq	%rdi, %rax
	leaq	-1(%rdi), %rcx
	cmpq	$2, %rdi
	movq	%rcx, %rdi
	jg	LBB0_1
LBB0_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
