`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 11:58:41 AM
// Design Name: 
// Module Name: FS
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


module FS(
input a, b, b_in,
output diff, b_out
);
wire w1,b_0,b_1;
HS S1 (a, b, w1, b_0);
HS S2 (w1, b_in, diff, b_1);
or o1 (b_out, b_0, b_1);
endmodule

module HS(
input a,b,
output diff, borr
);
wire na;
xor x1 (diff, a, b);
not n1 (na, a);
and a1 (borr, na, b);
endmodule
