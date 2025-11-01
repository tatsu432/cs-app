	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_sumarraycols                   ## -- Begin function sumarraycols
	.p2align	4, 0x90
_sumarraycols:                          ## @sumarraycols
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
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	movq	$-400, %rdx                     ## imm = 0xFE70
	.p2align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	addl	400(%rdi,%rdx), %eax
	addq	$40, %rdx
	jne	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	incq	%rcx
	addq	$4, %rdi
	cmpq	$10, %rcx
	jne	LBB0_1
## %bb.4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
