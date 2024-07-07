`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 10:32:40 AM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
input [1:0] i,
output reg [3:0] y
);

always@(i)
begin
y = 4'b0000;

case(i)
     0 : y = 1;
     1 : y = 2;
     2 : y = 4;
     3 : y = 8;
     default: y = 2'bx; 
endcase
end
endmodule
