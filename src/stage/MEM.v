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

module MEM(input clk,
               input reset,
               input [31:0] instrE,
               output reg [31:0] instrM,
               input [31:0] RD2E,
               output reg [31:0] RD2M,
               input [31:0] alu_outE,
               output reg [31:0] alu_outM,
               input [31:0] pc_plus8E,
               output reg [31:0] pc_plus8M);
    initial
    begin
        instrM = 0;
    end

    always @(posedge clk)
    begin
        if (reset)
        begin
            instrM    = 0;
            RD2M      = 0;
            alu_outM  = 0;
            pc_plus8M = 0;
        end
        else
        begin
            instrM    = instrE;
            alu_outM  = alu_outE;
            pc_plus8M = pc_plus8E;
            RD2M      = RD2E;
        end
    end

endmodule
