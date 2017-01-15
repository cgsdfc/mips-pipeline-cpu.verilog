module grf(
	input clk, input reset, input reg_write,
	input [4:0] rs, input [4:0] rt, input [4:0] write_addr,
	output [31:0] RD1, output [31:0] RD2, input [31:0] write_data,
	input bypass_rs_grf, input bypass_rt_grf

);
reg [31:0] _grf [31:0];
integer i;

assign RD1=rs==0 ? 0 : bypass_rs_grf ? write_data : _grf[rs];
assign RD2=rt==0 ? 0 : bypass_rt_grf ? write_data : _grf[rt];

initial begin
	for(i=0;i<32;i=i+1) begin
		_grf[i]=0;
	end
end

always @(posedge clk) begin
	if(reset) begin
		for(i=0;i<32;i=i+1) begin
			_grf[i]=0;
		end
	end
end

always @(posedge clk) begin
	if(reg_write && write_addr !== 0) begin
		_grf[write_addr]=write_data;
		$display("$%d <= %h", write_addr, write_data);
	end
end

endmodule
