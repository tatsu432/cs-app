	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_gets                           ## -- Begin function gets
	.p2align	4, 0x90
_gets:                                  ## @gets
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_getchar
	cmpl	$-1, %eax
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$10, %eax
	je	LBB0_6
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	%al, (%rbx,%r14)
	incq	%r14
	jmp	LBB0_1
LBB0_4:
	testq	%r14, %r14
	je	LBB0_5
LBB0_6:
	movb	$0, (%rbx,%r14)
LBB0_7:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB0_5:
	xorl	%ebx, %ebx
	jmp	LBB0_7
	.cfi_endproc
                                        ## -- End function
	.globl	_echo                           ## -- Begin function echo
	.p2align	4, 0x90
_echo:                                  ## @echo
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_getchar
	cmpl	$-1, %eax
	je	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	cmpl	$10, %eax
	je	LBB1_5
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movb	%al, -24(%rbp,%rbx)
	incq	%rbx
	jmp	LBB1_1
LBB1_4:
	testq	%rbx, %rbx
	je	LBB1_6
LBB1_5:
	movb	$0, -24(%rbp,%rbx)
LBB1_6:
	leaq	-24(%rbp), %rdi
	callq	_puts
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	LBB1_8
## %bb.7:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB1_8:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
