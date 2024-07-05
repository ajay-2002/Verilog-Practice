`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 12:13:01 PM
// Design Name: 
// Module Name: Mux_4
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


module Mux_4(
input [3:0] i,
input [1:0] sel,
output reg y
);

always@(i or sel)
begin
if(sel == 2'b00)
   y = i[0];
else if(sel == 2'b01)
   y = i[1];
else if(sel == 2'b10)
   y = i[2];
else if(sel == 2'b11)
   y = i[3];
else
   y = 1'b0;
end
endmodule
