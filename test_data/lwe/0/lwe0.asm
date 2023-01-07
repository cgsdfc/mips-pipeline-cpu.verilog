#initial
addi $s0 $0 131071
addi $s1 $0 5
addi $s2 $0 65535
addi $s3 $0 8
lui $s5 0xABCD
add $s6 $t0 0xffff
#initial done
subu $t0 $s0 $s1
subu $t1 $s0 $t0
add $t2 $s0 $t0
add $t3 $s0 $t0
sw $t3 0($0)
sw $t2 4($0)
sw $t1 8($0)
add $t0 $s0 $s1
add $t1 $t0 $s0
addu $t2 $t0 $s0
sub $t3 $t0 $s0
sw $t1 12($0)
sw $t3 16($0)
sw $t2 20($0)
addu $t0 $s0 $s1
ori $t1 $t0 63
addi $t2 $t0 32
addi $t3 $t0 46
sw $t3 24($0)
sw $t2 28($0)
sw $t1 32($0)
addi $t0 $s1 100
sub $t0 $0 $0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 36($0)
sw $t2 40($0)
sw $t1 44($0)
addi $t0 $s1 100
addi $t0 $0 0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 48($0)
sw $t2 52($0)
sw $t1 56($0)
addi $t0 $s1 725
and $t1 $s0 $t0
or $t2 $s0 $t0
subu $t3 $s0 $t0
sw $t3 60($0)
sw $t2 64($0)
sw $t1 68($0)
addi $t0 $s1 727
sub $t1 $t0 $s0
xor $t2 $t0 $s0
sub $t3 $t0 $s0
sw $t1 72($0)
sw $t3 76($0)
sw $t2 80($0)
addi $t0 $s1 7
addi $t1 $t0 5
ori $t2 $t0 5
addiu $t3 $t0 1
sw $t2 84($0)
sw $t1 88($0)
sw $t3 92($0)
lwe $t0 56($0)
add $t1 $s0 $t0
and $t2 $s0 $t0
add $t3 $s0 $t0
sw $t3 96($0)
sw $t2 100($0)
sw $t1 104($0)
lwe $t0 36($0)
add $t1 $t0 $s0
subu $t2 $t0 $s0
addu $t3 $t0 $s0
sw $t1 108($0)
sw $t3 112($0)
sw $t2 116($0)
lwe $t0 0($0)
addi $t1 $t0 100
ori $t2 $t0 100
addi $t3 $t0 100
sw $t3 120($0)
sw $t2 124($0)
sw $t1 128($0)
addi $t0 $0 4
sw $t0 132($0)
lwe $t0 132($0)
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 132($0)
sw $t2 136($0)
sw $t1 140($0)
subu $t0 $s0 $s1
srl $t1 $t0 1
srl $t2 $t0 1
sll $t3 $t0 0
sw $t3 144($0)
sw $t2 148($0)
sw $t1 152($0)
addiu $t0 $s1 6
sll $t1 $s1 3
srl $t2 $s1 0
sll $t3 $s1 0
sw $t2 156($0)
sw $t1 160($0)
sw $t3 164($0)
lwe $t0 0($0)
srl $t1 $t0 2
sll $t2 $t0 0
srl $t3 $t0 3
sw $t3 168($0)
sw $t2 172($0)
sw $t1 176($0)
sll $t0 $s0 3
addu $t1 $s0 $t0
sub $t2 $s0 $t0
add $t3 $s0 $t0
sw $t3 180($0)
sw $t2 184($0)
sw $t1 188($0)
sll $t0 $s0 2
subu $t1 $t0 $s0
or $t2 $t0 $s0
xor $t3 $t0 $s0
sw $t1 192($0)
sw $t3 196($0)
sw $t2 200($0)
sll $t0 $s0 1
ori $t1 $t0 8
addi $t2 $t0 0
ori $t3 $t0 8
sw $t2 204($0)
sw $t1 208($0)
sw $t3 212($0)
addi $t0 $0 4
addi $t1 $0 256
sll $t2 $t0 2
lwe $t3 0($t2)
lwe $t4 4($t2)
lwe $t5 8($t2)
sw $t3 216($0)
sw $t4 220($0)
sw $t5 224($0)
srl $t2 $t1 6
lwe $t3 0($t2)
lwe $t4 4($t2)
lwe $t5 8($t2)
sw $t3 228($0)
sw $t4 232($0)
sw $t5 236($0)
addu $t0 $s0 $s1
and $t1 $s0 $t0
and $t2 $s0 $t0
addu $t3 $s0 $t0
sw $t3 240($0)
sw $t2 244($0)
sw $t1 248($0)
addu $t0 $s0 $s1
addu $t1 $t0 $s0
addu $t2 $t0 $s0
subu $t3 $t0 $s0
sw $t1 252($0)
sw $t3 256($0)
sw $t2 260($0)
sub $t0 $s0 $s1
addi $t1 $t0 61
ori $t2 $t0 46
addiu $t3 $t0 30
sw $t3 264($0)
sw $t2 268($0)
sw $t1 272($0)
addi $t0 $s1 100
sub $t0 $0 $0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 276($0)
sw $t2 280($0)
sw $t1 284($0)
addi $t0 $s1 100
addiu $t0 $0 0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 288($0)
sw $t2 292($0)
sw $t1 296($0)
addiu $t0 $s1 925
add $t1 $s0 $t0
sub $t2 $s0 $t0
or $t3 $s0 $t0
sw $t3 300($0)
sw $t2 304($0)
sw $t1 308($0)
addiu $t0 $s1 669
or $t1 $t0 $s0
and $t2 $t0 $s0
and $t3 $t0 $s0
sw $t1 312($0)
sw $t3 316($0)
sw $t2 320($0)
addiu $t0 $s1 8
addi $t1 $t0 5
addiu $t2 $t0 6
ori $t3 $t0 4
sw $t2 324($0)
sw $t1 328($0)
sw $t3 332($0)
lwe $t0 200($0)
add $t1 $s0 $t0
or $t2 $s0 $t0
and $t3 $s0 $t0
sw $t3 336($0)
sw $t2 340($0)
sw $t1 344($0)
lw $t0 312($0)
and $t1 $t0 $s0
subu $t2 $t0 $s0
subu $t3 $t0 $s0
sw $t1 348($0)
sw $t3 352($0)
sw $t2 356($0)
lw $t0 184($0)
addiu $t1 $t0 100
addiu $t2 $t0 100
addiu $t3 $t0 100
sw $t3 360($0)
sw $t2 364($0)
sw $t1 368($0)
addi $t0 $0 4
sw $t0 372($0)
lw $t0 372($0)
lw $t1 0($t0)
lw $t2 4($t0)
lw $t3 8($t0)
sw $t3 372($0)
sw $t2 376($0)
sw $t1 380($0)
and $t0 $s0 $s1
srl $t1 $t0 2
sll $t2 $t0 1
sll $t3 $t0 1
sw $t3 384($0)
sw $t2 388($0)
sw $t1 392($0)
addiu $t0 $s1 5
srl $t1 $s1 0
srl $t2 $s1 1
sll $t3 $s1 0
sw $t2 396($0)
sw $t1 400($0)
sw $t3 404($0)
lw $t0 0($0)
srl $t1 $t0 0
srl $t2 $t0 2
srl $t3 $t0 2
sw $t3 408($0)
sw $t2 412($0)
sw $t1 416($0)
sll $t0 $s0 3
add $t1 $s0 $t0
or $t2 $s0 $t0
xor $t3 $s0 $t0
sw $t3 420($0)
sw $t2 424($0)
sw $t1 428($0)
sll $t0 $s0 4
xor $t1 $t0 $s0
addu $t2 $t0 $s0
xor $t3 $t0 $s0
sw $t1 432($0)
sw $t3 436($0)
sw $t2 440($0)
srl $t0 $s0 3
ori $t1 $t0 4
addiu $t2 $t0 0
ori $t3 $t0 7
sw $t2 444($0)
sw $t1 448($0)
sw $t3 452($0)
addi $t0 $0 4
addi $t1 $0 256
sll $t2 $t0 2
lw $t3 0($t2)
lw $t4 4($t2)
lw $t5 8($t2)
sw $t3 456($0)
sw $t4 460($0)
sw $t5 464($0)
srl $t2 $t1 6
lwe $t3 0($t2)
lwe $t4 4($t2)
lwe $t5 8($t2)
sw $t3 468($0)
sw $t4 472($0)
sw $t5 476($0)
addu $t0 $s0 $s1
add $t1 $s0 $t0
addu $t2 $s0 $t0
subu $t3 $s0 $t0
sw $t3 480($0)
sw $t2 484($0)
sw $t1 488($0)
and $t0 $s0 $s1
subu $t1 $t0 $s0
subu $t2 $t0 $s0
subu $t3 $t0 $s0
sw $t1 492($0)
sw $t3 496($0)
sw $t2 500($0)
xor $t0 $s0 $s1
addi $t1 $t0 28
ori $t2 $t0 92
addi $t3 $t0 27
sw $t3 504($0)
sw $t2 508($0)
sw $t1 512($0)
addi $t0 $s1 100
sub $t0 $0 $0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 516($0)
sw $t2 520($0)
sw $t1 524($0)
addi $t0 $s1 100
ori $t0 $0 0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 528($0)
sw $t2 532($0)
sw $t1 536($0)
addi $t0 $s1 33
or $t1 $s0 $t0
add $t2 $s0 $t0
or $t3 $s0 $t0
sw $t3 540($0)
sw $t2 544($0)
sw $t1 548($0)
addi $t0 $s1 902
sub $t1 $t0 $s0
addu $t2 $t0 $s0
add $t3 $t0 $s0
sw $t1 552($0)
sw $t3 556($0)
sw $t2 560($0)
ori $t0 $s1 8
addi $t1 $t0 9
ori $t2 $t0 0
ori $t3 $t0 3
sw $t2 564($0)
sw $t1 568($0)
sw $t3 572($0)
lw $t0 288($0)
or $t1 $s0 $t0
xor $t2 $s0 $t0
and $t3 $s0 $t0
sw $t3 576($0)
sw $t2 580($0)
sw $t1 584($0)
lw $t0 260($0)
add $t1 $t0 $s0
sub $t2 $t0 $s0
add $t3 $t0 $s0
sw $t1 588($0)
sw $t3 592($0)
sw $t2 596($0)
lw $t0 560($0)
addi $t1 $t0 100
ori $t2 $t0 100
ori $t3 $t0 100
sw $t3 600($0)
sw $t2 604($0)
sw $t1 608($0)
addi $t0 $0 4
sw $t0 612($0)
lw $t0 612($0)
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 612($0)
sw $t2 616($0)
sw $t1 620($0)
sub $t0 $s0 $s1
srl $t1 $t0 1
sll $t2 $t0 3
srl $t3 $t0 2
sw $t3 624($0)
sw $t2 628($0)
sw $t1 632($0)
ori $t0 $s1 0
sll $t1 $s1 3
sll $t2 $s1 2
srl $t3 $s1 2
sw $t2 636($0)
sw $t1 640($0)
sw $t3 644($0)
lwe $t0 0($0)
srl $t1 $t0 3
sll $t2 $t0 1
srl $t3 $t0 0
sw $t3 648($0)
sw $t2 652($0)
sw $t1 656($0)
sll $t0 $s0 2
subu $t1 $s0 $t0
addu $t2 $s0 $t0
sub $t3 $s0 $t0
sw $t3 660($0)
sw $t2 664($0)
sw $t1 668($0)
sll $t0 $s0 4
subu $t1 $t0 $s0
or $t2 $t0 $s0
subu $t3 $t0 $s0
sw $t1 672($0)
sw $t3 676($0)
sw $t2 680($0)
srl $t0 $s0 2
ori $t1 $t0 2
ori $t2 $t0 9
ori $t3 $t0 6
sw $t2 684($0)
sw $t1 688($0)
sw $t3 692($0)
addi $t0 $0 4
addi $t1 $0 256
sll $t2 $t0 2
lwe $t3 0($t2)
lwe $t4 4($t2)
lwe $t5 8($t2)
sw $t3 696($0)
sw $t4 700($0)
sw $t5 704($0)
srl $t2 $t1 6
lwe $t3 0($t2)
lwe $t4 4($t2)
lwe $t5 8($t2)
sw $t3 708($0)
sw $t4 712($0)
sw $t5 716($0)
xor $t0 $s0 $s1
xor $t1 $s0 $t0
or $t2 $s0 $t0
or $t3 $s0 $t0
sw $t3 720($0)
sw $t2 724($0)
sw $t1 728($0)
and $t0 $s0 $s1
addu $t1 $t0 $s0
add $t2 $t0 $s0
addu $t3 $t0 $s0
sw $t1 732($0)
sw $t3 736($0)
sw $t2 740($0)
sub $t0 $s0 $s1
ori $t1 $t0 88
ori $t2 $t0 17
ori $t3 $t0 76
sw $t3 744($0)
sw $t2 748($0)
sw $t1 752($0)
addi $t0 $s1 100
sub $t0 $0 $0
lwe $t1 0($t0)
lwe $t2 4($t0)
lwe $t3 8($t0)
sw $t3 756($0)
sw $t2 760($0)
sw $t1 764($0)
addi $t0 $s1 100
addiu $t0 $0 0
lw $t1 0($t0)
lw $t2 4($t0)
lw $t3 8($t0)
sw $t3 768($0)
sw $t2 772($0)
sw $t1 776($0)
ori $t0 $s1 240
add $t1 $s0 $t0
sub $t2 $s0 $t0
subu $t3 $s0 $t0
sw $t3 780($0)
sw $t2 784($0)
sw $t1 788($0)
ori $t0 $s1 57
or $t1 $t0 $s0
sub $t2 $t0 $s0
or $t3 $t0 $s0
sw $t1 792($0)
sw $t3 796($0)
sw $t2 800($0)
addi $t0 $s1 3
addi $t1 $t0 9
ori $t2 $t0 6
ori $t3 $t0 4
sw $t2 804($0)
sw $t1 808($0)
sw $t3 812($0)
lw $t0 284($0)
addu $t1 $s0 $t0
or $t2 $s0 $t0
add $t3 $s0 $t0
sw $t3 816($0)
sw $t2 820($0)
sw $t1 824($0)
lw $t0 672($0)
addu $t1 $t0 $s0
or $t2 $t0 $s0
add $t3 $t0 $s0
sw $t1 828($0)
sw $t3 832($0)
sw $t2 836($0)
lw $t0 456($0)
addi $t1 $t0 100
addiu $t2 $t0 100
addi $t3 $t0 100
sw $t3 840($0)
sw $t2 844($0)
sw $t1 848($0)
addi $t0 $0 4
sw $t0 852($0)
lw $t0 852($0)
lw $t1 0($t0)
lw $t2 4($t0)
lw $t3 8($t0)
sw $t3 852($0)
sw $t2 856($0)
sw $t1 860($0)
subu $t0 $s0 $s1
srl $t1 $t0 0
sll $t2 $t0 3
srl $t3 $t0 1
sw $t3 864($0)
sw $t2 868($0)
sw $t1 872($0)
addiu $t0 $s1 8
sll $t1 $s1 1
srl $t2 $s1 2
sll $t3 $s1 1
sw $t2 876($0)
sw $t1 880($0)
sw $t3 884($0)
lwe $t0 0($0)
sll $t1 $t0 1
sll $t2 $t0 0
sll $t3 $t0 3
sw $t3 888($0)
sw $t2 892($0)
sw $t1 896($0)
sll $t0 $s0 1
and $t1 $s0 $t0
add $t2 $s0 $t0
add $t3 $s0 $t0
sw $t3 900($0)
sw $t2 904($0)
sw $t1 908($0)
sll $t0 $s0 1
and $t1 $t0 $s0
sub $t2 $t0 $s0
or $t3 $t0 $s0
sw $t1 912($0)
sw $t3 916($0)
sw $t2 920($0)
sll $t0 $s0 4
addi $t1 $t0 7
addiu $t2 $t0 4
addi $t3 $t0 7
sw $t2 924($0)
sw $t1 928($0)
sw $t3 932($0)
addi $t0 $0 4
addi $t1 $0 256
sll $t2 $t0 2
lw $t3 0($t2)
lw $t4 4($t2)
lw $t5 8($t2)
sw $t3 936($0)
sw $t4 940($0)
sw $t5 944($0)
srl $t2 $t1 6
lw $t3 0($t2)
lw $t4 4($t2)
lw $t5 8($t2)
sw $t3 948($0)
sw $t4 952($0)
sw $t5 956($0)
lui $t0 24
or $t1 $s0 $t0
add $t2 $s0 $t0
xor $t3 $s0 $t0
sw $t3 960($0)
sw $t2 964($0)
sw $t1 968($0)
lui $t0 12
addu $t1 $t0 $s0
xor $t2 $t0 $s0
addu $t3 $t0 $s0
sw $t1 972($0)
sw $t3 976($0)
sw $t2 980($0)
lui $t0 47
ori $t1 $t0 24
ori $t2 $t0 87
addi $t3 $t0 65
sw $t1 984($0)
sw $t3 988($0)
sw $t2 992($0)
lui $t0 296
sw $t0 996($0)
sw $t0 1000($0)
sw $t0 1004($0)
end : j end
nop
