	.file	"pointer2.c"
	.option pic
	.text
	.comm	Student1,16,8
	.comm	Student2,16,8
	.section	.rodata
	.align	3
.LC0:
	.string	"reten"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	li	a0,16
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	lla	a4,.LC0
	sd	a4,8(a5)
	ld	a5,-24(s0)
	li	a4,10
	sb	a4,0(a5)
	ld	a5,-24(s0)
	li	a4,21
	sh	a4,2(a5)
	la	a5,Student1
	li	a4,11
	sb	a4,0(a5)
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
