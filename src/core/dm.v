module dm(
	input clk, input reset, input mem_write,
	input swl, input swr, input [31:0] alu_out,
	output [31:0] read_data, input [31:0] RD2
);
reg [31:0] _dm  [1023:0];
reg [31:0] tmp;
integer i;
assign read_data = _dm[alu_out[11:2]];

initial begin
	for(i=0;i<1024;i=i+1) begin
		_dm[i]=0;
	end
end

always @(posedge clk) begin
	if(reset) begin
		for(i=0;i<1024;i=i+1) begin
			_dm[i]=0;
		end
	end
end

always @(posedge clk) begin
	if(mem_write) begin
		_dm[alu_out[11:2]] = RD2;
		$display("*%h <= %h", alu_out, RD2);
	end
end
endmodule
