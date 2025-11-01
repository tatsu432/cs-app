	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_dotprod                        ## -- Begin function dotprod
	.p2align	4, 0x90
_dotprod:                               ## @dotprod
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movss	(%rdi,%rax,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	mulss	(%rsi,%rax,4), %xmm1
	addss	%xmm1, %xmm0
	incq	%rax
	cmpq	$8, %rax
	jne	LBB0_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
