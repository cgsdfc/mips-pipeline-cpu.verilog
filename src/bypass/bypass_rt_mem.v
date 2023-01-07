module bypass_rt_mem_(

	input [31:0] instrD,
	input [31:0] instrE,
	input [31:0] instrM,
	input [31:0] instrW,
		
	output  bypass_rt_mem
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
	
	
	wire bypass_rt_W0 ;
	wire bypass_rt_W1 ;
	wire bypass_rt_W2 ;
	wire bypass_rt_W3 ;
	wire bypass_rt_W ;
	
	
	assign bypass_rt_W0 = store_M & cal_r_W & rd_W == rt_M & rt_M != 0;
	assign bypass_rt_W1 = store_M & cal_i_W & rt_W == rt_M & rt_M != 0;
	assign bypass_rt_W2 = store_M & load_W  & rt_W == rt_M & rt_M != 0;
	assign bypass_rt_W3 = store_M & jal_W  & 31 == rt_M;
	

	assign bypass_rt_W = 
	bypass_rt_W0 |
	bypass_rt_W1 |
	bypass_rt_W2 |
	bypass_rt_W3 ;
	
	assign bypass_rt_mem = bypass_rt_W;
	
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
