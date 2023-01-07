module mips( input reset, input clk, input en );


wire [31:0] instrF;
wire [31:0] instrD;
wire [31:0] instrE;
wire [31:0] instrM;
wire [31:0] instrW;
wire [31:0] pc_plus4F;
wire [31:0] pc_plus4D;
wire [31:0] pc_plus8E;
wire [31:0] pc_plus8M;
wire [31:0] pc_plus8W;

wire [31:0] RD1D;
wire [31:0] RD2D;
wire [31:0] RD1E;
wire [31:0] RD2E;
wire [31:0] RD2M;
wire [31:0] sel_RD1E;
wire [31:0] sel_RD2E;

wire [31:0] ext_immE;
wire [31:0] ext_immD;
wire [31:0] alu_outM;
wire [1:0] ext_opD;
wire [3:0] alu_opE;

wire pc_src;
wire [31:0] next_pcD;
wire [31:0] read_dataW;
wire [31:0] alu_outW;

wire [4:0] write_addrD;
wire [4:0] write_addrE;
wire [4:0] write_addrM;
wire [4:0] write_addrW;
wire [31:0] src_aE;
wire [31:0] src_bE;
wire [31:0] write_dataW;
wire [31:0] read_dataM;

wire [31:0] alu_outE;

wire [25:0] imm26D;
wire [15:0] imm16D;
wire [8:0] imm9D;
wire [4:0] shamtE;
assign imm26D = instrD[25:0];
assign imm16D = instrD[15:0];
assign imm9D = instrD[15:7];
assign shamtE = instrE[10:6];

wire [4:0] rsD, rtD, rdD;
assign rsD=instrD[25:21];
assign rtD=instrD[20:16];
assign rdD=instrD[15:11];

wire [4:0] rsW, rtW, rdW;
assign rsW=instrW[25:21];
assign rtW=instrW[20:16];
assign rdW=instrW[15:11];

wire [31:0] cmp0D, cmp1D;
wire cmp_outD;
wire [1:0] bypass_rs_b;
wire [1:0] bypass_rt_b;
wire [1:0] bypass_rs_jr;
wire [31:0] jrAddrD;
wire [31:0] ji_AddrD;
wire [1:0] bypass_rs_alu;
wire [1:0] bypass_rt_alu;
wire bypass_rt_mem;
wire [31:0] dataM;
wire [31:0] mem_dataM;
wire bypass_rs_grf;
wire bypass_rt_grf;
wire [1:0] bypass_rt_ji;

bypass_ji bypass_ji (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rt_ji(bypass_rt_ji)
);
bypass_grf bypass_grf (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rs_grf(bypass_rs_grf),
	.bypass_rt_grf(bypass_rt_grf)
);
dmux0 dmux0 (
	.RD2(RD2M),
	.write_data(write_dataW),
	.data(dataM),
	.bypass_rt_mem(bypass_rt_mem)
);
bypass_rt_mem_ bypass_rt_mem_ (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rt_mem(bypass_rt_mem)
);
bypass_rt_alu_ bypass_rt_alu_ (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rt_alu(bypass_rt_alu)
);


amux1 amux1 (
	.RD2(RD2E),
	.mem_data(mem_dataM),
	.write_data(write_dataW),
	.sel_RD2(sel_RD2E),
	.bypass_rt_alu(bypass_rt_alu)
);
amux0 amux0 (
	.RD1(RD1E),
	.mem_data(mem_dataM),
	.write_data(write_dataW),
	.sel_RD1(sel_RD1E),
	.bypass_rs_alu(bypass_rs_alu)
);

bypass_rs_alu_ bypass_rs_alu_ (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rs_alu(bypass_rs_alu)
);
jmux0 jmux0 (
	.RD1(RD1D),
	.pc_plus8E(pc_plus8E),
	.mem_data(mem_dataM),
	.write_data(write_dataW),
	.jrAddr(jrAddrD),
	.bypass_rs_jr(bypass_rs_jr)
);
jmux1 jmux1 (
	.RD2(RD2D),
	.pc_plus8E(pc_plus8E),
	.mem_data(mem_dataM),
	.write_data(write_dataW),
	.ji_Addr(ji_AddrD),
	.bypass_rt_ji(bypass_rt_ji)
);
bypass_jr bypass_jr (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rs_jr(bypass_rs_jr)
);
bmux0 bmux0 (
	.RD1(RD1D),
	.mem_data(mem_dataM),
	.write_data(write_dataW),
	.cmp0(cmp0D),
	.bypass_rs_b(bypass_rs_b)
);
bmux1 bmux1 (
	.RD2(RD2D),
	.mem_data(mem_dataM),
	.write_data(write_dataW),
	.cmp1(cmp1D),
	.bypass_rt_b(bypass_rt_b)
);
bypass_btype bypass_btype (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.bypass_rs_b(bypass_rs_b),
	.bypass_rt_b(bypass_rt_b)
);
hstall hstall (
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW),
	.stall(stall)
);
IF IF (
	.clk(clk),
	.reset(reset),
	.stall(stall),
	.pc_src(pc_srcD),
	.instrF(instrF),
	.pc_plus4F(pc_plus4F),
	.next_pc(next_pcD)
);

ID ID (
	.clk(clk),
	.reset(reset),
	.stall(stall),
	.instrF(instrF),
	.instrD(instrD),
	.pc_plus4F(pc_plus4F),
	.pc_plus4D(pc_plus4D)
);
EXE EXE (
	.clk(clk),
	.reset(reset),
	.stall(stall),
	.RD1D(RD1D),
	.RD1E(RD1E),
	.RD2D(RD2D),
	.RD2E(RD2E),
	.ext_immD(ext_immD),
	.ext_immE(ext_immE),
	.instrD(instrD),
	.instrE(instrE),
	.pc_plus4D(pc_plus4D),
	.pc_plus8E(pc_plus8E)
);
grf grf (
	.clk(clk),
	.reset(reset),
	.reg_write(reg_writeW),
	.rs(rsD),
	.rt(rtD),
	.write_addr(write_addrW),
	.RD1(RD1D),
	.RD2(RD2D),
	.write_data(write_dataW),
	.bypass_rs_grf(bypass_rs_grf),
	.bypass_rt_grf(bypass_rt_grf)
);

inspect inspect (
	.clk(clk),
	.en(en),
	.instrF(instrF),
	.instrD(instrD),
	.instrE(instrE),
	.instrM(instrM),
	.instrW(instrW)
);
MEM MEM (
	.clk(clk),
	.reset(reset),
	.instrE(instrE),
	.instrM(instrM),
	.RD2E(sel_RD2E),
	.RD2M(RD2M),
	.alu_outE(alu_outE),
	.alu_outM(alu_outM),
	.pc_plus8E(pc_plus8E),
	.pc_plus8M(pc_plus8M)
);
cmp cmp (
	.beq(beqD),
	.bgtz(bgtzD),
	.bgez(bgezD),
	.bne(bneD),
	.cmp0(cmp0D),
	.cmp1(cmp1D),
	.cmp_out(cmp_outD)
);
npc npc (
	.jr(jrD),
	.jrAddr(jrAddrD),
	.jump(jumpD),
	.imm26(imm26D),
	.cmp_out(cmp_outD),
	.ext_imm(ext_immD),
	.pc_plus4(pc_plus4D),
	.ji(jiD),
	.ji_Addr(ji_AddrD),
	.pc_src(pc_srcD),
	.next_pc(next_pcD)
);
WB WB (
	.clk(clk),
	.reset(reset),
	.instrM(instrM),
	.instrW(instrW),
	.read_dataM(read_dataM),
	.read_dataW(read_dataW),
	.alu_outM(alu_outM),
	.alu_outW(alu_outW),
	.pc_plus8M(pc_plus8M),
	.pc_plus8W(pc_plus8W)
);
ext ext (
	.ext_op(ext_opD),
	.imm16(imm16D),
	.imm9(imm9D),
	.ext_imm(ext_immD)
);
mux0 mux0 (
	.rt(rtW),
	.rd(rdW),
	.write_addr(write_addrW),
	.reg_dst(reg_dstW),
	.jal(jalW)
);
mux1 mux1 (
	.RD1(sel_RD1E),
	.shamt(shamtE),
	.src_a(src_aE),
	.const_shift(const_shiftE)
);

mux2 mux2 (
	.RD2(sel_RD2E),
	.ext_imm(ext_immE),
	.src_b(src_bE),
	.alu_src(alu_srcE)
);
mux3 mux3 (
	.read_data(read_dataW),
	.alu_out(alu_outW),
	.pc_plus8(pc_plus8W),
	.write_data(write_dataW),
	.jal(jalW),
	.mem_to_reg(mem_to_regW)
);
mux4 mux4(
	.alu_out(alu_outM),
	.pc_plus8(pc_plus8M),
	.mem_data(mem_dataM),
	.jal(jalM)
);
alu alu (
	.src_a(src_aE),
	.src_b(src_bE),
	.alu_op(alu_opE),
	.alu_out(alu_outE)
);

dm dm (
	.clk(clk),
	.reset(reset),
	.mem_write(mem_writeM),
	.swl(swl),
	.swr(swr),
	.alu_out(alu_outM),
	.read_data(read_dataM),
	.RD2(dataM)
);
ctrl ctrlD (
	.instr(instrD),
	.mem_to_reg(mem_to_regD),
	.mem_write(mem_writeD),
	.mem_read(mem_readD),
	.alu_src(alu_srcD),
	.const_shift(const_shiftD),
	.reg_write(reg_writeD),
	.reg_dst(reg_dstD),
	.alu_op(),
	.ext_op(ext_opD),
	.jump(jumpD),
	.jal(jalD),
	.jr(jrD),
	.ji(jiD),
	.beq(beqD),
	.bgez(bgezD),
	.bgtz(bgtzD),
	.bne(bneD),
	.swr(swrD),
	.swl(swlD)
);

ctrl ctrlE (
	.instr(instrE),
	.mem_to_reg(mem_to_regE),
	.mem_write(mem_writeE),
	.mem_read(mem_readE),
	.alu_src(alu_srcE),
	.const_shift(const_shiftE),
	.reg_write(reg_writeE),
	.reg_dst(reg_dstE),
	.alu_op(alu_opE),
	.ext_op(),
	.jump(jumpE),
	.jal(jalE),
	.jr(jrE),
	.ji(jiE),
	.beq(beqE),
	.bgez(bgezE),
	.bgtz(bgtzE),
	.bne(bneE),
	.swr(swrE),
	.swl(swlE)
);

ctrl ctrlM (
	.instr(instrM),
	.mem_to_reg(mem_to_regM),
	.mem_write(mem_writeM),
	.mem_read(mem_readM),
	.alu_src(alu_srcM),
	.const_shift(const_shiftM),
	.reg_write(reg_writeM),
	.reg_dst(reg_dstM),
	.alu_op(),
	.ext_op(),
	.jump(jumpM),
	.jal(jalM),
	.jr(jrM),
	.ji(jiM),
	.beq(beqM),
	.bgez(bgezM),
	.bgtz(bgtzM),
	.bne(bneM),
	.swr(swrM),
	.swl(swlM)
);

ctrl ctrlW (
	.instr(instrW),
	.mem_to_reg(mem_to_regW),
	.mem_write(mem_writeW),
	.mem_read(mem_readW),
	.alu_src(alu_srcW),
	.const_shift(const_shiftW),
	.reg_write(reg_writeW),
	.reg_dst(reg_dstW),
	.alu_op(),
	.ext_op(),
	.jump(jumpW),
	.jal(jalW),
	.jr(jrW),
	.ji(jiW),
	.beq(beqW),
	.bgez(bgezW),
	.bgtz(bgtzW),
	.bne(bneW),
	.swr(swrW),
	.swl(swlW)
);















endmodule
