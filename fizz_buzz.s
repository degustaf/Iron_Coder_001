	.file	"fizz_buzz.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "fizzbuzz\12\0"
LC1:
	.ascii "buzz\12\0"
LC2:
	.ascii "fizz\12\0"
LC3:
	.ascii "%d\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	andl	$-16, %esp
	movl	$0, %eax
	addl	$15, %eax
	addl	$15, %eax
	shrl	$4, %eax
	sall	$4, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	call	__alloca
	call	___main
	movl	$1, -4(%ebp)
L2:
	cmpl	$100, -4(%ebp)
	jg	L3
	movl	-4(%ebp), %ecx
	movl	$-2004318071, %eax
	imull	%ecx
	leal	(%ecx,%edx), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, -8(%ebp)
	cmpl	$12, -8(%ebp)
	ja	L13
	movl	$1, %eax
	movzbl	-8(%ebp), %ecx
	sall	%cl, %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	andl	$4680, %eax
	testl	%eax, %eax
	jne	L12
	movl	-12(%ebp), %eax
	andl	$1056, %eax
	testl	%eax, %eax
	jne	L8
	movl	-12(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	L6
	jmp	L13
L6:
	movl	$LC0, (%esp)
	call	_printf
	jmp	L4
L8:
	movl	$LC1, (%esp)
	call	_printf
	jmp	L4
L12:
	movl	$LC2, (%esp)
	call	_printf
	jmp	L4
L13:
	movl	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
L4:
	leal	-4(%ebp), %eax
	incl	(%eax)
	jmp	L2
L3:
	movl	$0, %eax
	leave
	ret
	.def	_printf;	.scl	3;	.type	32;	.endef
