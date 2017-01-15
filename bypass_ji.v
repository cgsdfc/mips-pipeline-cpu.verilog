module bypass_ji(
	input [31:0] instrD,
	input [31:0] instrE,
	input [31:0] instrM,
	input [31:0] instrW,

	output reg [1:0] bypass_rt_ji
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

wire bypass_rt_E, bypass_rt_M, bypass_rt_W;

wire bypass_rt_M0;
wire bypass_rt_M1;
wire bypass_rt_M2;

wire bypass_rt_W0 ;
wire bypass_rt_W1 ;
wire bypass_rt_W2 ;
wire bypass_rt_W3 ;

assign bypass_rt_E = ji_D & jal_E & rt_D == 31;


assign bypass_rt_M0 = ji_D & jal_M & rt_D == 31;
assign bypass_rt_M1 = ji_D & cal_i_M & rt_D == rt_M & rt_D != 0;
assign bypass_rt_M2 = ji_D & cal_r_M & rt_D == rd_M & rt_D != 0;


assign bypass_rt_W0 = ji_D & jal_W & rt_D == 31;
assign bypass_rt_W1 = ji_D & load_W & rt_D == rt_W & rt_D != 0;
assign bypass_rt_W2 = ji_D & cal_i_W & rt_D == rt_W & rt_D != 0;
assign bypass_rt_W3 = ji_D & cal_r_W & rt_D == rd_W & rt_D != 0;

assign bypass_rt_M =

	bypass_rt_M0 |
	bypass_rt_M1 |
	bypass_rt_M2 ;

assign bypass_rt_W =

	bypass_rt_W0 |
	bypass_rt_W1 |
	bypass_rt_W2 |
	bypass_rt_W3 ;

always @(*) begin
	if(bypass_rt_E) bypass_rt_ji = 1;
	else if(bypass_rt_M) bypass_rt_ji = 2;
	else if(bypass_rt_W) bypass_rt_ji = 3;
	else bypass_rt_ji = 0;
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
