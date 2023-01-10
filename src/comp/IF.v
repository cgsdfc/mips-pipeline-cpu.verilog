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

module IF(input clk,
              input reset,
              input stall,
              input pc_src,
              input [31:0] next_pc,
              output [31:0] instrF,
              output [31:0] pc_plus4F);
    reg [31:0] pc;
    reg [31:0] im [1023:0];

    assign pc_plus4F = pc + 4;
    assign instrF    = im [pc[11:2]];
    parameter code   = "func.txt";

    initial
    begin
        $readmemh(code, im);
        pc = 32'h3000;
    end

    always @(posedge clk)
    begin
        if (reset)
            pc = 32'h3000;
        else if (!stall)
        begin
            if (pc_src)
            begin
                pc = next_pc;
            end
            else
            begin
                pc = pc_plus4F;
            end
        end
    end
endmodule
