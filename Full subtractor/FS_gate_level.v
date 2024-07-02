`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 11:53:00 AM
// Design Name: 
// Module Name: HS_gate_level
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FS_gate_level(
    input a,
    input b,
    input c,
    output diff,
    output borr
    ); 
    wire and1, and2, and3, na;
    xor x1(diff, a, b, c);
    not n1(na, a);
    and a1(and1 ,na, b);
    and a2(and2, na, c);
    and a3(and3, b, c);
    or o1(borr, and1, and2, and3);
endmodule
