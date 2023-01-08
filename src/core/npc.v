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

module npc(input jr,
               input [31:0] jrAddr,
               input jump,
               input [25:0] imm26,
               input cmp_out,
               input [31:0] ext_imm,
               input [31:0] pc_plus4,
               input ji,
               input [31:0] ji_Addr,
               output pc_src,
               output reg [31:0] next_pc);
    assign pc_src = jr | jump | cmp_out | ji;

    always @(*)
    begin
        if (jr)
        begin
            next_pc = jrAddr;
        end
        else if (jump)
        begin
            next_pc = {4'b0, imm26, 2'b0};
        end
        else if (cmp_out)
        begin
            next_pc = pc_plus4 + (ext_imm<<2);
        end
        else if (ji)
        begin
            next_pc = ji_Addr + ext_imm;
        end
        else
        begin
            next_pc = pc_plus4;
        end
    end
endmodule

