module npc(

	input jr, input [31:0] jrAddr,
	input jump,input [25:0] imm26,
	input cmp_out,  input [31:0] ext_imm, input [31:0] pc_plus4,
	input ji, input [31:0] ji_Addr,

	output pc_src, output reg [31:0] next_pc
);
assign pc_src = jr | jump | cmp_out | ji;

always @(*) begin
	if(jr) begin
		next_pc = jrAddr;
	end
	else if(jump) begin
		next_pc = {4'b0, imm26, 2'b0};
	end
	else if(cmp_out) begin
		next_pc = pc_plus4 + (ext_imm<<2);
	end
	else if(ji) begin
		next_pc = ji_Addr + ext_imm;
	end
	else begin
		next_pc = pc_plus4;
	end
end
endmodule

