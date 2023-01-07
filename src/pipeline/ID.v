module ID(
	input clk, input reset, input stall,

	input [31:0] instrF,
	output reg [31:0] instrD,

	input [31:0] pc_plus4F,
	output reg [31:0] pc_plus4D

);
initial begin instrD = 0; end

always @(posedge clk) begin
	if(reset) begin
		instrD = 0;
		pc_plus4D = 0;
	end
	else if(!stall) begin
		instrD = instrF;
		pc_plus4D = pc_plus4F;
	end
end


endmodule
