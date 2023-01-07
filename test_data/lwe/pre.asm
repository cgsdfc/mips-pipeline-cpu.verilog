ori $1, $0, 10
sw $1 , -2($1)
nop
nop
nop
lwe $2, -2($1)


Reset: reset completed.

$ 1 <= 0000000a
*00000008 <= 0000000a
$ 2 <= 0000000a

-- program is finished running (dropped off bottom) --

