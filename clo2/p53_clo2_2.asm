	li $2, 282081230
	li $3, -384569459
	li $4, -297513372
	li $5, -342837018
	li $6, 2014504037
	clo2 $17, $2, $4
	clo2 $20, $2, $4
	nop
	nop
	clo2 $20, $2, $4
	beq $17, $20, skip0
	nop
	xor $17, $17, $2
skip0:	sw $17, 0($0)
	li $26, -1249407567
	xor $6, $6, $26
	xor $5, $5, $6
	xor $2, $2, $5
	xor $3, $3, $2
	xor $4, $4, $3
	clo2 $14, $5, $2
	clo2 $22, $5, $2
	nop
	clo2 $22, $5, $4
	nop
	beq $14, $22, skip1
	nop
	xor $14, $14, $5
skip1:	sw $14, 4($0)
	li $26, -1231781289
	xor $2, $2, $26
	xor $4, $4, $2
	xor $6, $6, $4
	xor $5, $5, $6
	xor $3, $3, $5
	clo2 $20, $6, $3
	clo2 $16, $6, $3
	clo2 $16, $6, $2
	nop
	nop
	bne $20, $16, skip2
	nop
	xor $20, $20, $6
skip2:	sw $20, 8($0)
	li $26, 198290243
	xor $5, $5, $26
	xor $3, $3, $5
	xor $6, $6, $3
	xor $2, $2, $6
	xor $4, $4, $2
	clo2 $16, $4, $6
	clo2 $21, $4, $6
	nop
	nop
	clo2 $21, $2, $6
	bne $16, $21, skip3
	nop
	xor $16, $16, $4
skip3:	sw $16, 12($0)
	li $26, -1315627672
	xor $3, $3, $26
	xor $6, $6, $3
	xor $2, $2, $6
	xor $5, $5, $2
	xor $4, $4, $5
	clo2 $18, $6, $5
	clo2 $25, $4, $3
	nop
	clo2 $25, $6, $5
	nop
	bne $18, $25, skip4
	nop
	xor $18, $18, $6
skip4:	sw $18, 16($0)
	li $26, 204807868
	xor $5, $5, $26
	xor $2, $2, $5
	xor $6, $6, $2
	xor $3, $3, $6
	xor $4, $4, $3
	clo2 $12, $4, $6
	clo2 $15, $4, $6
	clo2 $15, $6, $5
	nop
	nop
	beq $12, $15, skip5
	nop
	xor $12, $12, $4
skip5:	sw $12, 20($0)
	li $26, 847242209
	xor $3, $3, $26
	xor $6, $6, $3
	xor $2, $2, $6
	xor $5, $5, $2
	xor $4, $4, $5
	li $31, -1
	nop
	nop
	jal skip6
	clo2 $31, $31, $0
skip6:	sw $31, 24($0)
	li $31, -1
	nop
	jal skip7
	nop
skip7:	clo2 $31, $31, $0
	sw $31, 28($0)
	li $31, -1
	jal skip8
	nop
skip8:	nop
	clo2 $31, $31, $0
	sw $31, 32($0)
	li $31, -1
	nop
	nop
	jal skip9
	clo2 $31, $31, $0
skip9:	sw $31, 36($0)
	li $31, -1
	nop
	jal skip10
	nop
skip10:	clo2 $31, $31, $0
	sw $31, 40($0)
	li $31, -1
	jal skip11
	nop
skip11:	nop
	clo2 $31, $31, $0
	sw $31, 44($0)
dl:	j dl
	nop