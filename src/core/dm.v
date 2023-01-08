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

module dm(input clk,
              input reset,
              input mem_write,
              input swl,
              input swr,
              input [31:0] alu_out,
              output [31:0] read_data,
              input [31:0] RD2);
    reg [31:0] _dm  [1023:0];
    reg [31:0] tmp;
    integer i;
    assign read_data = _dm[alu_out[11:2]];

    initial
    begin
        for(i = 0;i<1024;i = i+1)
        begin
            _dm[i] = 0;
        end
    end

    always @(posedge clk)
    begin
        if (reset)
        begin
            for(i = 0;i<1024;i = i+1)
            begin
                _dm[i] = 0;
            end
        end
    end

    always @(posedge clk)
    begin
        if (mem_write)
        begin
            _dm[alu_out[11:2]] = RD2;
            $display("*%h <= %h", alu_out, RD2);
        end
    end
endmodule
