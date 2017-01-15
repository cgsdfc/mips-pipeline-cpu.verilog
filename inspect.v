module inspect(
	input clk,
	input en,
	input [31:0] instrF,
	input [31:0] instrD,
	input [31:0] instrE,
	input [31:0] instrM,
	input [31:0] instrW
);
integer i;
initial begin
	i=0;
end
always @(posedge clk) begin
	if(en) begin
		$display("%d %h %h %h %h %h",	i, instrF, instrD, instrE, instrM, instrW);
	end
	i = i + 1;
end

endmodule
