this is the MIPS pipelined cpu in Verilog .
the instruction set it supports is { add, addu, addiu, addi, subu, sub, lui, ori, or, j, jal, jr, lw, sw, sll, srl, sra, srav, jailc}
hazzards are well handled .
enjoy JZ ;-)
.
├── alu.v
├── bypass_btype.v
├── bypass_grf.v
├── bypass_ji.v
├── bypass_jr.v
├── bypass_rs_alu.v
├── bypass_rt_alu.v
├── bypass_rt_mem.v
├── cmp.v
├── ctrl.v
├── dm.v
├── EXE.v
├── ext.v
├── fmux.v
├── grf.v
├── hctrl.v
├── hstall.v
├── ID.v
├── IF.v
├── inspect.v
├── MEM.v
├── mips_t.v
├── mips.v
├── mux.v
├── npc.v
├── README.md
├── tags
└── WB.v

0 directories, 28 files
hhh
