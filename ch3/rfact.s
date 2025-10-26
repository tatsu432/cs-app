	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_rfact                          ## -- Begin function rfact
	.p2align	4, 0x90
_rfact:                                 ## @rfact
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	cmpq	$2, %rdi
	jl	LBB0_3
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	imulq	%rdi, %rax
	decq	%rdi
	cmpq	$2, %rdi
	jge	LBB0_2
LBB0_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
