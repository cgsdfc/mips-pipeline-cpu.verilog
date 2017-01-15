module WB(
	input clk, input reset,
	input [31:0] instrM, output reg [31:0] instrW,
	input [31:0] read_dataM, output reg [31:0] read_dataW,
	input [31:0] alu_outM,  output reg [31:0] alu_outW,
	input [31:0] pc_plus8M,  output reg [31:0] pc_plus8W

);
initial begin instrW = 0; end
always @ (posedge clk) begin
	if(reset) begin
		instrW = 0;
		alu_outW = 0;
		read_dataW = 0;
		pc_plus8W = 0;
	end
	else begin
		instrW = instrM;
		alu_outW = alu_outM;
		read_dataW = read_dataM;
		pc_plus8W = pc_plus8M;
	end
end

endmodule
