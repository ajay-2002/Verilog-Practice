`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 11:30:05 AM
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


module HS_gate_level(
    input a,
    input b,
    output diff,
    output borr
    );
    wire na;
    xor x1(diff,a,b);
    not n1(na,a);
    and a1(borr,na,b);
endmodule
