`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 09:56:36 AM
// Design Name: 
// Module Name: Decoder_tb
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


module Decoder_tb();
reg [1:0] i;
wire [3:0] y;
Decoder UUT (i, y);
integer a;
initial
begin
$display("Decoder Simulation begins..");
for(a=0;a<4;a=a+1)
begin
{i} = a;
#10;
$display("\ni=%b y=%b",i,y);
end
#60; $finish;
end
endmodule
