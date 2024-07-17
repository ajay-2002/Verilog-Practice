`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2024 11:50:07 AM
// Design Name: 
// Module Name: Intermediate_Flipflops
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


module Intermediate_Flipflops(
input clk,
input  s_in,
output reg s_out
);
reg d_ff1, d_ff2, d_ff3;
always@(posedge clk)
begin
d_ff1 <= s_in;
d_ff2 <= d_ff1;
d_ff3 <= d_ff2;
s_out <= d_ff3;
end
endmodule
