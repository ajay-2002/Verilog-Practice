`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 03:50:18 PM
// Design Name: 
// Module Name: Adder
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


module Adder_16bit(
input [15:0] a,
input [15:0] b,
input [15:0] c_in,
output reg [15:0] sum,
output reg carry
);
always@(a or b or c_in or sum or carry)
begin
 {carry, sum} = a+b+c_in;
 //sum = a^b^c_in;
 //carry = (a&b)|(b&c_in)|(a&c_in);
end
endmodule
