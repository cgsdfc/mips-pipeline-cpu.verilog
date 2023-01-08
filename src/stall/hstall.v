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

module hstall(input [31:0] instrD,
                  input [31:0] instrE,
                  input [31:0] instrM,
                  input [31:0] instrW,
                  output stall);
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

    wire bstall0, bstall1, bstall2, bstall3, bstall4, bstall5, bstall6, bstall7, bstall;
    wire lstall0, lstall1, lstall2, lstall3, lstall;

    wire jrstall, jrstall0, jrstall1, jrstall2, jrstall3;
    wire jistall, jistall0, jistall1, jistall2, jistall3;

    assign bstall0 = b_type_D & cal_r_E & rd_E == rs_D & rs_D ! = 0;
    assign bstall1 = b_type_D & cal_i_E & rt_E == rs_D & rs_D ! = 0;
    assign bstall2 = b_type_D & load_E  & rt_E == rs_D & rs_D ! = 0;
    assign bstall3 = b_type_D & load_M  & rt_M == rs_D & rs_D ! = 0;

    assign bstall4 = b_type_D & cal_r_E & rd_E == rt_D & rt_D ! = 0;
    assign bstall5 = b_type_D & cal_i_E & rt_E == rt_D & rt_D ! = 0;
    assign bstall6 = b_type_D & load_E  & rt_E == rt_D & rt_D ! = 0;
    assign bstall7 = b_type_D & load_M  & rt_M == rt_D & rt_D ! = 0;

    assign lstall0 = load_E & cal_i_D & rs_D == rt_E & rs_D ! = 0;
    assign lstall1 = load_E & cal_r_D & rs_D == rt_E & rs_D ! = 0;
    assign lstall2 = load_E & cal_r_D & rt_D == rt_E & rt_D ! = 0;
    assign lstall3 = load_E & load_D & rs_D == rt_E & rs_D ! = 0;
    assign lstall4 = load_E & store_D & rs_D == rt_E & rs_D ! = 0;

    assign jrstall0 = jr_D & cal_i_E & rs_D == rt_E & rs_D ! = 0;
    assign jrstall1 = jr_D & cal_r_E & rs_D == rd_E & rs_D ! = 0;
    assign jrstall2 = jr_D & load_E & rs_D == rt_E & rs_D ! = 0;
    assign jrstall3 = jr_D & load_M & rs_D == rt_M & rs_D ! = 0;

    assign jistall0 = ji_D & cal_i_E & rt_D == rt_E & rt_D ! = 0;
    assign jistall1 = ji_D & cal_r_E & rt_D == rd_E & rt_D ! = 0;
    assign jistall2 = ji_D & load_E &  rt_D == rt_E & rt_D ! = 0;
    assign jistall3 = ji_D & load_M &  rt_D == rt_M & rt_D ! = 0;

    assign bstall  = bstall0 | bstall1 | bstall2 | bstall3 | bstall4 | bstall5 | bstall6 | bstall7;
    assign lstall  = lstall0 | lstall1 | lstall2 | lstall3 | lstall4;
    assign jrstall = jrstall0 | jrstall1 | jrstall2 | jrstall3;
    assign jistall = jistall0 | jistall1 | jistall2 | jistall3;


    assign stall = bstall | lstall | jrstall | jistall;


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
