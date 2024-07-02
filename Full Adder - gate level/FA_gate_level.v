`timescale 1ns / 1ps

module FA_gate_level(
    input a,
    input b,
    input c_in,
    output s,
    output c
    );
    wire and1, and2, and3;
    xor x1(s,a,b,c_in);
    and a1(and1,a,b);
    and a2(and2,b,c);
    and a3(and3,a,c);
    or o1(c,and1,and2,and3);
endmodule
