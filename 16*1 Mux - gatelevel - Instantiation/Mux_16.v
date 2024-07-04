`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 11:37:59 AM
// Design Name: 
// Module Name: Mux_16
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


module Mux_16(
input [15:0] i,
input [3:0] sel,
output y
);
wire w5,w6;
Mux_8 M1 (
.i(i [7:0]),
.sel(sel [2:0]),
.y(w5)
);

Mux_8 M2(
.i(i [15:8]),
.sel(sel [2:0]),
.y(w6)
);

Mux_2 M3(
.i({w6, w5}),
.sel(sel [3]),
.y(y)
);
endmodule


module Mux_2(
input [1:0] i,
input sel,
output y
);
wire nsel,and1,and2;
not n1 (nsel, sel);
and a1 (and1, nsel, i[0]);
and a2 (and2, sel, i[1]);
or o1 (y, and1, and2);
endmodule


module Mux_4(
input [3:0] i,
input [1:0] sel,
output y
);
wire w1, w2;
Mux_2 M1 (
.i(i [1:0]),
.sel(sel[0]),
.y(w1)
);

Mux_2 M2(
.i(i [3:2]),
.sel(sel[0]),
.y(w2)
);

Mux_2 M3(
.i({w2,w1}),
.sel(sel[1]),
.y(y)
);
endmodule


module Mux_8(
input [7:0] i,
input [2:0] sel,
output y
);
wire w3, w4;
Mux_4 M1 (
.i(i [3:0]),
.sel(sel[1:0]),
.y(w3)
);

Mux_4 M2 (
.i(i [7:4]),
.sel(sel[1:0]),
.y(w4)
);

Mux_2 M3 (
.i({w4,w3}),
.sel(sel[2]),
.y(y)
);
endmodule
