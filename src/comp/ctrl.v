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

`timescale 1ns / 1ps

module ctrl(input [31:0] instr,
                output mem_to_reg,
                output mem_write,
                output mem_read,
                output alu_src,
                output const_shift,
                output reg_write,
                output reg_dst,
                output [3:0] alu_op,
                output [1:0] ext_op,
                output jump,
                output jal,
                output jr,
                output ji,
                output beq,
                output bgez,
                output bgtz,
                output bne,
                output swr,
                output swl);
    wire [5:0] opcode ,func;
    wire R, addu, subu, ori, lw, sw, beq, lui, j,_jal,jr,sll, addi;
    wire slti,_or,sllv, srl, addiu;
    wire add, bne, _and, _xor, sub, seh, _ji, sra,srav;
    wire lwe;
    wire [4:0] rs;
    assign rs = instr[25:21];

    assign opcode = instr[31:26];
    assign func   = instr[5:0];
    //R
    assign R    = &(~opcode);
    assign _and = R & func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0];
    assign _xor = R & func[5] & ~func[4] & ~func[3] & func[2] & func[1] & ~func[0];
    assign sra  = R & ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & func[0];
    assign srav = R & ~func[5] & ~func[4] & ~func[3] & func[2] & func[1] & func[0];
    assign add  = R & func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];
    assign sub  = R & func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0];

    assign seh = ~opcode[5] & opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0]
           &func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];

    assign addu = R & func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & func[0];
    assign subu = R & func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & func[0];
    assign jr   = R & ~func[5] & ~func[4] & func[3] & ~func[2] & ~func[1] & ~func[0];
    assign sll  = R & ~func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];
    assign srlv = R & ~func[5] & ~func[4] & ~func[3] & func[2] & func[1] & ~func[0];
    assign srl  = R & ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0];
    assign _or  = R & func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & func[0];
    assign sllv = R & ~func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0];

    assign lwe = ~opcode[5] & opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0] &
           ~instr[6] & func[5] & ~func[4] & func[3] & func[2] & func[1] & func[0];

    //I
    assign bne   = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
    assign slti  = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
    assign ori   = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
    assign lw    = opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
    assign sw    = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
    assign swr   = opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & opcode[1] & ~opcode[0];
    assign beq   = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & ~opcode[0];
    assign lui   = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0];
    assign bgtz  = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & opcode[0];
    assign bgez  = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];
    assign swl   = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
    assign addiu = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];
    assign addi  = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];

    //J
    assign j     = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
    assign _jal  = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
    assign _ji   = opcode[5] & opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & ~opcode[0];
    assign jialc = opcode[5] & opcode[4] & opcode[3] & opcode[2] & opcode[1] & ~opcode[0] & ~(|rs);

    //control signal

    assign ji   = _ji | jialc;
    assign jump = _jal | j;
    assign jal  = _jal | jialc;

    assign alu_src     = swr | swl | lw | lwe | lui | sw | ori | swr | slti | addiu | addi;
    assign const_shift = sll | srl | sra;

    assign mem_write  = sw;
    assign mem_to_reg = lw | lwe;

    assign reg_write = sllv | _or | ori |addu | subu | sll| lui | lw  | add |_jal| jialc | srlv | slti | srl | addiu | addi | sub |seh|_and | _xor|sra|srav|lwe;

    assign reg_dst = sllv | addu | subu | sll | srlv | _or | srl|add|_and|_xor|sub |seh |sra|srav;

    assign ext_op[0] = lui | lwe;
    assign ext_op[1] = _ji | jialc|  lwe | swl | swr | bgtz | beq | lw | sw | swr | bgez | slti | bne | addi | addiu ;

    assign alu_op[0] = slti | subu | srlv | srl | sub | _xor|seh;
    assign alu_op[1] = ori | srlv | _or | srl | _and | _xor;
    assign alu_op[2] = sllv | slti | sll | _and | _xor;
    assign alu_op[3] = sra|seh|srav ;

endmodule
