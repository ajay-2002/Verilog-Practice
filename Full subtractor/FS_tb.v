`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 12:03:22 PM
// Design Name: 
// Module Name: FS_tb
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


module FS_tb();
reg A, B, C;
wire Diff, Borr;
FS_gate_level DUT (.a(A), .b(B), .c(C), .diff(Diff), .borr(Borr));
integer i;
initial
begin
$display("Full Subtractor Simulation");
$monitor($time, "\tA=%b B=%b C=%b Diff=%b Borr=%b",A,B,C,Diff,Borr);
for(i=0;i<8;i=i+1)
begin
{A,B,C}=i;   //assign the value of i as 3 bit vector to A, B, C
#10;
end
end
