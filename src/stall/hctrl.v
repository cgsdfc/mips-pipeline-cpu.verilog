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

module hctrl(input [31:0] instr,
                 output b_type,
                 output cal_i,
                 output cal_r,
                 output load,
                 output store,
                 output jr,
                 output jal,
                 output ji,
                 output [4:0] rs,
                 output [4:0] rt,
                 output [4:0] rd);
    wire [5:0] opcode ,func;
    wire R, addu, subu, ori, lw, sw, beq, lui, j,_jal,jr,sll;
    wire slti,_or,sllv, srl, addiu;
    wire add, bne, _and, _xor, sub, seh, _ji, sra,srav, addi;
    wire jialc;

    assign opcode = instr[31:26];
    assign func   = instr[5:0];
    assign rs     = instr[25:21];
    assign rt     = instr[20:16];
    assign rd     = instr[15:11];

    //R
    assign R    = &(~opcode);
    assign _and = R & func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0];
    assign _xor = R & func[5] & ~func[4] & ~func[3] & func[2] & func[1] & ~func[0];
    assign sra  = R & ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & func[0];
    assign srav = R & ~func[5] & ~func[4] & ~func[3] & func[2] & func[1] & func[0];

    assign add = R & func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];
    
    assign addu = R & func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & func[0];
    assign subu = R & func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & func[0];
    assign sub  = R & func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0];
    assign jr   = R & ~func[5] & ~func[4] & func[3] & ~func[2] & ~func[1] & ~func[0];
    assign sll  = R & ~func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];
    assign srlv = R & ~func[5] & ~func[4] & ~func[3] & func[2] & func[1] & ~func[0];
    assign srl  = R & ~func[5] & ~func[4] & ~func[3] & ~func[2] & func[1] & ~func[0];
    assign _or  = R & func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & func[0];
    assign sllv = R & ~func[5] & ~func[4] & ~func[3] & func[2] & ~func[1] & ~func[0];

    assign seh = ~opcode[5] & opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0]
           &func[5] & ~func[4] & ~func[3] & ~func[2] & ~func[1] & ~func[0];

    //I
    assign slti = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
    assign addi = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];

    assign ori = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
    assign lw  = opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
    assign lwe = ~opcode[5] & opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0] &
           ~instr[6] & func[5] & ~func[4] & func[3] & func[2] & func[1] & func[0];

    assign sw    = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
    assign swr   = opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & opcode[1] & ~opcode[0];
    assign beq   = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & ~opcode[0];
    assign bne   = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & ~opcode[1] & opcode[0];
    assign lui   = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2] & opcode[1] & opcode[0];
    assign bgtz  = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & opcode[0];
    assign bgez  = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];
    assign swl   = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
    assign addiu = ~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0];

    //J
    assign _ji = opcode[5] & opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & ~opcode[0];

    assign jialc = opcode[5] & opcode[4] & opcode[3] & opcode[2] & opcode[1] & ~opcode[0] & ~(|rs);

    assign j    = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & ~opcode[0];
    assign _jal = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];

    //control signal

    assign store = sw;
    assign load  = lw | lwe;

    assign b_type = beq | bgez | bgtz | bne;

    assign cal_i = ori | lui | slti | addiu | addi ;

    assign cal_r = sllv | addu | subu | sll | srlv | _or | srl | add | sub | seh | sra | _and | _xor | srav;

    assign jal = _jal | jialc;
    assign ji  = _ji | jialc;

endmodule
