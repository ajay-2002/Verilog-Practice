`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 12:16:02 PM
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
reg a, b, b_in;
wire diff, b_out;
FS UUT (a,b,b_in,diff,b_out);
integer i;
initial
begin
$display("FS using HSs - Instantiation");
for(i=0;i<8;i=i+1)
begin
{a,b,b_in} = i;
#10
$display("\na=%b b=%b b_in=%b diff=%b b_out=%b",a,b,b_in,diff,b_out);
end
end
endmodule
