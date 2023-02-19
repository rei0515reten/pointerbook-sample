	.file	"array.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	la	a5,__stack_chk_guard		//__stack_chk_guardという領域からランダム値をとる
	ld	a5,0(a5)			//スタックプロテクタの領域に値をセット
	sd	a5,-24(s0)			//スタックプロテクタの値を記憶
	lla	a5,.LC0
	ld	a4,0(a5)			//2要素分をロードしてる
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	lw	a5,16(a5)
	sw	a5,-56(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	li	a5,20
	sw	a5,-72(s0)
	li	a5,100
	sw	a5,-48(s0)
	li	a5,200
	sw	a5,-44(s0)
	li	a5,300
	sw	a5,-36(s0)
	li	a5,400
	sw	a5,-32(s0)
	li	a5,0
	mv	a3,a5
	la	a5,__stack_chk_guard
	ld	a4,-24(s0)
	ld	a5,0(a5)
	beq	a4,a5,.L3			//スタックプロテクタの値を比較（異なればスタックオーバーフローなどが起こっている）
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
