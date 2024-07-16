`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/14/2024 06:09:38 PM
// Design Name: 
// Module Name: SISO_rt_ShiftRegister
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


module SISO_rt_ShiftRegister(
input clk, reset, 
input s_in,
output s_out
);

reg [3:0] shift_reg;   //4-bit shift register
//Assign serial output
assign s_out = shift_reg[0];

always@(posedge clk or posedge reset)
begin
if (reset)
begin
 shift_reg <= 4'b0000;
end
else
begin
shift_reg = {s_in, shift_reg[3:1]};   // shift left and load s_in into MSB
end
end
endmodule
