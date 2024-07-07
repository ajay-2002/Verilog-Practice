`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 09:45:39 AM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
input [1:0] i,
output [3:0] y
);

wire [1:0] ni;
not g1 (ni[0], i[0]);
not g2 (ni[1], i[1]);
and g3 (y[0] ,ni[1], ni[0]);
and g4 (y[1], ni[1], i[0]);
and g5 (y[2], i[1], ni[0]);
and g6 (y[3], i[1], i[0]);

endmodule
