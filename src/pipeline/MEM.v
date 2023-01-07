module MEM(

	input clk, input reset,
	input [31:0] instrE, output reg [31:0] instrM,
	input [31:0] RD2E,  output reg [31:0]  RD2M,
	input [31:0] alu_outE, output reg [31:0] alu_outM,
	input [31:0] pc_plus8E, output reg [31:0] pc_plus8M

);
initial begin instrM = 0;  end

always @(posedge clk) begin
	if(reset) begin
		instrM = 0;
		RD2M = 0;
		alu_outM = 0;
		pc_plus8M = 0;
	end
	else begin
		instrM = instrE;
		alu_outM = alu_outE;
		pc_plus8M = pc_plus8E;
		RD2M = RD2E;
	end
end

endmodule
