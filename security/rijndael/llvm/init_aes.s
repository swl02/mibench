	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.file	"aes.c"
	.globl	set_key
	.p2align	2
	.type	set_key,@function
set_key:
	.word	0x1977
	addi	sp, sp, -112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	addi	s0, sp, 112
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
	lbu	a0, -40(s0)
	andi	a0, a0, 7
	li	a1, 0
	bne	a0, a1, .LBB0_5
	.word	0x2977
	j	.LBB0_1
.LBB0_1:
	.word	0x3977
	ld	a0, -40(s0)
	li	a1, 16
	bltu	a0, a1, .LBB0_5
	.word	0x4977
	j	.LBB0_2
.LBB0_2:
	.word	0x5977
	ld	a1, -40(s0)
	li	a0, 32
	bltu	a0, a1, .LBB0_5
	.word	0x6977
	j	.LBB0_3
.LBB0_3:
	.word	0x7977
	lbu	a0, -44(s0)
	andi	a0, a0, 1
	li	a1, 0
	bne	a0, a1, .LBB0_9
	.word	0x8977
	j	.LBB0_4
.LBB0_4:
	.word	0x9977
	lbu	a0, -44(s0)
	andi	a0, a0, 2
	li	a1, 0
	bne	a0, a1, .LBB0_9
	.word	0xa977
	j	.LBB0_5
.LBB0_5:
	.word	0xb977
	ld	a0, -40(s0)
	li	a1, 0
	beq	a0, a1, .LBB0_7
	.word	0xc977
	j	.LBB0_6
.LBB0_6:
	.word	0xd977
	ld	a1, -56(s0)
	lbu	a0, 1040(a1)
	andi	a0, a0, 252
	sb	a0, 1040(a1)
	li	a0, 0
	sd	a0, -96(s0)
	j	.LBB0_8
.LBB0_7:
	.word	0xe977
	ld	a0, -56(s0)
	ld	a0, 0(a0)
	slli	a0, a0, 50
	srai	a0, a0, 48
	sd	a0, -96(s0)
	j	.LBB0_8
.LBB0_8:
	.word	0xf977
	ld	a0, -96(s0)
	sh	a0, -18(s0)
	j	.LBB0_34
.LBB0_9:
	.word	0x10977
	ld	a1, -56(s0)
	lbu	a0, 1040(a1)
	andi	a0, a0, 252
	lwu	a2, -44(s0)
	andi	a2, a2, 3
	or	a0, a0, a2
	sb	a0, 1040(a1)
	ld	a0, -40(s0)
	srli	a0, a0, 2
	ld	a1, -56(s0)
	sd	a0, 0(a1)
	ld	a0, -56(s0)
	ld	a0, 0(a0)
	li	a1, 5
	bltu	a0, a1, .LBB0_11
	.word	0x11977
	j	.LBB0_10
.LBB0_10:
	.word	0x12977
	ld	a0, -56(s0)
	ld	a0, 0(a0)
	sd	a0, -104(s0)
	j	.LBB0_12
.LBB0_11:
	.word	0x13977
	li	a0, 4
	sd	a0, -104(s0)
	j	.LBB0_12
.LBB0_12:
	.word	0x14977
	ld	a0, -104(s0)
	addi	a0, a0, 6
	ld	a1, -56(s0)
	sd	a0, 8(a1)
	ld	a0, -32(s0)
	ld	a0, 0(a0)
	ld	a1, -56(s0)
	sd	a0, 16(a1)
	ld	a0, -32(s0)
	ld	a0, 4(a0)
	ld	a1, -56(s0)
	sd	a0, 24(a1)
	ld	a0, -32(s0)
	ld	a0, 8(a0)
	ld	a1, -56(s0)
	sd	a0, 32(a1)
	ld	a0, -32(s0)
	ld	a0, 12(a0)
	ld	a1, -56(s0)
	sd	a0, 40(a1)
	ld	a0, -56(s0)
	addi	a0, a0, 16
	sd	a0, -64(s0)
	ld	a2, -64(s0)
	ld	a1, -56(s0)
	ld	a0, 8(a1)
	slli	a0, a0, 5
	add	a0, a0, a2
	ld	a1, 0(a1)
	slli	a1, a1, 3
	sub	a0, a0, a1
	addi	a0, a0, 32
	sd	a0, -72(s0)
	li	a0, 0
	sd	a0, -80(s0)
	ld	a0, -56(s0)
	ld	a0, 0(a0)
	sd	a0, -112(s0)
	li	a1, 4
	beq	a0, a1, .LBB0_15
	.word	0x15977
	j	.LBB0_13
.LBB0_13:
	.word	0x16977
	ld	a0, -112(s0)
	li	a1, 6
	beq	a0, a1, .LBB0_19
	.word	0x17977
	j	.LBB0_14
.LBB0_14:
	.word	0x18977
	ld	a0, -112(s0)
	li	a1, 8
	beq	a0, a1, .LBB0_23
	.word	0x19977
	j	.LBB0_27
.LBB0_15:
	.word	0x1a977
	j	.LBB0_16
.LBB0_16:
	.word	0x1b977
	ld	a1, -64(s0)
	ld	a0, 0(a1)
	ld	a3, 24(a1)
	srli	a1, a3, 5
	andi	a1, a1, 2040
	lui	a2, %hi(fl_tab)
	addi	a2, a2, %lo(fl_tab)
	add	a1, a1, a2
	ld	a1, 0(a1)
	srli	a4, a3, 13
	andi	a4, a4, 2040
	add	a4, a2, a4
	addi	a4, a4, 1024
	ld	a4, 1024(a4)
	xor	a1, a1, a4
	srli	a4, a3, 21
	andi	a4, a4, 2040
	add	a4, a2, a4
	lui	a5, 1
	add	a4, a4, a5
	ld	a4, 0(a4)
	xor	a1, a1, a4
	andi	a3, a3, 255
	slli	a3, a3, 3
	add	a2, a2, a3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -80(s0)
	addi	a2, a1, 1
	sd	a2, -80(s0)
	lui	a2, %hi(rcon_tab)
	addi	a2, a2, %lo(rcon_tab)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -64(s0)
	sd	a0, 32(a1)
	ld	a1, -64(s0)
	ld	a0, 8(a1)
	ld	a2, 32(a1)
	xor	a0, a0, a2
	sd	a0, 40(a1)
	ld	a1, -64(s0)
	ld	a0, 16(a1)
	ld	a2, 40(a1)
	xor	a0, a0, a2
	sd	a0, 48(a1)
	ld	a1, -64(s0)
	ld	a0, 24(a1)
	ld	a2, 48(a1)
	xor	a0, a0, a2
	sd	a0, 56(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 32
	sd	a0, -64(s0)
	j	.LBB0_17
.LBB0_17:
	.word	0x1c977
	ld	a0, -64(s0)
	ld	a1, -72(s0)
	bltu	a0, a1, .LBB0_16
	.word	0x1d977
	j	.LBB0_18
.LBB0_18:
	.word	0x1e977
	j	.LBB0_27
.LBB0_19:
	.word	0x1f977
	ld	a0, -32(s0)
	ld	a0, 16(a0)
	ld	a1, -56(s0)
	sd	a0, 48(a1)
	ld	a0, -32(s0)
	ld	a0, 20(a0)
	ld	a1, -56(s0)
	sd	a0, 56(a1)
	j	.LBB0_20
.LBB0_20:
	.word	0x20977
	ld	a1, -64(s0)
	ld	a0, 0(a1)
	ld	a3, 40(a1)
	srli	a1, a3, 5
	andi	a1, a1, 2040
	lui	a2, %hi(fl_tab)
	addi	a2, a2, %lo(fl_tab)
	add	a1, a1, a2
	ld	a1, 0(a1)
	srli	a4, a3, 13
	andi	a4, a4, 2040
	add	a4, a2, a4
	addi	a4, a4, 1024
	ld	a4, 1024(a4)
	xor	a1, a1, a4
	srli	a4, a3, 21
	andi	a4, a4, 2040
	add	a4, a2, a4
	lui	a5, 1
	add	a4, a4, a5
	ld	a4, 0(a4)
	xor	a1, a1, a4
	andi	a3, a3, 255
	slli	a3, a3, 3
	add	a2, a2, a3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -80(s0)
	addi	a2, a1, 1
	sd	a2, -80(s0)
	lui	a2, %hi(rcon_tab)
	addi	a2, a2, %lo(rcon_tab)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -64(s0)
	sd	a0, 48(a1)
	ld	a1, -64(s0)
	ld	a0, 8(a1)
	ld	a2, 48(a1)
	xor	a0, a0, a2
	sd	a0, 56(a1)
	ld	a1, -64(s0)
	ld	a0, 16(a1)
	ld	a2, 56(a1)
	xor	a0, a0, a2
	sd	a0, 64(a1)
	ld	a1, -64(s0)
	ld	a0, 24(a1)
	ld	a2, 64(a1)
	xor	a0, a0, a2
	sd	a0, 72(a1)
	ld	a1, -64(s0)
	ld	a0, 32(a1)
	ld	a2, 72(a1)
	xor	a0, a0, a2
	sd	a0, 80(a1)
	ld	a1, -64(s0)
	ld	a0, 40(a1)
	ld	a2, 80(a1)
	xor	a0, a0, a2
	sd	a0, 88(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 48
	sd	a0, -64(s0)
	j	.LBB0_21
.LBB0_21:
	.word	0x21977
	ld	a0, -64(s0)
	ld	a1, -72(s0)
	bltu	a0, a1, .LBB0_20
	.word	0x22977
	j	.LBB0_22
.LBB0_22:
	.word	0x23977
	j	.LBB0_27
.LBB0_23:
	.word	0x24977
	ld	a0, -32(s0)
	ld	a0, 16(a0)
	ld	a1, -56(s0)
	sd	a0, 48(a1)
	ld	a0, -32(s0)
	ld	a0, 20(a0)
	ld	a1, -56(s0)
	sd	a0, 56(a1)
	ld	a0, -32(s0)
	ld	a0, 24(a0)
	ld	a1, -56(s0)
	sd	a0, 64(a1)
	ld	a0, -32(s0)
	ld	a0, 28(a0)
	ld	a1, -56(s0)
	sd	a0, 72(a1)
	j	.LBB0_24
.LBB0_24:
	.word	0x25977
	ld	a1, -64(s0)
	ld	a0, 0(a1)
	ld	a2, 56(a1)
	srli	a1, a2, 5
	andi	a1, a1, 2040
	lui	a3, %hi(fl_tab)
	addi	a5, a3, %lo(fl_tab)
	add	a1, a1, a5
	ld	a1, 0(a1)
	srli	a3, a2, 13
	andi	a3, a3, 2040
	addi	a4, a5, 1024
	addi	a7, a4, 1024
	add	a3, a3, a7
	ld	a3, 0(a3)
	xor	a1, a1, a3
	srli	a3, a2, 21
	andi	a3, a3, 2040
	lui	a4, 1
	add	a6, a5, a4
	add	a3, a3, a6
	ld	a3, 0(a3)
	xor	a1, a1, a3
	andi	a2, a2, 255
	slli	a2, a2, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a4, a5, a3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	ld	a1, -80(s0)
	addi	a2, a1, 1
	sd	a2, -80(s0)
	lui	a2, %hi(rcon_tab)
	addi	a2, a2, %lo(rcon_tab)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -64(s0)
	sd	a0, 64(a1)
	ld	a1, -64(s0)
	ld	a0, 8(a1)
	ld	a2, 64(a1)
	xor	a0, a0, a2
	sd	a0, 72(a1)
	ld	a1, -64(s0)
	ld	a0, 16(a1)
	ld	a2, 72(a1)
	xor	a0, a0, a2
	sd	a0, 80(a1)
	ld	a1, -64(s0)
	ld	a0, 24(a1)
	ld	a2, 80(a1)
	xor	a0, a0, a2
	sd	a0, 88(a1)
	ld	a1, -64(s0)
	ld	a0, 32(a1)
	ld	a3, 88(a1)
	andi	a2, a3, 255
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	srli	a5, a3, 5
	andi	a5, a5, 2040
	add	a5, a5, a7
	ld	a5, 0(a5)
	xor	a2, a2, a5
	srli	a5, a3, 13
	andi	a5, a5, 2040
	add	a5, a5, a6
	ld	a5, 0(a5)
	xor	a2, a2, a5
	srli	a3, a3, 21
	andi	a3, a3, 2040
	add	a3, a3, a4
	ld	a3, 0(a3)
	xor	a2, a2, a3
	xor	a0, a0, a2
	sd	a0, 96(a1)
	ld	a1, -64(s0)
	ld	a0, 40(a1)
	ld	a2, 96(a1)
	xor	a0, a0, a2
	sd	a0, 104(a1)
	ld	a1, -64(s0)
	ld	a0, 48(a1)
	ld	a2, 104(a1)
	xor	a0, a0, a2
	sd	a0, 112(a1)
	ld	a1, -64(s0)
	ld	a0, 56(a1)
	ld	a2, 112(a1)
	xor	a0, a0, a2
	sd	a0, 120(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 64
	sd	a0, -64(s0)
	j	.LBB0_25
.LBB0_25:
	.word	0x26977
	ld	a0, -64(s0)
	ld	a1, -72(s0)
	bltu	a0, a1, .LBB0_24
	.word	0x27977
	j	.LBB0_26
.LBB0_26:
	.word	0x28977
	j	.LBB0_27
.LBB0_27:
	.word	0x29977
	ld	a0, -56(s0)
	lbu	a0, 1040(a0)
	andi	a0, a0, 3
	li	a1, 1
	beq	a0, a1, .LBB0_33
	.word	0x2a977
	j	.LBB0_28
.LBB0_28:
	.word	0x2b977
	ld	a0, -56(s0)
	ld	a1, 8(a0)
	slli	a1, a1, 5
	add	a0, a0, a1
	addi	a0, a0, 528
	sd	a0, -72(s0)
	ld	a0, -56(s0)
	addi	a0, a0, 16
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -72(s0)
	addi	a0, a0, -64
	sd	a0, -72(s0)
	li	a0, 1
	sd	a0, -88(s0)
	j	.LBB0_29
.LBB0_29:
	.word	0x2c977
	ld	a0, -88(s0)
	ld	a1, -56(s0)
	ld	a1, 8(a1)
	bgeu	a0, a1, .LBB0_32
	.word	0x2d977
	j	.LBB0_30
.LBB0_30:
	.word	0x2e977
	ld	a0, -64(s0)
	ld	a1, 0(a0)
	andi	a0, a1, 255
	slli	a0, a0, 3
	lui	a2, %hi(im_tab)
	addi	a3, a2, %lo(im_tab)
	add	a0, a0, a3
	ld	a0, 0(a0)
	srli	a2, a1, 5
	andi	a2, a2, 2040
	addi	a4, a3, 1024
	addi	a5, a4, 1024
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a0, a0, a2
	srli	a2, a1, 13
	andi	a2, a2, 2040
	lui	a4, 1
	add	a4, a3, a4
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a0, a0, a2
	srli	a1, a1, 21
	andi	a1, a1, 2040
	lui	a2, 2
	addiw	a2, a2, -2048
	add	a2, a3, a2
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -72(s0)
	addi	a6, a1, 8
	sd	a6, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 8
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	ld	a1, 0(a0)
	andi	a0, a1, 255
	slli	a0, a0, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	srli	a6, a1, 5
	andi	a6, a6, 2040
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a0, a0, a6
	srli	a6, a1, 13
	andi	a6, a6, 2040
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a0, a0, a6
	srli	a1, a1, 21
	andi	a1, a1, 2040
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -72(s0)
	addi	a6, a1, 8
	sd	a6, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 8
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	ld	a1, 0(a0)
	andi	a0, a1, 255
	slli	a0, a0, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	srli	a6, a1, 5
	andi	a6, a6, 2040
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a0, a0, a6
	srli	a6, a1, 13
	andi	a6, a6, 2040
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a0, a0, a6
	srli	a1, a1, 21
	andi	a1, a1, 2040
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -72(s0)
	addi	a6, a1, 8
	sd	a6, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 8
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	ld	a1, 0(a0)
	andi	a0, a1, 255
	slli	a0, a0, 3
	add	a0, a0, a3
	ld	a0, 0(a0)
	srli	a3, a1, 5
	andi	a3, a3, 2040
	add	a3, a3, a5
	ld	a3, 0(a3)
	xor	a0, a0, a3
	srli	a3, a1, 13
	andi	a3, a3, 2040
	add	a3, a3, a4
	ld	a3, 0(a3)
	xor	a0, a0, a3
	srli	a1, a1, 21
	andi	a1, a1, 2040
	add	a1, a1, a2
	ld	a1, 0(a1)
	xor	a0, a0, a1
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a0, a0, 8
	sd	a0, -64(s0)
	ld	a0, -72(s0)
	addi	a0, a0, -64
	sd	a0, -72(s0)
	j	.LBB0_31
.LBB0_31:
	.word	0x2f977
	ld	a0, -88(s0)
	addi	a0, a0, 1
	sd	a0, -88(s0)
	j	.LBB0_29
.LBB0_32:
	.word	0x30977
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	ld	a0, -64(s0)
	addi	a1, a0, 8
	sd	a1, -64(s0)
	ld	a0, 0(a0)
	ld	a1, -72(s0)
	addi	a2, a1, 8
	sd	a2, -72(s0)
	sd	a0, 0(a1)
	j	.LBB0_33
.LBB0_33:
	.word	0x31977
	li	a0, 1
	sh	a0, -18(s0)
	j	.LBB0_34
.LBB0_34:
	.word	0x32977
	lh	a0, -18(s0)
	ld	ra, 104(sp)
	ld	s0, 96(sp)
	addi	sp, sp, 112
	csrwi	0xff,0
	ret
.Lfunc_end0:
	.size	set_key, .Lfunc_end0-set_key

	.globl	encrypt
	.p2align	2
	.type	encrypt,@function
encrypt:
	.word	0x33977
	addi	sp, sp, -224
	sd	ra, 216(sp)
	sd	s0, 208(sp)
	addi	s0, sp, 224
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 16
	sd	a0, -120(s0)
	ld	a0, -48(s0)
	lbu	a0, 1040(a0)
	andi	a0, a0, 1
	li	a1, 0
	bne	a0, a1, .LBB1_2
	.word	0x34977
	j	.LBB1_1
.LBB1_1:
	.word	0x35977
	li	a0, 0
	sh	a0, -18(s0)
	j	.LBB1_9
.LBB1_2:
	.word	0x36977
	ld	a0, -32(s0)
	ld	a0, 0(a0)
	ld	a1, -120(s0)
	ld	a1, 0(a1)
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -32(s0)
	ld	a0, 4(a0)
	ld	a1, -120(s0)
	ld	a1, 8(a1)
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -32(s0)
	ld	a0, 8(a0)
	ld	a1, -120(s0)
	ld	a1, 16(a1)
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -32(s0)
	ld	a0, 12(a0)
	ld	a1, -120(s0)
	ld	a1, 24(a1)
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	addi	a0, a0, 32
	sd	a0, -120(s0)
	ld	a0, -48(s0)
	ld	a0, 8(a0)
	sd	a0, -128(s0)
	li	a1, 10
	beq	a0, a1, .LBB1_7
	.word	0x37977
	j	.LBB1_3
.LBB1_3:
	.word	0x38977
	ld	a0, -128(s0)
	li	a1, 12
	beq	a0, a1, .LBB1_6
	.word	0x39977
	j	.LBB1_4
.LBB1_4:
	.word	0x3a977
	ld	a0, -128(s0)
	li	a1, 14
	beq	a0, a1, .LBB1_5
	.word	0x3b977
	j	.LBB1_8
.LBB1_5:
	.word	0x3c977
	ld	a0, -120(s0)
	ld	a0, 0(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	lui	a2, %hi(ft_tab)
	addi	a2, a2, %lo(ft_tab)
	sd	a2, -160(s0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a3, -103(s0)
	slli	a3, a3, 3
	addi	a4, a2, 1024
	addi	a5, a4, 1024
	sd	a5, -152(s0)
	add	a3, a3, a5
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -94(s0)
	slli	a3, a3, 3
	lui	a4, 1
	add	a4, a2, a4
	sd	a4, -144(s0)
	add	a3, a3, a4
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -85(s0)
	slli	a6, a3, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a3, a2, a3
	sd	a3, -136(s0)
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 8(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -95(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -86(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -109(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 16(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -87(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -110(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -101(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 24(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -111(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -102(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -93(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 32(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -71(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -62(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -53(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 40(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -63(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -54(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -77(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 48(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -55(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -78(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -69(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 56(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -79(s0)
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -70(s0)
	slli	a2, a2, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -61(s0)
	slli	a2, a2, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	addi	a0, a0, 64
	sd	a0, -120(s0)
	j	.LBB1_6
.LBB1_6:
	.word	0x3d977
	ld	a0, -120(s0)
	ld	a0, 0(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	lui	a2, %hi(ft_tab)
	addi	a2, a2, %lo(ft_tab)
	sd	a2, -192(s0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a3, -103(s0)
	slli	a3, a3, 3
	addi	a4, a2, 1024
	addi	a5, a4, 1024
	sd	a5, -184(s0)
	add	a3, a3, a5
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -94(s0)
	slli	a3, a3, 3
	lui	a4, 1
	add	a4, a2, a4
	sd	a4, -176(s0)
	add	a3, a3, a4
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -85(s0)
	slli	a6, a3, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a3, a2, a3
	sd	a3, -168(s0)
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 8(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -95(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -86(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -109(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 16(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -87(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -110(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -101(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 24(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -111(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -102(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -93(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 32(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -71(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -62(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -53(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 40(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -63(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -54(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -77(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 48(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -55(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -78(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -69(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 56(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -79(s0)
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -70(s0)
	slli	a2, a2, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -61(s0)
	slli	a2, a2, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	addi	a0, a0, 64
	sd	a0, -120(s0)
	j	.LBB1_7
.LBB1_7:
	.word	0x3e977
	ld	a0, -120(s0)
	ld	a0, 0(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	lui	a2, %hi(ft_tab)
	addi	a2, a2, %lo(ft_tab)
	sd	a2, -224(s0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a3, -103(s0)
	slli	a3, a3, 3
	lui	a4, 1
	addiw	a5, a4, -2048
	add	t0, a2, a5
	sd	t0, -216(s0)
	add	a3, a3, t0
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -94(s0)
	slli	a3, a3, 3
	add	a7, a2, a4
	sd	a7, -208(s0)
	add	a3, a3, a7
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -85(s0)
	slli	t1, a3, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a6, a2, a3
	sd	a6, -200(s0)
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 8(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 16(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 24(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 32(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 40(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 48(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 56(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 64(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 72(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 80(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 88(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 96(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 104(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 112(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 120(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 128(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 136(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 144(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 152(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 160(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 168(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 176(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 184(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 192(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 200(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 208(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 216(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 224(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 232(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 240(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 248(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 256(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 264(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 272(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 280(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -111(s0)
	slli	a2, a2, 3
	add	a2, a2, t0
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -102(s0)
	slli	a2, a2, 3
	add	a2, a2, a7
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -93(s0)
	slli	a2, a2, 3
	add	a2, a2, a6
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 288(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	lui	a2, %hi(fl_tab)
	addi	a2, a2, %lo(fl_tab)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -71(s0)
	slli	a6, a6, 3
	add	a5, a2, a5
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -62(s0)
	slli	a6, a6, 3
	add	a4, a2, a4
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -53(s0)
	slli	a6, a6, 3
	add	a3, a2, a3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 296(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -63(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -54(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -77(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 304(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -55(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -78(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -69(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 312(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -79(s0)
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -70(s0)
	slli	a2, a2, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -61(s0)
	slli	a2, a2, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -88(s0)
	j	.LBB1_8
.LBB1_8:
	.word	0x3f977
	ld	a0, -112(s0)
	ld	a1, -40(s0)
	sd	a0, 0(a1)
	ld	a0, -104(s0)
	ld	a1, -40(s0)
	sd	a0, 4(a1)
	ld	a0, -96(s0)
	ld	a1, -40(s0)
	sd	a0, 8(a1)
	ld	a0, -88(s0)
	ld	a1, -40(s0)
	sd	a0, 12(a1)
	li	a0, 1
	sh	a0, -18(s0)
	j	.LBB1_9
.LBB1_9:
	.word	0x40977
	lh	a0, -18(s0)
	ld	ra, 216(sp)
	ld	s0, 208(sp)
	addi	sp, sp, 224
	csrwi	0xff,0
	ret
.Lfunc_end1:
	.size	encrypt, .Lfunc_end1-encrypt

	.globl	decrypt
	.p2align	2
	.type	decrypt,@function
decrypt:
	.word	0x41977
	addi	sp, sp, -224
	sd	ra, 216(sp)
	sd	s0, 208(sp)
	addi	s0, sp, 224
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 528
	sd	a0, -120(s0)
	ld	a0, -48(s0)
	lbu	a0, 1040(a0)
	andi	a0, a0, 2
	li	a1, 0
	bne	a0, a1, .LBB2_2
	.word	0x42977
	j	.LBB2_1
.LBB2_1:
	.word	0x43977
	li	a0, 0
	sh	a0, -18(s0)
	j	.LBB2_9
.LBB2_2:
	.word	0x44977
	ld	a0, -32(s0)
	ld	a0, 0(a0)
	ld	a1, -120(s0)
	ld	a1, 0(a1)
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -32(s0)
	ld	a0, 4(a0)
	ld	a1, -120(s0)
	ld	a1, 8(a1)
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -32(s0)
	ld	a0, 8(a0)
	ld	a1, -120(s0)
	ld	a1, 16(a1)
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -32(s0)
	ld	a0, 12(a0)
	ld	a1, -120(s0)
	ld	a1, 24(a1)
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	addi	a0, a0, 32
	sd	a0, -120(s0)
	ld	a0, -48(s0)
	ld	a0, 8(a0)
	sd	a0, -128(s0)
	li	a1, 10
	beq	a0, a1, .LBB2_7
	.word	0x45977
	j	.LBB2_3
.LBB2_3:
	.word	0x46977
	ld	a0, -128(s0)
	li	a1, 12
	beq	a0, a1, .LBB2_6
	.word	0x47977
	j	.LBB2_4
.LBB2_4:
	.word	0x48977
	ld	a0, -128(s0)
	li	a1, 14
	beq	a0, a1, .LBB2_5
	.word	0x49977
	j	.LBB2_8
.LBB2_5:
	.word	0x4a977
	ld	a0, -120(s0)
	ld	a0, 0(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	lui	a2, %hi(it_tab)
	addi	a2, a2, %lo(it_tab)
	sd	a2, -160(s0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a3, -87(s0)
	slli	a3, a3, 3
	addi	a4, a2, 1024
	addi	a5, a4, 1024
	sd	a5, -152(s0)
	add	a3, a3, a5
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -94(s0)
	slli	a3, a3, 3
	lui	a4, 1
	add	a4, a2, a4
	sd	a4, -144(s0)
	add	a3, a3, a4
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -101(s0)
	slli	a6, a3, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a3, a2, a3
	sd	a3, -136(s0)
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 8(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -111(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -86(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -93(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 16(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -103(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -110(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -85(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 24(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -95(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -102(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -109(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 32(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -55(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -62(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -69(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 40(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -79(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -54(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -61(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 48(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -71(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -78(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -53(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 56(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -63(s0)
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -70(s0)
	slli	a2, a2, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -77(s0)
	slli	a2, a2, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	addi	a0, a0, 64
	sd	a0, -120(s0)
	j	.LBB2_6
.LBB2_6:
	.word	0x4b977
	ld	a0, -120(s0)
	ld	a0, 0(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	lui	a2, %hi(it_tab)
	addi	a2, a2, %lo(it_tab)
	sd	a2, -192(s0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a3, -87(s0)
	slli	a3, a3, 3
	addi	a4, a2, 1024
	addi	a5, a4, 1024
	sd	a5, -184(s0)
	add	a3, a3, a5
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -94(s0)
	slli	a3, a3, 3
	lui	a4, 1
	add	a4, a2, a4
	sd	a4, -176(s0)
	add	a3, a3, a4
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -101(s0)
	slli	a6, a3, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a3, a2, a3
	sd	a3, -168(s0)
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 8(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -111(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -86(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -93(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 16(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -103(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -110(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -85(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 24(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -95(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -102(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -109(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 32(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -55(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -62(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -69(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 40(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -79(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -54(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -61(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 48(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -71(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -78(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -53(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 56(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -63(s0)
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -70(s0)
	slli	a2, a2, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -77(s0)
	slli	a2, a2, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	addi	a0, a0, 64
	sd	a0, -120(s0)
	j	.LBB2_7
.LBB2_7:
	.word	0x4c977
	ld	a0, -120(s0)
	ld	a0, 0(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	lui	a2, %hi(it_tab)
	addi	a2, a2, %lo(it_tab)
	sd	a2, -224(s0)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a3, -87(s0)
	slli	a3, a3, 3
	lui	a4, 1
	addiw	a5, a4, -2048
	add	t0, a2, a5
	sd	t0, -216(s0)
	add	a3, a3, t0
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -94(s0)
	slli	a3, a3, 3
	add	a7, a2, a4
	sd	a7, -208(s0)
	add	a3, a3, a7
	ld	a3, 0(a3)
	xor	a1, a1, a3
	lbu	a3, -101(s0)
	slli	t1, a3, 3
	lui	a3, 2
	addiw	a3, a3, -2048
	add	a6, a2, a3
	sd	a6, -200(s0)
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 8(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 16(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 24(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 32(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 40(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 48(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 56(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 64(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 72(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 80(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 88(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 96(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 104(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 112(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 120(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 128(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 136(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 144(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 152(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 160(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 168(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 176(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 184(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 192(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 200(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 208(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 216(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -95(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -102(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -109(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 224(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -55(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -62(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -69(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 232(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -79(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -54(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -61(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 240(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -71(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -78(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -53(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 248(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -63(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -70(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -77(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -120(s0)
	ld	a0, 256(a0)
	lbu	a1, -112(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -87(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -94(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -101(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -80(s0)
	ld	a0, -120(s0)
	ld	a0, 264(a0)
	lbu	a1, -104(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -111(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -86(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -93(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -120(s0)
	ld	a0, 272(a0)
	lbu	a1, -96(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	t1, -103(s0)
	slli	t1, t1, 3
	add	t1, t1, t0
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -110(s0)
	slli	t1, t1, 3
	add	t1, t1, a7
	ld	t1, 0(t1)
	xor	a1, a1, t1
	lbu	t1, -85(s0)
	slli	t1, t1, 3
	add	t1, t1, a6
	ld	t1, 0(t1)
	xor	a1, a1, t1
	xor	a0, a0, a1
	sd	a0, -64(s0)
	ld	a0, -120(s0)
	ld	a0, 280(a0)
	lbu	a1, -88(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -95(s0)
	slli	a2, a2, 3
	add	a2, a2, t0
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -102(s0)
	slli	a2, a2, 3
	add	a2, a2, a7
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -109(s0)
	slli	a2, a2, 3
	add	a2, a2, a6
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -120(s0)
	ld	a0, 288(a0)
	lbu	a1, -80(s0)
	slli	a1, a1, 3
	lui	a2, %hi(il_tab)
	addi	a2, a2, %lo(il_tab)
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -55(s0)
	slli	a6, a6, 3
	add	a5, a2, a5
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -62(s0)
	slli	a6, a6, 3
	add	a4, a2, a4
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -69(s0)
	slli	a6, a6, 3
	add	a3, a2, a3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -112(s0)
	ld	a0, -120(s0)
	ld	a0, 296(a0)
	lbu	a1, -72(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -79(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -54(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -61(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -104(s0)
	ld	a0, -120(s0)
	ld	a0, 304(a0)
	lbu	a1, -64(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a6, -71(s0)
	slli	a6, a6, 3
	add	a6, a6, a5
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -78(s0)
	slli	a6, a6, 3
	add	a6, a6, a4
	ld	a6, 0(a6)
	xor	a1, a1, a6
	lbu	a6, -53(s0)
	slli	a6, a6, 3
	add	a6, a6, a3
	ld	a6, 0(a6)
	xor	a1, a1, a6
	xor	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -120(s0)
	ld	a0, 312(a0)
	lbu	a1, -56(s0)
	slli	a1, a1, 3
	add	a1, a1, a2
	ld	a1, 0(a1)
	lbu	a2, -63(s0)
	slli	a2, a2, 3
	add	a2, a2, a5
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -70(s0)
	slli	a2, a2, 3
	add	a2, a2, a4
	ld	a2, 0(a2)
	xor	a1, a1, a2
	lbu	a2, -77(s0)
	slli	a2, a2, 3
	add	a2, a2, a3
	ld	a2, 0(a2)
	xor	a1, a1, a2
	xor	a0, a0, a1
	sd	a0, -88(s0)
	j	.LBB2_8
.LBB2_8:
	.word	0x4d977
	ld	a0, -112(s0)
	ld	a1, -40(s0)
	sd	a0, 0(a1)
	ld	a0, -104(s0)
	ld	a1, -40(s0)
	sd	a0, 4(a1)
	ld	a0, -96(s0)
	ld	a1, -40(s0)
	sd	a0, 8(a1)
	ld	a0, -88(s0)
	ld	a1, -40(s0)
	sd	a0, 12(a1)
	li	a0, 1
	sh	a0, -18(s0)
	j	.LBB2_9
.LBB2_9:
	.word	0x4e977
	lh	a0, -18(s0)
	ld	ra, 216(sp)
	ld	s0, 208(sp)
	addi	sp, sp, 224
	csrwi	0xff,0
	ret
.Lfunc_end2:
	.size	decrypt, .Lfunc_end2-decrypt

	.type	s_box,@object
	.section	.rodata,"a",@progbits
	.globl	s_box
s_box:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	s_box, 256

	.type	inv_s_box,@object
	.globl	inv_s_box
inv_s_box:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_s_box, 256

	.type	rcon_tab,@object
	.globl	rcon_tab
	.p2align	3
rcon_tab:
	.quad	1
	.quad	2
	.quad	4
	.quad	8
	.quad	16
	.quad	32
	.quad	64
	.quad	128
	.quad	27
	.quad	54
	.quad	108
	.quad	216
	.quad	171
	.quad	77
	.quad	154
	.quad	47
	.quad	94
	.quad	188
	.quad	99
	.quad	198
	.quad	151
	.quad	53
	.quad	106
	.quad	212
	.quad	179
	.quad	125
	.quad	250
	.quad	239
	.quad	197
	.size	rcon_tab, 232

	.type	ft_tab,@object
	.globl	ft_tab
	.p2align	3
ft_tab:
	.quad	2774754246
	.quad	2222750968
	.quad	2574743534
	.quad	2373680118
	.quad	234025727
	.quad	3177933782
	.quad	2976870366
	.quad	1422247313
	.quad	1345335392
	.quad	50397442
	.quad	2842126286
	.quad	2099981142
	.quad	436141799
	.quad	1658312629
	.quad	3870010189
	.quad	2591454956
	.quad	1170918031
	.quad	2642575903
	.quad	1086966153
	.quad	2273148410
	.quad	368769775
	.quad	3948501426
	.quad	3376891790
	.quad	200339707
	.quad	3970805057
	.quad	1742001331
	.quad	4255294047
	.quad	3937382213
	.quad	3214711843
	.quad	4154762323
	.quad	2524082916
	.quad	1539358875
	.quad	3266819957
	.quad	486407649
	.quad	2928907069
	.quad	1780885068
	.quad	1513502316
	.quad	1094664062
	.quad	49805301
	.quad	1338821763
	.quad	1546925160
	.quad	4104496465
	.quad	887481809
	.quad	150073849
	.quad	2473685474
	.quad	1943591083
	.quad	1395732834
	.quad	1058346282
	.quad	201589768
	.quad	1388824469
	.quad	1696801606
	.quad	1589887901
	.quad	672667696
	.quad	2711000631
	.quad	251987210
	.quad	3046808111
	.quad	151455502
	.quad	907153956
	.quad	2608889883
	.quad	1038279391
	.quad	652995533
	.quad	1764173646
	.quad	3451040383
	.quad	2675275242
	.quad	453576978
	.quad	2659418909
	.quad	1949051992
	.quad	773462580
	.quad	756751158
	.quad	2993581788
	.quad	3998898868
	.quad	4221608027
	.quad	4132590244
	.quad	1295727478
	.quad	1641469623
	.quad	3467883389
	.quad	2066295122
	.quad	1055122397
	.quad	1898917726
	.quad	2542044179
	.quad	4115878822
	.quad	1758581177
	.quad	0
	.quad	753790401
	.quad	1612718144
	.quad	536673507
	.quad	3367088505
	.quad	3982187446
	.quad	3194645204
	.quad	1187761037
	.quad	3653156455
	.quad	1262041458
	.quad	3729410708
	.quad	3561770136
	.quad	3898103984
	.quad	1255133061
	.quad	1808847035
	.quad	720367557
	.quad	3853167183
	.quad	385612781
	.quad	3309519750
	.quad	3612167578
	.quad	1429418854
	.quad	2491778321
	.quad	3477423498
	.quad	284817897
	.quad	100794884
	.quad	2172616702
	.quad	4031795360
	.quad	1144798328
	.quad	3131023141
	.quad	3819481163
	.quad	4082192802
	.quad	4272137053
	.quad	3225436288
	.quad	2324664069
	.quad	2912064063
	.quad	3164445985
	.quad	1211644016
	.quad	83228145
	.quad	3753688163
	.quad	3249976951
	.quad	1977277103
	.quad	1663115586
	.quad	806359072
	.quad	452984805
	.quad	250868733
	.quad	1842533055
	.quad	1288555905
	.quad	336333848
	.quad	890442534
	.quad	804056259
	.quad	3781124030
	.quad	2727843637
	.quad	3427026056
	.quad	957814574
	.quad	1472513171
	.quad	4071073621
	.quad	2189328124
	.quad	1195195770
	.quad	2892260552
	.quad	3881655738
	.quad	723065138
	.quad	2507371494
	.quad	2690670784
	.quad	2558624025
	.quad	3511635870
	.quad	2145180835
	.quad	1713513028
	.quad	2116692564
	.quad	2878378043
	.quad	2206763019
	.quad	3393603212
	.quad	703524551
	.quad	3552098411
	.quad	1007948840
	.quad	2044649127
	.quad	3797835452
	.quad	487262998
	.quad	1994120109
	.quad	1004593371
	.quad	1446130276
	.quad	1312438900
	.quad	503974420
	.quad	3679013266
	.quad	168166924
	.quad	1814307912
	.quad	3831258296
	.quad	1573044895
	.quad	1859376061
	.quad	4021070915
	.quad	2791465668
	.quad	2828112185
	.quad	2761266481
	.quad	937747667
	.quad	2339994098
	.quad	854058965
	.quad	1137232011
	.quad	1496790894
	.quad	3077402074
	.quad	2358086913
	.quad	1691735473
	.quad	3528347292
	.quad	3769215305
	.quad	3027004632
	.quad	4199962284
	.quad	133494003
	.quad	636152527
	.quad	2942657994
	.quad	2390391540
	.quad	3920539207
	.quad	403179536
	.quad	3585784431
	.quad	2289596656
	.quad	1864705354
	.quad	1915629148
	.quad	605822008
	.quad	4054230615
	.quad	3350508659
	.quad	1371981463
	.quad	602466507
	.quad	2094914977
	.quad	2624877800
	.quad	555687742
	.quad	3712699286
	.quad	3703422305
	.quad	2257292045
	.quad	2240449039
	.quad	2423288032
	.quad	1111375484
	.quad	3300242801
	.quad	2858837708
	.quad	3628615824
	.quad	84083462
	.quad	32962295
	.quad	302911004
	.quad	2741068226
	.quad	1597322602
	.quad	4183250862
	.quad	3501832553
	.quad	2441512471
	.quad	1489093017
	.quad	656219450
	.quad	3114180135
	.quad	954327513
	.quad	335083755
	.quad	3013122091
	.quad	856756514
	.quad	3144247762
	.quad	1893325225
	.quad	2307821063
	.quad	2811532339
	.quad	3063651117
	.quad	572399164
	.quad	2458355477
	.quad	552200649
	.quad	1238290055
	.quad	4283782570
	.quad	2015897680
	.quad	2061492133
	.quad	2408352771
	.quad	4171342169
	.quad	2156497161
	.quad	386731290
	.quad	3669999461
	.quad	837215959
	.quad	3326231172
	.quad	3093850320
	.quad	3275833730
	.quad	2962856233
	.quad	1999449434
	.quad	286199582
	.quad	3417354363
	.quad	4233385128
	.quad	3602627437
	.quad	974525996
	.quad	1667483301
	.quad	2088564868
	.quad	2004348569
	.quad	2071721613
	.quad	4076011277
	.quad	1802229437
	.quad	1869602481
	.quad	3318059348
	.quad	808476752
	.quad	16843267
	.quad	1734856361
	.quad	724260477
	.quad	4278118169
	.quad	3621238114
	.quad	2880130534
	.quad	1987505306
	.quad	3402272581
	.quad	2189565853
	.quad	3385428288
	.quad	2105408135
	.quad	4210749205
	.quad	1499050731
	.quad	1195871945
	.quad	4042324747
	.quad	2913812972
	.quad	3570709351
	.quad	2728550397
	.quad	2947499498
	.quad	2627478463
	.quad	2762232823
	.quad	1920132246
	.quad	3233848155
	.quad	3082253762
	.quad	4261273884
	.quad	2475900334
	.quad	640044138
	.quad	909536346
	.quad	1061125697
	.quad	4160222466
	.quad	3435955023
	.quad	875849820
	.quad	2779075060
	.quad	3857043764
	.quad	4059166984
	.quad	1903288979
	.quad	3638078323
	.quad	825320019
	.quad	353708607
	.quad	67373068
	.quad	3351745874
	.quad	589514341
	.quad	3284376926
	.quad	404238376
	.quad	2526427041
	.quad	84216335
	.quad	2593796021
	.quad	117902857
	.quad	303178806
	.quad	2155879323
	.quad	3806519101
	.quad	3958099238
	.quad	656887401
	.quad	2998042573
	.quad	1970662047
	.quad	151589403
	.quad	2206408094
	.quad	741103732
	.quad	437924910
	.quad	454768173
	.quad	1852759218
	.quad	1515893998
	.quad	2694863867
	.quad	1381147894
	.quad	993752653
	.quad	3604395873
	.quad	3014884814
	.quad	690573947
	.quad	3823361342
	.quad	791633521
	.quad	2223248279
	.quad	1397991157
	.quad	3520182632
	.quad	0
	.quad	3991781676
	.quad	538984544
	.quad	4244431647
	.quad	2981198280
	.quad	1532737261
	.quad	1785386174
	.quad	3419114822
	.quad	3200149465
	.quad	960066123
	.quad	1246401758
	.quad	1280088276
	.quad	1482207464
	.quad	3486483786
	.quad	3503340395
	.quad	4025468202
	.quad	2863288293
	.quad	4227591446
	.quad	1128498885
	.quad	1296931543
	.quad	859006549
	.quad	2240090516
	.quad	1162185423
	.quad	4193904912
	.quad	33686534
	.quad	2139094657
	.quad	1347461360
	.quad	1010595908
	.quad	2678007226
	.quad	2829601763
	.quad	1364304627
	.quad	2745392638
	.quad	1077969088
	.quad	2408514954
	.quad	2459058093
	.quad	2644320700
	.quad	943222856
	.quad	4126535940
	.quad	3166462943
	.quad	3065411521
	.quad	3671764853
	.quad	555827811
	.quad	269492272
	.quad	4294960410
	.quad	4092853518
	.quad	3537026925
	.quad	3452797260
	.quad	202119188
	.quad	320022069
	.quad	3974939439
	.quad	1600110305
	.quad	2543269282
	.quad	1145342156
	.quad	387395129
	.quad	3301217111
	.quad	2812761586
	.quad	2122251394
	.quad	1027439175
	.quad	1684326572
	.quad	1566423783
	.quad	421081643
	.quad	1936975509
	.quad	1616953504
	.quad	2172721560
	.quad	1330618065
	.quad	3705447295
	.quad	572671078
	.quad	707417214
	.quad	2425371563
	.quad	2290617219
	.quad	1179028682
	.quad	4008625961
	.quad	3099093971
	.quad	336865340
	.quad	3739133817
	.quad	1583267042
	.quad	185275933
	.quad	3688607094
	.quad	3772832571
	.quad	842163286
	.quad	976909390
	.quad	168432670
	.quad	1229558491
	.quad	101059594
	.quad	606357612
	.quad	1549580516
	.quad	3267534685
	.quad	3553869166
	.quad	2896970735
	.quad	1650640038
	.quad	2442213800
	.quad	2509582756
	.quad	3840201527
	.quad	2038035083
	.quad	3890730290
	.quad	3368586051
	.quad	926379609
	.quad	1835915959
	.quad	2374828428
	.quad	3587551588
	.quad	1313774802
	.quad	2846444000
	.quad	1819072692
	.quad	1448520954
	.quad	4109693703
	.quad	3941256997
	.quad	1701169839
	.quad	2054878350
	.quad	2930657257
	.quad	134746136
	.quad	3132780501
	.quad	2021191816
	.quad	623200879
	.quad	774790258
	.quad	471611428
	.quad	2795919345
	.quad	3031724999
	.quad	3334903633
	.quad	3907570467
	.quad	3722289532
	.quad	1953818780
	.quad	522141217
	.quad	1263245021
	.quad	3183305180
	.quad	2341145990
	.quad	2324303749
	.quad	1886445712
	.quad	1044282434
	.quad	3048567236
	.quad	1718013098
	.quad	1212715224
	.quad	50529797
	.quad	4143380225
	.quad	235805714
	.quad	1633796771
	.quad	892693087
	.quad	1465364217
	.quad	3115936208
	.quad	2256934801
	.quad	3250690392
	.quad	488454695
	.quad	2661164985
	.quad	3789674808
	.quad	4177062675
	.quad	2560109491
	.quad	286335539
	.quad	1768542907
	.quad	3654920560
	.quad	2391672713
	.quad	2492740519
	.quad	2610638262
	.quad	505297954
	.quad	2273777042
	.quad	3924412704
	.quad	3469641545
	.quad	1431677695
	.quad	673730680
	.quad	3755976058
	.quad	2357986191
	.quad	2711706104
	.quad	2307459456
	.quad	218962455
	.quad	3216991706
	.quad	3873888049
	.quad	1111655622
	.quad	1751699640
	.quad	1094812355
	.quad	2576951728
	.quad	757946999
	.quad	252648977
	.quad	2964356043
	.quad	1414834428
	.quad	3149622742
	.quad	370551866
	.quad	1673962851
	.quad	2096661628
	.quad	2012125559
	.quad	2079755643
	.quad	4076801522
	.quad	1809235307
	.quad	1876865391
	.quad	3314635973
	.quad	811618352
	.quad	16909057
	.quad	1741597031
	.quad	727088427
	.quad	4276558334
	.quad	3618988759
	.quad	2874009259
	.quad	1995217526
	.quad	3398387146
	.quad	2183110018
	.quad	3381215433
	.quad	2113570685
	.quad	4209972730
	.quad	1504897881
	.quad	1200539975
	.quad	4042984432
	.quad	2906778797
	.quad	3568527316
	.quad	2724199842
	.quad	2940594863
	.quad	2619588508
	.quad	2756966308
	.quad	1927583346
	.quad	3231407040
	.quad	3077948087
	.quad	4259388669
	.quad	2470293139
	.quad	642542118
	.quad	913070646
	.quad	1065238847
	.quad	4160029431
	.quad	3431157708
	.quad	879254580
	.quad	2773611685
	.quad	3855693029
	.quad	4059629809
	.quad	1910674289
	.quad	3635114968
	.quad	828527409
	.quad	355090197
	.quad	67636228
	.quad	3348452039
	.quad	591815971
	.quad	3281870531
	.quad	405809176
	.quad	2520228246
	.quad	84545285
	.quad	2586817946
	.quad	118360327
	.quad	304363026
	.quad	2149292928
	.quad	3806281186
	.quad	3956090603
	.quad	659450151
	.quad	2994720178
	.quad	1978310517
	.quad	152181513
	.quad	2199756419
	.quad	743994412
	.quad	439627290
	.quad	456535323
	.quad	1859957358
	.quad	1521806938
	.quad	2690382752
	.quad	1386542674
	.quad	997608763
	.quad	3602342358
	.quad	3011366579
	.quad	693271337
	.quad	3822927587
	.quad	794718511
	.quad	2215876484
	.quad	1403450707
	.quad	3518589137
	.quad	0
	.quad	3988860141
	.quad	541089824
	.quad	4242743292
	.quad	2977548465
	.quad	1538714971
	.quad	1792327274
	.quad	3415033547
	.quad	3194476990
	.quad	963791673
	.quad	1251270218
	.quad	1285084236
	.quad	1487988824
	.quad	3481619151
	.quad	3501943760
	.quad	4022676207
	.quad	2857362858
	.quad	4226619131
	.quad	1132905795
	.quad	1301993293
	.quad	862344499
	.quad	2232521861
	.quad	1166724933
	.quad	4192801017
	.quad	33818114
	.quad	2147385727
	.quad	1352724560
	.quad	1014514748
	.quad	2670049951
	.quad	2823545768
	.quad	1369633617
	.quad	2740846243
	.quad	1082179648
	.quad	2399505039
	.quad	2453646738
	.quad	2636233885
	.quad	946882616
	.quad	4126213365
	.quad	3160661948
	.quad	3061301686
	.quad	3668932058
	.quad	557998881
	.quad	270544912
	.quad	4293204735
	.quad	4093447923
	.quad	3535760850
	.quad	3447803085
	.quad	202904588
	.quad	321271059
	.quad	3972214764
	.quad	1606345055
	.quad	2536874647
	.quad	1149815876
	.quad	388905239
	.quad	3297990596
	.quad	2807427751
	.quad	2130477694
	.quad	1031423805
	.quad	1690872932
	.quad	1572530013
	.quad	422718233
	.quad	1944491379
	.quad	1623236704
	.quad	2165938305
	.quad	1335808335
	.quad	3701702620
	.quad	574907938
	.quad	710180394
	.quad	2419829648
	.quad	2282455944
	.quad	1183631942
	.quad	4006029806
	.quad	3094074296
	.quad	338181140
	.quad	3735517662
	.quad	1589437022
	.quad	185998603
	.quad	3685578459
	.quad	3772464096
	.quad	845436466
	.quad	980700730
	.quad	169090570
	.quad	1234361161
	.quad	101452294
	.quad	608726052
	.quad	1555620956
	.quad	3265224130
	.quad	3552407251
	.quad	2890133420
	.quad	1657054818
	.quad	2436475025
	.quad	2503058581
	.quad	3839047652
	.quad	2045938553
	.quad	3889509095
	.quad	3364570056
	.quad	929978679
	.quad	1843050349
	.quad	2365688973
	.quad	3585172693
	.quad	1318900302
	.quad	2840191145
	.quad	1826141292
	.quad	1454176854
	.quad	4109567988
	.quad	3939444202
	.quad	1707781989
	.quad	2062847610
	.quad	2923948462
	.quad	135272456
	.quad	3127891386
	.quad	2029029496
	.quad	625635109
	.quad	777810478
	.quad	473441308
	.quad	2790781350
	.quad	3027486644
	.quad	3331805638
	.quad	3905627112
	.quad	3718347997
	.quad	1961401460
	.quad	524165407
	.quad	1268178251
	.quad	3177307325
	.quad	2332919435
	.quad	2316273034
	.quad	1893765232
	.quad	1048330814
	.quad	3044132021
	.quad	1724688998
	.quad	1217452104
	.quad	50726147
	.quad	4143383030
	.quad	236720654
	.quad	1640145761
	.quad	896163637
	.quad	1471084887
	.quad	3110719673
	.quad	2249691526
	.quad	3248052417
	.quad	490350365
	.quad	2653403550
	.quad	3789109473
	.quad	4176155640
	.quad	2553000856
	.quad	287453969
	.quad	1775418217
	.quad	3651760345
	.quad	2382858638
	.quad	2486413204
	.quad	2603464347
	.quad	507257374
	.quad	2266337927
	.quad	3922272489
	.quad	3464972750
	.quad	1437269845
	.quad	676362280
	.quad	3752164063
	.quad	2349043596
	.quad	2707028129
	.quad	2299101321
	.quad	219813645
	.quad	3211123391
	.quad	3872862694
	.quad	1115997762
	.quad	1758509160
	.quad	1099088705
	.quad	2569646233
	.quad	760903469
	.quad	253628687
	.quad	2960903088
	.quad	1420360788
	.quad	3144537787
	.quad	371997206
	.quad	3332727651
	.quad	4169432188
	.quad	4003034999
	.quad	4136467323
	.quad	4279104242
	.quad	3602738027
	.quad	3736170351
	.quad	2438251973
	.quad	1615867952
	.quad	33751297
	.quad	3467208551
	.quad	1451043627
	.quad	3877240574
	.quad	3043153879
	.quad	1306962859
	.quad	3969545846
	.quad	2403715786
	.quad	530416258
	.quad	2302724553
	.quad	4203183485
	.quad	4011195130
	.quad	3001768281
	.quad	2395555655
	.quad	4211863792
	.quad	1106029997
	.quad	3009926356
	.quad	1610457762
	.quad	1173008303
	.quad	599760028
	.quad	1408738468
	.quad	3835064946
	.quad	2606481600
	.quad	1975695287
	.quad	3776773629
	.quad	1034851219
	.quad	1282024998
	.quad	1817851446
	.quad	2118205247
	.quad	4110612471
	.quad	2203045068
	.quad	1750873140
	.quad	1374987685
	.quad	3509904869
	.quad	4178113009
	.quad	3801313649
	.quad	2876496088
	.quad	1649619249
	.quad	708777237
	.quad	135005188
	.quad	2505230279
	.quad	1181033251
	.quad	2640233411
	.quad	807933976
	.quad	933336726
	.quad	168756485
	.quad	800430746
	.quad	235472647
	.quad	607523346
	.quad	463175808
	.quad	3745374946
	.quad	3441880043
	.quad	1315514151
	.quad	2144187058
	.quad	3936318837
	.quad	303761673
	.quad	496927619
	.quad	1484008492
	.quad	875436570
	.quad	908925723
	.quad	3702681198
	.quad	3035519578
	.quad	1543217312
	.quad	2767606354
	.quad	1984772923
	.quad	3076642518
	.quad	2110698419
	.quad	1383803177
	.quad	3711886307
	.quad	1584475951
	.quad	328696964
	.quad	2801095507
	.quad	3110654417
	.quad	0
	.quad	3240947181
	.quad	1080041504
	.quad	3810524412
	.quad	2043195825
	.quad	3069008731
	.quad	3569248874
	.quad	2370227147
	.quad	1742323390
	.quad	1917532473
	.quad	2497595978
	.quad	2564049996
	.quad	2968016984
	.quad	2236272591
	.quad	3144405200
	.quad	3307925487
	.quad	1340451498
	.quad	3977706491
	.quad	2261074755
	.quad	2597801293
	.quad	1716859699
	.quad	294946181
	.quad	2328839493
	.quad	3910203897
	.quad	67502594
	.quad	4269899647
	.quad	2700103760
	.quad	2017737788
	.quad	632987551
	.quad	1273211048
	.quad	2733855057
	.quad	1576969123
	.quad	2160083008
	.quad	92966799
	.quad	1068339858
	.quad	566009245
	.quad	1883781176
	.quad	4043634165
	.quad	1675607228
	.quad	2009183926
	.quad	2943736538
	.quad	1113792801
	.quad	540020752
	.quad	3843751935
	.quad	4245615603
	.quad	3211645650
	.quad	2169294285
	.quad	403966988
	.quad	641012499
	.quad	3274697964
	.quad	3202441055
	.quad	899848087
	.quad	2295088196
	.quad	775493399
	.quad	2472002756
	.quad	1441965991
	.quad	4236410494
	.quad	2051489085
	.quad	3366741092
	.quad	3135724893
	.quad	841685273
	.quad	3868554099
	.quad	3231735904
	.quad	429425025
	.quad	2664517455
	.quad	2743065820
	.quad	1147544098
	.quad	1417554474
	.quad	1001099408
	.quad	193169544
	.quad	2362066502
	.quad	3341414126
	.quad	1809037496
	.quad	675025940
	.quad	2809781982
	.quad	3168951902
	.quad	371002123
	.quad	2910247899
	.quad	3678134496
	.quad	1683370546
	.quad	1951283770
	.quad	337512970
	.quad	2463844681
	.quad	201983494
	.quad	1215046692
	.quad	3101973596
	.quad	2673722050
	.quad	3178157011
	.quad	1139780780
	.quad	3299238498
	.quad	967348625
	.quad	832869781
	.quad	3543655652
	.quad	4069226873
	.quad	3576883175
	.quad	2336475336
	.quad	1851340599
	.quad	3669454189
	.quad	25988493
	.quad	2976175573
	.quad	2631028302
	.quad	1239460265
	.quad	3635702892
	.quad	2902087254
	.quad	4077384948
	.quad	3475368682
	.quad	3400492389
	.quad	4102978170
	.quad	1206496942
	.quad	270010376
	.quad	1876277946
	.quad	4035475576
	.quad	1248797989
	.quad	1550986798
	.quad	941890588
	.quad	1475454630
	.quad	1942467764
	.quad	2538718918
	.quad	3408128232
	.quad	2709315037
	.quad	3902567540
	.quad	1042358047
	.quad	2531085131
	.quad	1641856445
	.quad	226921355
	.quad	260409994
	.quad	3767562352
	.quad	2084716094
	.quad	1908716981
	.quad	3433719398
	.quad	2430093384
	.quad	100991747
	.quad	4144101110
	.quad	470945294
	.quad	3265487201
	.quad	1784624437
	.quad	2935576407
	.quad	1775286713
	.quad	395413126
	.quad	2572730817
	.quad	975641885
	.quad	666476190
	.quad	3644383713
	.quad	3943954680
	.quad	733190296
	.quad	573772049
	.quad	3535497577
	.quad	2842745305
	.quad	126455438
	.quad	866620564
	.quad	766942107
	.quad	1008868894
	.quad	361924487
	.quad	3374377449
	.quad	2269761230
	.quad	2868860245
	.quad	1350051880
	.quad	2776293343
	.quad	59739276
	.quad	1509466529
	.quad	159418761
	.quad	437718285
	.quad	1708834751
	.quad	3610371814
	.quad	2227585602
	.quad	3501746280
	.quad	2193834305
	.quad	699439513
	.quad	1517759789
	.quad	504434447
	.quad	2076946608
	.quad	2835108948
	.quad	1842789307
	.quad	742004246
	.size	ft_tab, 8192

	.type	it_tab,@object
	.globl	it_tab
	.p2align	3
it_tab:
	.quad	1353184337
	.quad	1399144830
	.quad	3282310938
	.quad	2522752826
	.quad	3412831035
	.quad	4047871263
	.quad	2874735276
	.quad	2466505547
	.quad	1442459680
	.quad	4134368941
	.quad	2440481928
	.quad	625738485
	.quad	4242007375
	.quad	3620416197
	.quad	2151953702
	.quad	2409849525
	.quad	1230680542
	.quad	1729870373
	.quad	2551114309
	.quad	3787521629
	.quad	41234371
	.quad	317738113
	.quad	2744600205
	.quad	3338261355
	.quad	3881799427
	.quad	2510066197
	.quad	3950669247
	.quad	3663286933
	.quad	763608788
	.quad	3542185048
	.quad	694804553
	.quad	1154009486
	.quad	1787413109
	.quad	2021232372
	.quad	1799248025
	.quad	3715217703
	.quad	3058688446
	.quad	397248752
	.quad	1722556617
	.quad	3023752829
	.quad	407560035
	.quad	2184256229
	.quad	1613975959
	.quad	1165972322
	.quad	3765920945
	.quad	2226023355
	.quad	480281086
	.quad	2485848313
	.quad	1483229296
	.quad	436028815
	.quad	2272059028
	.quad	3086515026
	.quad	601060267
	.quad	3791801202
	.quad	1468997603
	.quad	715871590
	.quad	120122290
	.quad	63092015
	.quad	2591802758
	.quad	2768779219
	.quad	4068943920
	.quad	2997206819
	.quad	3127509762
	.quad	1552029421
	.quad	723308426
	.quad	2461301159
	.quad	4042393587
	.quad	2715969870
	.quad	3455375973
	.quad	3586000134
	.quad	526529745
	.quad	2331944644
	.quad	2639474228
	.quad	2689987490
	.quad	853641733
	.quad	1978398372
	.quad	971801355
	.quad	2867814464
	.quad	111112542
	.quad	1360031421
	.quad	4186579262
	.quad	1023860118
	.quad	2919579357
	.quad	1186850381
	.quad	3045938321
	.quad	90031217
	.quad	1876166148
	.quad	4279586912
	.quad	620468249
	.quad	2548678102
	.quad	3426959497
	.quad	2006899047
	.quad	3175278768
	.quad	2290845959
	.quad	945494503
	.quad	3689859193
	.quad	1191869601
	.quad	3910091388
	.quad	3374220536
	.quad	0
	.quad	2206629897
	.quad	1223502642
	.quad	2893025566
	.quad	1316117100
	.quad	4227796733
	.quad	1446544655
	.quad	517320253
	.quad	658058550
	.quad	1691946762
	.quad	564550760
	.quad	3511966619
	.quad	976107044
	.quad	2976320012
	.quad	266819475
	.quad	3533106868
	.quad	2660342555
	.quad	1338359936
	.quad	2720062561
	.quad	1766553434
	.quad	370807324
	.quad	179999714
	.quad	3844776128
	.quad	1138762300
	.quad	488053522
	.quad	185403662
	.quad	2915535858
	.quad	3114841645
	.quad	3366526484
	.quad	2233069911
	.quad	1275557295
	.quad	3151862254
	.quad	4250959779
	.quad	2670068215
	.quad	3170202204
	.quad	3309004356
	.quad	880737115
	.quad	1982415755
	.quad	3703972811
	.quad	1761406390
	.quad	1676797112
	.quad	3403428311
	.quad	277177154
	.quad	1076008723
	.quad	538035844
	.quad	2099530373
	.quad	4164795346
	.quad	288553390
	.quad	1839278535
	.quad	1261411869
	.quad	4080055004
	.quad	3964831245
	.quad	3504587127
	.quad	1813426987
	.quad	2579067049
	.quad	4199060497
	.quad	577038663
	.quad	3297574056
	.quad	440397984
	.quad	3626794326
	.quad	4019204898
	.quad	3343796615
	.quad	3251714265
	.quad	4272081548
	.quad	906744984
	.quad	3481400742
	.quad	685669029
	.quad	646887386
	.quad	2764025151
	.quad	3835509292
	.quad	227702864
	.quad	2613862250
	.quad	1648787028
	.quad	3256061430
	.quad	3904428176
	.quad	1593260334
	.quad	4121936770
	.quad	3196083615
	.quad	2090061929
	.quad	2838353263
	.quad	3004310991
	.quad	999926984
	.quad	2809993232
	.quad	1852021992
	.quad	2075868123
	.quad	158869197
	.quad	4095236462
	.quad	28809964
	.quad	2828685187
	.quad	1701746150
	.quad	2129067946
	.quad	147831841
	.quad	3873969647
	.quad	3650873274
	.quad	3459673930
	.quad	3557400554
	.quad	3598495785
	.quad	2947720241
	.quad	824393514
	.quad	815048134
	.quad	3227951669
	.quad	935087732
	.quad	2798289660
	.quad	2966458592
	.quad	366520115
	.quad	1251476721
	.quad	4158319681
	.quad	240176511
	.quad	804688151
	.quad	2379631990
	.quad	1303441219
	.quad	1414376140
	.quad	3741619940
	.quad	3820343710
	.quad	461924940
	.quad	3089050817
	.quad	2136040774
	.quad	82468509
	.quad	1563790337
	.quad	1937016826
	.quad	776014843
	.quad	1511876531
	.quad	1389550482
	.quad	861278441
	.quad	323475053
	.quad	2355222426
	.quad	2047648055
	.quad	2383738969
	.quad	2302415851
	.quad	3995576782
	.quad	902390199
	.quad	3991215329
	.quad	1018251130
	.quad	1507840668
	.quad	1064563285
	.quad	2043548696
	.quad	3208103795
	.quad	3939366739
	.quad	1537932639
	.quad	342834655
	.quad	2262516856
	.quad	2180231114
	.quad	1053059257
	.quad	741614648
	.quad	1598071746
	.quad	1925389590
	.quad	203809468
	.quad	2336832552
	.quad	1100287487
	.quad	1895934009
	.quad	3736275976
	.quad	2632234200
	.quad	2428589668
	.quad	1636092795
	.quad	1890988757
	.quad	1952214088
	.quad	1113045200
	.quad	2817806672
	.quad	1698790995
	.quad	2752977603
	.quad	1579629206
	.quad	1806384075
	.quad	1167925233
	.quad	1492823211
	.quad	65227667
	.quad	4197458005
	.quad	1836494326
	.quad	1993115793
	.quad	1275262245
	.quad	3622129660
	.quad	3408578007
	.quad	1144333952
	.quad	2741155215
	.quad	1521606217
	.quad	465184103
	.quad	250234264
	.quad	3237895649
	.quad	1966064386
	.quad	4031545618
	.quad	2537983395
	.quad	4191382470
	.quad	1603208167
	.quad	2626819477
	.quad	2054012907
	.quad	1498584538
	.quad	2210321453
	.quad	561273043
	.quad	1776306473
	.quad	3368652356
	.quad	2311222634
	.quad	2039411832
	.quad	1045993835
	.quad	1907959773
	.quad	1340194486
	.quad	2911432727
	.quad	2887829862
	.quad	986611124
	.quad	1256153880
	.quad	823846274
	.quad	860985184
	.quad	2136171077
	.quad	2003087840
	.quad	2926295940
	.quad	2692873756
	.quad	722008468
	.quad	1749577816
	.quad	4249194265
	.quad	1826526343
	.quad	4168831671
	.quad	3547573027
	.quad	38499042
	.quad	2401231703
	.quad	2874500650
	.quad	686535175
	.quad	3266653955
	.quad	2076542618
	.quad	137876389
	.quad	2267558130
	.quad	2780767154
	.quad	1778582202
	.quad	2182540636
	.quad	483363371
	.quad	3027871634
	.quad	4060607472
	.quad	3798552225
	.quad	4107953613
	.quad	3188000469
	.quad	1647628575
	.quad	4272342154
	.quad	1395537053
	.quad	1442030240
	.quad	3783918898
	.quad	3958809717
	.quad	3968011065
	.quad	4016062634
	.quad	2675006982
	.quad	275692881
	.quad	2317434617
	.quad	115185213
	.quad	88006062
	.quad	3185986886
	.quad	2371129781
	.quad	1573155077
	.quad	3557164143
	.quad	357589247
	.quad	4221049124
	.quad	3921532567
	.quad	1128303052
	.quad	2665047927
	.quad	1122545853
	.quad	2341013384
	.quad	1528424248
	.quad	4006115803
	.quad	175939911
	.quad	256015593
	.quad	512030921
	.quad	0
	.quad	2256537987
	.quad	3979031112
	.quad	1880170156
	.quad	1918528590
	.quad	4279172603
	.quad	948244310
	.quad	3584965918
	.quad	959264295
	.quad	3641641572
	.quad	2791073825
	.quad	1415289809
	.quad	775300154
	.quad	1728711857
	.quad	3881276175
	.quad	2532226258
	.quad	2442861470
	.quad	3317727311
	.quad	551313826
	.quad	1266113129
	.quad	437394454
	.quad	3130253834
	.quad	715178213
	.quad	3760340035
	.quad	387650077
	.quad	218697227
	.quad	3347837613
	.quad	2830511545
	.quad	2837320904
	.quad	435246981
	.quad	125153100
	.quad	3717852859
	.quad	1618977789
	.quad	637663135
	.quad	4117912764
	.quad	996558021
	.quad	2130402100
	.quad	692292470
	.quad	3324234716
	.quad	4243437160
	.quad	4058298467
	.quad	3694254026
	.quad	2237874704
	.quad	580326208
	.quad	298222624
	.quad	608863613
	.quad	1035719416
	.quad	855223825
	.quad	2703869805
	.quad	798891339
	.quad	817028339
	.quad	1384517100
	.quad	3821107152
	.quad	380840812
	.quad	3111168409
	.quad	1217663482
	.quad	1693009698
	.quad	2365368516
	.quad	1072734234
	.quad	746411736
	.quad	2419270383
	.quad	1313441735
	.quad	3510163905
	.quad	2731183358
	.quad	198481974
	.quad	2180359887
	.quad	3732579624
	.quad	2394413606
	.quad	3215802276
	.quad	2637835492
	.quad	2457358349
	.quad	3428805275
	.quad	1182684258
	.quad	328070850
	.quad	3101200616
	.quad	4147719774
	.quad	2948825845
	.quad	2153619390
	.quad	2479909244
	.quad	768962473
	.quad	304467891
	.quad	2578237499
	.quad	2098729127
	.quad	1671227502
	.quad	3141262203
	.quad	2015808777
	.quad	408514292
	.quad	3080383489
	.quad	2588902312
	.quad	1855317605
	.quad	3875515006
	.quad	3485212936
	.quad	3893751782
	.quad	2615655129
	.quad	913263310
	.quad	161475284
	.quad	2091919830
	.quad	2997105071
	.quad	591342129
	.quad	2493892144
	.quad	1721906624
	.quad	3159258167
	.quad	3397581990
	.quad	3499155632
	.quad	3634836245
	.quad	2550460746
	.quad	3672916471
	.quad	1355644686
	.quad	4136703791
	.quad	3595400845
	.quad	2968470349
	.quad	1303039060
	.quad	76997855
	.quad	3050413795
	.quad	2288667675
	.quad	523026872
	.quad	1365591679
	.quad	3932069124
	.quad	898367837
	.quad	1955068531
	.quad	1091304238
	.quad	493335386
	.quad	3537605202
	.quad	1443948851
	.quad	1205234963
	.quad	1641519756
	.quad	211892090
	.quad	351820174
	.quad	1007938441
	.quad	665439982
	.quad	3378624309
	.quad	3843875309
	.quad	2974251580
	.quad	3755121753
	.quad	1945261375
	.quad	3457423481
	.quad	935818175
	.quad	3455538154
	.quad	2868731739
	.quad	1866325780
	.quad	3678697606
	.quad	4088384129
	.quad	3295197502
	.quad	874788908
	.quad	1084473951
	.quad	3273463410
	.quad	635616268
	.quad	1228679307
	.quad	2500722497
	.quad	27801969
	.quad	3003910366
	.quad	3837057180
	.quad	3243664528
	.quad	2227927905
	.quad	3056784752
	.quad	1550600308
	.quad	1471729730
	.quad	4098969767
	.quad	1098797925
	.quad	387629988
	.quad	658151006
	.quad	2872822635
	.quad	2636116293
	.quad	4205620056
	.quad	3813380867
	.quad	807425530
	.quad	1991112301
	.quad	3431502198
	.quad	49620300
	.quad	3847224535
	.quad	717608907
	.quad	891715652
	.quad	1656065955
	.quad	2984135002
	.quad	3123013403
	.quad	3930429454
	.quad	4267565504
	.quad	801309301
	.quad	1283527408
	.quad	1183687575
	.quad	3547055865
	.quad	2399397727
	.quad	2450888092
	.quad	1841294202
	.quad	1385552473
	.quad	3201576323
	.quad	1951978273
	.quad	3762891113
	.quad	3381544136
	.quad	3262474889
	.quad	2398386297
	.quad	1486449470
	.quad	3106397553
	.quad	3787372111
	.quad	2297436077
	.quad	550069932
	.quad	3464344634
	.quad	3747813450
	.quad	451248689
	.quad	1368875059
	.quad	1398949247
	.quad	1689378935
	.quad	1807451310
	.quad	2180914336
	.quad	150574123
	.quad	1215322216
	.quad	1167006205
	.quad	3734275948
	.quad	2069018616
	.quad	1940595667
	.quad	1265820162
	.quad	534992783
	.quad	1432758955
	.quad	3954313000
	.quad	3039757250
	.quad	3313932923
	.quad	936617224
	.quad	674296455
	.quad	3206787749
	.quad	50510442
	.quad	384654466
	.quad	3481938716
	.quad	2041025204
	.quad	133427442
	.quad	1766760930
	.quad	3664104948
	.quad	84334014
	.quad	886120290
	.quad	2797898494
	.quad	775200083
	.quad	4087521365
	.quad	2315596513
	.quad	4137973227
	.quad	2198551020
	.quad	1614850799
	.quad	1901987487
	.quad	1857900816
	.quad	557775242
	.quad	3717610758
	.quad	1054715397
	.quad	3863824061
	.quad	1418835341
	.quad	3295741277
	.quad	100954068
	.quad	1348534037
	.quad	2551784699
	.quad	3184957417
	.quad	1082772547
	.quad	3647436702
	.quad	3903896898
	.quad	2298972299
	.quad	434583643
	.quad	3363429358
	.quad	2090944266
	.quad	1115482383
	.quad	2230896926
	.quad	0
	.quad	2148107142
	.quad	724715757
	.quad	287222896
	.quad	1517047410
	.quad	251526143
	.quad	2232374840
	.quad	2923241173
	.quad	758523705
	.quad	252339417
	.quad	1550328230
	.quad	1536938324
	.quad	908343854
	.quad	168604007
	.quad	1469255655
	.quad	4004827798
	.quad	2602278545
	.quad	3229634501
	.quad	3697386016
	.quad	2002413899
	.quad	303830554
	.quad	2481064634
	.quad	2696996138
	.quad	574374880
	.quad	454171927
	.quad	151915277
	.quad	2347937223
	.quad	3056449960
	.quad	504678569
	.quad	4049044761
	.quad	1974422535
	.quad	2582559709
	.quad	2141453664
	.quad	33005350
	.quad	1918680309
	.quad	1715782971
	.quad	4217058430
	.quad	1133213225
	.quad	600562886
	.quad	3988154620
	.quad	3837289457
	.quad	836225756
	.quad	1665273989
	.quad	2534621218
	.quad	3330547729
	.quad	1250262308
	.quad	3151165501
	.quad	4188934450
	.quad	700935585
	.quad	2652719919
	.quad	3000824624
	.quad	2249059410
	.quad	3245854947
	.quad	3005967382
	.quad	1890163129
	.quad	2484206152
	.quad	3913753188
	.quad	4238918796
	.quad	4037024319
	.quad	2102843436
	.quad	857927568
	.quad	1233635150
	.quad	953795025
	.quad	3398237858
	.quad	3566745099
	.quad	4121350017
	.quad	2057644254
	.quad	3084527246
	.quad	2906629311
	.quad	976020637
	.quad	2018512274
	.quad	1600822220
	.quad	2119459398
	.quad	2381758995
	.quad	3633375416
	.quad	959340279
	.quad	3280139695
	.quad	1570750080
	.quad	3496574099
	.quad	3580864813
	.quad	634368786
	.quad	2898803609
	.quad	403744637
	.quad	2632478307
	.quad	1004239803
	.quad	650971512
	.quad	1500443672
	.quad	2599158199
	.quad	1334028442
	.quad	2514904430
	.quad	4289363686
	.quad	3156281551
	.quad	368043752
	.quad	3887782299
	.quad	1867173430
	.quad	2682967049
	.quad	2955531900
	.quad	2754719666
	.quad	1059729699
	.quad	2781229204
	.quad	2721431654
	.quad	1316239292
	.quad	2197595850
	.quad	2430644432
	.quad	2805143000
	.quad	82922136
	.quad	3963746266
	.quad	3447656016
	.quad	2434215926
	.quad	1299615190
	.quad	4014165424
	.quad	2865517645
	.quad	2531581700
	.quad	3516851125
	.quad	1783372680
	.quad	750893087
	.quad	1699118929
	.quad	1587348714
	.quad	2348899637
	.quad	2281337716
	.quad	201010753
	.quad	1739807261
	.quad	3683799762
	.quad	283718486
	.quad	3597472583
	.quad	3617229921
	.quad	2704767500
	.quad	4166618644
	.quad	334203196
	.quad	2848910887
	.quad	1639396809
	.quad	484568549
	.quad	1199193265
	.quad	3533461983
	.quad	4065673075
	.quad	337148366
	.quad	3346251575
	.quad	4149471949
	.quad	4250885034
	.quad	1038029935
	.quad	1148749531
	.quad	2949284339
	.quad	1756970692
	.quad	607661108
	.quad	2747424576
	.quad	488010435
	.quad	3803974693
	.quad	1009290057
	.quad	234832277
	.quad	2822336769
	.quad	201907891
	.quad	3034094820
	.quad	1449431233
	.quad	3413860740
	.quad	852848822
	.quad	1816687708
	.quad	3100656215
	.quad	1364240372
	.quad	2119394625
	.quad	449029143
	.quad	982933031
	.quad	1003187115
	.quad	535905693
	.quad	2896910586
	.quad	1267925987
	.quad	542505520
	.quad	2918608246
	.quad	2291234508
	.quad	4112862210
	.quad	1341970405
	.quad	3319253802
	.quad	645940277
	.quad	3046089570
	.quad	3729349297
	.quad	627514298
	.quad	1167593194
	.quad	1575076094
	.quad	3271718191
	.quad	2165502028
	.quad	2376308550
	.quad	1808202195
	.quad	65494927
	.quad	362126482
	.quad	3219880557
	.quad	2514114898
	.quad	3559752638
	.quad	1490231668
	.quad	1227450848
	.quad	2386872521
	.quad	1969916354
	.quad	4101536142
	.quad	2573942360
	.quad	668823993
	.quad	3199619041
	.quad	4028083592
	.quad	3378949152
	.quad	2108963534
	.quad	1662536415
	.quad	3850514714
	.quad	2539664209
	.quad	1648721747
	.quad	2984277860
	.quad	3146034795
	.quad	4263288961
	.quad	4187237128
	.quad	1884842056
	.quad	2400845125
	.quad	2491903198
	.quad	1387788411
	.quad	2871251827
	.quad	1927414347
	.quad	3814166303
	.quad	1714072405
	.quad	2986813675
	.quad	788775605
	.quad	2258271173
	.quad	3550808119
	.quad	821200680
	.quad	598910399
	.quad	45771267
	.quad	3982262806
	.quad	2318081231
	.quad	2811409529
	.quad	4092654087
	.quad	1319232105
	.quad	1707996378
	.quad	114671109
	.quad	3508494900
	.quad	3297443494
	.quad	882725678
	.quad	2728416755
	.quad	87220618
	.quad	2759191542
	.quad	188345475
	.quad	1084944224
	.quad	1577492337
	.quad	3176206446
	.quad	1056541217
	.quad	2520581853
	.quad	3719169342
	.quad	1296481766
	.quad	2444594516
	.quad	1896177092
	.quad	74437638
	.quad	1627329872
	.quad	421854104
	.quad	3600279997
	.quad	2311865152
	.quad	1735892697
	.quad	2965193448
	.quad	126389129
	.quad	3879230233
	.quad	2044456648
	.quad	2705787516
	.quad	2095648578
	.quad	4173930116
	.quad	0
	.quad	159614592
	.quad	843640107
	.quad	514617361
	.quad	1817080410
	.quad	4261150478
	.quad	257308805
	.quad	1025430958
	.quad	908540205
	.quad	174381327
	.quad	1747035740
	.quad	2614187099
	.quad	607792694
	.quad	212952842
	.quad	2467293015
	.quad	3033700078
	.quad	463376795
	.quad	2152711616
	.quad	1638015196
	.quad	1516850039
	.quad	471210514
	.quad	3792353939
	.quad	3236244128
	.quad	1011081250
	.quad	303896347
	.quad	235605257
	.quad	4071475083
	.quad	767142070
	.quad	348694814
	.quad	1468340721
	.quad	2940995445
	.quad	4005289369
	.quad	2751291519
	.quad	4154402305
	.quad	1555887474
	.quad	1153776486
	.quad	1530167035
	.quad	2339776835
	.quad	3420243491
	.quad	3060333805
	.quad	3093557732
	.quad	3620396081
	.quad	1108378979
	.quad	322970263
	.quad	2216694214
	.quad	2239571018
	.quad	3539484091
	.quad	2920362745
	.quad	3345850665
	.quad	491466654
	.quad	3706925234
	.quad	233591430
	.quad	2010178497
	.quad	728503987
	.quad	2845423984
	.quad	301615252
	.quad	1193436393
	.quad	2831453436
	.quad	2686074864
	.quad	1457007741
	.quad	586125363
	.quad	2277985865
	.quad	3653357880
	.quad	2365498058
	.quad	2553678804
	.quad	2798617077
	.quad	2770919034
	.quad	3659959991
	.quad	1067761581
	.quad	753179962
	.quad	1343066744
	.quad	1788595295
	.quad	1415726718
	.quad	4139914125
	.quad	2431170776
	.quad	777975609
	.quad	2197139395
	.quad	2680062045
	.quad	1769771984
	.quad	1873358293
	.quad	3484619301
	.quad	3359349164
	.quad	279411992
	.quad	3899548572
	.quad	3682319163
	.quad	3439949862
	.quad	1861490777
	.quad	3959535514
	.quad	2208864847
	.quad	3865407125
	.quad	2860443391
	.quad	554225596
	.quad	4024887317
	.quad	3134823399
	.quad	1255028335
	.quad	3939764639
	.quad	701922480
	.quad	833598116
	.quad	707863359
	.quad	3325072549
	.quad	901801634
	.quad	1949809742
	.quad	4238789250
	.quad	3769684112
	.quad	857069735
	.quad	4048197636
	.quad	1106762476
	.quad	2131644621
	.quad	389019281
	.quad	1989006925
	.quad	1129165039
	.quad	3428076970
	.quad	3839820950
	.quad	2665723345
	.quad	1276872810
	.quad	3250069292
	.quad	1182749029
	.quad	2634345054
	.quad	22885772
	.quad	4201870471
	.quad	4214112523
	.quad	3009027431
	.quad	2454901467
	.quad	3912455696
	.quad	1829980118
	.quad	2592891351
	.quad	930745505
	.quad	1502483704
	.quad	3951639571
	.quad	3471714217
	.quad	3073755489
	.quad	3790464284
	.quad	2050797895
	.quad	2623135698
	.quad	1430221810
	.quad	410635796
	.quad	1941911495
	.quad	1407897079
	.quad	1599843069
	.quad	3742658365
	.quad	2022103876
	.quad	3397514159
	.quad	3107898472
	.quad	942421028
	.quad	3261022371
	.quad	376619805
	.quad	3154912738
	.quad	680216892
	.quad	4282488077
	.quad	963707304
	.quad	148812556
	.quad	3634160820
	.quad	1687208278
	.quad	2069988555
	.quad	3580933682
	.quad	1215585388
	.quad	3494008760
	.size	it_tab, 8192

	.type	fl_tab,@object
	.globl	fl_tab
	.p2align	3
fl_tab:
	.quad	99
	.quad	124
	.quad	119
	.quad	123
	.quad	242
	.quad	107
	.quad	111
	.quad	197
	.quad	48
	.quad	1
	.quad	103
	.quad	43
	.quad	254
	.quad	215
	.quad	171
	.quad	118
	.quad	202
	.quad	130
	.quad	201
	.quad	125
	.quad	250
	.quad	89
	.quad	71
	.quad	240
	.quad	173
	.quad	212
	.quad	162
	.quad	175
	.quad	156
	.quad	164
	.quad	114
	.quad	192
	.quad	183
	.quad	253
	.quad	147
	.quad	38
	.quad	54
	.quad	63
	.quad	247
	.quad	204
	.quad	52
	.quad	165
	.quad	229
	.quad	241
	.quad	113
	.quad	216
	.quad	49
	.quad	21
	.quad	4
	.quad	199
	.quad	35
	.quad	195
	.quad	24
	.quad	150
	.quad	5
	.quad	154
	.quad	7
	.quad	18
	.quad	128
	.quad	226
	.quad	235
	.quad	39
	.quad	178
	.quad	117
	.quad	9
	.quad	131
	.quad	44
	.quad	26
	.quad	27
	.quad	110
	.quad	90
	.quad	160
	.quad	82
	.quad	59
	.quad	214
	.quad	179
	.quad	41
	.quad	227
	.quad	47
	.quad	132
	.quad	83
	.quad	209
	.quad	0
	.quad	237
	.quad	32
	.quad	252
	.quad	177
	.quad	91
	.quad	106
	.quad	203
	.quad	190
	.quad	57
	.quad	74
	.quad	76
	.quad	88
	.quad	207
	.quad	208
	.quad	239
	.quad	170
	.quad	251
	.quad	67
	.quad	77
	.quad	51
	.quad	133
	.quad	69
	.quad	249
	.quad	2
	.quad	127
	.quad	80
	.quad	60
	.quad	159
	.quad	168
	.quad	81
	.quad	163
	.quad	64
	.quad	143
	.quad	146
	.quad	157
	.quad	56
	.quad	245
	.quad	188
	.quad	182
	.quad	218
	.quad	33
	.quad	16
	.quad	255
	.quad	243
	.quad	210
	.quad	205
	.quad	12
	.quad	19
	.quad	236
	.quad	95
	.quad	151
	.quad	68
	.quad	23
	.quad	196
	.quad	167
	.quad	126
	.quad	61
	.quad	100
	.quad	93
	.quad	25
	.quad	115
	.quad	96
	.quad	129
	.quad	79
	.quad	220
	.quad	34
	.quad	42
	.quad	144
	.quad	136
	.quad	70
	.quad	238
	.quad	184
	.quad	20
	.quad	222
	.quad	94
	.quad	11
	.quad	219
	.quad	224
	.quad	50
	.quad	58
	.quad	10
	.quad	73
	.quad	6
	.quad	36
	.quad	92
	.quad	194
	.quad	211
	.quad	172
	.quad	98
	.quad	145
	.quad	149
	.quad	228
	.quad	121
	.quad	231
	.quad	200
	.quad	55
	.quad	109
	.quad	141
	.quad	213
	.quad	78
	.quad	169
	.quad	108
	.quad	86
	.quad	244
	.quad	234
	.quad	101
	.quad	122
	.quad	174
	.quad	8
	.quad	186
	.quad	120
	.quad	37
	.quad	46
	.quad	28
	.quad	166
	.quad	180
	.quad	198
	.quad	232
	.quad	221
	.quad	116
	.quad	31
	.quad	75
	.quad	189
	.quad	139
	.quad	138
	.quad	112
	.quad	62
	.quad	181
	.quad	102
	.quad	72
	.quad	3
	.quad	246
	.quad	14
	.quad	97
	.quad	53
	.quad	87
	.quad	185
	.quad	134
	.quad	193
	.quad	29
	.quad	158
	.quad	225
	.quad	248
	.quad	152
	.quad	17
	.quad	105
	.quad	217
	.quad	142
	.quad	148
	.quad	155
	.quad	30
	.quad	135
	.quad	233
	.quad	206
	.quad	85
	.quad	40
	.quad	223
	.quad	140
	.quad	161
	.quad	137
	.quad	13
	.quad	191
	.quad	230
	.quad	66
	.quad	104
	.quad	65
	.quad	153
	.quad	45
	.quad	15
	.quad	176
	.quad	84
	.quad	187
	.quad	22
	.quad	25344
	.quad	31744
	.quad	30464
	.quad	31488
	.quad	61952
	.quad	27392
	.quad	28416
	.quad	50432
	.quad	12288
	.quad	256
	.quad	26368
	.quad	11008
	.quad	65024
	.quad	55040
	.quad	43776
	.quad	30208
	.quad	51712
	.quad	33280
	.quad	51456
	.quad	32000
	.quad	64000
	.quad	22784
	.quad	18176
	.quad	61440
	.quad	44288
	.quad	54272
	.quad	41472
	.quad	44800
	.quad	39936
	.quad	41984
	.quad	29184
	.quad	49152
	.quad	46848
	.quad	64768
	.quad	37632
	.quad	9728
	.quad	13824
	.quad	16128
	.quad	63232
	.quad	52224
	.quad	13312
	.quad	42240
	.quad	58624
	.quad	61696
	.quad	28928
	.quad	55296
	.quad	12544
	.quad	5376
	.quad	1024
	.quad	50944
	.quad	8960
	.quad	49920
	.quad	6144
	.quad	38400
	.quad	1280
	.quad	39424
	.quad	1792
	.quad	4608
	.quad	32768
	.quad	57856
	.quad	60160
	.quad	9984
	.quad	45568
	.quad	29952
	.quad	2304
	.quad	33536
	.quad	11264
	.quad	6656
	.quad	6912
	.quad	28160
	.quad	23040
	.quad	40960
	.quad	20992
	.quad	15104
	.quad	54784
	.quad	45824
	.quad	10496
	.quad	58112
	.quad	12032
	.quad	33792
	.quad	21248
	.quad	53504
	.quad	0
	.quad	60672
	.quad	8192
	.quad	64512
	.quad	45312
	.quad	23296
	.quad	27136
	.quad	51968
	.quad	48640
	.quad	14592
	.quad	18944
	.quad	19456
	.quad	22528
	.quad	52992
	.quad	53248
	.quad	61184
	.quad	43520
	.quad	64256
	.quad	17152
	.quad	19712
	.quad	13056
	.quad	34048
	.quad	17664
	.quad	63744
	.quad	512
	.quad	32512
	.quad	20480
	.quad	15360
	.quad	40704
	.quad	43008
	.quad	20736
	.quad	41728
	.quad	16384
	.quad	36608
	.quad	37376
	.quad	40192
	.quad	14336
	.quad	62720
	.quad	48128
	.quad	46592
	.quad	55808
	.quad	8448
	.quad	4096
	.quad	65280
	.quad	62208
	.quad	53760
	.quad	52480
	.quad	3072
	.quad	4864
	.quad	60416
	.quad	24320
	.quad	38656
	.quad	17408
	.quad	5888
	.quad	50176
	.quad	42752
	.quad	32256
	.quad	15616
	.quad	25600
	.quad	23808
	.quad	6400
	.quad	29440
	.quad	24576
	.quad	33024
	.quad	20224
	.quad	56320
	.quad	8704
	.quad	10752
	.quad	36864
	.quad	34816
	.quad	17920
	.quad	60928
	.quad	47104
	.quad	5120
	.quad	56832
	.quad	24064
	.quad	2816
	.quad	56064
	.quad	57344
	.quad	12800
	.quad	14848
	.quad	2560
	.quad	18688
	.quad	1536
	.quad	9216
	.quad	23552
	.quad	49664
	.quad	54016
	.quad	44032
	.quad	25088
	.quad	37120
	.quad	38144
	.quad	58368
	.quad	30976
	.quad	59136
	.quad	51200
	.quad	14080
	.quad	27904
	.quad	36096
	.quad	54528
	.quad	19968
	.quad	43264
	.quad	27648
	.quad	22016
	.quad	62464
	.quad	59904
	.quad	25856
	.quad	31232
	.quad	44544
	.quad	2048
	.quad	47616
	.quad	30720
	.quad	9472
	.quad	11776
	.quad	7168
	.quad	42496
	.quad	46080
	.quad	50688
	.quad	59392
	.quad	56576
	.quad	29696
	.quad	7936
	.quad	19200
	.quad	48384
	.quad	35584
	.quad	35328
	.quad	28672
	.quad	15872
	.quad	46336
	.quad	26112
	.quad	18432
	.quad	768
	.quad	62976
	.quad	3584
	.quad	24832
	.quad	13568
	.quad	22272
	.quad	47360
	.quad	34304
	.quad	49408
	.quad	7424
	.quad	40448
	.quad	57600
	.quad	63488
	.quad	38912
	.quad	4352
	.quad	26880
	.quad	55552
	.quad	36352
	.quad	37888
	.quad	39680
	.quad	7680
	.quad	34560
	.quad	59648
	.quad	52736
	.quad	21760
	.quad	10240
	.quad	57088
	.quad	35840
	.quad	41216
	.quad	35072
	.quad	3328
	.quad	48896
	.quad	58880
	.quad	16896
	.quad	26624
	.quad	16640
	.quad	39168
	.quad	11520
	.quad	3840
	.quad	45056
	.quad	21504
	.quad	47872
	.quad	5632
	.quad	6488064
	.quad	8126464
	.quad	7798784
	.quad	8060928
	.quad	15859712
	.quad	7012352
	.quad	7274496
	.quad	12910592
	.quad	3145728
	.quad	65536
	.quad	6750208
	.quad	2818048
	.quad	16646144
	.quad	14090240
	.quad	11206656
	.quad	7733248
	.quad	13238272
	.quad	8519680
	.quad	13172736
	.quad	8192000
	.quad	16384000
	.quad	5832704
	.quad	4653056
	.quad	15728640
	.quad	11337728
	.quad	13893632
	.quad	10616832
	.quad	11468800
	.quad	10223616
	.quad	10747904
	.quad	7471104
	.quad	12582912
	.quad	11993088
	.quad	16580608
	.quad	9633792
	.quad	2490368
	.quad	3538944
	.quad	4128768
	.quad	16187392
	.quad	13369344
	.quad	3407872
	.quad	10813440
	.quad	15007744
	.quad	15794176
	.quad	7405568
	.quad	14155776
	.quad	3211264
	.quad	1376256
	.quad	262144
	.quad	13041664
	.quad	2293760
	.quad	12779520
	.quad	1572864
	.quad	9830400
	.quad	327680
	.quad	10092544
	.quad	458752
	.quad	1179648
	.quad	8388608
	.quad	14811136
	.quad	15400960
	.quad	2555904
	.quad	11665408
	.quad	7667712
	.quad	589824
	.quad	8585216
	.quad	2883584
	.quad	1703936
	.quad	1769472
	.quad	7208960
	.quad	5898240
	.quad	10485760
	.quad	5373952
	.quad	3866624
	.quad	14024704
	.quad	11730944
	.quad	2686976
	.quad	14876672
	.quad	3080192
	.quad	8650752
	.quad	5439488
	.quad	13697024
	.quad	0
	.quad	15532032
	.quad	2097152
	.quad	16515072
	.quad	11599872
	.quad	5963776
	.quad	6946816
	.quad	13303808
	.quad	12451840
	.quad	3735552
	.quad	4849664
	.quad	4980736
	.quad	5767168
	.quad	13565952
	.quad	13631488
	.quad	15663104
	.quad	11141120
	.quad	16449536
	.quad	4390912
	.quad	5046272
	.quad	3342336
	.quad	8716288
	.quad	4521984
	.quad	16318464
	.quad	131072
	.quad	8323072
	.quad	5242880
	.quad	3932160
	.quad	10420224
	.quad	11010048
	.quad	5308416
	.quad	10682368
	.quad	4194304
	.quad	9371648
	.quad	9568256
	.quad	10289152
	.quad	3670016
	.quad	16056320
	.quad	12320768
	.quad	11927552
	.quad	14286848
	.quad	2162688
	.quad	1048576
	.quad	16711680
	.quad	15925248
	.quad	13762560
	.quad	13434880
	.quad	786432
	.quad	1245184
	.quad	15466496
	.quad	6225920
	.quad	9895936
	.quad	4456448
	.quad	1507328
	.quad	12845056
	.quad	10944512
	.quad	8257536
	.quad	3997696
	.quad	6553600
	.quad	6094848
	.quad	1638400
	.quad	7536640
	.quad	6291456
	.quad	8454144
	.quad	5177344
	.quad	14417920
	.quad	2228224
	.quad	2752512
	.quad	9437184
	.quad	8912896
	.quad	4587520
	.quad	15597568
	.quad	12058624
	.quad	1310720
	.quad	14548992
	.quad	6160384
	.quad	720896
	.quad	14352384
	.quad	14680064
	.quad	3276800
	.quad	3801088
	.quad	655360
	.quad	4784128
	.quad	393216
	.quad	2359296
	.quad	6029312
	.quad	12713984
	.quad	13828096
	.quad	11272192
	.quad	6422528
	.quad	9502720
	.quad	9764864
	.quad	14942208
	.quad	7929856
	.quad	15138816
	.quad	13107200
	.quad	3604480
	.quad	7143424
	.quad	9240576
	.quad	13959168
	.quad	5111808
	.quad	11075584
	.quad	7077888
	.quad	5636096
	.quad	15990784
	.quad	15335424
	.quad	6619136
	.quad	7995392
	.quad	11403264
	.quad	524288
	.quad	12189696
	.quad	7864320
	.quad	2424832
	.quad	3014656
	.quad	1835008
	.quad	10878976
	.quad	11796480
	.quad	12976128
	.quad	15204352
	.quad	14483456
	.quad	7602176
	.quad	2031616
	.quad	4915200
	.quad	12386304
	.quad	9109504
	.quad	9043968
	.quad	7340032
	.quad	4063232
	.quad	11862016
	.quad	6684672
	.quad	4718592
	.quad	196608
	.quad	16121856
	.quad	917504
	.quad	6356992
	.quad	3473408
	.quad	5701632
	.quad	12124160
	.quad	8781824
	.quad	12648448
	.quad	1900544
	.quad	10354688
	.quad	14745600
	.quad	16252928
	.quad	9961472
	.quad	1114112
	.quad	6881280
	.quad	14221312
	.quad	9306112
	.quad	9699328
	.quad	10158080
	.quad	1966080
	.quad	8847360
	.quad	15269888
	.quad	13500416
	.quad	5570560
	.quad	2621440
	.quad	14614528
	.quad	9175040
	.quad	10551296
	.quad	8978432
	.quad	851968
	.quad	12517376
	.quad	15073280
	.quad	4325376
	.quad	6815744
	.quad	4259840
	.quad	10027008
	.quad	2949120
	.quad	983040
	.quad	11534336
	.quad	5505024
	.quad	12255232
	.quad	1441792
	.quad	1660944384
	.quad	2080374784
	.quad	1996488704
	.quad	2063597568
	.quad	4060086272
	.quad	1795162112
	.quad	1862270976
	.quad	3305111552
	.quad	805306368
	.quad	16777216
	.quad	1728053248
	.quad	721420288
	.quad	4261412864
	.quad	3607101440
	.quad	2868903936
	.quad	1979711488
	.quad	3388997632
	.quad	2181038080
	.quad	3372220416
	.quad	2097152000
	.quad	4194304000
	.quad	1493172224
	.quad	1191182336
	.quad	4026531840
	.quad	2902458368
	.quad	3556769792
	.quad	2717908992
	.quad	2936012800
	.quad	2617245696
	.quad	2751463424
	.quad	1912602624
	.quad	3221225472
	.quad	3070230528
	.quad	4244635648
	.quad	2466250752
	.quad	637534208
	.quad	905969664
	.quad	1056964608
	.quad	4143972352
	.quad	3422552064
	.quad	872415232
	.quad	2768240640
	.quad	3841982464
	.quad	4043309056
	.quad	1895825408
	.quad	3623878656
	.quad	822083584
	.quad	352321536
	.quad	67108864
	.quad	3338665984
	.quad	587202560
	.quad	3271557120
	.quad	402653184
	.quad	2516582400
	.quad	83886080
	.quad	2583691264
	.quad	117440512
	.quad	301989888
	.quad	2147483648
	.quad	3791650816
	.quad	3942645760
	.quad	654311424
	.quad	2986344448
	.quad	1962934272
	.quad	150994944
	.quad	2197815296
	.quad	738197504
	.quad	436207616
	.quad	452984832
	.quad	1845493760
	.quad	1509949440
	.quad	2684354560
	.quad	1375731712
	.quad	989855744
	.quad	3590324224
	.quad	3003121664
	.quad	687865856
	.quad	3808428032
	.quad	788529152
	.quad	2214592512
	.quad	1392508928
	.quad	3506438144
	.quad	0
	.quad	3976200192
	.quad	536870912
	.quad	4227858432
	.quad	2969567232
	.quad	1526726656
	.quad	1778384896
	.quad	3405774848
	.quad	3187671040
	.quad	956301312
	.quad	1241513984
	.quad	1275068416
	.quad	1476395008
	.quad	3472883712
	.quad	3489660928
	.quad	4009754624
	.quad	2852126720
	.quad	4211081216
	.quad	1124073472
	.quad	1291845632
	.quad	855638016
	.quad	2231369728
	.quad	1157627904
	.quad	4177526784
	.quad	33554432
	.quad	2130706432
	.quad	1342177280
	.quad	1006632960
	.quad	2667577344
	.quad	2818572288
	.quad	1358954496
	.quad	2734686208
	.quad	1073741824
	.quad	2399141888
	.quad	2449473536
	.quad	2634022912
	.quad	939524096
	.quad	4110417920
	.quad	3154116608
	.quad	3053453312
	.quad	3657433088
	.quad	553648128
	.quad	268435456
	.quad	4278190080
	.quad	4076863488
	.quad	3523215360
	.quad	3439329280
	.quad	201326592
	.quad	318767104
	.quad	3959422976
	.quad	1593835520
	.quad	2533359616
	.quad	1140850688
	.quad	385875968
	.quad	3288334336
	.quad	2801795072
	.quad	2113929216
	.quad	1023410176
	.quad	1677721600
	.quad	1560281088
	.quad	419430400
	.quad	1929379840
	.quad	1610612736
	.quad	2164260864
	.quad	1325400064
	.quad	3690987520
	.quad	570425344
	.quad	704643072
	.quad	2415919104
	.quad	2281701376
	.quad	1174405120
	.quad	3992977408
	.quad	3087007744
	.quad	335544320
	.quad	3724541952
	.quad	1577058304
	.quad	184549376
	.quad	3674210304
	.quad	3758096384
	.quad	838860800
	.quad	973078528
	.quad	167772160
	.quad	1224736768
	.quad	100663296
	.quad	603979776
	.quad	1543503872
	.quad	3254779904
	.quad	3539992576
	.quad	2885681152
	.quad	1644167168
	.quad	2432696320
	.quad	2499805184
	.quad	3825205248
	.quad	2030043136
	.quad	3875536896
	.quad	3355443200
	.quad	922746880
	.quad	1828716544
	.quad	2365587456
	.quad	3573547008
	.quad	1308622848
	.quad	2835349504
	.quad	1811939328
	.quad	1442840576
	.quad	4093640704
	.quad	3925868544
	.quad	1694498816
	.quad	2046820352
	.quad	2919235584
	.quad	134217728
	.quad	3120562176
	.quad	2013265920
	.quad	620756992
	.quad	771751936
	.quad	469762048
	.quad	2785017856
	.quad	3019898880
	.quad	3321888768
	.quad	3892314112
	.quad	3707764736
	.quad	1946157056
	.quad	520093696
	.quad	1258291200
	.quad	3170893824
	.quad	2332033024
	.quad	2315255808
	.quad	1879048192
	.quad	1040187392
	.quad	3036676096
	.quad	1711276032
	.quad	1207959552
	.quad	50331648
	.quad	4127195136
	.quad	234881024
	.quad	1627389952
	.quad	889192448
	.quad	1459617792
	.quad	3103784960
	.quad	2248146944
	.quad	3238002688
	.quad	486539264
	.quad	2650800128
	.quad	3774873600
	.quad	4160749568
	.quad	2550136832
	.quad	285212672
	.quad	1761607680
	.quad	3640655872
	.quad	2382364672
	.quad	2483027968
	.quad	2600468480
	.quad	503316480
	.quad	2264924160
	.quad	3909091328
	.quad	3456106496
	.quad	1426063360
	.quad	671088640
	.quad	3741319168
	.quad	2348810240
	.quad	2701131776
	.quad	2298478592
	.quad	218103808
	.quad	3204448256
	.quad	3858759680
	.quad	1107296256
	.quad	1744830464
	.quad	1090519040
	.quad	2566914048
	.quad	754974720
	.quad	251658240
	.quad	2952790016
	.quad	1409286144
	.quad	3137339392
	.quad	369098752
	.size	fl_tab, 8192

	.type	il_tab,@object
	.globl	il_tab
	.p2align	3
il_tab:
	.quad	82
	.quad	9
	.quad	106
	.quad	213
	.quad	48
	.quad	54
	.quad	165
	.quad	56
	.quad	191
	.quad	64
	.quad	163
	.quad	158
	.quad	129
	.quad	243
	.quad	215
	.quad	251
	.quad	124
	.quad	227
	.quad	57
	.quad	130
	.quad	155
	.quad	47
	.quad	255
	.quad	135
	.quad	52
	.quad	142
	.quad	67
	.quad	68
	.quad	196
	.quad	222
	.quad	233
	.quad	203
	.quad	84
	.quad	123
	.quad	148
	.quad	50
	.quad	166
	.quad	194
	.quad	35
	.quad	61
	.quad	238
	.quad	76
	.quad	149
	.quad	11
	.quad	66
	.quad	250
	.quad	195
	.quad	78
	.quad	8
	.quad	46
	.quad	161
	.quad	102
	.quad	40
	.quad	217
	.quad	36
	.quad	178
	.quad	118
	.quad	91
	.quad	162
	.quad	73
	.quad	109
	.quad	139
	.quad	209
	.quad	37
	.quad	114
	.quad	248
	.quad	246
	.quad	100
	.quad	134
	.quad	104
	.quad	152
	.quad	22
	.quad	212
	.quad	164
	.quad	92
	.quad	204
	.quad	93
	.quad	101
	.quad	182
	.quad	146
	.quad	108
	.quad	112
	.quad	72
	.quad	80
	.quad	253
	.quad	237
	.quad	185
	.quad	218
	.quad	94
	.quad	21
	.quad	70
	.quad	87
	.quad	167
	.quad	141
	.quad	157
	.quad	132
	.quad	144
	.quad	216
	.quad	171
	.quad	0
	.quad	140
	.quad	188
	.quad	211
	.quad	10
	.quad	247
	.quad	228
	.quad	88
	.quad	5
	.quad	184
	.quad	179
	.quad	69
	.quad	6
	.quad	208
	.quad	44
	.quad	30
	.quad	143
	.quad	202
	.quad	63
	.quad	15
	.quad	2
	.quad	193
	.quad	175
	.quad	189
	.quad	3
	.quad	1
	.quad	19
	.quad	138
	.quad	107
	.quad	58
	.quad	145
	.quad	17
	.quad	65
	.quad	79
	.quad	103
	.quad	220
	.quad	234
	.quad	151
	.quad	242
	.quad	207
	.quad	206
	.quad	240
	.quad	180
	.quad	230
	.quad	115
	.quad	150
	.quad	172
	.quad	116
	.quad	34
	.quad	231
	.quad	173
	.quad	53
	.quad	133
	.quad	226
	.quad	249
	.quad	55
	.quad	232
	.quad	28
	.quad	117
	.quad	223
	.quad	110
	.quad	71
	.quad	241
	.quad	26
	.quad	113
	.quad	29
	.quad	41
	.quad	197
	.quad	137
	.quad	111
	.quad	183
	.quad	98
	.quad	14
	.quad	170
	.quad	24
	.quad	190
	.quad	27
	.quad	252
	.quad	86
	.quad	62
	.quad	75
	.quad	198
	.quad	210
	.quad	121
	.quad	32
	.quad	154
	.quad	219
	.quad	192
	.quad	254
	.quad	120
	.quad	205
	.quad	90
	.quad	244
	.quad	31
	.quad	221
	.quad	168
	.quad	51
	.quad	136
	.quad	7
	.quad	199
	.quad	49
	.quad	177
	.quad	18
	.quad	16
	.quad	89
	.quad	39
	.quad	128
	.quad	236
	.quad	95
	.quad	96
	.quad	81
	.quad	127
	.quad	169
	.quad	25
	.quad	181
	.quad	74
	.quad	13
	.quad	45
	.quad	229
	.quad	122
	.quad	159
	.quad	147
	.quad	201
	.quad	156
	.quad	239
	.quad	160
	.quad	224
	.quad	59
	.quad	77
	.quad	174
	.quad	42
	.quad	245
	.quad	176
	.quad	200
	.quad	235
	.quad	187
	.quad	60
	.quad	131
	.quad	83
	.quad	153
	.quad	97
	.quad	23
	.quad	43
	.quad	4
	.quad	126
	.quad	186
	.quad	119
	.quad	214
	.quad	38
	.quad	225
	.quad	105
	.quad	20
	.quad	99
	.quad	85
	.quad	33
	.quad	12
	.quad	125
	.quad	20992
	.quad	2304
	.quad	27136
	.quad	54528
	.quad	12288
	.quad	13824
	.quad	42240
	.quad	14336
	.quad	48896
	.quad	16384
	.quad	41728
	.quad	40448
	.quad	33024
	.quad	62208
	.quad	55040
	.quad	64256
	.quad	31744
	.quad	58112
	.quad	14592
	.quad	33280
	.quad	39680
	.quad	12032
	.quad	65280
	.quad	34560
	.quad	13312
	.quad	36352
	.quad	17152
	.quad	17408
	.quad	50176
	.quad	56832
	.quad	59648
	.quad	51968
	.quad	21504
	.quad	31488
	.quad	37888
	.quad	12800
	.quad	42496
	.quad	49664
	.quad	8960
	.quad	15616
	.quad	60928
	.quad	19456
	.quad	38144
	.quad	2816
	.quad	16896
	.quad	64000
	.quad	49920
	.quad	19968
	.quad	2048
	.quad	11776
	.quad	41216
	.quad	26112
	.quad	10240
	.quad	55552
	.quad	9216
	.quad	45568
	.quad	30208
	.quad	23296
	.quad	41472
	.quad	18688
	.quad	27904
	.quad	35584
	.quad	53504
	.quad	9472
	.quad	29184
	.quad	63488
	.quad	62976
	.quad	25600
	.quad	34304
	.quad	26624
	.quad	38912
	.quad	5632
	.quad	54272
	.quad	41984
	.quad	23552
	.quad	52224
	.quad	23808
	.quad	25856
	.quad	46592
	.quad	37376
	.quad	27648
	.quad	28672
	.quad	18432
	.quad	20480
	.quad	64768
	.quad	60672
	.quad	47360
	.quad	55808
	.quad	24064
	.quad	5376
	.quad	17920
	.quad	22272
	.quad	42752
	.quad	36096
	.quad	40192
	.quad	33792
	.quad	36864
	.quad	55296
	.quad	43776
	.quad	0
	.quad	35840
	.quad	48128
	.quad	54016
	.quad	2560
	.quad	63232
	.quad	58368
	.quad	22528
	.quad	1280
	.quad	47104
	.quad	45824
	.quad	17664
	.quad	1536
	.quad	53248
	.quad	11264
	.quad	7680
	.quad	36608
	.quad	51712
	.quad	16128
	.quad	3840
	.quad	512
	.quad	49408
	.quad	44800
	.quad	48384
	.quad	768
	.quad	256
	.quad	4864
	.quad	35328
	.quad	27392
	.quad	14848
	.quad	37120
	.quad	4352
	.quad	16640
	.quad	20224
	.quad	26368
	.quad	56320
	.quad	59904
	.quad	38656
	.quad	61952
	.quad	52992
	.quad	52736
	.quad	61440
	.quad	46080
	.quad	58880
	.quad	29440
	.quad	38400
	.quad	44032
	.quad	29696
	.quad	8704
	.quad	59136
	.quad	44288
	.quad	13568
	.quad	34048
	.quad	57856
	.quad	63744
	.quad	14080
	.quad	59392
	.quad	7168
	.quad	29952
	.quad	57088
	.quad	28160
	.quad	18176
	.quad	61696
	.quad	6656
	.quad	28928
	.quad	7424
	.quad	10496
	.quad	50432
	.quad	35072
	.quad	28416
	.quad	46848
	.quad	25088
	.quad	3584
	.quad	43520
	.quad	6144
	.quad	48640
	.quad	6912
	.quad	64512
	.quad	22016
	.quad	15872
	.quad	19200
	.quad	50688
	.quad	53760
	.quad	30976
	.quad	8192
	.quad	39424
	.quad	56064
	.quad	49152
	.quad	65024
	.quad	30720
	.quad	52480
	.quad	23040
	.quad	62464
	.quad	7936
	.quad	56576
	.quad	43008
	.quad	13056
	.quad	34816
	.quad	1792
	.quad	50944
	.quad	12544
	.quad	45312
	.quad	4608
	.quad	4096
	.quad	22784
	.quad	9984
	.quad	32768
	.quad	60416
	.quad	24320
	.quad	24576
	.quad	20736
	.quad	32512
	.quad	43264
	.quad	6400
	.quad	46336
	.quad	18944
	.quad	3328
	.quad	11520
	.quad	58624
	.quad	31232
	.quad	40704
	.quad	37632
	.quad	51456
	.quad	39936
	.quad	61184
	.quad	40960
	.quad	57344
	.quad	15104
	.quad	19712
	.quad	44544
	.quad	10752
	.quad	62720
	.quad	45056
	.quad	51200
	.quad	60160
	.quad	47872
	.quad	15360
	.quad	33536
	.quad	21248
	.quad	39168
	.quad	24832
	.quad	5888
	.quad	11008
	.quad	1024
	.quad	32256
	.quad	47616
	.quad	30464
	.quad	54784
	.quad	9728
	.quad	57600
	.quad	26880
	.quad	5120
	.quad	25344
	.quad	21760
	.quad	8448
	.quad	3072
	.quad	32000
	.quad	5373952
	.quad	589824
	.quad	6946816
	.quad	13959168
	.quad	3145728
	.quad	3538944
	.quad	10813440
	.quad	3670016
	.quad	12517376
	.quad	4194304
	.quad	10682368
	.quad	10354688
	.quad	8454144
	.quad	15925248
	.quad	14090240
	.quad	16449536
	.quad	8126464
	.quad	14876672
	.quad	3735552
	.quad	8519680
	.quad	10158080
	.quad	3080192
	.quad	16711680
	.quad	8847360
	.quad	3407872
	.quad	9306112
	.quad	4390912
	.quad	4456448
	.quad	12845056
	.quad	14548992
	.quad	15269888
	.quad	13303808
	.quad	5505024
	.quad	8060928
	.quad	9699328
	.quad	3276800
	.quad	10878976
	.quad	12713984
	.quad	2293760
	.quad	3997696
	.quad	15597568
	.quad	4980736
	.quad	9764864
	.quad	720896
	.quad	4325376
	.quad	16384000
	.quad	12779520
	.quad	5111808
	.quad	524288
	.quad	3014656
	.quad	10551296
	.quad	6684672
	.quad	2621440
	.quad	14221312
	.quad	2359296
	.quad	11665408
	.quad	7733248
	.quad	5963776
	.quad	10616832
	.quad	4784128
	.quad	7143424
	.quad	9109504
	.quad	13697024
	.quad	2424832
	.quad	7471104
	.quad	16252928
	.quad	16121856
	.quad	6553600
	.quad	8781824
	.quad	6815744
	.quad	9961472
	.quad	1441792
	.quad	13893632
	.quad	10747904
	.quad	6029312
	.quad	13369344
	.quad	6094848
	.quad	6619136
	.quad	11927552
	.quad	9568256
	.quad	7077888
	.quad	7340032
	.quad	4718592
	.quad	5242880
	.quad	16580608
	.quad	15532032
	.quad	12124160
	.quad	14286848
	.quad	6160384
	.quad	1376256
	.quad	4587520
	.quad	5701632
	.quad	10944512
	.quad	9240576
	.quad	10289152
	.quad	8650752
	.quad	9437184
	.quad	14155776
	.quad	11206656
	.quad	0
	.quad	9175040
	.quad	12320768
	.quad	13828096
	.quad	655360
	.quad	16187392
	.quad	14942208
	.quad	5767168
	.quad	327680
	.quad	12058624
	.quad	11730944
	.quad	4521984
	.quad	393216
	.quad	13631488
	.quad	2883584
	.quad	1966080
	.quad	9371648
	.quad	13238272
	.quad	4128768
	.quad	983040
	.quad	131072
	.quad	12648448
	.quad	11468800
	.quad	12386304
	.quad	196608
	.quad	65536
	.quad	1245184
	.quad	9043968
	.quad	7012352
	.quad	3801088
	.quad	9502720
	.quad	1114112
	.quad	4259840
	.quad	5177344
	.quad	6750208
	.quad	14417920
	.quad	15335424
	.quad	9895936
	.quad	15859712
	.quad	13565952
	.quad	13500416
	.quad	15728640
	.quad	11796480
	.quad	15073280
	.quad	7536640
	.quad	9830400
	.quad	11272192
	.quad	7602176
	.quad	2228224
	.quad	15138816
	.quad	11337728
	.quad	3473408
	.quad	8716288
	.quad	14811136
	.quad	16318464
	.quad	3604480
	.quad	15204352
	.quad	1835008
	.quad	7667712
	.quad	14614528
	.quad	7208960
	.quad	4653056
	.quad	15794176
	.quad	1703936
	.quad	7405568
	.quad	1900544
	.quad	2686976
	.quad	12910592
	.quad	8978432
	.quad	7274496
	.quad	11993088
	.quad	6422528
	.quad	917504
	.quad	11141120
	.quad	1572864
	.quad	12451840
	.quad	1769472
	.quad	16515072
	.quad	5636096
	.quad	4063232
	.quad	4915200
	.quad	12976128
	.quad	13762560
	.quad	7929856
	.quad	2097152
	.quad	10092544
	.quad	14352384
	.quad	12582912
	.quad	16646144
	.quad	7864320
	.quad	13434880
	.quad	5898240
	.quad	15990784
	.quad	2031616
	.quad	14483456
	.quad	11010048
	.quad	3342336
	.quad	8912896
	.quad	458752
	.quad	13041664
	.quad	3211264
	.quad	11599872
	.quad	1179648
	.quad	1048576
	.quad	5832704
	.quad	2555904
	.quad	8388608
	.quad	15466496
	.quad	6225920
	.quad	6291456
	.quad	5308416
	.quad	8323072
	.quad	11075584
	.quad	1638400
	.quad	11862016
	.quad	4849664
	.quad	851968
	.quad	2949120
	.quad	15007744
	.quad	7995392
	.quad	10420224
	.quad	9633792
	.quad	13172736
	.quad	10223616
	.quad	15663104
	.quad	10485760
	.quad	14680064
	.quad	3866624
	.quad	5046272
	.quad	11403264
	.quad	2752512
	.quad	16056320
	.quad	11534336
	.quad	13107200
	.quad	15400960
	.quad	12255232
	.quad	3932160
	.quad	8585216
	.quad	5439488
	.quad	10027008
	.quad	6356992
	.quad	1507328
	.quad	2818048
	.quad	262144
	.quad	8257536
	.quad	12189696
	.quad	7798784
	.quad	14024704
	.quad	2490368
	.quad	14745600
	.quad	6881280
	.quad	1310720
	.quad	6488064
	.quad	5570560
	.quad	2162688
	.quad	786432
	.quad	8192000
	.quad	1375731712
	.quad	150994944
	.quad	1778384896
	.quad	3573547008
	.quad	805306368
	.quad	905969664
	.quad	2768240640
	.quad	939524096
	.quad	3204448256
	.quad	1073741824
	.quad	2734686208
	.quad	2650800128
	.quad	2164260864
	.quad	4076863488
	.quad	3607101440
	.quad	4211081216
	.quad	2080374784
	.quad	3808428032
	.quad	956301312
	.quad	2181038080
	.quad	2600468480
	.quad	788529152
	.quad	4278190080
	.quad	2264924160
	.quad	872415232
	.quad	2382364672
	.quad	1124073472
	.quad	1140850688
	.quad	3288334336
	.quad	3724541952
	.quad	3909091328
	.quad	3405774848
	.quad	1409286144
	.quad	2063597568
	.quad	2483027968
	.quad	838860800
	.quad	2785017856
	.quad	3254779904
	.quad	587202560
	.quad	1023410176
	.quad	3992977408
	.quad	1275068416
	.quad	2499805184
	.quad	184549376
	.quad	1107296256
	.quad	4194304000
	.quad	3271557120
	.quad	1308622848
	.quad	134217728
	.quad	771751936
	.quad	2701131776
	.quad	1711276032
	.quad	671088640
	.quad	3640655872
	.quad	603979776
	.quad	2986344448
	.quad	1979711488
	.quad	1526726656
	.quad	2717908992
	.quad	1224736768
	.quad	1828716544
	.quad	2332033024
	.quad	3506438144
	.quad	620756992
	.quad	1912602624
	.quad	4160749568
	.quad	4127195136
	.quad	1677721600
	.quad	2248146944
	.quad	1744830464
	.quad	2550136832
	.quad	369098752
	.quad	3556769792
	.quad	2751463424
	.quad	1543503872
	.quad	3422552064
	.quad	1560281088
	.quad	1694498816
	.quad	3053453312
	.quad	2449473536
	.quad	1811939328
	.quad	1879048192
	.quad	1207959552
	.quad	1342177280
	.quad	4244635648
	.quad	3976200192
	.quad	3103784960
	.quad	3657433088
	.quad	1577058304
	.quad	352321536
	.quad	1174405120
	.quad	1459617792
	.quad	2801795072
	.quad	2365587456
	.quad	2634022912
	.quad	2214592512
	.quad	2415919104
	.quad	3623878656
	.quad	2868903936
	.quad	0
	.quad	2348810240
	.quad	3154116608
	.quad	3539992576
	.quad	167772160
	.quad	4143972352
	.quad	3825205248
	.quad	1476395008
	.quad	83886080
	.quad	3087007744
	.quad	3003121664
	.quad	1157627904
	.quad	100663296
	.quad	3489660928
	.quad	738197504
	.quad	503316480
	.quad	2399141888
	.quad	3388997632
	.quad	1056964608
	.quad	251658240
	.quad	33554432
	.quad	3238002688
	.quad	2936012800
	.quad	3170893824
	.quad	50331648
	.quad	16777216
	.quad	318767104
	.quad	2315255808
	.quad	1795162112
	.quad	973078528
	.quad	2432696320
	.quad	285212672
	.quad	1090519040
	.quad	1325400064
	.quad	1728053248
	.quad	3690987520
	.quad	3925868544
	.quad	2533359616
	.quad	4060086272
	.quad	3472883712
	.quad	3456106496
	.quad	4026531840
	.quad	3019898880
	.quad	3858759680
	.quad	1929379840
	.quad	2516582400
	.quad	2885681152
	.quad	1946157056
	.quad	570425344
	.quad	3875536896
	.quad	2902458368
	.quad	889192448
	.quad	2231369728
	.quad	3791650816
	.quad	4177526784
	.quad	922746880
	.quad	3892314112
	.quad	469762048
	.quad	1962934272
	.quad	3741319168
	.quad	1845493760
	.quad	1191182336
	.quad	4043309056
	.quad	436207616
	.quad	1895825408
	.quad	486539264
	.quad	687865856
	.quad	3305111552
	.quad	2298478592
	.quad	1862270976
	.quad	3070230528
	.quad	1644167168
	.quad	234881024
	.quad	2852126720
	.quad	402653184
	.quad	3187671040
	.quad	452984832
	.quad	4227858432
	.quad	1442840576
	.quad	1040187392
	.quad	1258291200
	.quad	3321888768
	.quad	3523215360
	.quad	2030043136
	.quad	536870912
	.quad	2583691264
	.quad	3674210304
	.quad	3221225472
	.quad	4261412864
	.quad	2013265920
	.quad	3439329280
	.quad	1509949440
	.quad	4093640704
	.quad	520093696
	.quad	3707764736
	.quad	2818572288
	.quad	855638016
	.quad	2281701376
	.quad	117440512
	.quad	3338665984
	.quad	822083584
	.quad	2969567232
	.quad	301989888
	.quad	268435456
	.quad	1493172224
	.quad	654311424
	.quad	2147483648
	.quad	3959422976
	.quad	1593835520
	.quad	1610612736
	.quad	1358954496
	.quad	2130706432
	.quad	2835349504
	.quad	419430400
	.quad	3036676096
	.quad	1241513984
	.quad	218103808
	.quad	754974720
	.quad	3841982464
	.quad	2046820352
	.quad	2667577344
	.quad	2466250752
	.quad	3372220416
	.quad	2617245696
	.quad	4009754624
	.quad	2684354560
	.quad	3758096384
	.quad	989855744
	.quad	1291845632
	.quad	2919235584
	.quad	704643072
	.quad	4110417920
	.quad	2952790016
	.quad	3355443200
	.quad	3942645760
	.quad	3137339392
	.quad	1006632960
	.quad	2197815296
	.quad	1392508928
	.quad	2566914048
	.quad	1627389952
	.quad	385875968
	.quad	721420288
	.quad	67108864
	.quad	2113929216
	.quad	3120562176
	.quad	1996488704
	.quad	3590324224
	.quad	637534208
	.quad	3774873600
	.quad	1761607680
	.quad	335544320
	.quad	1660944384
	.quad	1426063360
	.quad	553648128
	.quad	201326592
	.quad	2097152000
	.size	il_tab, 8192

	.type	im_tab,@object
	.globl	im_tab
	.p2align	3
im_tab:
	.quad	0
	.quad	185403662
	.quad	370807324
	.quad	488053522
	.quad	741614648
	.quad	658058550
	.quad	976107044
	.quad	824393514
	.quad	1483229296
	.quad	1399144830
	.quad	1316117100
	.quad	1165972322
	.quad	1952214088
	.quad	2136040774
	.quad	1648787028
	.quad	1766553434
	.quad	2966458592
	.quad	3151862254
	.quad	2798289660
	.quad	2915535858
	.quad	2632234200
	.quad	2548678102
	.quad	2331944644
	.quad	2180231114
	.quad	3904428176
	.quad	3820343710
	.quad	4272081548
	.quad	4121936770
	.quad	3297574056
	.quad	3481400742
	.quad	3533106868
	.quad	3650873274
	.quad	2075868123
	.quad	1890988757
	.quad	1839278535
	.quad	1722556617
	.quad	1468997603
	.quad	1552029421
	.quad	1100287487
	.quad	1251476721
	.quad	601060267
	.quad	685669029
	.quad	902390199
	.quad	1053059257
	.quad	266819475
	.quad	82468509
	.quad	436028815
	.quad	317738113
	.quad	3412831035
	.quad	3227951669
	.quad	3715217703
	.quad	3598495785
	.quad	3881799427
	.quad	3964831245
	.quad	4047871263
	.quad	4199060497
	.quad	2466505547
	.quad	2551114309
	.quad	2233069911
	.quad	2383738969
	.quad	3208103795
	.quad	3023752829
	.quad	2838353263
	.quad	2720062561
	.quad	4134368941
	.quad	4250959779
	.quad	3765920945
	.quad	3950669247
	.quad	3663286933
	.quad	3511966619
	.quad	3426959497
	.quad	3343796615
	.quad	2919579357
	.quad	2768779219
	.quad	3089050817
	.quad	3004310991
	.quad	2184256229
	.quad	2302415851
	.quad	2485848313
	.quad	2670068215
	.quad	1186850381
	.quad	1303441219
	.quad	1353184337
	.quad	1537932639
	.quad	1787413109
	.quad	1636092795
	.quad	2090061929
	.quad	2006899047
	.quad	517320253
	.quad	366520115
	.quad	147831841
	.quad	63092015
	.quad	853641733
	.quad	971801355
	.quad	620468249
	.quad	804688151
	.quad	2379631990
	.quad	2262516856
	.quad	2613862250
	.quad	2428589668
	.quad	2715969870
	.quad	2867814464
	.quad	3086515026
	.quad	3170202204
	.quad	3586000134
	.quad	3736275976
	.quad	3282310938
	.quad	3366526484
	.quad	4186579262
	.quad	4068943920
	.quad	4019204898
	.quad	3835509292
	.quad	1023860118
	.quad	906744984
	.quad	723308426
	.quad	538035844
	.quad	288553390
	.quad	440397984
	.quad	120122290
	.quad	203809468
	.quad	1701746150
	.quad	1852021992
	.quad	1937016826
	.quad	2021232372
	.quad	1230680542
	.quad	1113045200
	.quad	1598071746
	.quad	1414376140
	.quad	4158319681
	.quad	4242007375
	.quad	3787521629
	.quad	3939366739
	.quad	3689859193
	.quad	3504587127
	.quad	3455375973
	.quad	3338261355
	.quad	2947720241
	.quad	2764025151
	.quad	3114841645
	.quad	2997206819
	.quad	2206629897
	.quad	2290845959
	.quad	2510066197
	.quad	2660342555
	.quad	1191869601
	.quad	1275557295
	.quad	1360031421
	.quad	1511876531
	.quad	1799248025
	.quad	1613975959
	.quad	2099530373
	.quad	1982415755
	.quad	526529745
	.quad	342834655
	.quad	158869197
	.quad	41234371
	.quad	861278441
	.quad	945494503
	.quad	625738485
	.quad	776014843
	.quad	2355222426
	.quad	2272059028
	.quad	2591802758
	.quad	2440481928
	.quad	2689987490
	.quad	2874735276
	.quad	3058688446
	.quad	3175278768
	.quad	3557400554
	.quad	3741619940
	.quad	3256061430
	.quad	3374220536
	.quad	4164795346
	.quad	4080055004
	.quad	3995576782
	.quad	3844776128
	.quad	1018251130
	.quad	935087732
	.quad	715871590
	.quad	564550760
	.quad	277177154
	.quad	461924940
	.quad	111112542
	.quad	227702864
	.quad	1691946762
	.quad	1876166148
	.quad	1925389590
	.quad	2043548696
	.quad	1223502642
	.quad	1138762300
	.quad	1593260334
	.quad	1442459680
	.quad	28809964
	.quad	179999714
	.quad	397248752
	.quad	480281086
	.quad	763608788
	.quad	646887386
	.quad	999926984
	.quad	815048134
	.quad	1507840668
	.quad	1389550482
	.quad	1338359936
	.quad	1154009486
	.quad	1978398372
	.quad	2129067946
	.quad	1676797112
	.quad	1761406390
	.quad	2976320012
	.quad	3127509762
	.quad	2809993232
	.quad	2893025566
	.quad	2639474228
	.quad	2522752826
	.quad	2336832552
	.quad	2151953702
	.quad	3910091388
	.quad	3791801202
	.quad	4279586912
	.quad	4095236462
	.quad	3309004356
	.quad	3459673930
	.quad	3542185048
	.quad	3626794326
	.quad	2047648055
	.quad	1895934009
	.quad	1813426987
	.quad	1729870373
	.quad	1446544655
	.quad	1563790337
	.quad	1076008723
	.quad	1261411869
	.quad	577038663
	.quad	694804553
	.quad	880737115
	.quad	1064563285
	.quad	240176511
	.quad	90031217
	.quad	407560035
	.quad	323475053
	.quad	3403428311
	.quad	3251714265
	.quad	3703972811
	.quad	3620416197
	.quad	3873969647
	.quad	3991215329
	.quad	4042393587
	.quad	4227796733
	.quad	2461301159
	.quad	2579067049
	.quad	2226023355
	.quad	2409849525
	.quad	3196083615
	.quad	3045938321
	.quad	2828685187
	.quad	2744600205
	.quad	0
	.quad	218697227
	.quad	437394454
	.quad	387650077
	.quad	874788908
	.quad	959264295
	.quad	775300154
	.quad	591342129
	.quad	1749577816
	.quad	1698790995
	.quad	1918528590
	.quad	2136171077
	.quad	1550600308
	.quad	1365591679
	.quad	1182684258
	.quad	1266113129
	.quad	3499155632
	.quad	3717852859
	.quad	3397581990
	.quad	3347837613
	.quad	3837057180
	.quad	3921532567
	.quad	4272342154
	.quad	4088384129
	.quad	3101200616
	.quad	3050413795
	.quad	2731183358
	.quad	2948825845
	.quad	2365368516
	.quad	2180359887
	.quad	2532226258
	.quad	2615655129
	.quad	3141262203
	.quad	3056784752
	.quad	2703869805
	.quad	2887829862
	.quad	2401231703
	.quad	2182540636
	.quad	2500722497
	.quad	2550460746
	.quad	3547573027
	.quad	3732579624
	.quad	3378624309
	.quad	3295197502
	.quad	3881276175
	.quad	3932069124
	.quad	4249194265
	.quad	4031545618
	.quad	1806384075
	.quad	1721906624
	.quad	1907959773
	.quad	2091919830
	.quad	1603208167
	.quad	1384517100
	.quad	1167925233
	.quad	1217663482
	.quad	65227667
	.quad	250234264
	.quad	435246981
	.quad	351820174
	.quad	935818175
	.quad	986611124
	.quad	768962473
	.quad	551313826
	.quad	1836494326
	.quad	1618977789
	.quad	2003087840
	.quad	2054012907
	.quad	1498584538
	.quad	1415289809
	.quad	1128303052
	.quad	1313441735
	.quad	88006062
	.quad	137876389
	.quad	523026872
	.quad	304467891
	.quad	823846274
	.quad	1007938441
	.quad	722008468
	.quad	637663135
	.quad	3185986886
	.quad	2968470349
	.quad	2817806672
	.quad	2868731739
	.quad	2311222634
	.quad	2227927905
	.quad	2479909244
	.quad	2665047927
	.quad	3584965918
	.quad	3634836245
	.quad	3485212936
	.quad	3266653955
	.quad	3783918898
	.quad	3968011065
	.quad	4221049124
	.quad	4136703791
	.quad	3595400845
	.quad	3678697606
	.quad	3428805275
	.quad	3243664528
	.quad	3798552225
	.quad	4016062634
	.quad	4168831671
	.quad	4117912764
	.quad	3188000469
	.quad	3003910366
	.quad	2752977603
	.quad	2837320904
	.quad	2317434617
	.quad	2267558130
	.quad	2419270383
	.quad	2637835492
	.quad	115185213
	.quad	198481974
	.quad	483363371
	.quad	298222624
	.quad	855223825
	.quad	1072734234
	.quad	686535175
	.quad	635616268
	.quad	1855317605
	.quad	1671227502
	.quad	1955068531
	.quad	2039411832
	.quad	1521606217
	.quad	1471729730
	.quad	1084473951
	.quad	1303039060
	.quad	3672916471
	.quad	3622129660
	.quad	3237895649
	.quad	3455538154
	.quad	4006115803
	.quad	3821107152
	.quad	4107953613
	.quad	4191382470
	.quad	2997105071
	.quad	3215802276
	.quad	2830511545
	.quad	2780767154
	.quad	2256537987
	.quad	2341013384
	.quad	2626819477
	.quad	2442861470
	.quad	175939911
	.quad	125153100
	.quad	275692881
	.quad	493335386
	.quad	1045993835
	.quad	860985184
	.quad	608863613
	.quad	692292470
	.quad	1647628575
	.quad	1866325780
	.quad	2015808777
	.quad	1966064386
	.quad	1443948851
	.quad	1528424248
	.quad	1275262245
	.quad	1091304238
	.quad	1641519756
	.quad	1826526343
	.quad	2076542618
	.quad	1993115793
	.quad	1442030240
	.quad	1492823211
	.quad	1340194486
	.quad	1122545853
	.quad	161475284
	.quad	76997855
	.quad	328070850
	.quad	512030921
	.quad	1035719416
	.quad	817028339
	.quad	665439982
	.quad	715178213
	.quad	2974251580
	.quad	3159258167
	.quad	2874500650
	.quad	2791073825
	.quad	2237874704
	.quad	2288667675
	.quad	2675006982
	.quad	2457358349
	.quad	3641641572
	.quad	3557164143
	.quad	3273463410
	.quad	3457423481
	.quad	3979031112
	.quad	3760340035
	.quad	4147719774
	.quad	4197458005
	.quad	3080383489
	.quad	3130253834
	.quad	2911432727
	.quad	2692873756
	.quad	2210321453
	.quad	2394413606
	.quad	2578237499
	.quad	2493892144
	.quad	3755121753
	.quad	3537605202
	.quad	3317727311
	.quad	3368652356
	.quad	3958809717
	.quad	3875515006
	.quad	4058298467
	.quad	4243437160
	.quad	1728711857
	.quad	1778582202
	.quad	2098729127
	.quad	1880170156
	.quad	1395537053
	.quad	1579629206
	.quad	1228679307
	.quad	1144333952
	.quad	256015593
	.quad	38499042
	.quad	357589247
	.quad	408514292
	.quad	996558021
	.quad	913263310
	.quad	561273043
	.quad	746411736
	.quad	211892090
	.quad	27801969
	.quad	380840812
	.quad	465184103
	.quad	948244310
	.quad	898367837
	.quad	580326208
	.quad	798891339
	.quad	1693009698
	.quad	1776306473
	.quad	2130402100
	.quad	1945261375
	.quad	1355644686
	.quad	1573155077
	.quad	1256153880
	.quad	1205234963
	.quad	3694254026
	.quad	3510163905
	.quad	3324234716
	.quad	3408578007
	.quad	3893751782
	.quad	3843875309
	.quad	4060607472
	.quad	4279172603
	.quad	3027871634
	.quad	3111168409
	.quad	2926295940
	.quad	2741155215
	.quad	2153619390
	.quad	2371129781
	.quad	2588902312
	.quad	2537983395
	.quad	0
	.quad	151915277
	.quad	303830554
	.quad	454171927
	.quad	607661108
	.quad	758523705
	.quad	908343854
	.quad	1059729699
	.quad	1215322216
	.quad	1098797925
	.quad	1517047410
	.quad	1398949247
	.quad	1816687708
	.quad	1699118929
	.quad	2119459398
	.quad	2002413899
	.quad	2430644432
	.quad	2582559709
	.quad	2197595850
	.quad	2347937223
	.quad	3034094820
	.quad	3184957417
	.quad	2797898494
	.quad	2949284339
	.quad	3633375416
	.quad	3516851125
	.quad	3398237858
	.quad	3280139695
	.quad	4238918796
	.quad	4121350017
	.quad	4004827798
	.quad	3887782299
	.quad	1004239803
	.quad	852848822
	.quad	700935585
	.quad	550069932
	.quad	534992783
	.quad	384654466
	.quad	234832277
	.quad	82922136
	.quad	1940595667
	.quad	2057644254
	.quad	1639396809
	.quad	1756970692
	.quad	1469255655
	.quad	1587348714
	.quad	1167006205
	.quad	1283527408
	.quad	2872822635
	.quad	2721431654
	.quad	3106397553
	.quad	2955531900
	.quad	2399397727
	.quad	2249059410
	.quad	2636116293
	.quad	2484206152
	.quad	3813380867
	.quad	3930429454
	.quad	4049044761
	.quad	4166618644
	.quad	3346251575
	.quad	3464344634
	.quad	3580864813
	.quad	3697386016
	.quad	1991112301
	.quad	2141453664
	.quad	1689378935
	.quad	1841294202
	.quad	1385552473
	.quad	1536938324
	.quad	1082772547
	.quad	1233635150
	.quad	1054715397
	.quad	936617224
	.quad	750893087
	.quad	634368786
	.quad	451248689
	.quad	334203196
	.quad	150574123
	.quad	33005350
	.quad	3863824061
	.quad	4014165424
	.quad	4098969767
	.quad	4250885034
	.quad	3262474889
	.quad	3413860740
	.quad	3496574099
	.quad	3647436702
	.quad	2923241173
	.quad	2805143000
	.quad	3156281551
	.quad	3039757250
	.quad	2315596513
	.quad	2198551020
	.quad	2551784699
	.quad	2434215926
	.quad	1299615190
	.quad	1148749531
	.quad	1600822220
	.quad	1449431233
	.quad	1766760930
	.quad	1614850799
	.quad	2069018616
	.quad	1918680309
	.quad	84334014
	.quad	201907891
	.quad	387629988
	.quad	504678569
	.quad	557775242
	.quad	674296455
	.quad	857927568
	.quad	976020637
	.quad	3717610758
	.quad	3566745099
	.quad	3481938716
	.quad	3330547729
	.quad	4188934450
	.quad	4037024319
	.quad	3954313000
	.quad	3803974693
	.quad	2514904430
	.quad	2632478307
	.quad	2281337716
	.quad	2398386297
	.quad	2984135002
	.quad	3100656215
	.quad	2747424576
	.quad	2865517645
	.quad	3963746266
	.quad	3847224535
	.quad	4267565504
	.quad	4149471949
	.quad	3363429358
	.quad	3245854947
	.quad	3664104948
	.quad	3547055865
	.quad	2754719666
	.quad	2906629311
	.quad	3056449960
	.quad	3206787749
	.quad	2148107142
	.quad	2298972299
	.quad	2450888092
	.quad	2602278545
	.quad	2090944266
	.quad	1974422535
	.quad	1857900816
	.quad	1739807261
	.quad	1486449470
	.quad	1368875059
	.quad	1250262308
	.quad	1133213225
	.quad	886120290
	.quad	1038029935
	.quad	650971512
	.quad	801309301
	.quad	283718486
	.quad	434583643
	.quad	49620300
	.quad	201010753
	.quad	3617229921
	.quad	3734275948
	.quad	3313932923
	.quad	3431502198
	.quad	4087521365
	.quad	4205620056
	.quad	3787372111
	.quad	3903896898
	.quad	2682967049
	.quad	2531581700
	.quad	2381758995
	.quad	2230896926
	.quad	3151165501
	.quad	3000824624
	.quad	2848910887
	.quad	2696996138
	.quad	1199193265
	.quad	1316239292
	.quad	1432758955
	.quad	1550328230
	.quad	1665273989
	.quad	1783372680
	.quad	1901987487
	.quad	2018512274
	.quad	252339417
	.quad	100954068
	.quad	488010435
	.quad	337148366
	.quad	724715757
	.quad	574374880
	.quad	959340279
	.quad	807425530
	.quad	2599158199
	.quad	2481064634
	.quad	2297436077
	.quad	2180914336
	.quad	3201576323
	.quad	3084527246
	.quad	2898803609
	.quad	2781229204
	.quad	3533461983
	.quad	3683799762
	.quad	3229634501
	.quad	3381544136
	.quad	4137973227
	.quad	4289363686
	.quad	3837289457
	.quad	3988154620
	.quad	168604007
	.quad	50510442
	.quad	403744637
	.quad	287222896
	.quad	775200083
	.quad	658151006
	.quad	1009290057
	.quad	891715652
	.quad	1115482383
	.quad	1265820162
	.quad	1348534037
	.quad	1500443672
	.quad	1715782971
	.quad	1867173430
	.quad	1951978273
	.quad	2102843436
	.quad	2704767500
	.quad	2822336769
	.quad	3005967382
	.quad	3123013403
	.quad	2232374840
	.quad	2348899637
	.quad	2534621218
	.quad	2652719919
	.quad	3913753188
	.quad	3762891113
	.quad	4217058430
	.quad	4065673075
	.quad	3447656016
	.quad	3295741277
	.quad	3747813450
	.quad	3597472583
	.quad	836225756
	.quad	953795025
	.quad	600562886
	.quad	717608907
	.quad	368043752
	.quad	484568549
	.quad	133427442
	.quad	251526143
	.quad	2041025204
	.quad	1890163129
	.quad	1807451310
	.quad	1656065955
	.quad	1570750080
	.quad	1418835341
	.quad	1334028442
	.quad	1183687575
	.quad	0
	.quad	235605257
	.quad	471210514
	.quad	303896347
	.quad	942421028
	.quad	908540205
	.quad	607792694
	.quad	707863359
	.quad	1884842056
	.quad	2119394625
	.quad	1817080410
	.quad	1648721747
	.quad	1215585388
	.quad	1182749029
	.quad	1415726718
	.quad	1516850039
	.quad	3769684112
	.quad	4005289369
	.quad	4238789250
	.quad	4071475083
	.quad	3634160820
	.quad	3600279997
	.quad	3297443494
	.quad	3397514159
	.quad	2431170776
	.quad	2665723345
	.quad	2365498058
	.quad	2197139395
	.quad	2831453436
	.quad	2798617077
	.quad	3033700078
	.quad	3134823399
	.quad	3682319163
	.quad	3580933682
	.quad	3345850665
	.quad	3378949152
	.quad	3814166303
	.quad	3982262806
	.quad	4282488077
	.quad	4048197636
	.quad	2871251827
	.quad	2770919034
	.quad	3073755489
	.quad	3107898472
	.quad	2467293015
	.quad	2634345054
	.quad	2400845125
	.quad	2165502028
	.quad	1003187115
	.quad	901801634
	.quad	668823993
	.quad	701922480
	.quad	65494927
	.quad	233591430
	.quad	535905693
	.quad	301615252
	.quad	1267925987
	.quad	1167593194
	.quad	1468340721
	.quad	1502483704
	.quad	1941911495
	.quad	2108963534
	.quad	1873358293
	.quad	1638015196
	.quad	2918608246
	.quad	2751291519
	.quad	2984277860
	.quad	3219880557
	.quad	2514114898
	.quad	2614187099
	.quad	2311865152
	.quad	2277985865
	.quad	3719169342
	.quad	3550808119
	.quad	3250069292
	.quad	3484619301
	.quad	3850514714
	.quad	3951639571
	.quad	4187237128
	.quad	4154402305
	.quad	1296481766
	.quad	1129165039
	.quad	1364240372
	.quad	1599843069
	.quad	1969916354
	.quad	2069988555
	.quad	1769771984
	.quad	1735892697
	.quad	1025430958
	.quad	857069735
	.quad	554225596
	.quad	788775605
	.quad	87220618
	.quad	188345475
	.quad	421854104
	.quad	389019281
	.quad	1989006925
	.quad	2022103876
	.quad	1788595295
	.quad	1687208278
	.quad	1319232105
	.quad	1084944224
	.quad	1387788411
	.quad	1555887474
	.quad	114671109
	.quad	148812556
	.quad	449029143
	.quad	348694814
	.quad	1056541217
	.quad	821200680
	.quad	586125363
	.quad	753179962
	.quad	2520581853
	.quad	2553678804
	.quad	2318081231
	.quad	2216694214
	.quad	2920362745
	.quad	2686074864
	.quad	2986813675
	.quad	3154912738
	.quad	3865407125
	.quad	3899548572
	.quad	4201870471
	.quad	4101536142
	.quad	3729349297
	.quad	3494008760
	.quad	3261022371
	.quad	3428076970
	.quad	1106762476
	.quad	1341970405
	.quad	1575076094
	.quad	1407897079
	.quad	2044456648
	.quad	2010178497
	.quad	1707996378
	.quad	1808202195
	.quad	833598116
	.quad	1067761581
	.quad	767142070
	.quad	598910399
	.quad	159614592
	.quad	126389129
	.quad	362126482
	.quad	463376795
	.quad	2705787516
	.quad	2940995445
	.quad	3176206446
	.quad	3009027431
	.quad	2573942360
	.quad	2539664209
	.quad	2239571018
	.quad	2339776835
	.quad	3508494900
	.quad	3742658365
	.quad	3439949862
	.quad	3271718191
	.quad	3912455696
	.quad	3879230233
	.quad	4112862210
	.quad	4214112523
	.quad	2592891351
	.quad	2491903198
	.quad	2258271173
	.quad	2291234508
	.quad	2728416755
	.quad	2896910586
	.quad	3199619041
	.quad	2965193448
	.quad	3939764639
	.quad	3839820950
	.quad	4139914125
	.quad	4173930116
	.quad	3539484091
	.quad	3706925234
	.quad	3471714217
	.quad	3236244128
	.quad	2050797895
	.quad	1949809742
	.quad	1714072405
	.quad	1747035740
	.quad	1108378979
	.quad	1276872810
	.quad	1577492337
	.quad	1343066744
	.quad	174381327
	.quad	74437638
	.quad	376619805
	.quad	410635796
	.quad	843640107
	.quad	1011081250
	.quad	777975609
	.quad	542505520
	.quad	3959535514
	.quad	3792353939
	.quad	4028083592
	.quad	4263288961
	.quad	3559752638
	.quad	3659959991
	.quad	3359349164
	.quad	3325072549
	.quad	2623135698
	.quad	2454901467
	.quad	2152711616
	.quad	2386872521
	.quad	2759191542
	.quad	2860443391
	.quad	3093557732
	.quad	3060333805
	.quad	212952842
	.quad	45771267
	.quad	279411992
	.quad	514617361
	.quad	882725678
	.quad	982933031
	.quad	680216892
	.quad	645940277
	.quad	2095648578
	.quad	1927414347
	.quad	1627329872
	.quad	1861490777
	.quad	1153776486
	.quad	1255028335
	.quad	1490231668
	.quad	1457007741
	.quad	930745505
	.quad	963707304
	.quad	728503987
	.quad	627514298
	.quad	257308805
	.quad	22885772
	.quad	322970263
	.quad	491466654
	.quad	1193436393
	.quad	1227450848
	.quad	1530167035
	.quad	1430221810
	.quad	2131644621
	.quad	1896177092
	.quad	1662536415
	.quad	1829980118
	.quad	3620396081
	.quad	3653357880
	.quad	3420243491
	.quad	3319253802
	.quad	4024887317
	.quad	3790464284
	.quad	4092654087
	.quad	4261150478
	.quad	2811409529
	.quad	2845423984
	.quad	3146034795
	.quad	3046089570
	.quad	2680062045
	.quad	2444594516
	.quad	2208864847
	.quad	2376308550
	.size	im_tab, 8192

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 5ca54c66862b8edee1bd300bb284b90306eef87b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rcon_tab
	.addrsig_sym ft_tab
	.addrsig_sym it_tab
	.addrsig_sym fl_tab
	.addrsig_sym il_tab
