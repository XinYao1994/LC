	.file	"test.cpp"
	.globl	diva
	.data
	.align 4
	.type	diva, @object
	.size	diva, 4
diva:
	.long	3
	.globl	divc
	.align 4
	.type	divc, @object
	.size	divc, 4
divc:
	.long	3
	.globl	a
	.bss
	.align 8
	.type	a, @object
	.size	a, 8
a:
	.zero	8
	.globl	b
	.align 8
	.type	b, @object
	.size	b, 8
b:
	.zero	8
	.globl	c
	.align 8
	.type	c, @object
	.size	c, 8
c:
	.zero	8
	.globl	hThread
	.align 32
	.type	hThread, @object
	.size	hThread, 800
hThread:
	.zero	800
	.globl	array
	.align 32
	.type	array, @object
	.size	array, 1600
array:
	.zero	1600
	.text
	.globl	_Z6MyatoiPc
	.type	_Z6MyatoiPc, @function
_Z6MyatoiPc:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -4(%rbp)
	addq	$1, -24(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	_Z6MyatoiPc, .-_Z6MyatoiPc
	.globl	_Z10MultMatrixPv
	.type	_Z10MultMatrixPv, @function
_Z10MultMatrixPv:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	b(%rip), %rdx
	movq	a(%rip), %rsi
	movq	c(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	call	_ZN6Matrix5CrossEPS_S0_Pv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z10MultMatrixPv, .-_Z10MultMatrixPv
	.globl	id
	.bss
	.align 8
	.type	id, @object
	.size	id, 8
id:
	.zero	8
	.section	.rodata
.LC0:
	.string	"use 1000, 1000, 1000"
	.align 8
.LC1:
	.string	"argc error,use 1000, 1000, 1000"
	.align 8
.LC2:
	.string	"pthread maker %d * %d -> %d %d\n"
.LC4:
	.string	"It costs %.4f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA16
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	cmpl	$5, -84(%rbp)
	jne	.L7
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, id(%rip)
	movq	-96(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, diva(%rip)
	movq	-96(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, divc(%rip)
	jmp	.L8
.L7:
	cmpl	$7, -84(%rbp)
	jne	.L9
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z6MyatoiPc
	movl	%eax, -20(%rbp)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z6MyatoiPc
	movl	%eax, -24(%rbp)
	movq	-96(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z6MyatoiPc
	movl	%eax, -28(%rbp)
	movq	-96(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, id(%rip)
	movq	-96(%rbp), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, diva(%rip)
	movq	-96(%rbp), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, divc(%rip)
	jmp	.L8
.L9:
	cmpl	$4, -84(%rbp)
	jne	.L10
	movl	$.LC0, %edi
.LEHB0:
	call	puts
	movl	$1000, -20(%rbp)
	movl	$1000, -24(%rbp)
	movl	$1000, -28(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, id(%rip)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, diva(%rip)
	movq	-96(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, divc(%rip)
	jmp	.L8
.L10:
	cmpl	$1, -84(%rbp)
	jle	.L11
	movl	$.LC1, %edi
	call	puts
.L11:
	movl	$1000, -20(%rbp)
	movl	$1000, -24(%rbp)
	movl	$1000, -28(%rbp)
.L8:
	movq	id(%rip), %rsi
	movq	%rsi, %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rsi, %rax
	movw	$97, (%rax)
	movl	$16, %edi
	call	_Znwm
.LEHE0:
	movq	%rax, %rbx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN6MatrixC1Eiii
.LEHE1:
	movq	%rbx, a(%rip)
	movq	id(%rip), %rsi
	movq	%rsi, %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rsi, %rax
	movw	$98, (%rax)
	movl	$16, %edi
.LEHB2:
	call	_Znwm
.LEHE2:
	movq	%rax, %rbx
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	$1, %ecx
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN6MatrixC1Eiii
.LEHE3:
	movq	%rbx, b(%rip)
	movq	id(%rip), %rsi
	movq	%rsi, %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rsi, %rax
	movw	$99, (%rax)
	movl	$16, %edi
.LEHB4:
	call	_Znwm
.LEHE4:
	movq	%rax, %rbx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	$0, %ecx
	movl	%eax, %esi
	movq	%rbx, %rdi
.LEHB5:
	call	_ZN6MatrixC1Eiii
.LEHE5:
	movq	%rbx, c(%rip)
	movl	diva(%rip), %ebx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, -40(%rbp)
	movl	divc(%rip), %ebx
	movl	-28(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, -44(%rbp)
	movl	divc(%rip), %edx
	movl	diva(%rip), %eax
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %ecx
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
.LEHB6:
	call	printf
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movq	-80(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-72(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC3(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L12
.L19:
	movl	$0, -36(%rbp)
	jmp	.L13
.L18:
	movl	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	$array, %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	$array, %rax
	movl	%ecx, 4(%rax)
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	diva(%rip), %eax
	cmpl	%eax, %edx
	jne	.L14
	movl	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	$array, %rax
	movl	%ecx, 8(%rax)
	jmp	.L15
.L14:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	leaq	array(%rax), %rdx
	movl	-40(%rbp), %eax
	movl	%eax, 8(%rdx)
.L15:
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	divc(%rip), %eax
	cmpl	%eax, %edx
	jne	.L16
	movl	-36(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$4, %rax
	addq	$array, %rax
	movl	%ecx, 12(%rax)
	jmp	.L17
.L16:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	leaq	array(%rax), %rdx
	movl	-44(%rbp), %eax
	movl	%eax, 12(%rdx)
.L17:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	leaq	array(%rax), %rcx
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$3, %rax
	addq	$hThread, %rax
	movl	$_Z10MultMatrixPv, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_create
	addl	$1, -36(%rbp)
.L13:
	movl	divc(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L18
	addl	$1, -32(%rbp)
.L12:
	movl	diva(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L19
	movl	$0, -32(%rbp)
	jmp	.L20
.L23:
	movl	$0, -36(%rbp)
	jmp	.L21
.L22:
	movl	-36(%rbp), %eax
	movslq	%eax, %rcx
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movq	hThread(,%rax,8), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	pthread_join
	addl	$1, -36(%rbp)
.L21:
	movl	divc(%rip), %eax
	cmpl	%eax, -36(%rbp)
	jl	.L22
	addl	$1, -32(%rbp)
.L20:
	movl	diva(%rip), %eax
	cmpl	%eax, -32(%rbp)
	jl	.L23
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	gettimeofday
	movq	-80(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-72(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC3(%rip), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	subsd	-56(%rbp), %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	jmp	.L31
.L28:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L29:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.L30:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE6:
.L31:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA16:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE16-.LLSDACSB16
.LLSDACSB16:
	.uleb128 .LEHB0-.LFB16
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB16
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L28-.LFB16
	.uleb128 0
	.uleb128 .LEHB2-.LFB16
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB16
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L29-.LFB16
	.uleb128 0
	.uleb128 .LEHB4-.LFB16
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB16
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L30-.LFB16
	.uleb128 0
	.uleb128 .LEHB6-.LFB16
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE16:
	.text
	.size	main, .-main
	.section	.rodata
	.align 8
.LC3:
	.long	0
	.long	1093567616
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
