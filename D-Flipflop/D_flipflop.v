`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 06:14:56 PM
// Design Name: 
// Module Name: D_flipflop
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


module D_flipflop(
input clk,reset,d,
output reg q,
output reg qbar
);

always@(posedge clk)
begin
if (reset)
begin
q <= 0;
qbar <= 1;
end
else
begin
q <= d;
end
end
endmodule
