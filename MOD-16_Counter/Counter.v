`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 10:11:53 AM
// Design Name: 
// Module Name: Counter
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


module Counter(
input clk, reset,
output reg [3:0] q     //MOD 16 counter -- counts from 0 to 15 -- requires 4 flipflops..
);

always@ (posedge clk)
begin
if (reset)
begin
q <= 0;
end
else if(q == 4'b1111)
begin
q <= 0;
end
else
begin
q <= q + 1'b01;
end
end
endmodule
