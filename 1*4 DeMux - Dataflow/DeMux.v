`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 11:29:43 AM
// Design Name: 
// Module Name: DeMux
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


module DeMux(
input i,
input [1:0] s,
output [3:0] y
);

assign y[0] = ~s[1]&~s[0]&i;
assign y[1] = ~s[1]&s[0]&i;
assign y[2] = s[1]&~s[0]&i;
assign y[3] = s[1]&s[0]&i;

endmodule
