	li $2, -1435033232
	li $3, -1193920959
	li $4, -767131317
	li $5, 331766970
	li $6, 1770623850
beg:
	li $16, 14318
	nop
	nop
	li $16, 0
	bnzalr $ra, $16, $16
	sw $31, 0($0)
	nop
	nop
	nop
	sw $ra, 4($0)
skip0:	sw $16, 8($0)
	li $23, 0
	nop
	la $23, skip1
	nop
	bnzalr $ra, $23, $23
	sw $31, 12($0)
	nop
	nop
	sw $ra, 16($0)
skip1:	sw $23, 20($0)
	li $25, 11515
	li $25, 0
	nop
	nop
	bnzalr $ra, $25, $25
	sw $31, 24($0)
	nop
	sw $ra, 28($0)
skip2:	sw $25, 32($0)
	la $26, skip3
	li $13, 6276
	nop
	nop
	addu $13, $0, $0
	bnzalr $ra, $13, $13
	sw $31, 36($0)
	nop
	nop
	nop
	sw $ra, 40($0)
skip3:	sw $13, 44($0)
	la $26, skip4
	li $23, 0
	nop
	addu $23, $0, $26
	nop
	bnzalr $ra, $23, $23
	sw $31, 48($0)
	nop
	sw $ra, 52($0)
skip4:	sw $23, 56($0)
	la $26, skip5
	li $16, 0
	addu $16, $0, $26
	nop
	nop
	bnzalr $ra, $16, $16
	sw $31, 60($0)
	nop
	sw $ra, 64($0)
skip5:	sw $16, 68($0)
	jal skip_jal_0
	nop
	beq $0, $0, skip_jal_pass_0
	nop
skip_jal_0:
	bnzalr $30, $ra, $ra

	sw $30, 72($0)
skip_jal_pass_0:
	jal skip_jal_1
	nop
	nop
	sw $30, 76($0)
	beq $0, $0, skip_jal_pass_1
	nop
skip_jal_1:
	nop
	bnzalr $30, $ra, $ra

	nop
skip_jal_pass_1:
	bnzalr $29, $0, $0
	nop
	addu $22, $22, $29
	sw $22, 80($0)
	bnzalr $29, $0, $0
	nop
	nop
	addu $14, $14, $29
	sw $14, 84($0)
	bnzalr $29, $0, $0
	nop
	nop
	nop
	addu $20, $20, $29
	sw $20, 88($0)
	bnzalr $28, $0, $0
	nop
	addi $22, $28, -1
	sw $22, 92($0)
	bnzalr $28, $0, $0
	nop
	nop
	addi $20, $28, -1
	sw $20, 96($0)
	bnzalr $28, $0, $0
	nop
	nop
	nop
	addi $21, $28, -1
	sw $21, 100($0)
	bnzalr $1, $0, $0
	nop
	jr $1
	nop
dl:	j dl
	nop