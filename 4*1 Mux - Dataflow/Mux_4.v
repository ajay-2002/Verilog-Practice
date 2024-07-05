`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 10:39:54 AM
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
output y
);

//assign y = (~sel[1]&~sel[0]&i[0]) | (~sel[1]&sel[0]&i[1]) | (sel[1]&~sel[0]&i[2]) | (sel[1]&sel[0]&i[3]);

assign y = sel[1] ? (sel[0]?i[3]:i[2]) : (sel[0]?i[1]:i[0]); //using Ternary operator

endmodule
