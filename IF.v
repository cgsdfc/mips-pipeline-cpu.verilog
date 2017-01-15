module IF(
	input clk, input reset, input stall,
	input pc_src, input [31:0] next_pc,
	output [31:0] instrF, output [31:0] pc_plus4F
);
reg [31:0] pc;
reg [31:0] im [1023:0];

assign pc_plus4F = pc + 4;
assign instrF = im [pc[11:2]];
parameter code = "func.txt";

initial begin
	$readmemh(code, im);
	pc = 32'h3000;
end

always @(posedge clk) begin
	if(reset) pc = 32'h3000;
	else if(!stall) begin
		if(pc_src) begin
			pc = next_pc;
		end
		else begin
			pc = pc_plus4F;
		end
	end
end
endmodule
