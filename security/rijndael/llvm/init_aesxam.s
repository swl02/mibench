	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0"
	.file	"aesxam.c"
	.globl	fillrand
	.p2align	2
	.type	fillrand,@function
fillrand:
	.word	0x3e8977
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
	.word	0x3e9977
	j	.LBB0_1
.LBB0_1:
	.word	0x3ea977
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
	.word	0x3eb977
	li	a0, 0
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_3:
	.word	0x3ec977
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB0_8
	.word	0x3ed977
	j	.LBB0_4
.LBB0_4:
	.word	0x3ee977
	lui	a0, %hi(fillrand.count)
	ld	a0, %lo(fillrand.count)(a0)
	li	a1, 4
	bne	a0, a1, .LBB0_6
	.word	0x3ef977
	j	.LBB0_5
.LBB0_5:
	.word	0x3f0977
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
	.word	0x3f1977
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
	.word	0x3f2977
	lw	a0, -32(s0)
	addiw	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_8:
	.word	0x3f3977
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
	.word	0x3f4977
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
	.word	0x3f5977
	ld	a1, -160(s0)
	ld	a0, -32(s0)
	li	a2, 2
	csrwi	0xff,0
	call	fseek
	csrwi	0xff,1
	.word	0x3f6977
	ld	a0, -32(s0)
	addi	a1, s0, -104
	sd	a1, -128(s0)
	csrwi	0xff,0
	call	fgetpos
	csrwi	0xff,1
	.word	0x3f7977
	ld	a2, -160(s0)
	ld	a0, -32(s0)
	mv	a1, a2
	csrwi	0xff,0
	call	fseek
	csrwi	0xff,1
	.word	0x3f8977
	ld	a2, -152(s0)
	ld	a0, -144(s0)
	ld	a3, -40(s0)
	li	a1, 1
	sd	a1, -136(s0)
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0x3f9977
	ld	a1, -136(s0)
	addi	a0, s0, -72
	call	fillrand
	.word	0x3fa977
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
	.word	0x3fb977
	ld	a0, -32(s0)
	call	feof
	.word	0x3fc977
	li	a1, 0
	bne	a0, a1, .LBB1_11
	.word	0x3fd977
	j	.LBB1_2
.LBB1_2:
	.word	0x3fe977
	ld	a2, -120(s0)
	addi	a0, s0, -72
	sub	a0, a0, a2
	addi	a0, a0, 16
	ld	a3, -32(s0)
	li	a1, 1
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0x3ff977
	sd	a0, -112(s0)
	ld	a0, -112(s0)
	ld	a1, -120(s0)
	bgeu	a0, a1, .LBB1_4
	.word	0x400977
	j	.LBB1_3
.LBB1_3:
	.word	0x401977
	j	.LBB1_11
.LBB1_4:
	.word	0x402977
	li	a0, 0
	sd	a0, -112(s0)
	j	.LBB1_5
.LBB1_5:
	.word	0x403977
	ld	a1, -112(s0)
	li	a0, 15
	bltu	a0, a1, .LBB1_8
	.word	0x404977
	j	.LBB1_6
.LBB1_6:
	.word	0x405977
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
	.word	0x406977
	ld	a0, -112(s0)
	addi	a0, a0, 1
	sd	a0, -112(s0)
	j	.LBB1_5
.LBB1_8:
	.word	0x407977
	ld	a2, -48(s0)
	addi	a0, s0, -72
	addi	a1, s0, -88
	sd	a1, -176(s0)
	call	encrypt
	.word	0x408977
	ld	a0, -176(s0)
	ld	a3, -40(s0)
	li	a1, 1
	li	a2, 16
	sd	a2, -168(s0)
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0x409977
	ld	a1, -168(s0)
	beq	a0, a1, .LBB1_10
	.word	0x40a977
	j	.LBB1_9
.LBB1_9:
	.word	0x40b977
	ld	a1, -56(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x40c977
	li	a0, -7
	sw	a0, -20(s0)
	j	.LBB1_25
.LBB1_10:
	.word	0x40d977
	li	a0, 16
	sd	a0, -120(s0)
	j	.LBB1_1
.LBB1_11:
	.word	0x40e977
	ld	a0, -120(s0)
	li	a1, 15
	bne	a0, a1, .LBB1_13
	.word	0x40f977
	j	.LBB1_12
.LBB1_12:
	.word	0x410977
	ld	a0, -112(s0)
	addi	a0, a0, 1
	sd	a0, -112(s0)
	j	.LBB1_13
.LBB1_13:
	.word	0x411977
	ld	a0, -112(s0)
	li	a1, 0
	beq	a0, a1, .LBB1_24
	.word	0x412977
	j	.LBB1_14
.LBB1_14:
	.word	0x413977
	j	.LBB1_15
.LBB1_15:
	.word	0x414977
	ld	a1, -112(s0)
	li	a0, 15
	bltu	a0, a1, .LBB1_17
	.word	0x415977
	j	.LBB1_16
.LBB1_16:
	.word	0x416977
	ld	a1, -112(s0)
	addi	a0, a1, 1
	sd	a0, -112(s0)
	addi	a0, s0, -72
	add	a1, a0, a1
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB1_15
.LBB1_17:
	.word	0x417977
	li	a0, 0
	sd	a0, -112(s0)
	j	.LBB1_18
.LBB1_18:
	.word	0x418977
	ld	a1, -112(s0)
	li	a0, 15
	bltu	a0, a1, .LBB1_21
	.word	0x419977
	j	.LBB1_19
.LBB1_19:
	.word	0x41a977
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
	.word	0x41b977
	ld	a0, -112(s0)
	addi	a0, a0, 1
	sd	a0, -112(s0)
	j	.LBB1_18
.LBB1_21:
	.word	0x41c977
	ld	a2, -48(s0)
	addi	a0, s0, -72
	addi	a1, s0, -88
	sd	a1, -192(s0)
	call	encrypt
	.word	0x41d977
	ld	a0, -192(s0)
	ld	a3, -40(s0)
	li	a1, 1
	li	a2, 16
	sd	a2, -184(s0)
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0x41e977
	ld	a1, -184(s0)
	beq	a0, a1, .LBB1_23
	.word	0x41f977
	j	.LBB1_22
.LBB1_22:
	.word	0x420977
	ld	a1, -56(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x421977
	li	a0, -8
	sw	a0, -20(s0)
	j	.LBB1_25
.LBB1_23:
	.word	0x422977
	j	.LBB1_24
.LBB1_24:
	.word	0x423977
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB1_25
.LBB1_25:
	.word	0x424977
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
	.word	0x425977
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
	.word	0x426977
	ld	a1, -160(s0)
	beq	a0, a1, .LBB2_2
	.word	0x427977
	j	.LBB2_1
.LBB2_1:
	.word	0x428977
	ld	a1, -56(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x429977
	li	a0, 9
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_2:
	.word	0x42a977
	ld	a3, -32(s0)
	addi	a0, s0, -96
	li	a1, 1
	li	a2, 16
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0x42b977
	sw	a0, -140(s0)
	lw	a0, -140(s0)
	li	a1, 0
	beq	a0, a1, .LBB2_5
	.word	0x42c977
	j	.LBB2_3
.LBB2_3:
	.word	0x42d977
	lw	a0, -140(s0)
	li	a1, 16
	beq	a0, a1, .LBB2_5
	.word	0x42e977
	j	.LBB2_4
.LBB2_4:
	.word	0x42f977
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x430977
	li	a0, -10
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_5:
	.word	0x431977
	ld	a2, -48(s0)
	addi	a0, s0, -96
	addi	a1, s0, -112
	call	decrypt
	.word	0x432977
	li	a0, 0
	sw	a0, -140(s0)
	j	.LBB2_6
.LBB2_6:
	.word	0x433977
	lw	a1, -140(s0)
	li	a0, 15
	blt	a0, a1, .LBB2_9
	.word	0x434977
	j	.LBB2_7
.LBB2_7:
	.word	0x435977
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
	.word	0x436977
	lw	a0, -140(s0)
	addiw	a0, a0, 1
	sw	a0, -140(s0)
	j	.LBB2_6
.LBB2_9:
	.word	0x437977
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
	.word	0x438977
	ld	a0, -120(s0)
	ld	a3, -32(s0)
	li	a1, 1
	li	a2, 16
	sd	a2, -168(s0)
	csrwi	0xff,0
	call	fread
	csrwi	0xff,1
	.word	0x439977
	ld	a1, -168(s0)
	sw	a0, -140(s0)
	lw	a0, -140(s0)
	beq	a0, a1, .LBB2_12
	.word	0x43a977
	j	.LBB2_11
.LBB2_11:
	.word	0x43b977
	j	.LBB2_19
.LBB2_12:
	.word	0x43c977
	lw	a2, -144(s0)
	addi	a0, s0, -112
	sub	a0, a0, a2
	addi	a0, a0, 16
	ld	a3, -40(s0)
	li	a1, 1
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0x43d977
	lw	a1, -144(s0)
	beq	a0, a1, .LBB2_14
	.word	0x43e977
	j	.LBB2_13
.LBB2_13:
	.word	0x43f977
	ld	a1, -64(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x440977
	li	a0, -11
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_14:
	.word	0x441977
	ld	a0, -120(s0)
	ld	a2, -48(s0)
	addi	a1, s0, -112
	call	decrypt
	.word	0x442977
	li	a0, 0
	sw	a0, -140(s0)
	j	.LBB2_15
.LBB2_15:
	.word	0x443977
	lw	a1, -140(s0)
	li	a0, 15
	blt	a0, a1, .LBB2_18
	.word	0x444977
	j	.LBB2_16
.LBB2_16:
	.word	0x445977
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
	.word	0x446977
	lw	a0, -140(s0)
	addiw	a0, a0, 1
	sw	a0, -140(s0)
	j	.LBB2_15
.LBB2_18:
	.word	0x447977
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
	.word	0x448977
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
	.word	0x449977
	j	.LBB2_20
.LBB2_20:
	.word	0x44a977
	lw	a1, -144(s0)
	addi	a0, s0, -112
	add	a0, a0, a1
	lw	a2, -148(s0)
	ld	a3, -40(s0)
	li	a1, 1
	csrwi	0xff,0
	call	fwrite
	csrwi	0xff,1
	.word	0x44b977
	lw	a1, -148(s0)
	beq	a0, a1, .LBB2_22
	.word	0x44c977
	j	.LBB2_21
.LBB2_21:
	.word	0x44d977
	ld	a1, -64(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x44e977
	li	a0, -12
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_22:
	.word	0x44f977
	j	.LBB2_23
.LBB2_23:
	.word	0x450977
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB2_24
.LBB2_24:
	.word	0x451977
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
	.word	0x452977
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
	.word	0x453977
	j	.LBB3_1
.LBB3_1:
	.word	0x454977
	ld	a0, -40(s0)
	ld	a0, 24(a0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x455977
	li	a1, 68
	beq	a0, a1, .LBB3_4
	.word	0x456977
	j	.LBB3_2
.LBB3_2:
	.word	0x457977
	ld	a0, -40(s0)
	ld	a0, 24(a0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x458977
	li	a1, 69
	beq	a0, a1, .LBB3_4
	.word	0x459977
	j	.LBB3_3
.LBB3_3:
	.word	0x45a977
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x45b977
	li	a0, -1
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_4:
	.word	0x45c977
	ld	a0, -40(s0)
	ld	a0, 32(a0)
	sd	a0, -64(s0)
	li	a0, 0
	sw	a0, -104(s0)
	j	.LBB3_5
.LBB3_5:
	.word	0x45d977
	lw	a1, -104(s0)
	li	a2, 0
	li	a0, 63
	sd	a2, -1176(s0)
	blt	a0, a1, .LBB3_7
	.word	0x45e977
	j	.LBB3_6
.LBB3_6:
	.word	0x45f977
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	snez	a0, a0
	sd	a0, -1176(s0)
	j	.LBB3_7
.LBB3_7:
	.word	0x460977
	ld	a0, -1176(s0)
	andi	a0, a0, 1
	li	a1, 0
	beq	a0, a1, .LBB3_19
	.word	0x461977
	j	.LBB3_8
.LBB3_8:
	.word	0x462977
	ld	a0, -64(s0)
	addi	a1, a0, 1
	sd	a1, -64(s0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x463977
	sb	a0, -65(s0)
	lbu	a0, -65(s0)
	li	a1, 48
	blt	a0, a1, .LBB3_11
	.word	0x464977
	j	.LBB3_9
.LBB3_9:
	.word	0x465977
	lbu	a1, -65(s0)
	li	a0, 57
	blt	a0, a1, .LBB3_11
	.word	0x466977
	j	.LBB3_10
.LBB3_10:
	.word	0x467977
	lw	a0, -108(s0)
	slliw	a0, a0, 4
	lbu	a1, -65(s0)
	addw	a0, a0, a1
	addiw	a0, a0, -48
	sw	a0, -108(s0)
	j	.LBB3_16
.LBB3_11:
	.word	0x468977
	lbu	a0, -65(s0)
	li	a1, 65
	blt	a0, a1, .LBB3_14
	.word	0x469977
	j	.LBB3_12
.LBB3_12:
	.word	0x46a977
	lbu	a1, -65(s0)
	li	a0, 70
	blt	a0, a1, .LBB3_14
	.word	0x46b977
	j	.LBB3_13
.LBB3_13:
	.word	0x46c977
	lw	a0, -108(s0)
	slliw	a0, a0, 4
	lbu	a1, -65(s0)
	addw	a0, a0, a1
	addiw	a0, a0, -55
	sw	a0, -108(s0)
	j	.LBB3_15
.LBB3_14:
	.word	0x46d977
	lui	a0, %hi(.L.str.4)
	addi	a0, a0, %lo(.L.str.4)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x46e977
	li	a0, -2
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_15:
	.word	0x46f977
	j	.LBB3_16
.LBB3_16:
	.word	0x470977
	lwu	a0, -104(s0)
	addiw	a1, a0, 1
	sw	a1, -104(s0)
	andi	a0, a0, 1
	li	a1, 0
	beq	a0, a1, .LBB3_18
	.word	0x471977
	j	.LBB3_17
.LBB3_17:
	.word	0x472977
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
	.word	0x473977
	j	.LBB3_5
.LBB3_19:
	.word	0x474977
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	beq	a0, a1, .LBB3_21
	.word	0x475977
	j	.LBB3_20
.LBB3_20:
	.word	0x476977
	lui	a0, %hi(.L.str.5)
	addi	a0, a0, %lo(.L.str.5)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x477977
	li	a0, -3
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_21:
	.word	0x478977
	lw	a0, -104(s0)
	li	a1, 32
	blt	a0, a1, .LBB3_23
	.word	0x479977
	j	.LBB3_22
.LBB3_22:
	.word	0x47a977
	lbu	a0, -104(s0)
	andi	a0, a0, 15
	li	a1, 0
	beq	a0, a1, .LBB3_24
	.word	0x47b977
	j	.LBB3_23
.LBB3_23:
	.word	0x47c977
	lui	a0, %hi(.L.str.6)
	addi	a0, a0, %lo(.L.str.6)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x47d977
	li	a0, -4
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_24:
	.word	0x47e977
	j	.LBB3_25
.LBB3_25:
	.word	0x47f977
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
	.word	0x480977
	sd	a0, -48(s0)
	li	a1, 0
	bne	a0, a1, .LBB3_27
	.word	0x481977
	j	.LBB3_26
.LBB3_26:
	.word	0x482977
	ld	a0, -40(s0)
	ld	a1, 8(a0)
	lui	a0, %hi(.L.str.8)
	addi	a0, a0, %lo(.L.str.8)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x483977
	li	a0, -5
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_27:
	.word	0x484977
	ld	a0, -40(s0)
	ld	a0, 16(a0)
	lui	a1, %hi(.L.str.9)
	addi	a1, a1, %lo(.L.str.9)
	csrwi	0xff,0
	call	fopen
	csrwi	0xff,1
	.word	0x485977
	sd	a0, -56(s0)
	li	a1, 0
	bne	a0, a1, .LBB3_29
	.word	0x486977
	j	.LBB3_28
.LBB3_28:
	.word	0x487977
	ld	a0, -40(s0)
	ld	a1, 8(a0)
	lui	a0, %hi(.L.str.10)
	addi	a0, a0, %lo(.L.str.10)
	csrwi	0xff,0
	call	printf
	csrwi	0xff,1
	.word	0x488977
	li	a0, -6
	sw	a0, -116(s0)
	j	.LBB3_33
.LBB3_29:
	.word	0x489977
	ld	a0, -40(s0)
	ld	a0, 24(a0)
	lbu	a0, 0(a0)
	csrwi	0xff,0
	call	toupper
	csrwi	0xff,1
	.word	0x48a977
	li	a1, 69
	bne	a0, a1, .LBB3_31
	.word	0x48b977
	j	.LBB3_30
.LBB3_30:
	.word	0x48c977
	lw	a1, -112(s0)
	addi	a0, s0, -97
	li	a2, 1
	addi	a3, s0, -1168
	sd	a3, -1184(s0)
	call	set_key
	.word	0x48d977
	ld	a2, -1184(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	ld	a3, -40(s0)
	ld	a3, 8(a3)
	call	encfile
	.word	0x48e977
	sw	a0, -116(s0)
	j	.LBB3_32
.LBB3_31:
	.word	0x48f977
	lw	a1, -112(s0)
	addi	a0, s0, -97
	li	a2, 2
	addi	a3, s0, -1168
	sd	a3, -1192(s0)
	call	set_key
	.word	0x490977
	ld	a2, -1192(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	ld	a4, -40(s0)
	ld	a3, 8(a4)
	ld	a4, 16(a4)
	call	decfile
	.word	0x491977
	sw	a0, -116(s0)
	j	.LBB3_32
.LBB3_32:
	.word	0x492977
	j	.LBB3_33
.LBB3_33:
	.word	0x493977
	ld	a0, -56(s0)
	li	a1, 0
	beq	a0, a1, .LBB3_35
	.word	0x494977
	j	.LBB3_34
.LBB3_34:
	.word	0x495977
	ld	a0, -56(s0)
	csrwi	0xff,0
	call	fclose
	csrwi	0xff,1
	.word	0x496977
	j	.LBB3_35
.LBB3_35:
	.word	0x497977
	ld	a0, -48(s0)
	li	a1, 0
	beq	a0, a1, .LBB3_37
	.word	0x498977
	j	.LBB3_36
.LBB3_36:
	.word	0x499977
	ld	a0, -48(s0)
	csrwi	0xff,0
	call	fclose
	csrwi	0xff,1
	.word	0x49a977
	j	.LBB3_37
.LBB3_37:
	.word	0x49b977
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
