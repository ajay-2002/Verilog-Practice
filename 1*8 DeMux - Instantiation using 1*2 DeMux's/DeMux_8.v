`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 10:57:05 AM
// Design Name: 
// Module Name: DeMux_8
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


module DeMux_8(
    input i,
    input [2:0] s,
    output [7:0] y
);
    wire [1:0] w1, w2, w3, w4;

    DeMux_2 D1 (.i(i), .s(s[2]), .y(w1));       // First level demux
    DeMux_2 D2 (.i(w1[0]), .s(s[1]), .y(w2));   // Second level demux for w1[0]
    DeMux_2 D3 (.i(w1[1]), .s(s[1]), .y(w3));   // Second level demux for w1[1]
    DeMux_2 D4 (.i(w2[0]), .s(s[0]), .y(y[1:0])); // Final level demux for w2[0]
    DeMux_2 D5 (.i(w2[1]), .s(s[0]), .y(y[3:2])); // Final level demux for w2[1]
    DeMux_2 D6 (.i(w3[0]), .s(s[0]), .y(y[5:4])); // Final level demux for w3[0]
    DeMux_2 D7 (.i(w3[1]), .s(s[0]), .y(y[7:6])); // Final level demux for w3[1]
endmodule



module DeMux_2(
input i,
input s,
output [1:0] y
);
wire ns;
not n1 (ns, s);
and a1 (y[0], ns, i);
and a2 (y[1], s, i);
endmodule
