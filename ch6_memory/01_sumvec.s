	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_sumvec                         ## -- Begin function sumvec
	.p2align	4, 0x90
_sumvec:                                ## @sumvec
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	addl	(%rdi,%rcx,4), %eax
	incq	%rcx
	cmpq	$10, %rcx
	jne	LBB0_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
