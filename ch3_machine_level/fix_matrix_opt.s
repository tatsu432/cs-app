	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_fix_prod_ele_opt               ## -- Begin function fix_prod_ele_opt
	.p2align	4, 0x90
_fix_prod_ele_opt:                      ## @fix_prod_ele_opt
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
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rsi), %edi
	imull	(%rdx), %edi
	addl	%edi, %eax
	addq	$4, %rdx
	addq	$64, %rsi
	cmpq	$1024, %rsi                     ## imm = 0x400
	jne	LBB0_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
