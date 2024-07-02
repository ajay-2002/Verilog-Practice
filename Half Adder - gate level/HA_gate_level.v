`timescale 1ns / 1ps

module HA_gate_level(
    input a,
    input b,
    output s,
    output c
    );
    xor x1(s,a,b);
    and a1(c,a,b);
     
endmodule
