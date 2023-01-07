module cmp(
	input beq, input bgtz, input bgez, input bne,
	input [31:0] cmp0, input [31:0] cmp1,
	output reg cmp_out
);

always @(*) begin
	if(beq) cmp_out = cmp0==cmp1;
	else if(bne) cmp_out = cmp0 != cmp1;
	else if(bgez) cmp_out = ~cmp0[31];
	else if(bgtz) cmp_out = ~cmp0[31] & |(cmp0);
	else cmp_out = 0;
end

endmodule

