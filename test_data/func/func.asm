init_1:	j init_12
	lui $0, 29417
init_2:	n
	beq $0, $0 init_37
	ori $19, 54285
init_3:	beq $0, $0 init_64
	lui $10, 20276
init_4:	beq $0, $0 init_59
	ori $8, 32592
init_5:	nop
	beq $0, $0 init_22
	ori $11, 54083
init_6:	j init_24
	lui $7, 46845
init_7:	j init_42
	lui $29, 25640
init_8:	j init_39
	ori $16, 2104
init_9:	j init_36
	lui $1, 3882
init_10:	beq $0, $0 init_61
	lui $30, 10964
init_11:	beq $0, $0 init_7
	ori $28, 31258
init_12:	beq $0, $0 init_9
	ori $0, 40934
init_13:	nop
	j init_54
	ori $3, 59020
init_14:	beq $0, $0 init_17
	lui $2, 27702
init_15:	j begin
	ori $31, 2430
init_16:	beq $0, $0 init_11
	lui $28, 54258
init_17:	j init_48
	ori $2, 5707
init_18:	nop
	j init_3
	ori $9, 59934
init_19:	j init_60
	lui $18, 50644
init_20:	beq $0, $0 init_2
	lui $19, 3403
init_21:	beq $0, $0 init_55
	ori $24, 26217
init_22:	beq $0, $0 init_50
	lui $12, 38410
init_23:	beq $0, $0 init_29
	lui $15, 14465
init_24:	nop
	beq $0, $0 init_35
	ori $7, 22703
init_25:	j init_47
	lui $6, 20871
init_26:	nop
	j init_52
	ori $13, 28242
init_27:	beq $0, $0 init_23
	ori $14, 20350
init_28:	beq $0, $0 init_58
	lui $26, 45226
init_29:	nop
	j init_51
	ori $15, 52169
init_30:	nop
	beq $0, $0 init_16
	ori $27, 686
init_31:	j init_43
	lui $5, 2603
init_32:	beq $0, $0 init_34
	lui $21, 30929
init_33:	beq $0, $0 init_30
	lui $27, 11110
init_34:	nop
	beq $0, $0 init_49
	ori $21, 6150
init_35:	beq $0, $0 init_4
	lui $8, 53590
init_36:	nop
	beq $0, $0 init_14
	ori $1, 21299
init_37:	j init_56
	lui $20, 17679
init_38:	j init_21
	lui $24, 52021
init_39:	beq $0, $0 init_57
	lui $17, 28129
init_40:	nop
	beq $0, $0 init_28
	ori $25, 15962
init_41:	j init_15
	lui $31, 58042
init_42:	nop
	beq $0, $0 init_10
	ori $29, 10292
init_43:	nop
	j init_25
	ori $5, 46544
init_44:	beq $0, $0 init_5
	lui $11, 29637
init_45:	beq $0, $0 init_62
	ori $22, 60674
init_46:	j init_31
	ori $4, 60896
init_47:	j init_6
	ori $6, 34793
init_48:	beq $0, $0 init_13
	lui $3, 65236
init_49:	j init_45
	lui $22, 7930
init_50:	j init_53
	ori $12, 46627
init_51:	beq $0, $0 init_8
	lui $16, 11716
init_52:	beq $0, $0 init_27
	lui $14, 33870
init_53:	j init_26
	lui $13, 40077
init_54:	beq $0, $0 init_46
	lui $4, 15030
init_55:	j init_40
	lui $25, 48239
init_56:	beq $0, $0 init_32
	ori $20, 12880
init_57:	nop
	j init_19
	ori $17, 17225
init_58:	beq $0, $0 init_33
	ori $26, 61018
init_59:	beq $0, $0 init_18
	lui $9, 35702
init_60:	j init_20
	ori $18, 20681
init_61:	beq $0, $0 init_41
	ori $30, 3522
init_62:	beq $0, $0 init_63
	lui $23, 41609
init_63:	nop
	j init_38
	ori $23, 23179
init_64:	j init_44
	ori $10, 27243
begin:
	sw $18, 0($0)
	or $18, $25, $30
	sw $17, 4($0)
	addu $17, $3, $12
	sw $7, 8($0)
	xor $7, $20, $24
	sw $20, 12($0)
	subu $20, $10, $10
	sw $11, 16($0)
	and $11, $28, $15
	sw $2, 20($0)
	and $2, $23, $31
	sw $19, 24($0)
	subu $19, $1, $21
	sw $19, 28($0)
	subu $19, $13, $16
	sw $21, 32($0)
	xor $21, $21, $23
	sw $30, 36($0)
	xor $30, $19, $6
	sw $2, 40($0)
	and $2, $2, $12
	sw $11, 44($0)
	or $11, $1, $22
	sw $15, 48($0)
	addu $15, $26, $1
	sw $20, 52($0)
	subu $20, $12, $11
	sw $13, 56($0)
	or $13, $9, $20
	sw $26, 60($0)
	xor $26, $10, $21
	sw $23, 64($0)
	addu $23, $3, $10
	sw $6, 68($0)
	and $6, $22, $22
	sw $1, 72($0)
	xor $1, $25, $7
	sw $3, 76($0)
	xor $3, $2, $29
	sw $7, 80($0)
	or $7, $23, $17
	sw $17, 84($0)
	addu $17, $15, $31
	sw $23, 88($0)
	addu $23, $30, $26
	sw $10, 92($0)
	subu $10, $12, $18
	sw $22, 96($0)
	and $22, $19, $4
	sw $25, 100($0)
	or $25, $13, $31
	sw $21, 104($0)
	subu $21, $12, $25
	sw $6, 108($0)
	and $6, $19, $3
	sw $17, 112($0)
	addu $17, $23, $8
	sw $30, 116($0)
	or $30, $8, $25
	sw $18, 120($0)
	and $18, $25, $22
	sw $13, 124($0)
	and $13, $12, $21
	sw $20, 128($0)
	subu $20, $22, $16
	sw $24, 132($0)
	xor $24, $3, $13
	sw $3, 136($0)
	xor $3, $3, $27
	sw $6, 140($0)
	subu $6, $11, $5
	sw $4, 144($0)
	subu $4, $7, $7
	sw $9, 148($0)
	or $9, $23, $2
	sw $13, 152($0)
	addu $13, $2, $12
	sw $6, 156($0)
	xor $6, $26, $26
	sw $17, 160($0)
	or $17, $23, $12
	sw $9, 164($0)
	and $9, $12, $18
	sw $23, 168($0)
	or $23, $6, $25
	sw $31, 172($0)
	and $31, $27, $11
	sw $27, 176($0)
	addu $27, $18, $30
	sw $8, 180($0)
	subu $8, $6, $10
	sw $19, 184($0)
	or $19, $12, $28
	sw $12, 188($0)
	addu $12, $18, $26
	sw $17, 192($0)
	addu $17, $31, $2
	sw $7, 196($0)
	xor $7, $3, $19
	sw $4, 200($0)
	addiu $4, $31, -15942
	sw $23, 204($0)
	addiu $23, $13, -30240
	sw $8, 208($0)
	addiu $8, $5, 19148
	sw $8, 212($0)
	addiu $8, $16, -21430
	sw $23, 216($0)
	addiu $23, $12, -30893
	sw $13, 220($0)
	addiu $13, $10, 27311
	sw $12, 224($0)
	addiu $12, $18, 5149
	sw $20, 228($0)
	addiu $20, $20, 17921
	sw $28, 232($0)
	addiu $28, $15, -7807
	sw $20, 236($0)
	addiu $20, $17, -21193
	sw $17, 240($0)
	ori $17, $25, 10267
	sw $7, 244($0)
	ori $7, $16, 53300
	sw $18, 248($0)
	ori $18, $6, 45574
	sw $4, 252($0)
	ori $4, $8, 46626
	sw $17, 256($0)
	ori $17, $20, 37121
	sw $28, 260($0)
	ori $28, $27, 774
	sw $23, 264($0)
	ori $23, $2, 39698
	sw $19, 268($0)
	ori $19, $25, 50046
	sw $13, 272($0)
	ori $13, $29, 25004
	sw $22, 276($0)
	ori $22, $4, 53260
	sw $28, 280($0)
	sll $28, $31, 0
	sw $1, 284($0)
	sll $1, $23, 10
	sw $18, 288($0)
	sll $18, $15, 6
	sw $11, 292($0)
	srl $11, $4, 27
	sw $17, 296($0)
	srl $17, $15, 13
	sw $8, 300($0)
	sll $8, $15, 14
	sw $28, 304($0)
	sll $28, $6, 13
	sw $31, 308($0)
	sll $31, $27, 20
	sw $10, 312($0)
	srl $10, $19, 2
	sw $9, 316($0)
	srl $9, $24, 8
	sw $29, 320($0)
	sll $29, $31, 20
	sw $27, 324($0)
	srl $27, $11, 19
	sw $20, 328($0)
	srl $20, $3, 12
	sw $16, 332($0)
	srl $16, $6, 12
	sw $3, 336($0)
	srl $3, $1, 6
	sw $18, 340($0)
	sll $18, $17, 17
	sw $3, 344($0)
	srl $3, $29, 9
	sw $21, 348($0)
	sll $21, $20, 11
	sw $14, 352($0)
	sll $14, $26, 25
	sw $12, 356($0)
	srl $12, $21, 19
	sw $3, 360($0)
	addiu $3, $23, 0
	beq $23, $3, beq_0
	xor $4, $26, $12
	sw $23, 364($0)
beq_0:
	sw $24, 368($0)
	addiu $24, $26, 15132
	bne $26, $24, beq_1
	xor $5, $18, $1
	sw $26, 372($0)
beq_1:
	sw $24, 376($0)
	addiu $24, $1, 17743
	bne $1, $24, beq_2
	xor $4, $14, $13
	sw $1, 380($0)
beq_2:
	sw $24, 384($0)
	addiu $24, $6, 0
	beq $6, $24, beq_3
	xor $24, $27, $7
	sw $6, 388($0)
beq_3:
	sw $5, 392($0)
	addiu $5, $31, 0
	bne $31, $5, beq_4
	xor $20, $29, $25
	sw $31, 396($0)
beq_4:
	sw $27, 400($0)
	addiu $27, $2, 14813
	bne $2, $27, beq_5
	xor $17, $26, $8
	sw $2, 404($0)
beq_5:
	sw $23, 408($0)
	addiu $23, $5, 0
	beq $5, $23, beq_6
	xor $0, $30, $23
	sw $5, 412($0)
beq_6:
	sw $18, 416($0)
	addiu $18, $16, 15093
	beq $16, $18, beq_7
	xor $16, $5, $8
	sw $16, 420($0)
beq_7:
	sw $22, 424($0)
	addiu $22, $1, 16554
	bne $1, $22, beq_8
	xor $9, $16, $14
	sw $1, 428($0)
beq_8:
	sw $18, 432($0)
	addiu $18, $22, 0
	beq $22, $18, beq_9
	xor $31, $13, $5
	sw $22, 436($0)
beq_9:
	sw $5, 440($0)
	addiu $5, $23, 25071
	beq $23, $5, beq_10
	xor $10, $13, $12
	sw $23, 444($0)
beq_10:
	sw $16, 448($0)
	addiu $16, $5, 0
	bne $5, $16, beq_11
	xor $19, $22, $29
	sw $5, 452($0)
beq_11:
	sw $30, 456($0)
	addiu $30, $11, 28504
	beq $11, $30, beq_12
	xor $21, $26, $24
	sw $11, 460($0)
beq_12:
	sw $26, 464($0)
	addiu $26, $20, 0
	beq $20, $26, beq_13
	xor $3, $10, $27
	sw $20, 468($0)
beq_13:
	sw $3, 472($0)
	addiu $3, $12, 0
	bne $12, $3, beq_14
	xor $0, $0, $4
	sw $12, 476($0)
beq_14:
	sw $13, 480($0)
	addiu $13, $23, 0
	bne $23, $13, beq_15
	xor $19, $11, $21
	sw $23, 484($0)
beq_15:
	sw $3, 488($0)
	addiu $3, $10, 0
	bne $10, $3, beq_16
	xor $14, $17, $9
	sw $10, 492($0)
beq_16:
	sw $21, 496($0)
	addiu $21, $23, 0
	beq $23, $21, beq_17
	xor $5, $0, $2
	sw $23, 500($0)
beq_17:
	sw $12, 504($0)
	addiu $12, $11, 25160
	bne $11, $12, beq_18
	xor $27, $20, $6
	sw $11, 508($0)
beq_18:
	sw $30, 512($0)
	addiu $30, $9, 4215
	beq $9, $30, beq_19
	xor $8, $25, $17
	sw $9, 516($0)
beq_19:
jal_0:	jal jal_54
	sw $ra, 520($0)
jal_1:	jal jal_17
	sw $ra, 524($0)
jal_2:	jal jal_15
	sw $ra, 528($0)
jal_3:	jal jal_46
	sw $ra, 532($0)
jal_4:	jal jal_18
	sw $ra, 536($0)
jal_5:	jal jal_53
	sw $ra, 540($0)
jal_6:	jal jal_26
	sw $ra, 544($0)
jal_7:	jal jal_58
	sw $ra, 548($0)
jal_8:	jal jal_19
	sw $ra, 552($0)
jal_9:	jal jal_4
	sw $ra, 556($0)
jal_10:	jal jal_27
	sw $ra, 560($0)
jal_11:	jal jal_51
	sw $ra, 564($0)
jal_12:	jal jal_10
	sw $ra, 568($0)
jal_13:	jal jal_16
	sw $ra, 572($0)
jal_14:	jal jal_35
	sw $ra, 576($0)
jal_15:	jal jal_1
	sw $ra, 580($0)
jal_16:	jal jal_38
	sw $ra, 584($0)
jal_17:	jal jal_30
	sw $ra, 588($0)
jal_18:	jal jal_24
	sw $ra, 592($0)
jal_19:	jal jal_59
	sw $ra, 596($0)
jal_20:	jal jal_28
	sw $ra, 600($0)
jal_21:	jal jal_6
	sw $ra, 604($0)
jal_22:	jal jal_31
	sw $ra, 608($0)
jal_23:	jal jal_37
	sw $ra, 612($0)
jal_24:	jal jal_39
	sw $ra, 616($0)
jal_25:	jal jal_55
	sw $ra, 620($0)
jal_26:	jal jal_42
	sw $ra, 624($0)
jal_27:	jal jal_22
	sw $ra, 628($0)
jal_28:	jal jal_61
	sw $ra, 632($0)
jal_29:	jal jal_7
	sw $ra, 636($0)
jal_30:	jal jal_20
	sw $ra, 640($0)
jal_31:	jal jal_13
	sw $ra, 644($0)
jal_32:	jal jal_56
	sw $ra, 648($0)
jal_33:	jal jal_47
	sw $ra, 652($0)
jal_34:	jal jal_23
	sw $ra, 656($0)
jal_35:	jal jal_34
	sw $ra, 660($0)
jal_36:	jal jal_14
	sw $ra, 664($0)
jal_37:	jal jal_44
	sw $ra, 668($0)
jal_38:	jal jal_52
	sw $ra, 672($0)
jal_39:	jal jal_2
	sw $ra, 676($0)
jal_40:	jal jal_33
	sw $ra, 680($0)
jal_41:	jal jal_60
	sw $ra, 684($0)
jal_42:	jal jal_25
	sw $ra, 688($0)
jal_43:	jal jal_29
	sw $ra, 692($0)
jal_44:	jal jal_49
	sw $ra, 696($0)
jal_45:	jal jal_40
	sw $ra, 700($0)
jal_46:	jal jal_5
	sw $ra, 704($0)
jal_47:	jal jal_57
	sw $ra, 708($0)
jal_48:	jal jal_62
	sw $ra, 712($0)
jal_49:	jal jal_11
	sw $ra, 716($0)
jal_50:	jal jal_41
	sw $ra, 720($0)
jal_51:	jal jal_45
	sw $ra, 724($0)
jal_52:	jal jal_9
	sw $ra, 728($0)
jal_53:	jal jal_12
	sw $ra, 732($0)
jal_54:	jal jal_43
	sw $ra, 736($0)
jal_55:	jal jal_50
	sw $ra, 740($0)
jal_56:	jal jal_8
	sw $ra, 744($0)
jal_57:	jal jal_48
	sw $ra, 748($0)
jal_58:	jal jal_63
	sw $ra, 752($0)
jal_59:	jal jal_36
	sw $ra, 756($0)
jal_60:	jal jal_32
	sw $ra, 760($0)
jal_61:	jal jal_21
	sw $ra, 764($0)
jal_62:	jal jal_end
	sw $ra, 768($0)
jal_63:	jal jal_3
	sw $ra, 772($0)
jal_end:
jr_0:	la $23, jr_28
	jr $23
	lw $23, 268($0)
jr_1:	la $1, jr_62
	jr $1
	lw $1, 536($0)
jr_2:	la $25, jr_17
	jr $25
	lw $25, 196($0)
jr_3:	la $30, jr_16
	jr $30
	lw $30, 212($0)
jr_4:	la $17, jr_30
	jr $17
	lw $17, 712($0)
jr_5:	la $15, jr_15
	jr $15
	lw $15, 128($0)
jr_6:	la $19, jr_41
	jr $19
	lw $19, 64($0)
jr_7:	la $23, jr_27
	jr $23
	lw $23, 500($0)
jr_8:	la $24, jr_59
	jr $24
	lw $24, 240($0)
jr_9:	la $30, jr_56
	jr $30
	lw $30, 216($0)
jr_10:	la $23, jr_14
	jr $23
	lw $23, 0($0)
jr_11:	la $14, jr_4
	jr $14
	lw $14, 140($0)
jr_12:	la $12, jr_2
	jr $12
	lw $12, 40($0)
jr_13:	la $12, jr_7
	jr $12
	lw $12, 352($0)
jr_14:	la $15, jr_end
	jr $15
	lw $15, 452($0)
jr_15:	la $24, jr_33
	jr $24
	lw $24, 588($0)
jr_16:	la $5, jr_5
	jr $5
	lw $5, 36($0)
jr_17:	la $22, jr_37
	jr $22
	lw $22, 24($0)
jr_18:	la $30, jr_1
	jr $30
	lw $30, 584($0)
jr_19:	la $29, jr_43
	jr $29
	lw $29, 676($0)
jr_20:	la $28, jr_12
	jr $28
	lw $28, 188($0)
jr_21:	la $24, jr_49
	jr $24
	lw $24, 548($0)
jr_22:	la $22, jr_40
	jr $22
	lw $22, 160($0)
jr_23:	la $3, jr_45
	jr $3
	lw $3, 724($0)
jr_24:	la $2, jr_26
	jr $2
	lw $2, 92($0)
jr_25:	la $28, jr_57
	jr $28
	lw $28, 448($0)
jr_26:	la $29, jr_31
	jr $29
	lw $29, 172($0)
jr_27:	la $28, jr_8
	jr $28
	lw $28, 732($0)
jr_28:	la $4, jr_32
	jr $4
	lw $4, 712($0)
jr_29:	la $12, jr_51
	jr $12
	lw $12, 616($0)
jr_30:	la $13, jr_38
	jr $13
	lw $13, 204($0)
jr_31:	la $18, jr_21
	jr $18
	lw $18, 92($0)
jr_32:	la $15, jr_47
	jr $15
	lw $15, 620($0)
jr_33:	la $20, jr_18
	jr $20
	lw $20, 456($0)
jr_34:	la $4, jr_52
	jr $4
	lw $4, 724($0)
jr_35:	la $18, jr_34
	jr $18
	lw $18, 92($0)
jr_36:	la $4, jr_11
	jr $4
	lw $4, 488($0)
jr_37:	la $31, jr_22
	jr $31
	lw $31, 372($0)
jr_38:	la $6, jr_39
	jr $6
	lw $6, 724($0)
jr_39:	la $28, jr_10
	jr $28
	lw $28, 184($0)
jr_40:	la $21, jr_46
	jr $21
	lw $21, 188($0)
jr_41:	la $29, jr_60
	jr $29
	lw $29, 692($0)
jr_42:	la $26, jr_54
	jr $26
	lw $26, 568($0)
jr_43:	la $30, jr_53
	jr $30
	lw $30, 484($0)
jr_44:	la $15, jr_23
	jr $15
	lw $15, 352($0)
jr_45:	la $7, jr_35
	jr $7
	lw $7, 516($0)
jr_46:	la $20, jr_24
	jr $20
	lw $20, 192($0)
jr_47:	la $6, jr_29
	jr $6
	lw $6, 704($0)
jr_48:	la $28, jr_13
	jr $28
	lw $28, 164($0)
jr_49:	la $13, jr_55
	jr $13
	lw $13, 4($0)
jr_50:	la $21, jr_58
	jr $21
	lw $21, 300($0)
jr_51:	la $8, jr_3
	jr $8
	lw $8, 92($0)
jr_52:	la $8, jr_25
	jr $8
	lw $8, 472($0)
jr_53:	la $5, jr_50
	jr $5
	lw $5, 360($0)
jr_54:	la $1, jr_36
	jr $1
	lw $1, 460($0)
jr_55:	la $22, jr_63
	jr $22
	lw $22, 564($0)
jr_56:	la $28, jr_48
	jr $28
	lw $28, 280($0)
jr_57:	la $29, jr_19
	jr $29
	lw $29, 64($0)
jr_58:	la $9, jr_9
	jr $9
	lw $9, 412($0)
jr_59:	la $18, jr_42
	jr $18
	lw $18, 432($0)
jr_60:	la $5, jr_61
	jr $5
	lw $5, 36($0)
jr_61:	la $24, jr_20
	jr $24
	lw $24, 724($0)
jr_62:	la $1, jr_6
	jr $1
	lw $1, 228($0)
jr_63:	la $8, jr_44
	jr $8
	lw $8, 500($0)
jr_end:
dl:	beq $8, $8, dl
	nop
