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

module WB(input clk,
              input reset,
              input [31:0] instrM,
              output reg [31:0] instrW,
              input [31:0] read_dataM,
              output reg [31:0] read_dataW,
              input [31:0] alu_outM,
              output reg [31:0] alu_outW,
              input [31:0] pc_plus8M,
              output reg [31:0] pc_plus8W);
    initial
    begin
        instrW = 0;
    end
    always @ (posedge clk)
    begin
        if (reset)
        begin
            instrW     = 0;
            alu_outW   = 0;
            read_dataW = 0;
            pc_plus8W  = 0;
        end
        else
        begin
            instrW     = instrM;
            alu_outW   = alu_outM;
            read_dataW = read_dataM;
            pc_plus8W  = pc_plus8M;
        end
    end

endmodule
