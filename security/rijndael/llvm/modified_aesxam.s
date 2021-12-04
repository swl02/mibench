	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.file	"aesxam.c"
	.globl	fillrand
	.p2align	2
	.type	fillrand,@function
fillrand:
	.word	0xd547977
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lui	a0, %hi(fillrand.mt)
	ld	a0, %lo(fillrand.mt)(a0)
	li	a1, 0
	beq	a0, a1, .LBB0_2
	.word	0x2f977
	j	.LBB0_1
.LBB0_1:
	.word	0x8268977
	lui	a1, %hi(fillrand.mt)
	li	a0, 0
	sd	a0, %lo(fillrand.mt)(a1)
	lui	a0, 15
	addiw	a1, a0, -1293
	lui	a0, %hi(fillrand.a)
	sd	a1, %lo(fillrand.a)(a0)
	addi	a1, a0, %lo(fillrand.a)
	lui	a0, 3
	addiw	a0, a0, 1534
	sd	a0, 8(a1)
	j	.LBB0_2
.LBB0_2:
	.word	0xdbbb977
	li	a0, 0
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_3:
	.word	0x4816977
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB0_8
	.word	0x2f977
	j	.LBB0_4
.LBB0_4:
	.word	0x2307977
	lui	a0, %hi(fillrand.count)
	ld	a0, %lo(fillrand.count)(a0)
	li	a1, 4
	bne	a0, a1, .LBB0_6
	.word	0x2f977
	j	.LBB0_5
.LBB0_5:
	.word	0x7163977
	lui	a2, %hi(fillrand.a)
	ld	a3, %lo(fillrand.a)(a2)
	lui	a0, 16
	addiw	a1, a0, -1
	and	a0, a3, a1
	lui	a4, 9
	addiw	a4, a4, 105
	mul	a0, a0, a4
	srli	a3, a3, 16
	add	a0, a0, a3
	sd	a0, %lo(fillrand.a)(a2)
	slli	a0, a0, 16
	addi	a2, a2, %lo(fillrand.a)
	ld	a3, 8(a2)
	and	a1, a3, a1
	lui	a4, 4
	addiw	a4, a4, 1616
	mul	a1, a1, a4
	srli	a3, a3, 16
	add	a1, a1, a3
	sd	a1, 8(a2)
	add	a0, a0, a1
	sd	a0, -40(s0)
	srli	a3, a0, 56
	lui	a2, %hi(fillrand.r)
	addi	a1, a2, %lo(fillrand.r)
	sb	a3, 7(a1)
	srli	a3, a0, 48
	sb	a3, 6(a1)
	srli	a3, a0, 40
	sb	a3, 5(a1)
	srli	a3, a0, 32
	sb	a3, 4(a1)
	srli	a3, a0, 24
	sb	a3, 3(a1)
	srli	a3, a0, 16
	sb	a3, 2(a1)
	sb	a0, %lo(fillrand.r)(a2)
	srli	a0, a0, 8
	sb	a0, 1(a1)
	lui	a1, %hi(fillrand.count)
	li	a0, 0
	sd	a0, %lo(fillrand.count)(a1)
	j	.LBB0_6
.LBB0_6:
	.word	0x1f5b977
	lui	a2, %hi(fillrand.count)
	ld	a0, %lo(fillrand.count)(a2)
	addi	a1, a0, 1
	sd	a1, %lo(fillrand.count)(a2)
	lui	a1, %hi(fillrand.r)
	addi	a1, a1, %lo(fillrand.r)
	add	a0, a0, a1
	lb	a0, 0(a0)
	ld	a1, -24(s0)
	lw	a2, -32(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB0_7
.LBB0_7:
	.word	0x1e7e977
	lw	a0, -32(s0)
	addiw	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_8:
	.word	0xd9f6977
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	addi	sp, sp, 48
	csrwi	0xff,0
	ret
.Lfunc_end0:
	.size	fillrand, .Lfunc_end0-fillrand

	.globl	encfile
	.p2align	2
	.type	encfile,@function
encfile:
	.word	0xd220977
	addi	sp, sp, -192
	sd	ra, 184(sp)
	sd	s0, 176(sp)
	addi	s0, sp, 192
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	li	a0, 0
	sd	a0, -160(s0)
	sd	a0, -112(s0)
	sd	a0, -120(s0)
	addi	a0, s0, -88
	sd	a0, -144(s0)
	li	a1, 16
	sd	a1, -152(s0)
	call	fillrand
	.word	0xc59c977
	ld	a1, -160(s0)
	ld	a0, -32(s0)
	li	a2, 2
	csrwi	0xff,0
	call	fseek
	csrwi	0xff,1
	.word	0x8f8977
	ld	a0, -32(s0)
	addi	a1, s0, -104
	sd	a1, -128(s0)
	csrwi	0xff,0
	call	fgetpos
	csrwi	0xff,1
	.word	0xc63a977
	ld	a2, -160(s0)
	ld	a0, -32(s0)
	mv	a1, a2
	csrwi	0xff,0
	call	fseek
	csrwi	0xff,1
	.word	0xb2cc977
	ld	a2, -152(s0)
	ld	a0, -144(s0)
	ld	a3, -40(s0)
	li	a1, 1
	sd	a1, -136(s0)
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0x1520977
	ld	a1, -136(s0)
	addi	a0, s0, -72
	call	fillrand
	.word	0xa6da977
	ld	a0, -128(s0)
	li	a1, 15
	sd	a1, -120(s0)
	andi	a0, a0, 8
	lbu	a1, -72(s0)
	andi	a1, a1, 240
	or	a0, a0, a1
	sb	a0, -72(s0)
	j	.LBB1_1
.LBB1_1:
	.word	0x8418977
	ld	a0, -32(s0)
	call	feof
	.word	0x745977
	li	a1, 0
	bne	a0, a1, .LBB1_11
	.word	0x2f977
	j	.LBB1_2
.LBB1_2:
	.word	0x99b977
	ld	a2, -120(s0)
	addi	a0, s0, -72
	sub	a0, a0, a2
	addi	a0, a0, 16
	ld	a3, -32(s0)
	li	a1, 1
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0xbb51977
	sd	a0, -112(s0)
	ld	a0, -112(s0)
	ld	a1, -120(s0)
	bgeu	a0, a1, .LBB1_4
	.word	0x2f977
	j	.LBB1_3
.LBB1_3:
	.word	0xfef977
	j	.LBB1_11
.LBB1_4:
	.word	0xc5bb977
	li	a0, 0
	sd	a0, -112(s0)
	j	.LBB1_5
.LBB1_5:
	.word	0xabb2977
	ld	a1, -112(s0)
	li	a0, 15
	bltu	a0, a1, .LBB1_8
	.word	0x2f977
	j	.LBB1_6
.LBB1_6:
	.word	0x8b58977
	ld	a1, -112(s0)
	addi	a0, s0, -88
	add	a0, a0, a1
	lb	a2, 0(a0)
	addi	a0, s0, -72
	add	a1, a0, a1
	lb	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB1_7
.LBB1_7:
	.word	0x336977
	ld	a0, -112(s0)
	addi	a0, a0, 1
	sd	a0, -112(s0)
	j	.LBB1_5
.LBB1_8:
	.word	0x3ce0977
	ld	a2, -48(s0)
	addi	a0, s0, -72
	addi	a1, s0, -88
	sd	a1, -176(s0)
	call	encrypt
	.word	0x41a8977
	ld	a0, -176(s0)
	ld	a3, -40(s0)
	li	a1, 1
	li	a2, 16
	sd	a2, -168(s0)
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0xced1977
	ld	a1, -168(s0)
	beq	a0, a1, .LBB1_10
	.word	0x2f977
	j	.LBB1_9
.LBB1_9:
	.word	0x31eb977
	ld	a1, -56(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x3beb977
	li	a0, -7
	sw	a0, -20(s0)
	j	.LBB1_25
.LBB1_10:
	.word	0xd2a4977
	li	a0, 16
	sd	a0, -120(s0)
	j	.LBB1_1
.LBB1_11:
	.word	0xda32977
	ld	a0, -120(s0)
	li	a1, 15
	bne	a0, a1, .LBB1_13
	.word	0x2f977
	j	.LBB1_12
.LBB1_12:
	.word	0x9a9977
	ld	a0, -112(s0)
	addi	a0, a0, 1
	sd	a0, -112(s0)
	j	.LBB1_13
.LBB1_13:
	.word	0xd542977
	ld	a0, -112(s0)
	li	a1, 0
	beq	a0, a1, .LBB1_24
	.word	0x2f977
	j	.LBB1_14
.LBB1_14:
	.word	0x2f977
	j	.LBB1_15
.LBB1_15:
	.word	0xa3b2977
	ld	a1, -112(s0)
	li	a0, 15
	bltu	a0, a1, .LBB1_17
	.word	0x2f977
	j	.LBB1_16
.LBB1_16:
	.word	0xfbf2977
	ld	a1, -112(s0)
	addi	a0, a1, 1
	sd	a0, -112(s0)
	addi	a0, s0, -72
	add	a1, a0, a1
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB1_15
.LBB1_17:
	.word	0xc5bb977
	li	a0, 0
	sd	a0, -112(s0)
	j	.LBB1_18
.LBB1_18:
	.word	0xabb2977
	ld	a1, -112(s0)
	li	a0, 15
	bltu	a0, a1, .LBB1_21
	.word	0x2f977
	j	.LBB1_19
.LBB1_19:
	.word	0x8b58977
	ld	a1, -112(s0)
	addi	a0, s0, -88
	add	a0, a0, a1
	lb	a2, 0(a0)
	addi	a0, s0, -72
	add	a1, a0, a1
	lb	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB1_20
.LBB1_20:
	.word	0x336977
	ld	a0, -112(s0)
	addi	a0, a0, 1
	sd	a0, -112(s0)
	j	.LBB1_18
.LBB1_21:
	.word	0x2ca0977
	ld	a2, -48(s0)
	addi	a0, s0, -72
	addi	a1, s0, -88
	sd	a1, -192(s0)
	call	encrypt
	.word	0x20f8977
	ld	a0, -192(s0)
	ld	a3, -40(s0)
	li	a1, 1
	li	a2, 16
	sd	a2, -184(s0)
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0xcfd1977
	ld	a1, -184(s0)
	beq	a0, a1, .LBB1_23
	.word	0x2f977
	j	.LBB1_22
.LBB1_22:
	.word	0x79bb977
	ld	a1, -56(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x23bb977
	li	a0, -8
	sw	a0, -20(s0)
	j	.LBB1_25
.LBB1_23:
	.word	0x2f977
	j	.LBB1_24
.LBB1_24:
	.word	0xddbb977
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB1_25
.LBB1_25:
	.word	0xd31977
	lw	a0, -20(s0)
	ld	ra, 184(sp)
	ld	s0, 176(sp)
	addi	sp, sp, 192
	csrwi	0xff,0
	ret
.Lfunc_end1:
	.size	encfile, .Lfunc_end1-encfile

	.globl	decfile
	.p2align	2
	.type	decfile,@function
decfile:
	.word	0x36cf977
	addi	sp, sp, -176
	sd	ra, 168(sp)
	sd	s0, 160(sp)
	addi	s0, sp, 176
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a4, -64(s0)
	ld	a3, -32(s0)
	addi	a0, s0, -80
	li	a1, 1
	li	a2, 16
	sd	a2, -160(s0)
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0xcd51977
	ld	a1, -160(s0)
	beq	a0, a1, .LBB2_2
	.word	0x2f977
	j	.LBB2_1
.LBB2_1:
	.word	0x6c5b977
	ld	a1, -56(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0xeeeb977
	li	a0, 9
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_2:
	.word	0xda7f977
	ld	a3, -32(s0)
	addi	a0, s0, -96
	li	a1, 1
	li	a2, 16
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0x985977
	sw	a0, -140(s0)
	lw	a0, -140(s0)
	li	a1, 0
	beq	a0, a1, .LBB2_5
	.word	0x2f977
	j	.LBB2_3
.LBB2_3:
	.word	0xde02977
	lw	a0, -140(s0)
	li	a1, 16
	beq	a0, a1, .LBB2_5
	.word	0x2f977
	j	.LBB2_4
.LBB2_4:
	.word	0xaf6c977
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x95b977
	li	a0, -10
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_5:
	.word	0x8627977
	ld	a2, -48(s0)
	addi	a0, s0, -96
	addi	a1, s0, -112
	call	decrypt
	.word	0xd9bb977
	li	a0, 0
	sw	a0, -140(s0)
	j	.LBB2_6
.LBB2_6:
	.word	0x95f2977
	lw	a1, -140(s0)
	li	a0, 15
	blt	a0, a1, .LBB2_9
	.word	0x2f977
	j	.LBB2_7
.LBB2_7:
	.word	0x9618977
	lw	a1, -140(s0)
	addi	a0, s0, -80
	add	a0, a0, a1
	lb	a2, 0(a0)
	addi	a0, s0, -112
	add	a1, a0, a1
	lb	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB2_8
.LBB2_8:
	.word	0x17e977
	lw	a0, -140(s0)
	addiw	a0, a0, 1
	sw	a0, -140(s0)
	j	.LBB2_6
.LBB2_9:
	.word	0xc72d977
	lbu	a0, -112(s0)
	andi	a0, a0, 15
	sw	a0, -148(s0)
	li	a0, 15
	sw	a0, -144(s0)
	addi	a0, s0, -80
	sd	a0, -120(s0)
	addi	a0, s0, -96
	sd	a0, -128(s0)
	j	.LBB2_10
.LBB2_10:
	.word	0x1288977
	ld	a0, -120(s0)
	ld	a3, -32(s0)
	li	a1, 1
	li	a2, 16
	sd	a2, -168(s0)
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0xc411977
	ld	a1, -168(s0)
	sw	a0, -140(s0)
	lw	a0, -140(s0)
	beq	a0, a1, .LBB2_12
	.word	0x2f977
	j	.LBB2_11
.LBB2_11:
	.word	0x116f977
	j	.LBB2_19
.LBB2_12:
	.word	0x7dfb977
	lw	a2, -144(s0)
	addi	a0, s0, -112
	sub	a0, a0, a2
	addi	a0, a0, 16
	ld	a3, -40(s0)
	li	a1, 1
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0xdc51977
	lw	a1, -144(s0)
	beq	a0, a1, .LBB2_14
	.word	0x2f977
	j	.LBB2_13
.LBB2_13:
	.word	0x403b977
	ld	a1, -64(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x34eb977
	li	a0, -11
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_14:
	.word	0x8237977
	ld	a0, -120(s0)
	ld	a2, -48(s0)
	addi	a1, s0, -112
	call	decrypt
	.word	0xd9bb977
	li	a0, 0
	sw	a0, -140(s0)
	j	.LBB2_15
.LBB2_15:
	.word	0x95f2977
	lw	a1, -140(s0)
	li	a0, 15
	blt	a0, a1, .LBB2_18
	.word	0x2f977
	j	.LBB2_16
.LBB2_16:
	.word	0xa508977
	ld	a0, -128(s0)
	lw	a1, -140(s0)
	add	a0, a0, a1
	lb	a2, 0(a0)
	addi	a0, s0, -112
	add	a1, a0, a1
	lb	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB2_17
.LBB2_17:
	.word	0x17e977
	lw	a0, -140(s0)
	addiw	a0, a0, 1
	sw	a0, -140(s0)
	j	.LBB2_15
.LBB2_18:
	.word	0x1b30977
	lw	a0, -140(s0)
	sw	a0, -144(s0)
	ld	a0, -120(s0)
	sd	a0, -136(s0)
	ld	a0, -128(s0)
	sd	a0, -120(s0)
	ld	a0, -136(s0)
	sd	a0, -128(s0)
	j	.LBB2_10
.LBB2_19:
	.word	0x8c45977
	lw	a0, -144(s0)
	addi	a0, a0, -15
	seqz	a0, a0
	sw	a0, -144(s0)
	lw	a1, -144(s0)
	lw	a0, -148(s0)
	subw	a0, a0, a1
	addiw	a0, a0, 1
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	li	a1, 0
	beq	a0, a1, .LBB2_23
	.word	0x2f977
	j	.LBB2_20
.LBB2_20:
	.word	0x9f5a977
	lw	a1, -144(s0)
	addi	a0, s0, -112
	add	a0, a0, a1
	lw	a2, -148(s0)
	ld	a3, -40(s0)
	li	a1, 1
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0xdd91977
	lw	a1, -148(s0)
	beq	a0, a1, .LBB2_22
	.word	0x2f977
	j	.LBB2_21
.LBB2_21:
	.word	0x34bb977
	ld	a1, -64(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x237b977
	li	a0, -12
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_22:
	.word	0x2f977
	j	.LBB2_23
.LBB2_23:
	.word	0xddbb977
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_24:
	.word	0xd5b2977
	lw	a0, -20(s0)
	ld	ra, 168(sp)
	ld	s0, 160(sp)
	addi	sp, sp, 176
	csrwi	0xff,0
	ret
.Lfunc_end2:
	.size	decfile, .Lfunc_end2-decfile

	.globl	main
	.p2align	2
	.type	main,@function
main:
	csrwi	0xff,1
	.word	0xf470977
	addi	sp, sp, -1200
	sd	ra, 1192(sp)
	sd	s0, 1184(sp)
	addi	s0, sp, 1200
	mv	a2, a0
	li	a0, 0
	sw	a0, -28(s0)
	sw	a2, -32(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a0, -56(s0)
	sw	a0, -104(s0)
	sw	a0, -108(s0)
	sw	a0, -112(s0)
	sw	a0, -116(s0)
	lw	a0, -32(s0)
	li	a1, 5
	bne	a0, a1, .LBB3_3
	.word	0x2f977
	j	.LBB3_1
.LBB3_1:
	.word	0x4ad8977
	ld	a0, -40(s0)
	ld	a0, 24(a0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x505977
	li	a1, 68
	beq	a0, a1, .LBB3_4
	.word	0x2f977
	j	.LBB3_2
.LBB3_2:
	.word	0x49d8977
	ld	a0, -40(s0)
	ld	a0, 24(a0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x915977
	li	a1, 69
	beq	a0, a1, .LBB3_4
	.word	0x2f977
	j	.LBB3_3
.LBB3_3:
	.word	0xe47c977
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x64cb977
	li	a0, -1
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_4:
	.word	0xe2bd977
	ld	a0, -40(s0)
	ld	a0, 32(a0)
	sd	a0, -64(s0)
	li	a0, 0
	sw	a0, -104(s0)
	j	.LBB3_5
.LBB3_5:
	.word	0x1ec6977
	lw	a1, -104(s0)
	li	a2, 0
	li	a0, 63
	sd	a2, -1176(s0)
	blt	a0, a1, .LBB3_7
	.word	0x2f977
	j	.LBB3_6
.LBB3_6:
	.word	0x3b3a977
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	snez	a0, a0
	sd	a0, -1176(s0)
	j	.LBB3_7
.LBB3_7:
	.word	0xedc4977
	ld	a0, -1176(s0)
	andi	a0, a0, 1
	li	a1, 0
	beq	a0, a1, .LBB3_19
	.word	0x2f977
	j	.LBB3_8
.LBB3_8:
	.word	0x868f977
	ld	a0, -64(s0)
	addi	a1, a0, 1
	sd	a1, -64(s0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0xbb5977
	sb	a0, -65(s0)
	lbu	a0, -65(s0)
	li	a1, 48
	blt	a0, a1, .LBB3_11
	.word	0x2f977
	j	.LBB3_9
.LBB3_9:
	.word	0xfc22977
	lbu	a1, -65(s0)
	li	a0, 57
	blt	a0, a1, .LBB3_11
	.word	0x2f977
	j	.LBB3_10
.LBB3_10:
	.word	0x5056977
	lw	a0, -108(s0)
	slliw	a0, a0, 4
	lbu	a1, -65(s0)
	addw	a0, a0, a1
	addiw	a0, a0, -48
	sw	a0, -108(s0)
	j	.LBB3_16
.LBB3_11:
	.word	0xf9a2977
	lbu	a0, -65(s0)
	li	a1, 65
	blt	a0, a1, .LBB3_14
	.word	0x2f977
	j	.LBB3_12
.LBB3_12:
	.word	0xfbd2977
	lbu	a1, -65(s0)
	li	a0, 70
	blt	a0, a1, .LBB3_14
	.word	0x2f977
	j	.LBB3_13
.LBB3_13:
	.word	0x5b46977
	lw	a0, -108(s0)
	slliw	a0, a0, 4
	lbu	a1, -65(s0)
	addw	a0, a0, a1
	addiw	a0, a0, -55
	sw	a0, -108(s0)
	j	.LBB3_15
.LBB3_14:
	.word	0xc28c977
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0xf1b977
	li	a0, -2
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_15:
	.word	0x2f977
	j	.LBB3_16
.LBB3_16:
	.word	0x35dd977
	lwu	a0, -104(s0)
	addiw	a1, a0, 1
	sw	a1, -104(s0)
	andi	a0, a0, 1
	li	a1, 0
	beq	a0, a1, .LBB3_18
	.word	0x2f977
	j	.LBB3_17
.LBB3_17:
	.word	0xacee977
	lb	a0, -108(s0)
	lwu	a1, -104(s0)
	srli	a2, a1, 31
	addw	a1, a1, a2
	sraiw	a1, a1, 1
	addi	a2, s0, -97
	add	a1, a1, a2
	sb	a0, -1(a1)
	j	.LBB3_18
.LBB3_18:
	.word	0x16f0977
	j	.LBB3_5
.LBB3_19:
	.word	0x8144977
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	beq	a0, a1, .LBB3_21
	.word	0x2f977
	j	.LBB3_20
.LBB3_20:
	.word	0xda3c977
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x52b977
	li	a0, -3
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_21:
	.word	0x9dc2977
	lw	a0, -104(s0)
	li	a1, 32
	blt	a0, a1, .LBB3_23
	.word	0x2f977
	j	.LBB3_22
.LBB3_22:
	.word	0xc424977
	lbu	a0, -104(s0)
	andi	a0, a0, 15
	li	a1, 0
	beq	a0, a1, .LBB3_24
	.word	0x2f977
	j	.LBB3_23
.LBB3_23:
	.word	0xd64c977
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x3f7b977
	li	a0, -4
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_24:
	.word	0x2f977
	j	.LBB3_25
.LBB3_25:
	.word	0xc53b977
	lwu	a0, -104(s0)
	srli	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -112(s0)
	ld	a0, -40(s0)
	ld	a0, 8(a0)
	lui	a1, %hi(.L.str.7)
	addi	a1, a1, %lo(.L.str.7)
	csrwi	0xff,0
	call	fopen
	csrwi	0xff,1
	.word	0xddc2977
	sd	a0, -48(s0)
	li	a1, 0
	bne	a0, a1, .LBB3_27
	.word	0x2f977
	j	.LBB3_26
.LBB3_26:
	.word	0x5ecd977
	ld	a0, -40(s0)
	ld	a1, 8(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x374b977
	li	a0, -5
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_27:
	.word	0xc50d977
	ld	a0, -40(s0)
	ld	a0, 16(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	csrwi	0xff,0
	call	fopen
	csrwi	0xff,1
	.word	0xd1c2977
	sd	a0, -56(s0)
	li	a1, 0
	bne	a0, a1, .LBB3_29
	.word	0x2f977
	j	.LBB3_28
.LBB3_28:
	.word	0x523d977
	ld	a0, -40(s0)
	ld	a1, 8(a0)
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x28db977
	li	a0, -6
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_29:
	.word	0xf98977
	ld	a0, -40(s0)
	ld	a0, 24(a0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x1d15977
	li	a1, 69
	bne	a0, a1, .LBB3_31
	.word	0x2f977
	j	.LBB3_30
.LBB3_30:
	.word	0xaf3977
	lw	a1, -112(s0)
	addi	a0, s0, -97
	li	a2, 1
	addi	a3, s0, -1168
	sd	a3, -1184(s0)
	call	set_key
	.word	0xb665977
	ld	a2, -1184(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	ld	a3, -40(s0)
	ld	a3, 8(a3)
	call	encfile
	.word	0xda28977
	sw	a0, -116(s0)
	j	.LBB3_32
.LBB3_31:
	.word	0x903977
	lw	a1, -112(s0)
	addi	a0, s0, -97
	li	a2, 2
	addi	a3, s0, -1168
	sd	a3, -1192(s0)
	call	set_key
	.word	0x4d60977
	ld	a2, -1192(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	ld	a4, -40(s0)
	ld	a3, 8(a4)
	ld	a4, 16(a4)
	call	decfile
	.word	0xdea8977
	sw	a0, -116(s0)
	j	.LBB3_32
.LBB3_32:
	.word	0x2f977
	j	.LBB3_33
.LBB3_33:
	.word	0xcac2977
	ld	a0, -56(s0)
	li	a1, 0
	beq	a0, a1, .LBB3_35
	.word	0x2f977
	j	.LBB3_34
.LBB3_34:
	.word	0x58e8977
	ld	a0, -56(s0)
	csrwi	0xff,0
	call	fclose
	csrwi	0xff,1
	.word	0x2f977
	j	.LBB3_35
.LBB3_35:
	.word	0xcb42977
	ld	a0, -48(s0)
	li	a1, 0
	beq	a0, a1, .LBB3_37
	.word	0x2f977
	j	.LBB3_36
.LBB3_36:
	.word	0x46a8977
	ld	a0, -48(s0)
	csrwi	0xff,0
	call	fclose
	csrwi	0xff,1
	.word	0x2f977
	j	.LBB3_37
.LBB3_37:
	.word	0x4c31977
	lw	a0, -116(s0)
	ld	ra, 1192(sp)
	ld	s0, 1184(sp)
	addi	sp, sp, 1200
	csrwi	0xff,0
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main

	.type	fillrand.a,@object
	.local	fillrand.a
	.comm	fillrand.a,16,8
	.type	fillrand.mt,@object
	.section	.sdata,"aw",@progbits
	.p2align	3
fillrand.mt:
	.quad	1
	.size	fillrand.mt, 8

	.type	fillrand.count,@object
	.p2align	3
fillrand.count:
	.quad	4
	.size	fillrand.count, 8

	.type	fillrand.r,@object
	.section	.sbss,"aw",@nobits
fillrand.r:
	.zero	4
	.size	fillrand.r, 4

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error writing to output file: %s\n"
	.size	.L.str, 34

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"Error reading from input file: %s\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"\nThe input file is corrupt"
	.size	.L.str.2, 27

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"usage: rijndael in_filename out_filename [d/e] key_in_hex\n"
	.size	.L.str.3, 59

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"key must be in hexadecimal notation\n"
	.size	.L.str.4, 37

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"The key value is too long\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"The key length must be 32, 48 or 64 hexadecimal digits\n"
	.size	.L.str.6, 56

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"rb"
	.size	.L.str.7, 3

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"The input file: %s could not be opened\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"wb"
	.size	.L.str.9, 3

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"The output file: %s could not be opened\n"
	.size	.L.str.10, 41

	.ident	"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 5ca54c66862b8edee1bd300bb284b90306eef87b)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fillrand
	.addrsig_sym encfile
	.addrsig_sym fseek
	.addrsig_sym fgetpos
	.addrsig_sym fwrite
	.addrsig_sym feof
	.addrsig_sym fread
	.addrsig_sym encrypt
	.addrsig_sym printf
	.addrsig_sym decfile
	.addrsig_sym decrypt
	.addrsig_sym toupper
	.addrsig_sym fopen
	.addrsig_sym set_key
	.addrsig_sym fclose
	.addrsig_sym fillrand.a
	.addrsig_sym fillrand.mt
	.addrsig_sym fillrand.count
