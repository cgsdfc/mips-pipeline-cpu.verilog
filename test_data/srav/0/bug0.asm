ori $s0, $0, 1
ori $s1, $0, 2
nop
nop
nop
xor $t0 $s0 $s1
sll $t1 $t0 3
sll $t2 $t0 2
srav $t3 $t0 $t2
sw $t3 384($0)
sw $t2 388($0)

$16 <= 00000001
$17 <= 00000002
$ 8 <= 00000003
$ 9 <= 00000018
$10 <= 0000000c
$11 <= 00000000
*00000180 <= 00000000
*00000184 <= 0000000c

-- program is finished running (dropped off bottom) --

