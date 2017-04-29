addi $2, $0, -3
nop
seh $1, $2
nop

ori $3, $0, 3
nop
seh $4, $3
nop

seh $5, $0
nop

ori $6, $0, 0xabcd1234
nop
seh $7, $6
nop

$ 2 <= fffffffd
$ 1 <= fffffffd
$ 3 <= 00000003
$ 4 <= 00000003
$ 5 <= 00000000
$ 1 <= abcd0000
$ 1 <= abcd1234
$ 6 <= abcd1234
$ 7 <= 00001234	