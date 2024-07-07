`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 10:18:56 AM
// Design Name: 
// Module Name: Decoder_2_4_tb
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


module Decoder_2_4_tb();
reg [1:0] i;
wire [3:0] y;
Decoder_2_4 UUT (i, y);
integer a;
initial
begin
$display("Decoder Simulation");
$display($time," i=%b y=%b",i,y);
for (a=0;a<4;a=a+1)
begin
{i} = a;
#10;
end
#60; $finish;
end
endmodule
