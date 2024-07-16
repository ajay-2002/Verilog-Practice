`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 04:28:54 PM
// Design Name: 
// Module Name: SIPO_rt_ShiftRegister
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


module SIPO_rt_ShiftRegister(
input clk,
input reset,
input s_in,
output [3:0] p_out
);

reg [3:0] shift_reg;
assign p_out = shift_reg;

always@(posedge clk or posedge reset)
begin
if (reset)
begin
shift_reg = 4'b0000;
end
else
begin
shift_reg = {s_in ,shift_reg[3:1]}; 
end
end
endmodule
