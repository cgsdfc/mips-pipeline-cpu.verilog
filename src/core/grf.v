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

module grf(input clk,
               input reset,
               input reg_write,
               input [4:0] rs,
               input [4:0] rt,
               input [4:0] write_addr,
               output [31:0] RD1,
               output [31:0] RD2,
               input [31:0] write_data,
               input bypass_rs_grf,
               input bypass_rt_grf);
    reg [31:0] _grf [31:0];
    integer i;

    assign RD1 = rs == 0 ? 0 : bypass_rs_grf ? write_data : _grf[rs];
    assign RD2 = rt == 0 ? 0 : bypass_rt_grf ? write_data : _grf[rt];

    initial
    begin
        for(i = 0;i<32;i = i+1)
        begin
            _grf[i] = 0;
        end
    end

    always @(posedge clk)
    begin
        if (reset)
        begin
            for(i = 0;i<32;i = i+1)
            begin
                _grf[i] = 0;
            end
        end
    end

    always @(posedge clk)
    begin
        if (reg_write && write_addr ! == 0)
        begin
            _grf[write_addr] = write_data;
            $display("$%d <= %h", write_addr, write_data);
        end
    end

endmodule
