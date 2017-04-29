addi $1, $0, 8
addi $2, $0, -8
nop
nop
sra $3, $1, 1
nop
sra $4, $2, 1
nop
sra $5, $0, 1
nop

# $ 1 <= 00000008
# $ 2 <= fffffff8
# $ 3 <= 00000004
# $ 4 <= fffffffc
# $ 5 <= 00000000

# -- program is finished running (dropped off bottom) --


# $ 1 <= 00000008
# $ 2 <= fffffff8