	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_fcvt                           ## -- Begin function fcvt
	.p2align	4, 0x90
_fcvt:                                  ## @fcvt
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cvttsd2si	(%rdx), %rax
	movss	(%rsi), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	cvtsi2sdq	(%rcx), %xmm1
	movq	%rax, (%rcx)
	cvtsi2ss	%edi, %xmm2
	movss	%xmm2, (%rsi)
	movsd	%xmm1, (%rdx)
	cvtss2sd	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
