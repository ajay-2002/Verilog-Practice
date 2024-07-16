`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 05:56:11 PM
// Design Name: 
// Module Name: PISO_rt_ShiftRegister
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


module PISO_rt_ShiftRegister(
input clk,
input reset,
input load,  //load input
input [3:0] p_in,
output reg s_out
);

reg [3:0] shift_reg;
always@(posedge clk or posedge reset)
begin
if (reset)
begin
shift_reg = 4'b0000;
s_out = 1'b0;
end
else if (load)
begin
shift_reg <= p_in;   //load parallel data into shift_reg
end
else
begin
s_out <= shift_reg[0];
shift_reg <= shift_reg>>1;
end
end
endmodule
