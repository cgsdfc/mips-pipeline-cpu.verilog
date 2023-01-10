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

module alu(input [31:0] src_a,
               input [31:0] src_b,
               input [3:0] alu_op,
               output reg [31:0] alu_out);
    reg [31:0] C;

    wire signed  [31:0] signed_b;
    assign signed_b = src_b;
    always @(*)
    begin
        C = src_a - src_b;
        case(alu_op)
            0:
                alu_out = src_a + src_b;
            1:
                alu_out = src_a - src_b;
            2:
                alu_out = src_a | src_b;
            3:
                alu_out = src_b >> {27'b0, src_a[4:0]};
            4:
                alu_out = src_b << {27'b0, src_a[4:0]};
            5:
                alu_out = {31'b0, C[31]};
            6:
                alu_out = src_a & src_b;
            7:
                alu_out = src_a ^ src_b;
            8:
                alu_out = signed_b >>> {27'b0, src_a[4:0]};
            9:
                alu_out = {{16{src_b[15]}}, src_b[15:0]};
        endcase
    end

endmodule
