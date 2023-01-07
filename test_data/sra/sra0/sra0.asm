	lw $1, 8188($0)
	li $2, 1174662248
	addu $2, $1, $2
	li $3, -381079543
	li $4, -1102100013
	xor $6, $2, $3
	li $21, -679807584
	addiu $9, $21, 26600
	nop
	nop
	sra $9, $21, 12
	bne $21, $9, skip0
	nop
	subu $2, $0, $2
skip0:	sw $2, 0($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $26, -1425252872
	addiu $9, $26, 29630
	nop
	sra $9, $26, 18
	nop
	beq $26, $9, skip1
	nop
	subu $2, $0, $2
skip1:	sw $2, 4($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $20, 676503599
	addiu $9, $20, 31390
	sra $9, $20, 3
	nop
	nop
	beq $20, $9, skip2
	nop
	subu $2, $0, $2
skip2:	sw $2, 8($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $9, 1750420175
	addiu $21, $9, 10965
	nop
	nop
	sra $21, $9, 23
	bne $9, $21, skip3
	nop
	subu $2, $0, $2
skip3:	sw $2, 12($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $11, -304053625
	addiu $9, $11, 32207
	nop
	sra $9, $11, 31
	nop
	bne $11, $9, skip4
	nop
	subu $2, $0, $2
skip4:	sw $2, 16($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $7, 1787481262
	addiu $11, $7, 7957
	sra $11, $7, 31
	nop
	nop
	beq $7, $11, skip5
	nop
	subu $2, $0, $2
skip5:	sw $2, 20($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $28, -895925186
	addiu $15, $28, 22479
	nop
	nop
	sra $15, $28, 20
	beq $28, $15, skip6
	nop
	subu $2, $0, $2
skip6:	sw $2, 24($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $28, -1799549948
	addiu $26, $28, 0
	nop
	sra $26, $28, 1
	nop
	bne $28, $26, skip7
	nop
	subu $2, $0, $2
skip7:	sw $2, 28($0)
	addu $2, $6, $4
	xor $6, $2, $3
	li $26, -81940419
	addiu $17, $26, 0
	sra $17, $26, 22
	nop
	nop
	bne $26, $17, skip8
	nop
	subu $2, $0, $2
skip8:	sw $2, 32($0)
	addu $2, $6, $4
	jal beg9
	sra $30, $31, 0
	beq $0, $0, skip9
	nop
beg9:	jr $30
	nop
	sw $30, 36($0)
skip9:	jal beg10
	sra $25, $31, 0
	beq $0, $0, skip10
	nop
beg10:	nop
	jr $25
	nop
	sw $25, 40($0)
skip10:	jal beg11
	sra $26, $31, 0
	beq $0, $0, skip11
	nop
beg11:	nop
	nop
	jr $26
	nop
	sw $26, 44($0)
skip11:	jal beg12
	nop
	beq $0, $0, skip12
	nop
beg12:	sra $29, $31, 0
	jr $29
	nop
	sw $29, 48($0)
skip12:	jal beg13
	nop
	beq $0, $0, skip13
	nop
beg13:	sra $30, $31, 0
	nop
	jr $30
	nop
	sw $30, 52($0)
skip13:	jal beg14
	nop
	beq $0, $0, skip14
	nop
beg14:	sra $14, $31, 0
	nop
	nop
	jr $14
	nop
	sw $14, 56($0)
skip14:	jal beg15
	nop
	beq $0, $0, skip15
	nop
beg15:	nop
	sra $21, $31, 0
	jr $21
	nop
	sw $21, 60($0)
skip15:	jal beg16
	nop
	beq $0, $0, skip16
	nop
beg16:	nop
	sra $14, $31, 0
	nop
	jr $14
	nop
	sw $14, 64($0)
skip16:	jal beg17
	nop
	beq $0, $0, skip17
	nop
beg17:	nop
	sra $22, $31, 0
	nop
	nop
	jr $22
	nop
	sw $22, 68($0)
skip17:	jal beg18
	sra $11, $31, 0
	beq $0, $0, skip18
	nop
beg18:	jr $11
	nop
	sw $11, 72($0)
skip18:	jal beg19
	sra $18, $31, 0
	beq $0, $0, skip19
	nop
beg19:	nop
	jr $18
	nop
	sw $18, 76($0)
skip19:	jal beg20
	sra $7, $31, 0
	beq $0, $0, skip20
	nop
beg20:	nop
	nop
	jr $7
	nop
	sw $7, 80($0)
skip20:	jal beg21
	nop
	beq $0, $0, skip21
	nop
beg21:	sra $7, $31, 0
	jr $7
	nop
	sw $7, 84($0)
skip21:	jal beg22
	nop
	beq $0, $0, skip22
	nop
beg22:	sra $16, $31, 0
	nop
	jr $16
	nop
	sw $16, 88($0)
skip22:	jal beg23
	nop
	beq $0, $0, skip23
	nop
beg23:	sra $15, $31, 0
	nop
	nop
	jr $15
	nop
	sw $15, 92($0)
skip23:	jal beg24
	nop
	beq $0, $0, skip24
	nop
beg24:	nop
	sra $7, $31, 0
	jr $7
	nop
	sw $7, 96($0)
skip24:	jal beg25
	nop
	beq $0, $0, skip25
	nop
beg25:	nop
	sra $8, $31, 0
	nop
	jr $8
	nop
	sw $8, 100($0)
skip25:	jal beg26
	nop
	beq $0, $0, skip26
	nop
beg26:	nop
	sra $12, $31, 0
	nop
	nop
	jr $12
	nop
	sw $12, 104($0)
skip26:
dl:	j dl
	nop
