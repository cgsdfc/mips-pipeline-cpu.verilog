ori $1, $0, 1
ori $2, $0, 2
ori $3, $0, 3
ori $4, $0, 4
ori $5, $0, 5
ori $6, $0, 6 
nop
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
end12:	li $1, -130308647
	
