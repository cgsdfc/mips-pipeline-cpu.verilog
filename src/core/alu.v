module alu(
	input [31:0] src_a, input [31:0] src_b, input [3:0] alu_op,
	output reg [31:0] alu_out
);
reg [31:0] C;

wire signed  [31:0] signed_b;
assign signed_b = src_b;
always @(*) begin
	C = src_a - src_b;
	case(alu_op)
		0: alu_out = src_a + src_b;
		1: alu_out = src_a - src_b;
		2: alu_out = src_a | src_b;
		3: alu_out =  src_b >> {27'b0, src_a[4:0]};
		4: alu_out =  src_b << {27'b0, src_a[4:0]};
		5: alu_out =  {31'b0, C[31]};
		6: alu_out = src_a & src_b;
		7: alu_out = src_a ^ src_b;
		8: alu_out = signed_b >>> {27'b0, src_a[4:0]};
		9: alu_out = {{16{src_b[15]}}, src_b[15:0]};
	endcase
end

endmodule
