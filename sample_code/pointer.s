	.file	"pointer.c"
	.option pic
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	la	a5,__stack_chk_guard
	ld	a5,0(a5)
	sd	a5,-24(s0)
	li	a5,97
	sb	a5,-77(s0)
	addi	a5,s0,-77
	sd	a5,-72(s0)
	addi	a5,s0,-72
	sd	a5,-64(s0)
	addi	a5,s0,-64
	sd	a5,-40(s0)
	li	a5,25
	sw	a5,-76(s0)
	addi	a5,s0,-76
	sd	a5,-56(s0)
	addi	a5,s0,-56
	sd	a5,-48(s0)
	addi	a5,s0,-48
	sd	a5,-32(s0)
	li	a5,0
	mv	a3,a5
	la	a5,__stack_chk_guard
	ld	a4,-24(s0)
	ld	a5,0(a5)
	beq	a4,a5,.L3
	call	__stack_chk_fail@plt
.L3:
	mv	a0,a3
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
