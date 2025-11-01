	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_fix_prod_ele                   ## -- Begin function fix_prod_ele
	.p2align	4, 0x90
_fix_prod_ele:                          ## @fix_prod_ele
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	shlq	$6, %rdx
	addq	%rdi, %rdx
	leaq	(%rsi,%rcx,4), %rcx
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edi
	imull	(%rdx,%rsi,4), %edi
	addl	%edi, %eax
	incq	%rsi
	addq	$64, %rcx
	cmpq	$16, %rsi
	jne	LBB0_1
## %bb.2:
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
