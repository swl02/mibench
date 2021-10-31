	.file	"aesxam.c"
	.option nopic
	.section	.rodata
	.align	3
.LC0:
	.string	"hacked"
	.text
	.align	2
	.globl	attacked
	.type	attacked, @function
attacked:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	puts
	nop
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
	jr	ra
	.size	attacked, .-attacked
	.align	2
	.globl	fillrand
	.type	fillrand, @function
fillrand:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	lui	a5,%hi(mt.3160)
	ld	a5,%lo(mt.3160)(a5)
	beqz	a5,.L3
	lui	a5,%hi(mt.3160)
	sd	zero,%lo(mt.3160)(a5)
	lui	a5,%hi(a.3159)
	li	a4,61440
	addi	a4,a4,-1293
	sd	a4,%lo(a.3159)(a5)
	lui	a5,%hi(a.3159)
	addi	a5,a5,%lo(a.3159)
	li	a4,12288
	addi	a4,a4,1534
	sd	a4,8(a5)
.L3:
	sw	zero,-20(s0)
	j	.L4
.L6:
	lui	a5,%hi(count.3161)
	ld	a4,%lo(count.3161)(a5)
	li	a5,4
	bne	a4,a5,.L5
	lui	a5,%hi(a.3159)
	ld	a4,%lo(a.3159)(a5)
	li	a5,65536
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,36864
	addi	a5,a5,105
	mul	a4,a4,a5
	lui	a5,%hi(a.3159)
	ld	a5,%lo(a.3159)(a5)
	srli	a5,a5,16
	add	a4,a4,a5
	lui	a5,%hi(a.3159)
	sd	a4,%lo(a.3159)(a5)
	lui	a5,%hi(a.3159)
	ld	a5,%lo(a.3159)(a5)
	slli	a3,a5,16
	lui	a5,%hi(a.3159)
	addi	a5,a5,%lo(a.3159)
	ld	a4,8(a5)
	li	a5,65536
	addi	a5,a5,-1
	and	a4,a4,a5
	li	a5,16384
	addi	a5,a5,1616
	mul	a4,a4,a5
	lui	a5,%hi(a.3159)
	addi	a5,a5,%lo(a.3159)
	ld	a5,8(a5)
	srli	a5,a5,16
	add	a4,a4,a5
	lui	a5,%hi(a.3159)
	addi	a5,a5,%lo(a.3159)
	sd	a4,8(a5)
	lui	a5,%hi(a.3159)
	addi	a5,a5,%lo(a.3159)
	ld	a4,8(a5)
	lui	a5,%hi(r.3162)
	addi	a5,a5,%lo(r.3162)
	add	a4,a3,a4
	sd	a4,0(a5)
	lui	a5,%hi(count.3161)
	sd	zero,%lo(count.3161)(a5)
.L5:
	lui	a5,%hi(count.3161)
	ld	a5,%lo(count.3161)(a5)
	addi	a3,a5,1
	lui	a4,%hi(count.3161)
	sd	a3,%lo(count.3161)(a4)
	lw	a4,-20(s0)
	ld	a3,-40(s0)
	add	a4,a3,a4
	lui	a3,%hi(r.3162)
	addi	a3,a3,%lo(r.3162)
	add	a5,a5,a3
	lbu	a5,0(a5)
	sb	a5,0(a4)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	fillrand, .-fillrand
	.section	.rodata
	.align	3
.LC1:
	.string	"Error writing to output file: %s\n"
	.text
	.align	2
	.globl	encfile
	.type	encfile, @function
encfile:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	addi	s0,sp,112
	sd	a0,-88(s0)
	sd	a1,-96(s0)
	sd	a2,-104(s0)
	sd	a3,-112(s0)
	sd	zero,-24(s0)
	sd	zero,-32(s0)
	addi	a5,s0,-64
	li	a1,16
	mv	a0,a5
	call	fillrand
	li	a2,2
	li	a1,0
	ld	a0,-88(s0)
	call	fseek
	addi	a5,s0,-72
	mv	a1,a5
	ld	a0,-88(s0)
	call	fgetpos
	li	a2,0
	li	a1,0
	ld	a0,-88(s0)
	call	fseek
	addi	a5,s0,-64
	ld	a3,-96(s0)
	li	a2,16
	li	a1,1
	mv	a0,a5
	call	fwrite
	addi	a5,s0,-48
	li	a1,1
	mv	a0,a5
	call	fillrand
	li	a5,15
	sd	a5,-32(s0)
	ld	a5,-72(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	andi	a5,a5,15
	slliw	a4,a5,24
	sraiw	a4,a4,24
	lbu	a5,-48(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	andi	a5,a5,-16
	slliw	a5,a5,24
	sraiw	a5,a5,24
	or	a5,a4,a5
	slliw	a5,a5,24
	sraiw	a5,a5,24
	andi	a5,a5,0xff
	sb	a5,-48(s0)
	j	.L8
.L15:
	li	a4,16
	ld	a5,-32(s0)
	sub	a5,a4,a5
	addi	a4,s0,-48
	add	a5,a4,a5
	ld	a3,-88(s0)
	ld	a2,-32(s0)
	li	a1,1
	mv	a0,a5
	call	fread
	sd	a0,-24(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bltu	a4,a5,.L23
	sd	zero,-24(s0)
	j	.L11
.L12:
	ld	a5,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-32(a5)
	ld	a5,-24(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	lbu	a5,-48(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-32(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L11:
	ld	a4,-24(s0)
	li	a5,15
	bleu	a4,a5,.L12
	addi	a4,s0,-64
	addi	a5,s0,-48
	ld	a2,-104(s0)
	mv	a1,a4
	mv	a0,a5
	call	encrypt
	addi	a5,s0,-64
	ld	a3,-96(s0)
	li	a2,16
	li	a1,1
	mv	a0,a5
	call	fwrite
	mv	a4,a0
	li	a5,16
	beq	a4,a5,.L13
	ld	a1,-112(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,-7
	j	.L22
.L13:
	li	a5,16
	sd	a5,-32(s0)
.L8:
	ld	a5,-88(s0)
	lh	a5,16(a5)
	slli	a5,a5,48
	srli	a5,a5,48
	sext.w	a5,a5
	andi	a5,a5,32
	sext.w	a5,a5
	beqz	a5,.L15
	j	.L10
.L23:
	nop
.L10:
	ld	a4,-32(s0)
	li	a5,15
	bne	a4,a5,.L16
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L16:
	ld	a5,-24(s0)
	beqz	a5,.L17
	j	.L18
.L19:
	ld	a5,-24(s0)
	addi	a4,a5,1
	sd	a4,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	sb	zero,-32(a5)
.L18:
	ld	a4,-24(s0)
	li	a5,15
	bleu	a4,a5,.L19
	sd	zero,-24(s0)
	j	.L20
.L21:
	ld	a5,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-32(a5)
	ld	a5,-24(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	lbu	a5,-48(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	ld	a5,-24(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-32(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L20:
	ld	a4,-24(s0)
	li	a5,15
	bleu	a4,a5,.L21
	addi	a4,s0,-64
	addi	a5,s0,-48
	ld	a2,-104(s0)
	mv	a1,a4
	mv	a0,a5
	call	encrypt
	addi	a5,s0,-64
	ld	a3,-96(s0)
	li	a2,16
	li	a1,1
	mv	a0,a5
	call	fwrite
	mv	a4,a0
	li	a5,16
	beq	a4,a5,.L17
	ld	a1,-112(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,-8
	j	.L22
.L17:
	li	a5,0
.L22:
	mv	a0,a5
	ld	ra,104(sp)
	ld	s0,96(sp)
	addi	sp,sp,112
	jr	ra
	.size	encfile, .-encfile
	.section	.rodata
	.align	3
.LC2:
	.string	"Error reading from input file: %s\n"
	.align	3
.LC3:
	.string	"\nThe input file is corrupt"
	.text
	.align	2
	.globl	decfile
	.type	decfile, @function
decfile:
	addi	sp,sp,-160
	sd	ra,152(sp)
	sd	s0,144(sp)
	addi	s0,sp,160
	sd	a0,-120(s0)
	sd	a1,-128(s0)
	sd	a2,-136(s0)
	sd	a3,-144(s0)
	sd	a4,-152(s0)
	addi	a5,s0,-72
	ld	a3,-120(s0)
	li	a2,16
	li	a1,1
	mv	a0,a5
	call	fread
	mv	a4,a0
	li	a5,16
	beq	a4,a5,.L25
	ld	a1,-144(s0)
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	printf
	li	a5,9
	j	.L37
.L25:
	addi	a5,s0,-88
	ld	a3,-120(s0)
	li	a2,16
	li	a1,1
	mv	a0,a5
	call	fread
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beqz	a5,.L27
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,16
	beq	a4,a5,.L27
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	printf
	li	a5,-10
	j	.L37
.L27:
	addi	a4,s0,-104
	addi	a5,s0,-88
	ld	a2,-136(s0)
	mv	a1,a4
	mv	a0,a5
	call	decrypt
	sw	zero,-36(s0)
	j	.L28
.L29:
	lw	a5,-36(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-88(a5)
	lw	a5,-36(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	lbu	a5,-56(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-88(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L28:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L29
	lbu	a5,-104(s0)
	sext.w	a5,a5
	andi	a5,a5,15
	sw	a5,-44(s0)
	li	a5,15
	sw	a5,-40(s0)
	addi	a5,s0,-72
	sd	a5,-24(s0)
	addi	a5,s0,-88
	sd	a5,-32(s0)
.L35:
	ld	a3,-120(s0)
	li	a2,16
	li	a1,1
	ld	a0,-24(s0)
	call	fread
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,16
	bne	a4,a5,.L39
	lw	a5,-40(s0)
	li	a4,16
	sub	a5,a4,a5
	addi	a4,s0,-104
	add	a5,a4,a5
	lw	a4,-40(s0)
	ld	a3,-128(s0)
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	fwrite
	mv	a4,a0
	lw	a5,-40(s0)
	beq	a4,a5,.L32
	ld	a1,-152(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,-11
	j	.L37
.L32:
	addi	a5,s0,-104
	ld	a2,-136(s0)
	mv	a1,a5
	ld	a0,-24(s0)
	call	decrypt
	sw	zero,-36(s0)
	j	.L33
.L34:
	lw	a5,-36(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a4,-88(a5)
	lw	a5,-36(s0)
	ld	a3,-32(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	xor	a5,a4,a5
	andi	a4,a5,0xff
	lw	a5,-36(s0)
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-88(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L33:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,15
	ble	a4,a5,.L34
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	ld	a5,-24(s0)
	sd	a5,-56(s0)
	ld	a5,-32(s0)
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	j	.L35
.L39:
	nop
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,15
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-40(s0)
	li	a4,1
	lw	a5,-40(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	beqz	a5,.L36
	lw	a5,-40(s0)
	addi	a4,s0,-104
	add	a5,a4,a5
	lw	a4,-44(s0)
	ld	a3,-128(s0)
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	fwrite
	mv	a4,a0
	lw	a5,-44(s0)
	beq	a4,a5,.L36
	ld	a1,-152(s0)
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	li	a5,-12
	j	.L37
.L36:
	li	a5,0
.L37:
	mv	a0,a5
	ld	ra,152(sp)
	ld	s0,144(sp)
	addi	sp,sp,160
	jr	ra
	.size	decfile, .-decfile
	.section	.rodata
	.align	3
.LC4:
	.string	"usage: rijndael in_filename out_filename [d/e] key_in_hex"
	.align	3
.LC5:
	.string	"key must be in hexadecimal notation"
	.align	3
.LC6:
	.string	"The key value is too long"
	.align	3
.LC7:
	.string	"The key length must be 32, 48 or 64 hexadecimal digits"
	.align	3
.LC8:
	.string	"rb"
	.align	3
.LC9:
	.string	"The input file: %s could not be opened\n"
	.align	3
.LC10:
	.string	"wb"
	.align	3
.LC11:
	.string	"The output file: %s could not be opened\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-1168
	sd	ra,1160(sp)
	sd	s0,1152(sp)
	addi	s0,sp,1168
	mv	a5,a0
	sd	a1,-1168(s0)
	sw	a5,-1156(s0)
	sd	zero,-24(s0)
	sd	zero,-32(s0)
	sw	zero,-44(s0)
	sw	zero,-48(s0)
	sw	zero,-56(s0)
	sw	zero,-52(s0)
	lw	a5,-1156(s0)
	sext.w	a4,a5
	li	a5,5
	bne	a4,a5,.L41
	ld	a5,-1168(s0)
	addi	a5,a5,24
	ld	a5,0(a5)
	lbu	a5,0(a5)
	sb	a5,-57(s0)
	call	__locale_ctype_ptr
	mv	a4,a0
	lbu	a5,-57(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L42
	lbu	a5,-57(s0)
	sext.w	a5,a5
	addiw	a5,a5,-32
	sext.w	a5,a5
	j	.L43
.L42:
	lbu	a5,-57(s0)
	sext.w	a5,a5
.L43:
	mv	a4,a5
	li	a5,68
	beq	a4,a5,.L44
	ld	a5,-1168(s0)
	addi	a5,a5,24
	ld	a5,0(a5)
	lbu	a5,0(a5)
	sb	a5,-58(s0)
	call	__locale_ctype_ptr
	mv	a4,a0
	lbu	a5,-58(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L45
	lbu	a5,-58(s0)
	sext.w	a5,a5
	addiw	a5,a5,-32
	sext.w	a5,a5
	j	.L46
.L45:
	lbu	a5,-58(s0)
	sext.w	a5,a5
.L46:
	mv	a4,a5
	li	a5,69
	beq	a4,a5,.L44
.L41:
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	puts
	li	a5,-1
	sw	a5,-52(s0)
	j	.L47
.L44:
	ld	a5,-1168(s0)
	ld	a5,32(a5)
	sd	a5,-40(s0)
	sw	zero,-44(s0)
	j	.L48
.L55:
	ld	a5,-40(s0)
	addi	a4,a5,1
	sd	a4,-40(s0)
	lbu	a5,0(a5)
	sb	a5,-59(s0)
	call	__locale_ctype_ptr
	mv	a4,a0
	lbu	a5,-59(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L49
	lbu	a5,-59(s0)
	sext.w	a5,a5
	addiw	a5,a5,-32
	sext.w	a5,a5
	j	.L50
.L49:
	lbu	a5,-59(s0)
	sext.w	a5,a5
.L50:
	sb	a5,-60(s0)
	lbu	a5,-60(s0)
	andi	a4,a5,0xff
	li	a5,47
	bleu	a4,a5,.L51
	lbu	a5,-60(s0)
	andi	a4,a5,0xff
	li	a5,57
	bgtu	a4,a5,.L51
	lw	a5,-48(s0)
	slliw	a5,a5,4
	sext.w	a4,a5
	lbu	a5,-60(s0)
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-48
	sw	a5,-48(s0)
	j	.L52
.L51:
	lbu	a5,-60(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L53
	lbu	a5,-60(s0)
	andi	a4,a5,0xff
	li	a5,70
	bgtu	a4,a5,.L53
	lw	a5,-48(s0)
	slliw	a5,a5,4
	sext.w	a4,a5
	lbu	a5,-60(s0)
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-55
	sw	a5,-48(s0)
	j	.L52
.L53:
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	puts
	li	a5,-2
	sw	a5,-52(s0)
	j	.L47
.L52:
	lw	a5,-44(s0)
	addiw	a4,a5,1
	sw	a4,-44(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beqz	a5,.L48
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-48(s0)
	andi	a4,a4,0xff
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-80(a5)
.L48:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,63
	bgt	a4,a5,.L54
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bnez	a5,.L55
.L54:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	beqz	a5,.L56
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	puts
	li	a5,-3
	sw	a5,-52(s0)
	j	.L47
.L56:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,31
	ble	a4,a5,.L57
	lw	a5,-44(s0)
	andi	a5,a5,15
	sext.w	a5,a5
	beqz	a5,.L58
.L57:
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	puts
	li	a5,-4
	sw	a5,-52(s0)
	j	.L47
.L58:
	lw	a5,-44(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-56(s0)
	ld	a5,-1168(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	lui	a5,%hi(.LC8)
	addi	a1,a5,%lo(.LC8)
	mv	a0,a4
	call	fopen
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	bnez	a5,.L59
	ld	a5,-1168(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	li	a5,-5
	sw	a5,-52(s0)
	j	.L47
.L59:
	ld	a5,-1168(s0)
	addi	a5,a5,16
	ld	a4,0(a5)
	lui	a5,%hi(.LC10)
	addi	a1,a5,%lo(.LC10)
	mv	a0,a4
	call	fopen
	sd	a0,-32(s0)
	ld	a5,-32(s0)
	bnez	a5,.L60
	ld	a5,-1168(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	li	a5,-6
	sw	a5,-52(s0)
	j	.L47
.L60:
	ld	a5,-1168(s0)
	addi	a5,a5,24
	ld	a5,0(a5)
	lbu	a5,0(a5)
	sb	a5,-61(s0)
	call	__locale_ctype_ptr
	mv	a4,a0
	lbu	a5,-61(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L61
	lbu	a5,-61(s0)
	sext.w	a5,a5
	addiw	a5,a5,-32
	sext.w	a5,a5
	j	.L62
.L61:
	lbu	a5,-61(s0)
	sext.w	a5,a5
.L62:
	mv	a4,a5
	li	a5,69
	bne	a4,a5,.L63
	lw	a4,-56(s0)
	addi	a3,s0,-1144
	addi	a5,s0,-96
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	set_key
	ld	a5,-1168(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	addi	a5,s0,-1144
	mv	a3,a4
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	encfile
	mv	a5,a0
	sw	a5,-52(s0)
	j	.L47
.L63:
	lw	a4,-56(s0)
	addi	a3,s0,-1144
	addi	a5,s0,-96
	li	a2,2
	mv	a1,a4
	mv	a0,a5
	call	set_key
	ld	a5,-1168(s0)
	addi	a5,a5,8
	ld	a3,0(a5)
	ld	a5,-1168(s0)
	addi	a5,a5,16
	ld	a4,0(a5)
	addi	a5,s0,-1144
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	decfile
	mv	a5,a0
	sw	a5,-52(s0)
.L47:
	ld	a5,-32(s0)
	beqz	a5,.L64
	ld	a0,-32(s0)
	call	fclose
.L64:
	ld	a5,-24(s0)
	beqz	a5,.L65
	ld	a0,-24(s0)
	call	fclose
.L65:
	lw	a5,-52(s0)
	mv	a0,a5
	ld	ra,1160(sp)
	ld	s0,1152(sp)
	addi	sp,sp,1168
	jr	ra
	.size	main, .-main
	.section	.sdata,"aw",@progbits
	.align	3
	.type	mt.3160, @object
	.size	mt.3160, 8
mt.3160:
	.dword	1
	.local	a.3159
	.comm	a.3159,16,8
	.align	3
	.type	count.3161, @object
	.size	count.3161, 8
count.3161:
	.dword	4
	.local	r.3162
	.comm	r.3162,4,8
	.ident	"GCC: (GNU) 7.2.0"
