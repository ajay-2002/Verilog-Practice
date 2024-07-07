`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 10:12:34 AM
// Design Name: 
// Module Name: Decoder_2_4
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


module Decoder_2_4(
input [1:0] i,
output [3:0] y
);

assign y[0] = ~i[1]&~i[0];
assign y[1] = ~i[1]&i[0];
assign y[2] = i[1]&~i[0];
assign y[3] = i[1]&i[0];

endmodule
