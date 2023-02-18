	.file	"func.c"
	.option pic
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	call	func1
	li	a5,3
	sw	a5,-28(s0)
	li	a5,2
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	mv	a1,a4
	mv	a0,a5
	call	func2
	mv	a5,a0
	sw	a5,-20(s0)
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.align	1
	.globl	func1
	.type	func1, @function
func1:
	addi	sp,sp,-32
	sd	s0,24(sp)
	addi	s0,sp,32
	li	a5,4
	sw	a5,-20(s0)
	nop
	ld	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	func1, .-func1
	.align	1
	.globl	func2
	.type	func2, @function
func2:
	addi	sp,sp,-32	//プロローグ：領域確保でspを動かす
	sd	s0,24(sp)	//プロローグ：s0(フレームレジスタ、ベースレジスタ)をストア。関数呼び出し時点を記憶しておく（呼び出し元の開始地点が入っているから）
	addi	s0,sp,32	//プロローグ：関数フレーム内をオフセットでアクセスするとき用にフレームレジスタを関数フレームの最初を指すようにする
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)	//エピローグ：記憶しておいた呼び出し元のフレームポインタを戻す
	addi	sp,sp,32	//エピローグ：関数フレーム解放
	jr	ra		//エピローグ：戻りアドレスにジャンプ
	.size	func2, .-func2
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
