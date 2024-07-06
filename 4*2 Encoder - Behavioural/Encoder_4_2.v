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


module Encoder_4_2(
input [3:0] i,
output reg [1:0] y
);

always@(i)
begin
case(i)
    1 : y = 0;
    2 : y = 1;
    4 : y = 2;
    8 : y = 3;
    default: y = 2'bxx;
endcase
end
endmodule
