	.file	"fizz_buzz.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "%d\12\0"
LC2:
	.ascii "fizz\0"
LC1:
	.ascii "buzz\0"
LC0:
	.ascii "fizzbuzz\0"
	.text
	.p2align 4,,15
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	$16, %eax
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	andl	$-16, %esp
	call	__alloca
	call	___main
	movl	$1, %ebx
	jmp	L14
	.p2align 4,,7
L23:
	testl	$1056, %eax
	jne	L8
	testb	$1, %al
	jne	L21
L13:
	movl	%ebx, 4(%esp)
	incl	%ebx
	movl	$LC3, (%esp)
	call	_printf
	cmpl	$100, %ebx
	jg	L22
L14:
	movl	$-2004318071, %eax
	movl	%ebx, %ecx
	imull	%ebx
	sarl	$31, %ecx
	leal	(%ebx,%edx), %edx
	sarl	$3, %edx
	subl	%ecx, %edx
	movl	%edx, %eax
	movl	%ebx, %ecx
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	cmpl	$12, %ecx
	ja	L13
	movl	$1, %eax
	sall	%cl, %eax
	testl	$4680, %eax
	je	L23
	movl	$LC2, (%esp)
	call	_puts
L24:
	incl	%ebx
	cmpl	$100, %ebx
	jle	L14
L22:
	movl	-4(%ebp), %ebx
	xorl	%eax, %eax
	leave
	ret
	.p2align 4,,7
L8:
	movl	$LC1, (%esp)
	call	_puts
	jmp	L24
	.p2align 4,,7
L21:
	movl	$LC0, (%esp)
	call	_puts
	jmp	L24
	.def	_puts;	.scl	3;	.type	32;	.endef
	.def	_printf;	.scl	3;	.type	32;	.endef
