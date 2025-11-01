	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_find_range                     ## -- Begin function find_range
	.p2align	4, 0x90
_find_range:                            ## @find_range
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	ja	LBB0_3
## %bb.1:
	movl	$1, %eax
	ucomiss	%xmm1, %xmm0
	jne	LBB0_2
	jp	LBB0_2
LBB0_3:
	popq	%rbp
	retq
LBB0_2:
	xorl	%eax, %eax
	ucomiss	%xmm1, %xmm0
	seta	%al
	xorl	$3, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
