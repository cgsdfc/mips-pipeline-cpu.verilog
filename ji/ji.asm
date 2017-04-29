	li $2, -857153907
	li $3, -1974365114
	li $4, -1940967981
	li $5, -121651479
	li $6, -402406997
	jal skip0
	addu $15, $31, $0
skip0:	ji $15, 40
	nop
	nop
	nop
	nop
	nop
	j end0
	sw $2, 0($0)
	j end0
	sw $3, 0($0)
	j end0
	sw $4, 0($0)
	j end0
	sw $5, 0($0)
	j end0
	sw $6, 0($0)
end0:
	li $1, 1639241270
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip1
	xor $12, $31, $0
skip1:	ori $ra, $0, 0
	ji $12, 52
	nop
	nop
	nop
	j end1
	sw $2, 4($0)
	j end1
	sw $3, 4($0)
	j end1
	sw $4, 4($0)
	j end1
	sw $5, 4($0)
	j end1
	sw $6, 4($0)
end1:
	li $1, 1367994630
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip2
	xor $17, $31, $0
skip2:	ori $ra, $0, 0
	nop
	ji $17, 24
	nop
	nop
	nop
	j end2
	sw $2, 8($0)
	j end2
	sw $3, 8($0)
	j end2
	sw $4, 8($0)
	j end2
	sw $5, 8($0)
	j end2
	sw $6, 8($0)
end2:
	li $1, -599994140
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip3
	subu $16, $31, $0
skip3:	ji $16, 16
	nop
	j end3
	sw $2, 12($0)
	j end3
	sw $3, 12($0)
	j end3
	sw $4, 12($0)
	j end3
	sw $5, 12($0)
	j end3
	sw $6, 12($0)
end3:
	li $1, 1453972256
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip4
	subu $12, $31, $0
skip4:	ori $ra, $0, 0
	ji $12, 40
	nop
	nop
	j end4
	sw $2, 16($0)
	j end4
	sw $3, 16($0)
	j end4
	sw $4, 16($0)
	j end4
	sw $5, 16($0)
	j end4
	sw $6, 16($0)
end4:
	li $1, -1901001861
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip5
	addu $17, $31, $0
skip5:	ori $ra, $0, 0
	nop
	ji $17, 52
	nop
	nop
	nop
	nop
	j end5
	sw $2, 20($0)
	j end5
	sw $3, 20($0)
	j end5
	sw $4, 20($0)
	j end5
	sw $5, 20($0)
	j end5
	sw $6, 20($0)
end5:
	li $1, 2127631345
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip6
	addu $27, $31, $0
skip6:	ji $27, 28
	nop
	nop
	nop
	nop
	j end6
	sw $2, 24($0)
	j end6
	sw $3, 24($0)
	j end6
	sw $4, 24($0)
	j end6
	sw $5, 24($0)
	j end6
	sw $6, 24($0)
end6:
	li $1, -357731434
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip7
	or $11, $31, $0
skip7:	ori $ra, $0, 0
	ji $11, 36
	nop
	nop
	nop
	j end7
	sw $2, 28($0)
	j end7
	sw $3, 28($0)
	j end7
	sw $4, 28($0)
	j end7
	sw $5, 28($0)
	j end7
	sw $6, 28($0)
end7:
	li $1, 1446495101
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip8
	addu $28, $31, $0
skip8:	ori $ra, $0, 0
	nop
	ji $28, 56
	nop
	nop
	nop
	j end8
	sw $2, 32($0)
	j end8
	sw $3, 32($0)
	j end8
	sw $4, 32($0)
	j end8
	sw $5, 32($0)
	j end8
	sw $6, 32($0)
end8:
	li $1, 1356811121
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip9
	ori $11, $31, 0
skip9:	ji $11, 24
	nop
	j end9
	sw $2, 36($0)
	j end9
	sw $3, 36($0)
	j end9
	sw $4, 36($0)
	j end9
	sw $5, 36($0)
	j end9
	sw $6, 36($0)
end9:
	li $1, -1340872156
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip10
	srl $8, $31, 0
skip10:	ori $ra, $0, 0
	ji $8, 36
	nop
	nop
	nop
	j end10
	sw $2, 40($0)
	j end10
	sw $3, 40($0)
	j end10
	sw $4, 40($0)
	j end10
	sw $5, 40($0)
	j end10
	sw $6, 40($0)
end10:
	li $1, 1358600621
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip11
	ori $20, $31, 0
skip11:	ori $ra, $0, 0
	nop
	ji $20, 32
	nop
	j end11
	sw $2, 44($0)
	j end11
	sw $3, 44($0)
	j end11
	sw $4, 44($0)
	j end11
	sw $5, 44($0)
	j end11
	sw $6, 44($0)
end11:
	li $1, 693884311
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip12
	sll $26, $31, 0
skip12:	ji $26, 28
	nop
	nop
	nop
	nop
	j end12
	sw $2, 48($0)
	j end12
	sw $3, 48($0)
	j end12
	sw $4, 48($0)
	j end12
	sw $5, 48($0)
	j end12
	sw $6, 48($0)
end12:
	li $1, 1850882383
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip13
	srl $8, $31, 0
skip13:	ori $ra, $0, 0
	ji $8, 36
	nop
	j end13
	sw $2, 52($0)
	j end13
	sw $3, 52($0)
	j end13
	sw $4, 52($0)
	j end13
	sw $5, 52($0)
	j end13
	sw $6, 52($0)
end13:
	li $1, -496901969
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip14
	addiu $30, $31, 0
skip14:	ori $ra, $0, 0
	nop
	ji $30, 20
	nop
	nop
	j end14
	sw $2, 56($0)
	j end14
	sw $3, 56($0)
	j end14
	sw $4, 56($0)
	j end14
	sw $5, 56($0)
	j end14
	sw $6, 56($0)
end14:
	li $1, -1647999594
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip15
	sll $28, $31, 0
skip15:	ji $28, 24
	nop
	nop
	nop
	nop
	nop
	j end15
	sw $2, 60($0)
	j end15
	sw $3, 60($0)
	j end15
	sw $4, 60($0)
	j end15
	sw $5, 60($0)
	j end15
	sw $6, 60($0)
end15:
	li $1, -1120499044
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip16
	srl $9, $31, 0
skip16:	ori $ra, $0, 0
	ji $9, 32
	nop
	nop
	j end16
	sw $2, 64($0)
	j end16
	sw $3, 64($0)
	j end16
	sw $4, 64($0)
	j end16
	sw $5, 64($0)
	j end16
	sw $6, 64($0)
end16:
	li $1, 1575842937
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip17
	ori $14, $31, 0
skip17:	ori $ra, $0, 0
	nop
	ji $14, 48
	nop
	j end17
	sw $2, 68($0)
	j end17
	sw $3, 68($0)
	j end17
	sw $4, 68($0)
	j end17
	sw $5, 68($0)
	j end17
	sw $6, 68($0)
end17:
	li $1, -111136218
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip18
	sw $ra, 72($0)
skip18:	ori $ra, $0, 0
	lw $30, 72($0)
	ji $30, 32
	nop
	nop
	nop
	j end18
	sw $2, 76($0)
	j end18
	sw $3, 76($0)
	j end18
	sw $4, 76($0)
	j end18
	sw $5, 76($0)
	j end18
	sw $6, 76($0)
end18:
	li $1, -981807120
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip19
	sw $ra, 80($0)
skip19:	ori $ra, $0, 0
	lw $29, 80($0)
	nop
	ji $29, 52
	nop
	j end19
	sw $2, 84($0)
	j end19
	sw $3, 84($0)
	j end19
	sw $4, 84($0)
	j end19
	sw $5, 84($0)
	j end19
	sw $6, 84($0)
end19:
	li $1, 1795809274
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip20
	sw $ra, 88($0)
skip20:	ori $ra, $0, 0
	lw $19, 88($0)
	nop
	nop
	ji $19, 64
	nop
	nop
	nop
	nop
	nop
	j end20
	sw $2, 92($0)
	j end20
	sw $3, 92($0)
	j end20
	sw $4, 92($0)
	j end20
	sw $5, 92($0)
	j end20
	sw $6, 92($0)
end20:
	li $1, -169453224
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip21
	sw $ra, 96($0)
skip21:	ori $ra, $0, 0
	lw $18, 96($0)
	ji $18, 60
	nop
	nop
	nop
	nop
	j end21
	sw $2, 100($0)
	j end21
	sw $3, 100($0)
	j end21
	sw $4, 100($0)
	j end21
	sw $5, 100($0)
	j end21
	sw $6, 100($0)
end21:
	li $1, -192571602
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip22
	sw $ra, 104($0)
skip22:	ori $ra, $0, 0
	lw $14, 104($0)
	nop
	ji $14, 68
	nop
	nop
	nop
	nop
	nop
	j end22
	sw $2, 108($0)
	j end22
	sw $3, 108($0)
	j end22
	sw $4, 108($0)
	j end22
	sw $5, 108($0)
	j end22
	sw $6, 108($0)
end22:
	li $1, 296450952
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip23
	sw $ra, 112($0)
skip23:	ori $ra, $0, 0
	lw $16, 112($0)
	nop
	nop
	ji $16, 40
	nop
	j end23
	sw $2, 116($0)
	j end23
	sw $3, 116($0)
	j end23
	sw $4, 116($0)
	j end23
	sw $5, 116($0)
	j end23
	sw $6, 116($0)
end23:
	li $1, -1132352116
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip24
	sw $ra, 120($0)
skip24:	ori $ra, $0, 0
	lw $15, 120($0)
	ji $15, 24
	nop
	j end24
	sw $2, 124($0)
	j end24
	sw $3, 124($0)
	j end24
	sw $4, 124($0)
	j end24
	sw $5, 124($0)
	j end24
	sw $6, 124($0)
end24:
	li $1, 1835900793
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip25
	sw $ra, 128($0)
skip25:	ori $ra, $0, 0
	lw $29, 128($0)
	nop
	ji $29, 64
	nop
	nop
	nop
	nop
	j end25
	sw $2, 132($0)
	j end25
	sw $3, 132($0)
	j end25
	sw $4, 132($0)
	j end25
	sw $5, 132($0)
	j end25
	sw $6, 132($0)
end25:
	li $1, 3324448
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip26
	sw $ra, 136($0)
skip26:	ori $ra, $0, 0
	lw $20, 136($0)
	nop
	nop
	ji $20, 72
	nop
	nop
	nop
	nop
	nop
	j end26
	sw $2, 140($0)
	j end26
	sw $3, 140($0)
	j end26
	sw $4, 140($0)
	j end26
	sw $5, 140($0)
	j end26
	sw $6, 140($0)
end26:
	li $1, -1165980526
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
dl:	j dl
	nop
