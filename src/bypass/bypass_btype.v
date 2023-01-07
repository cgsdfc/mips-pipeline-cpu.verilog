module bypass_btype(
	input [31:0] instrD,
	input [31:0] instrE,
	input [31:0] instrM,
	input [31:0] instrW,

	output reg [1:0] bypass_rs_b,
	output reg [1:0] bypass_rt_b
);
wire [4:0] rs_D;
wire [4:0] rt_D;
wire [4:0] rd_D;
wire [4:0] rs_E;
wire [4:0] rt_E;
wire [4:0] rd_E;
wire [4:0] rs_M;
wire [4:0] rt_M;
wire [4:0] rd_M;
wire [4:0] rs_W;
wire [4:0] rt_W;
wire [4:0] rd_W;

wire bypass_rs_M, bypass_rs_W, bypass_rt_M, bypass_rt_W;

wire bypass_rs_M0;
wire bypass_rs_M1;
wire bypass_rs_M2;

wire bypass_rs_W0;
wire bypass_rs_W1;
wire bypass_rs_W2;
wire bypass_rs_W3;

wire bypass_rt_M0;
wire bypass_rt_M1;
wire bypass_rt_M2;

wire bypass_rt_W0;
wire bypass_rt_W1;
wire bypass_rt_W2;
wire bypass_rt_W3;

assign bypass_rs_M0 = b_type_D & cal_r_M & rd_M == rs_D & rs_D != 0;
assign bypass_rs_M1 = b_type_D & cal_i_M & rt_M == rs_D & rs_D != 0;
assign bypass_rs_M2 = b_type_D & jal_M & 31 == rs_D;

assign bypass_rs_W0 = b_type_D & cal_r_W & rd_W == rs_D & rs_D != 0;
assign bypass_rs_W1 = b_type_D & cal_i_W & rt_W == rs_D & rs_D != 0;
assign bypass_rs_W2 = b_type_D & load_W & rt_W == rs_D  & rs_D != 0;
assign bypass_rs_W3 = b_type_D & jal_W & 31 == rs_D;


assign bypass_rt_M0 = b_type_D & cal_r_M & rd_M == rt_D & rt_D != 0;
assign bypass_rt_M1 = b_type_D & cal_i_M & rt_M == rt_D & rt_D != 0;
assign bypass_rt_M2 = b_type_D & jal_M & 31 == rt_D;

assign bypass_rt_W0 = b_type_D & cal_r_W & rd_W == rt_D & rt_D != 0;
assign bypass_rt_W1 = b_type_D & cal_i_W & rt_W == rt_D & rt_D != 0;
assign bypass_rt_W2 = b_type_D & load_W &  rt_W == rt_D & rt_D != 0;
assign bypass_rt_W3 = b_type_D & jal_W &  31  == rt_D;

assign  bypass_rs_M = bypass_rs_M0 | bypass_rs_M1|bypass_rs_M2;
assign  bypass_rs_W = bypass_rs_W0 | bypass_rs_W1 | bypass_rs_W2 | bypass_rs_W3;

assign  bypass_rt_M = bypass_rt_M0 | bypass_rt_M1|bypass_rt_M2;
assign  bypass_rt_W = bypass_rt_W0 | bypass_rt_W1 | bypass_rt_W2 | bypass_rt_W3;

always @(*) begin
	if(bypass_rs_M) bypass_rs_b = 1;
	else if(bypass_rs_W ) bypass_rs_b = 2;
	else bypass_rs_b = 0;
end
	always @(*) begin
		if(bypass_rt_M) bypass_rt_b = 1;
		else if(bypass_rt_W ) bypass_rt_b = 2;
		else bypass_rt_b = 0;
	end

hctrl hctrl_D (
	.instr(instrD),
	.b_type(b_type_D),
	.cal_i(cal_i_D),
	.cal_r(cal_r_D),
	.load(load_D),
	.store(store_D),
	.jr(jr_D),
	.ji(ji_D),
	.jal(jal_D),
	.rs(rs_D),
	.rt(rt_D),
	.rd(rd_D)
);
hctrl hctrl_E (
	.instr(instrE),
	.b_type(b_type_E),
	.cal_i(cal_i_E),
	.cal_r(cal_r_E),
	.load(load_E),
	.store(store_E),
	.jr(jr_E),
	.ji(ji_E),
	.jal(jal_E),
	.rs(rs_E),
	.rt(rt_E),
	.rd(rd_E)
);
hctrl hctrl_M (
	.instr(instrM),
	.b_type(b_type_M),
	.cal_i(cal_i_M),
	.cal_r(cal_r_M),
	.load(load_M),
	.store(store_M),
	.jr(jr_M),
	.ji(ji_M),
	.jal(jal_M),
	.rs(rs_M),
	.rt(rt_M),
	.rd(rd_M)
);
hctrl hctrl_W (
	.instr(instrW),
	.b_type(b_type_W),
	.cal_i(cal_i_W),
	.cal_r(cal_r_W),
	.load(load_W),
	.store(store_W),
	.jr(jr_W),
	.ji(ji_W),
	.jal(jal_W),
	.rs(rs_W),
	.rt(rt_W),
	.rd(rd_W)
);
endmodule
