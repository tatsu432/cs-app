	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 26, 0
	.globl	_vframe                         ## -- Begin function vframe
	.p2align	4, 0x90
_vframe:                                ## @vframe
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rsp, %r12
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	leaq	(,%rdi,8), %rax
	callq	____chkstk_darwin
	addq	$15, %rax
	andq	$-16, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	leaq	-48(%rbp), %rcx
	movq	%rcx, (%rax)
	movl	$1, %ecx
	cmpq	$2, %r15
	jl	LBB0_3
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r14, (%rax,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %r15
	jne	LBB0_1
## %bb.2:
	movq	%r15, %rcx
LBB0_3:
	movq	%rcx, -48(%rbp)
	movq	(%rax,%rbx,8), %rax
	movq	(%rax), %rax
	movq	%r12, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	cmpq	-40(%rbp), %rcx
	jne	LBB0_5
## %bb.4:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_5:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
