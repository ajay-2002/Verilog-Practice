`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 11:31:31 AM
// Design Name: 
// Module Name: HS_tb
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


module HS_tb();
reg a,b;
wire diff,borr;
HS_dataflow DUT (a, b, diff, borr);
integer i;
initial
begin
$display("Half Subtractor using Dataflow modelling");
for(i=0;i<4;i=i+1)
begin
{a,b} = i;
#10;
$display("\nA=%b B=%b Diff=%b Borr=%b",a,b,diff,borr);
end
end
endmodule
