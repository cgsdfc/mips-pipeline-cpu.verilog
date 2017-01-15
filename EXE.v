module EXE(
	input clk, input reset, input stall,

	input [31:0] RD1D,	output reg [31:0] RD1E,
	input [31:0] RD2D,	output reg [31:0] RD2E,
	input [31:0] ext_immD, output reg [31:0] ext_immE,

	input [31:0] instrD, output reg [31:0] instrE,
	input [31:0] pc_plus4D, output reg [31:0] pc_plus8E
);
initial begin instrE = 0; end

always @(posedge clk) begin
	if(stall || reset) begin
		instrE = 0;
		RD1E = 0;
		RD2E = 0;
		ext_immE = 0;
		pc_plus8E = 0;
	end
	else begin
		instrE = instrD;
		ext_immE = ext_immD;
		RD1E = RD1D;
		RD2E = RD2D;
		pc_plus8E = pc_plus4D + 4;
	end
end

endmodule
