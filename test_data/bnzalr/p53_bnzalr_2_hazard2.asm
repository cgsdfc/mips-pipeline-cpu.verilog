	lw $1, 8188($0)
	li $2, -640918154
	addu $2, $1, $2
	li $3, 98645670
	li $4, -1624851170
	xor $6, $2, $3
	li $7, 2048106066
	addu $20, $7, $0
	nop
	nop
	subu $20, $7, $2
	bne $20, $7, skip0
	nop
	addiu $2, $2, 21459
skip0:	sw $2, 0($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $25, 1601349932
	addu $18, $25, $2
	nop
	addu $18, $25, $0
	nop
	bne $18, $25, skip1
	nop
	addiu $2, $2, 6254
skip1:	sw $2, 4($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $9, 1587507069
	addu $27, $9, $2
	or $27, $9, $0
	nop
	nop
	bne $27, $9, skip2
	nop
	addiu $2, $2, 27677
skip2:	sw $2, 8($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $8, -997281881
	addu $22, $8, $0
	nop
	nop
	or $22, $8, $2
	bne $22, $8, skip3
	nop
	addiu $2, $2, 13284
skip3:	sw $2, 12($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $17, 1605460126
	addu $14, $17, $0
	nop
	xor $14, $17, $2
	nop
	bne $14, $17, skip4
	nop
	addiu $2, $2, 4388
skip4:	sw $2, 16($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $23, 1509167303
	addu $22, $23, $2
	xor $22, $23, $0
	nop
	nop
	bne $22, $23, skip5
	nop
	addiu $2, $2, 4903
skip5:	sw $2, 20($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $12, -806349305
	addu $9, $12, $2
	nop
	nop
	or $9, $12, $0
	bne $9, $12, skip6
	nop
	addiu $2, $2, 15069
skip6:	sw $2, 24($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $15, 1857208484
	addu $12, $15, $0
	nop
	subu $12, $15, $2
	nop
	beq $12, $15, skip7
	nop
	addiu $2, $2, 18100
skip7:	sw $2, 28($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $14, 672090109
	addu $24, $14, $0
	addu $24, $14, $2
	nop
	nop
	beq $24, $14, skip8
	nop
	addiu $2, $2, 26771
skip8:	sw $2, 32($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $30, 487927661
	addiu $27, $30, 7212
	nop
	nop
	sll $27, $30, 13
	bne $30, $27, skip9
	nop
	subu $2, $0, $2
skip9:	sw $2, 36($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $7, -1248785669
	addiu $11, $7, 6321
	nop
	addiu $11, $7, 4863
	nop
	bne $7, $11, skip10
	nop
	subu $2, $0, $2
skip10:	sw $2, 40($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $25, -52765739
	addiu $19, $25, 0
	sll $19, $25, 12
	nop
	nop
	bne $25, $19, skip11
	nop
	subu $2, $0, $2
skip11:	sw $2, 44($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $25, 651322585
	addiu $14, $25, 29249
	nop
	nop
	ori $14, $25, 20199
	bne $25, $14, skip12
	nop
	subu $2, $0, $2
skip12:	sw $2, 48($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $7, 374533808
	addiu $16, $7, 0
	nop
	addiu $16, $7, 3786
	nop
	bne $7, $16, skip13
	nop
	subu $2, $0, $2
skip13:	sw $2, 52($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $19, 836347978
	addiu $12, $19, 0
	srl $12, $19, 31
	nop
	nop
	bne $19, $12, skip14
	nop
	subu $2, $0, $2
skip14:	sw $2, 56($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $16, -2039059394
	addiu $14, $16, 8471
	nop
	nop
	srl $14, $16, 20
	beq $16, $14, skip15
	nop
	subu $2, $0, $2
skip15:	sw $2, 60($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $26, 1794378133
	addiu $8, $26, 11475
	nop
	addiu $8, $26, 8885
	nop
	bne $26, $8, skip16
	nop
	subu $2, $0, $2
skip16:	sw $2, 64($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $25, 259728869
	addiu $11, $25, 26890
	sll $11, $25, 25
	nop
	nop
	beq $25, $11, skip17
	nop
	subu $2, $0, $2
skip17:	sw $2, 68($0)
	addu $2, $6, $4
	addu $23, $2, $22
	lui $22, 18102
	lui $23, 18102
	nop
beg18:	beq $22, $23, skip18
	addu $22, $0, $0
	beq $0, $0, beg18
	subu $23, $23, $23
skip18:	sw $23, 72($0)
	lui $22, 18102
	nop
	lui $23, 4498
beg19:	bne $22, $23, skip19
	addu $23, $0, $0
	beq $1, $1, beg19
	addu $22, $23, $2
skip19:	sw $22, 76($0)
	li $23, -815629224
	sw $23, 80($0)
	subu $27, $23, $2
	nop
	nop
	lw $27, 80($0)
	beq $23, $27, skip20
	nop
	xor $6, $2, $3
skip20:		addu $2, $6, $4
	li $17, 1160735936
	sw $17, 84($0)
	subu $10, $17, $2
	nop
	lw $10, 84($0)
	nop
	beq $17, $10, skip21
	nop
	xor $6, $2, $3
skip21:		addu $2, $6, $4
	li $21, -1833570878
	sw $21, 88($0)
	subu $7, $21, $2
	lw $7, 88($0)
	nop
	nop
	beq $7, $21, skip22
	nop
	xor $6, $2, $3
skip22:		addu $2, $6, $4
	li $26, -1850306212
	sw $26, 92($0)
	subu $20, $26, $2
	nop
	nop
	lw $20, 92($0)
	bne $26, $20, skip23
	nop
	xor $6, $2, $3
skip23:		addu $2, $6, $4
	li $27, -597936371
	sw $27, 96($0)
	subu $16, $27, $2
	nop
	lw $16, 96($0)
	nop
	beq $27, $16, skip24
	nop
	xor $6, $2, $3
skip24:		addu $2, $6, $4
	li $16, -377789862
	sw $16, 100($0)
	subu $13, $16, $2
	lw $13, 100($0)
	nop
	nop
	beq $13, $16, skip25
	nop
	xor $6, $2, $3
skip25:		addu $2, $6, $4
	li $12, 282173773
	sw $12, 104($0)
	subu $27, $12, $2
	nop
	nop
	lw $27, 104($0)
	bne $27, $12, skip26
	nop
	xor $6, $2, $3
skip26:		addu $2, $6, $4
	li $21, -1219984655
	sw $21, 108($0)
	subu $27, $21, $2
	nop
	lw $27, 108($0)
	nop
	beq $21, $27, skip27
	nop
	xor $6, $2, $3
skip27:		addu $2, $6, $4
	li $7, 1664261591
	sw $7, 112($0)
	subu $21, $7, $2
	lw $21, 112($0)
	nop
	nop
	bne $7, $21, skip28
	nop
	xor $6, $2, $3
skip28:		addu $2, $6, $4
	xor $6, $2, $3
	li $1, 12
	jal skip29
	addu $19, $31, $1
skip29:	jr $19
	nop
	sw $2, 116($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 16
	jal skip30
	nop
skip30:	addu $13, $31, $1
	jr $13
	nop
	sw $2, 120($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 20
	jal skip31
	nop
skip31:	nop
	addu $19, $31, $1
	jr $19
	nop
	sw $2, 124($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 16
	jal skip32
	addu $30, $31, $1
skip32:	nop
	jr $30
	nop
	sw $2, 128($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 20
	jal skip33
	nop
skip33:	addu $15, $31, $1
	nop
	jr $15
	nop
	sw $2, 132($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 24
	jal skip34
	nop
skip34:	nop
	addu $11, $31, $1
	nop
	jr $11
	nop
	sw $2, 136($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 20
	jal skip35
	addu $9, $31, $1
skip35:	nop
	nop
	jr $9
	nop
	sw $2, 140($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 24
	jal skip36
	nop
skip36:	addu $18, $31, $1
	nop
	nop
	jr $18
	nop
	sw $2, 144($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $1, 28
	jal skip37
	nop
skip37:	nop
	addu $11, $31, $1
	nop
	nop
	jr $11
	nop
	sw $2, 148($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip38
	addi $7, $31, 12
skip38:	jr $7
	nop
	sw $7, 152($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip39
	nop
skip39:	addi $8, $31, 16
	jr $8
	nop
	sw $8, 156($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip40
	nop
skip40:	nop
	addi $11, $31, 20
	jr $11
	nop
	sw $11, 160($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip41
	addi $28, $31, 16
skip41:	nop
	jr $28
	nop
	sw $28, 164($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip42
	nop
skip42:	addi $14, $31, 20
	nop
	jr $14
	nop
	sw $14, 168($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip43
	nop
skip43:	nop
	addi $17, $31, 24
	nop
	jr $17
	nop
	sw $17, 172($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip44
	addi $30, $31, 20
skip44:	nop
	nop
	jr $30
	nop
	sw $30, 176($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip45
	nop
skip45:	addi $12, $31, 24
	nop
	nop
	jr $12
	nop
	sw $12, 180($0)
	addu $2, $6, $4
	xor $6, $2, $3
	jal skip46
	nop
skip46:	nop
	addi $24, $31, 28
	nop
	nop
	jr $24
	nop
	sw $24, 184($0)
	addu $2, $6, $4
	jal beg47
	sw $31, 188($0)
	beq $0, $0, skip47
	nop
beg47:	lw $27, 188($0)
	jr $27
	nop
	sw $2, 188($0)
skip47:	jal beg48
	nop
	beq $0, $0, skip48
	nop
beg48:	sw $31, 192($0)
	lw $27, 192($0)
	jr $27
	nop
	sw $2, 192($0)
skip48:	jal beg49
	nop
	beq $0, $0, skip49
	nop
beg49:	nop
	sw $31, 196($0)
	lw $12, 196($0)
	jr $12
	nop
	sw $2, 196($0)
skip49:	jal beg50
	sw $31, 200($0)
	beq $0, $0, skip50
	nop
beg50:	lw $16, 200($0)
	nop
	jr $16
	nop
	sw $2, 200($0)
skip50:	jal beg51
	nop
	beq $0, $0, skip51
	nop
beg51:	sw $31, 204($0)
	lw $24, 204($0)
	nop
	jr $24
	nop
	sw $2, 204($0)
skip51:	jal beg52
	nop
	beq $0, $0, skip52
	nop
beg52:	nop
	sw $31, 208($0)
	lw $17, 208($0)
	nop
	jr $17
	nop
	sw $2, 208($0)
skip52:	jal beg53
	sw $31, 212($0)
	beq $0, $0, skip53
	nop
beg53:	lw $13, 212($0)
	nop
	nop
	jr $13
	nop
	sw $2, 212($0)
skip53:	jal beg54
	nop
	beq $0, $0, skip54
	nop
beg54:	sw $31, 216($0)
	lw $15, 216($0)
	nop
	nop
	jr $15
	nop
	sw $2, 216($0)
skip54:	jal beg55
	nop
	beq $0, $0, skip55
	nop
beg55:	nop
	sw $31, 220($0)
	lw $27, 220($0)
	nop
	nop
	jr $27
	nop
	sw $2, 220($0)
skip55:	li $ra, 832838636
	jal skip56
	lw $11, -0x3000($31)
skip56:	xor $11, $11, $2
	sw $11, -0x3000($31)
	li $ra, -213402224
	jal skip57
	nop
skip57:	lw $20, -0x3000($31)
	xor $20, $20, $2
	sw $20, -0x3000($31)
	li $ra, -368690064
	jal skip58
	nop
skip58:	nop
	lw $21, -0x3000($31)
	xor $21, $21, $2
	sw $21, -0x3000($31)
	li $ra, 300829633
	jal skip59
	lw $13, -0x3000($31)
skip59:	xor $13, $13, $2
	sw $13, -0x3000($31)
	li $ra, 1660028804
	jal skip60
	nop
skip60:	lw $27, -0x3000($31)
	xor $27, $27, $2
	sw $27, -0x3000($31)
	li $ra, 1007862821
	jal skip61
	nop
skip61:	nop
	lw $8, -0x3000($31)
	xor $8, $8, $2
	sw $8, -0x3000($31)
	li $ra, -7848211
	jal skip62
	lw $7, -0x3000($31)
skip62:	xor $7, $7, $2
	sw $7, -0x3000($31)
	li $ra, -1253677804
	jal skip63
	nop
skip63:	lw $7, -0x3000($31)
	xor $7, $7, $2
	sw $7, -0x3000($31)
	li $ra, 685447124
	jal skip64
	nop
skip64:	nop
	lw $28, -0x3000($31)
	xor $28, $28, $2
	sw $28, -0x3000($31)
	ori $ra, $0, 0
	la $13, foo
	jal foo
	nop
	ori $ra, $0, 0
	jal fooo
	nop
	j jal_jr_manual_end
	nop
	foo: jr $ra
	nop
	fooo: nop
	jr $ra
	nop
	jal_jr_manual_end:
	xor $6, $2, $3
	la $24, beg65
	jal beg65
	nop
	nop
beg65:	beq $24, $31, skip65
	nop
	addu $2, $2, $ra
skip65:	sw $2, 224($0)
	addu $2, $6, $4
	xor $6, $2, $3
	la $12, beg66
	jal beg66
	nop
	nop
beg66:	bne $12, $31, skip66
	nop
	addu $2, $2, $ra
skip66:	sw $2, 228($0)
	addu $2, $6, $4
	xor $6, $2, $3
	la $27, beg67
	jal beg67
	nop
	nop
beg67:	beq $27, $31, skip67
	nop
	addu $2, $2, $ra
skip67:	sw $2, 232($0)
	addu $2, $6, $4
	xor $6, $2, $3
	la $22, beg68
	jal beg68
	nop
	nop
beg68:	beq $22, $31, skip68
	nop
	addu $2, $2, $ra
skip68:	sw $2, 236($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $12, 141
	li $27, 364
	sw $2, 99($12)
	addu $2, $6, $4
	sw $2, -120($27)
	lw $12, 99($12)
	lw $27, -120($27)
	addu $5, $12, $27
dl:	j dl
	nop