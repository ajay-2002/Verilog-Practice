`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 10:30:51 AM
// Design Name: 
// Module Name: Encoder_4_2
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


module Encoder1_4_2(
input [3:0] i,
output reg [1:0] y
);

always@(i)
begin
if(i[0])
         y = 2'b00;
else if(i[1])
         y = 2'b01;
else if(i[2])
         y = 2'b10;
else if(i[3])
         y = 2'b11;
else
         y = 2'bxx;
end
endmodule
