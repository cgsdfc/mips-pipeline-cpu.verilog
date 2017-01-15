module ext(
	input [1:0] ext_op,
	input [15:0] imm16,
	input [8:0] imm9,
	output [31:0] ext_imm
);

reg [31:0] ext_imm;

always @(*) begin
	case(ext_op)
		0:ext_imm={16'b0, imm16};
		1:ext_imm={imm16,16'b0};
		2:ext_imm={{16{imm16[15]}}, imm16};
		3:ext_imm={{23{imm9[8]}}, imm9};
	endcase
end

endmodule
