	.file	"mxm.cpp"
	.text
	.align 2
	.globl	_ZN6MatrixC2Eiii
	.type	_ZN6MatrixC2Eiii, @function
_ZN6MatrixC2Eiii:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$0, -52(%rbp)
	jne	.L2
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	imulq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	jmp	.L1
.L2:
	movl	$0, -20(%rbp)
	jmp	.L4
.L7:
	movl	$0, -24(%rbp)
	jmp	.L5
.L6:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	call	rand
	movl	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$50, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm0, (%rbx)
	addl	$1, -24(%rbp)
.L5:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-24(%rbp), %eax
	jg	.L6
	addl	$1, -20(%rbp)
.L4:
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L7
.L1:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN6MatrixC2Eiii, .-_ZN6MatrixC2Eiii
	.globl	_ZN6MatrixC1Eiii
	.set	_ZN6MatrixC1Eiii,_ZN6MatrixC2Eiii
	.align 2
	.globl	_ZN6Matrix5CrossEPS_S0_Pv
	.type	_ZN6Matrix5CrossEPS_S0_Pv, @function
_ZN6Matrix5CrossEPS_S0_Pv:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L9
.L14:
	movl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L10
.L13:
	movl	$0, -12(%rbp)
	jmp	.L11
.L12:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	imull	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	cltq
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	imull	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	cltq
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	(%rax), %xmm1
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	imull	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-12(%rbp), %eax
	cltq
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	(%rax), %xmm2
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	imull	-12(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	cltq
	addq	%rsi, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdx)
	addl	$1, -12(%rbp)
.L11:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L12
	addl	$1, -8(%rbp)
.L10:
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %edx
	addl	%edx, %eax
	cmpl	-8(%rbp), %eax
	jg	.L13
	addl	$1, -4(%rbp)
.L9:
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %edx
	addl	%edx, %eax
	cmpl	-4(%rbp), %eax
	jg	.L14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN6Matrix5CrossEPS_S0_Pv, .-_ZN6Matrix5CrossEPS_S0_Pv
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
