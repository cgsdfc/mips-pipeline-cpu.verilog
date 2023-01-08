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

module EXE(input clk,
               input reset,
               input stall,
               input [31:0] RD1D,
               output reg [31:0] RD1E,
               input [31:0] RD2D,
               output reg [31:0] RD2E,
               input [31:0] ext_immD,
               output reg [31:0] ext_immE,
               input [31:0] instrD,
               output reg [31:0] instrE,
               input [31:0] pc_plus4D,
               output reg [31:0] pc_plus8E);
    initial
    begin
        instrE = 0;
    end

    always @(posedge clk)
    begin
        if (stall || reset)
        begin
            instrE    = 0;
            RD1E      = 0;
            RD2E      = 0;
            ext_immE  = 0;
            pc_plus8E = 0;
        end
        else
        begin
            instrE    = instrD;
            ext_immE  = ext_immD;
            RD1E      = RD1D;
            RD2E      = RD2D;
            pc_plus8E = pc_plus4D + 4;
        end
    end

endmodule
