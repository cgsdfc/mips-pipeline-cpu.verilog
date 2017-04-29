	li $2, 104446217
	li $3, 1944354055
	li $4, 1004034830
	li $5, -869927604
	li $6, -216892362
	jal skip0
	subu $22, $31, $0
skip0:	jialc $22, 048
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
	li $1, 654592590
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip1
	addu $7, $31, $0
skip1:	ori $ra, $0, 0
	jialc $7, 36
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
	li $1, 2142216613
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip2
	xor $26, $31, $0
skip2:	ori $ra, $0, 0
	nop
	jialc $26, 48
	nop
	nop
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
	li $1, -1978652341
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip3
	subu $7, $31, $0
skip3:	jialc $7, 24
	nop
	nop
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
	li $1, -504174896
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip4
	xor $11, $31, $0
skip4:	ori $ra, $0, 0
	jialc $11, 24
	nop
	nop
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
	li $1, -941568206
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip5
	subu $22, $31, $0
skip5:	ori $ra, $0, 0
	nop
	jialc $22, 32
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
	li $1, -147554295
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip6
	ori $14, $31, 0
skip6:	jialc $14, 12
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
	li $1, -1673360936
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip7
	addiu $18, $31, 0
skip7:	ori $ra, $0, 0
	jialc $18, 36
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
	li $1, 1309481973
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip8
	addiu $13, $31, 0
skip8:	ori $ra, $0, 0
	nop
	jialc $13, 24
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
	li $1, -309916668
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip9
	ori $27, $31, 0
skip9:	jialc $27, 24
	nop
	nop
	nop
	nop
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
	li $1, 1700082434
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip10
	sll $7, $31, 0
skip10:	ori $ra, $0, 0
	jialc $7, 40
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
	li $1, 336844689
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip11
	ori $28, $31, 0
skip11:	ori $ra, $0, 0
	nop
	jialc $28, 44
	nop
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
	li $1, -910093485
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip12
	sw $ra, 48($0)
skip12:	ori $ra, $0, 0
	lw $16, 48($0)
	jialc $16, 44
	nop
	nop
	j end12
	sw $2, 52($0)
	j end12
	sw $3, 52($0)
	j end12
	sw $4, 52($0)
	j end12
	sw $5, 52($0)
	j end12
	sw $6, 52($0)
end12:
	li $1, -130308647
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip13
	sw $ra, 56($0)
skip13:	ori $ra, $0, 0
	lw $7, 56($0)
	nop
	jialc $7, 44
	nop
	nop
	nop
	j end13
	sw $2, 60($0)
	j end13
	sw $3, 60($0)
	j end13
	sw $4, 60($0)
	j end13
	sw $5, 60($0)
	j end13
	sw $6, 60($0)
end13:
	li $1, 1947745499
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip14
	sw $ra, 64($0)
skip14:	ori $ra, $0, 0
	lw $13, 64($0)
	nop
	nop
	jialc $13, 40
	nop
	nop
	nop
	j end14
	sw $2, 68($0)
	j end14
	sw $3, 68($0)
	j end14
	sw $4, 68($0)
	j end14
	sw $5, 68($0)
	j end14
	sw $6, 68($0)
end14:
	li $1, 970815881
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip15
	sw $ra, 72($0)
skip15:	ori $ra, $0, 0
	lw $21, 72($0)
	jialc $21, 44
	nop
	nop
	j end15
	sw $2, 76($0)
	j end15
	sw $3, 76($0)
	j end15
	sw $4, 76($0)
	j end15
	sw $5, 76($0)
	j end15
	sw $6, 76($0)
end15:
	li $1, 1673725859
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip16
	sw $ra, 80($0)
skip16:	ori $ra, $0, 0
	lw $17, 80($0)
	nop
	jialc $17, 64
	nop
	nop
	nop
	nop
	j end16
	sw $2, 84($0)
	j end16
	sw $3, 84($0)
	j end16
	sw $4, 84($0)
	j end16
	sw $5, 84($0)
	j end16
	sw $6, 84($0)
end16:
	li $1, -346292174
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	jal skip17
	sw $ra, 88($0)
skip17:	ori $ra, $0, 0
	lw $21, 88($0)
	nop
	nop
	jialc $21, 56
	nop
	j end17
	sw $2, 92($0)
	j end17
	sw $3, 92($0)
	j end17
	sw $4, 92($0)
	j end17
	sw $5, 92($0)
	j end17
	sw $6, 92($0)
end17:
	li $1, -1377099149
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $19, skip18
	sw $5, -12308($19)
	jialc $19, 8
	lw $19, -0x3000($31)
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
skip18:	addu $2, $0, $0
	addu $3, $0, $0
	addu $19, $19, $5
	sw $19, 96($0)
	li $1, 898898763
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $9, skip19
	sw $2, -12292($9)
	jialc $9, 0
	nop
	addu $2, $0, $0
skip19:	lw $9, -0x3000($31)
	addu $9, $9, $5
	sw $9, 100($0)
	li $1, -1398559312
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $21, skip20
	sw $4, -12316($21)
	jialc $21, 12
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip20:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addiu $2, $2, 0x0817
	lw $21, -0x3000($31)
	addu $21, $21, $3
	sw $21, 104($0)
	li $1, -423202793
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $12, skip21
	sw $2, -12292($12)
	jialc $12, 0
	lw $12, -0x3000($31)
	addu $2, $0, $0
skip21:	addu $12, $12, $4
	sw $12, 108($0)
	li $1, -141407880
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $20, skip22
	sw $4, -12300($20)
	jialc $20, 4
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
skip22:	addu $2, $0, $0
	lw $20, -0x3000($31)
	addu $20, $20, $4
	sw $20, 112($0)
	li $1, -1094146095
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $24, skip23
	sw $6, -12308($24)
	jialc $24, 8
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
skip23:	addu $2, $0, $0
	addu $3, $0, $0
	addiu $2, $2, 0x0817
	lw $24, -0x3000($31)
	addu $24, $24, $3
	sw $24, 116($0)
	li $1, -1668036959
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $24, skip24
	jialc $24, 12
	sw $31, 120($0)
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip24:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	li $1, 1562508741
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $22, skip25
	jialc $22, 12
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip25:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	sw $31, 124($0)
	li $1, -412330486
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $30, skip26
	jialc $30, 0
	nop
	addu $2, $0, $0
skip26:	addiu $3, $3, 0x0817
	sw $31, 128($0)
	li $1, -44683750
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $17, skip27
	jialc $17, 0
	sw $31, 132($0)
	addu $2, $0, $0
skip27:	li $1, -292549598
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $16, skip28
	jialc $16, 4
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
skip28:	addu $2, $0, $0
	sw $31, 136($0)
	li $1, -1439201392
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $25, skip29
	jialc $25, 12
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip29:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addiu $3, $3, 0x0817
	sw $31, 140($0)
	li $1, -1503976585
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $26, skip30
	jialc $26, 12
	addu $31, $3, $31
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip30:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	sw $31, 144($0)
	li $1, -1500552193
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $14, skip31
	jialc $14, 4
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
skip31:	addu $2, $0, $0
	subu $31, $31, $6
	sw $31, 148($0)
	li $1, -1344645391
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $30, skip32
	jialc $30, 8
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
skip32:	addu $2, $0, $0
	addu $3, $0, $0
	addiu $6, $6, 0x0817
	addu $31, $31, $6
	sw $31, 152($0)
	li $1, -845903416
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $26, skip33
	jialc $26, 0
	subu $31, $6, $31
	addu $2, $0, $0
skip33:	sw $31, 156($0)
	li $1, -171793802
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $30, skip34
	jialc $30, 0
	nop
	addu $2, $0, $0
skip34:	subu $31, $31, $6
	sw $31, 160($0)
	li $1, -2058299279
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $22, skip35
	jialc $22, 4
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
skip35:	addu $2, $0, $0
	addiu $6, $6, 0x0817
	addu $31, $31, $6
	sw $31, 164($0)
	li $1, 1368824752
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $19, skip36
	jialc $19, 0
	addiu $31, $5, 6
	addu $2, $0, $0
skip36:	sw $31, 168($0)
	li $1, 627278086
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $21, skip37
	jialc $21, 0
	nop
	addu $2, $0, $0
skip37:	addiu $31, $31, 3
	sw $31, 172($0)
	li $1, -666230761
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $30, skip38
	jialc $30, 4
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
skip38:	addu $2, $0, $0
	addiu $6, $6, 0x0817
	addiu $31, $31, 23
	sw $31, 176($0)
	li $1, -1142469751
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $19, skip39
	jialc $19, 12
	ori $31, $5, 31
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip39:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	sw $31, 180($0)
	li $1, 572039722
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $11, skip40
	jialc $11, 0
	nop
	addu $2, $0, $0
skip40:	addiu $31, $31, 9
	sw $31, 184($0)
	li $1, -957575681
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $8, skip41
	jialc $8, 8
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
skip41:	addu $2, $0, $0
	addu $3, $0, $0
	addiu $6, $6, 0x0817
	ori $31, $31, 14
	sw $31, 188($0)
	li $1, -840901460
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $24, skip42
	jialc $24, 16
	nop
beg42:	beq $0, $0, tanglaoshishibeihangdehongtaiyang42
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
	addu $9, $0, $0
	addu $10, $0, $0
skip42:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	jr $ra
	nop
tanglaoshishibeihangdehongtaiyang42:
	li $1, 2020400018
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $16, skip43
	jialc $16, 8
	nop
beg43:	beq $0, $0, tanglaoshishibeihangdehongtaiyang43
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
skip43:	addu $2, $0, $0
	addu $3, $0, $0
	addiu $5, $5, 0x0817
	jr $ra
	nop
tanglaoshishibeihangdehongtaiyang43:
	li $1, 585262438
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $24, skip44
	jialc $24, 16
	nop
beg44:	beq $0, $0, tanglaoshishibeihangdehongtaiyang44
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
	addu $9, $0, $0
	addu $10, $0, $0
skip44:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	jr $ra
	nop
tanglaoshishibeihangdehongtaiyang44:
	li $1, -2143740351
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $27, skip45
	jialc $27, 16
	nop
beg45:	beq $0, $0, tanglaoshishibeihangdehongtaiyang45
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
	addu $9, $0, $0
	addu $10, $0, $0
skip45:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addiu $5, $5, 0x0817
	jr $ra
	nop
tanglaoshishibeihangdehongtaiyang45:
	li $1, -1495973229
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $22, skip46
	jialc $22, 8
	nop
beg46:	beq $0, $0, tanglaoshishibeihangdehongtaiyang46
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
skip46:	addu $2, $0, $0
	addu $3, $0, $0
	jr $ra
	nop
tanglaoshishibeihangdehongtaiyang46:
	li $1, -889374792
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
	la $27, skip47
	jialc $27, 12
	nop
beg47:	beq $0, $0, tanglaoshishibeihangdehongtaiyang47
	nop
	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addu $5, $0, $0
	addu $6, $0, $0
	addu $7, $0, $0
	addu $8, $0, $0
skip47:	addu $2, $0, $0
	addu $3, $0, $0
	addu $4, $0, $0
	addiu $5, $5, 0x0817
	jr $ra
	nop
tanglaoshishibeihangdehongtaiyang47:
	li $1, 058061819
	xor $2, $2, $3
	xor $3, $3, $4
	xor $4, $4, $5
	xor $5, $5, $6
	xor $6, $6, $1
dl:	j dl
	nop
