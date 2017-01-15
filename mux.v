module mux0(
	input [4:0] rt, input [4:0] rd, output reg [4:0] write_addr,
	input reg_dst, input jal
);
always @(*) begin
	if(reg_dst) write_addr = rd;
	else if(jal) write_addr = 31;
	else write_addr = rt;
end

endmodule

module mux1(
	input [31:0] RD1, input [4:0] shamt,
	output reg [31:0] src_a,

	input const_shift
);
always @(*) begin
	if(const_shift) src_a = {27'b0, shamt};
	else src_a = RD1;
end

endmodule

module mux2(
	input [31:0] RD2, input [31:0] ext_imm,
	output reg [31:0] src_b,

	input alu_src
);
always @(*) begin
	if(alu_src) src_b = ext_imm;
	else src_b = RD2;
end

endmodule


module mux3(
	input [31:0] read_data, input [31:0] alu_out, input [31:0] pc_plus8,
	output reg [31:0] write_data,

	input jal, input mem_to_reg
);
always @(*) begin
	if(jal) write_data = pc_plus8;
	else if(mem_to_reg) write_data = read_data;
	else write_data = alu_out;
end

endmodule


module mux4(
	input [31:0] alu_out, input [31:0] pc_plus8,
	output reg [31:0] mem_data,

	input jal
);
always @(*) begin
	if(jal) mem_data = pc_plus8;
	else    mem_data = alu_out;
end

endmodule
