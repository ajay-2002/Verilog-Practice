`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 11:00:39 AM
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

wire ns0, ns1;
not n1 (ns0, s[0]);
not n2 (ns1, s[1]);
and a1 (y[0], ns1, ns0, i);
and a2 (y[1], ns1, s[0], i);
and a3 (y[2], s[1], ns0, i);
and a4 (y[3], s[1], s[0], i);
endmodule
