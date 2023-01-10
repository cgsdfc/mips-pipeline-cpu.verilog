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

module mux0(input [4:0] rt,
                input [4:0] rd,
                output reg [4:0] write_addr,
                input reg_dst,
                input jal);
    always @(*)
    begin
        if (reg_dst)
            write_addr  = rd;
        else if (jal)
            write_addr = 31;
        else
            write_addr          = rt;
    end

endmodule

module mux1(
        input [31:0] RD1, input [4:0] shamt,
        output reg [31:0] src_a,

        input const_shift
    );
    always @(*)
    begin
        if (const_shif t)
            src_a = {27'b0, shamt};
        else
            src_a              = RD1;
    end

endmodule

module mux2(
        input [31:
               0] RD2, input [31:
                              0] ext_imm,
        output reg [31:
                    0] src_b,

        input alu_src
    );
    always @(*)
    begin
        if (alu_src)
            src_b = ext_imm;
        else
            src_b         = RD2;
    end

endmodule


module mux3(
        input [31:0] read_data, input [31:0] alu_out, input [31:0] pc_plus8,
        output reg [31:0] write_data,

        input jal, input mem_to_reg
    );
    always @(*)
    begin
        if (jal)
            write_data             = pc_plus8;
        else if (mem_to_reg)
            write_data = read_data;
        else
            write_data                 = alu_out;
    end

endmodule


module mux4(
        input [31:0] alu_out, input [31:0] pc_plus8,
        output reg [31:0] mem_data,

        input jal
    );
    always @(*)
    begin
        if (jal)
            mem_data = pc_plus8;
        else
            mem_data  = alu_out;
    end

endmodule
