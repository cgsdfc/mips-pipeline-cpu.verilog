// MIT License
//
// Copyright (c) 2017 Cong Feng.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

module bypass_grf(input [31:0] instrD,
                      input [31:0] instrE,
                      input [31:0] instrM,
                      input [31:0] instrW,
                      output bypass_rs_grf,
                      output bypass_rt_grf);
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

    wire bypass_rs_W0 ;
    wire bypass_rs_W1 ;
    wire bypass_rs_W2 ;
    wire bypass_rs_W3 ;
    wire bypass_rs_W4 ;
    wire bypass_rs_W5 ;
    wire bypass_rs_W6 ;
    wire bypass_rs_W7 ;
    wire bypass_rs_W8 ;
    wire bypass_rs_W9 ;
    wire bypass_rs_W10 ;
    wire bypass_rs_W11 ;
    wire bypass_rs_W12 ;
    wire bypass_rs_W13 ;
    wire bypass_rs_W14 ;
    wire bypass_rs_W15 ;


    assign bypass_rs_W0 = cal_r_D & cal_r_W & rd_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W1 = cal_r_D & cal_i_W & rt_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W2 = cal_r_D &  load_W & rt_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W3 = cal_r_D &  jal_W & 31 == rs_D;

    assign bypass_rs_W4 = cal_i_D & cal_i_W & rt_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W5 = cal_i_D &  load_W & rt_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W6 = cal_i_D &   jal_W & 31 == rs_D;
    assign bypass_rs_W7 = cal_i_D & cal_r_W & rd_W == rs_D & rs_D ! = 0;

    assign bypass_rs_W8  = load_D  &  load_W & rt_W == rs_D & rs_D !  = 0;
    assign bypass_rs_W9  = load_D  & cal_r_W & rd_W == rs_D & rs_D !  = 0;
    assign bypass_rs_W10 = load_D  &  jal_W & 31 == rs_D ;
    assign bypass_rs_W11 = load_D  & cal_i_W & rt_W == rs_D & rs_D ! = 0;


    assign bypass_rs_W12 = store_D  & cal_i_W & rt_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W13 = store_D  & load_W  & rt_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W14 = store_D  & cal_r_W & rd_W == rs_D & rs_D ! = 0;
    assign bypass_rs_W15 = store_D  &  jal_W & 31 == rs_D;


    assign bypass_rs_grf =

           bypass_rs_W0 |
           bypass_rs_W1 |
           bypass_rs_W2 |
           bypass_rs_W3 |
           bypass_rs_W4 |
           bypass_rs_W5 |
           bypass_rs_W6 |
           bypass_rs_W7 |
           bypass_rs_W8 |
           bypass_rs_W9 |
           bypass_rs_W10 |
           bypass_rs_W11 |
           bypass_rs_W12 |
           bypass_rs_W13 |
           bypass_rs_W14 |
           bypass_rs_W15 ;

    wire bypass_rt_W0 ;
    wire bypass_rt_W1 ;
    wire bypass_rt_W2 ;
    wire bypass_rt_W3 ;
    wire bypass_rt_W4 ;
    wire bypass_rt_W5 ;
    wire bypass_rt_W6 ;
    wire bypass_rt_W7 ;

    assign bypass_rt_W0 = cal_r_D & cal_r_W & rd_W == rt_D & rt_D ! = 0;
    assign bypass_rt_W1 = cal_r_D & cal_i_W & rt_W == rt_D & rt_D ! = 0;
    assign bypass_rt_W2 = cal_r_D &  load_W & rt_W == rt_D & rt_D ! = 0;
    assign bypass_rt_W3 = cal_r_D &  jal_W  & rt_D == 31;

    assign bypass_rt_W4 = store_D &  cal_i_W & rt_W == rt_D & rt_D ! = 0;
    assign bypass_rt_W5 = store_D &  cal_r_W & rd_W == rt_D & rt_D ! = 0;
    assign bypass_rt_W6 = store_D  & jal_W  & rt_D == 31;
    assign bypass_rt_W7 = store_D &  load_W  & rt_W == rt_D & rt_D ! = 0;

    assign bypass_rt_grf =

           bypass_rt_W0 |
           bypass_rt_W1 |
           bypass_rt_W2 |
           bypass_rt_W3 |
           bypass_rt_W4 |
           bypass_rt_W5 |
           bypass_rt_W6 |
           bypass_rt_W7 ;



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
