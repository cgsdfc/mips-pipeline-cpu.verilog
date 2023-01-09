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

module bmux0(input [31:0] RD1,
                 input [31:0] mem_data,
                 input [31:0] write_data,
                 output reg [31:0] cmp0,
                 input [1:0] forward_rs_b);
    always @(*)
    begin
        case(forward_rs_b)
            0:
            begin
                cmp0 = RD1;
            end
            1:
            begin
                cmp0 = mem_data;
            end
            2:
            begin
                cmp0 = write_data;
            end
        endcase
    end

endmodule

module bmux1(
        input [31:0] RD2, input [31:0] mem_data, input [31:0] write_data,
        output reg [31:0] cmp1,
        input [1:0] forward_rt_b
    );
    always @(*)
    begin
        case(forward_rt_b)
            0:
                cmp1 = RD2;
            1:
                cmp1 = mem_data;
            2:
                cmp1 = write_data;
        endcase
    end

endmodule

module jmux0(
        input [31:
               0] RD1,
        input [31:
               0] pc_plus8E,
        input [31:
               0] mem_data,
        input [31:
               0] write_data,

        output reg [31:
                    0] jrAddr,
        input [1:
               0] forward_rs_jr
    );
    always @(*)
    begin
        case(forward_rs_jr)
            0:
                jrAddr = RD1;
            1:
                jrAddr = pc_plus8E;
            2:
                jrAddr = mem_data;
            3:
                jrAddr = write_data;
        endcase
    end

endmodule


module jmux1(
        input [31:0] RD2,
        input [31:0] pc_plus8E,
        input [31:0] mem_data,
        input [31:0] write_data,

        output reg [31:0] ji_Addr,
        input [1:0] forward_rt_ji
    );
    always @(*)
    begin
        case(forward_rt_ji)
            0:
                ji_Addr = RD2;
            1:
                ji_Addr = pc_plus8E;
            2:
                ji_Addr = mem_data;
            3:
                ji_Addr = write_data;
        endcase
    end

endmodule

module amux0(
        input [31:0] RD1, input [31:0] mem_data,
        input [31:0] write_data,
        output reg [31:0] sel_RD1,
        input [1:0] forward_rs_alu
    );
    always@(*)
    begin
        case(forward_rs_alu)
            0:
                sel_RD1 = RD1;
            1:
                sel_RD1 = mem_data;
            2:
                sel_RD1 = write_data;
        endcase
    end

endmodule

module amux1(
        input [31:0] RD2, input [31:0] mem_data,
        input [31:0] write_data,
        output reg [31:0] sel_RD2,
        input [1:0] forward_rt_alu
    );
    always@(*)
    begin
        case(forward_rt_alu)
            0:
                sel_RD2 = RD2;
            1:
                sel_RD2 = mem_data;
            2:
                sel_RD2 = write_data;
        endcase
    end

endmodule

module dmux0(
        input [31:0] RD2, input [31:0] write_data,
        output  [31:0] data,

        input forward_rt_mem
    );
    assign data = forward_rt_mem ? write_data : RD2;

endmodule
