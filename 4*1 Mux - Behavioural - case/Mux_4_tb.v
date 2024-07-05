`timescale 1ns / 1ps


module Mux_4_tb();
reg [3:0] i;
reg [1:0] sel;
wire y;
Mux_4 DUT (.i(i), .sel(sel), .y(y));
initial
begin
         i = 4'b0101; sel = 2'b00;
 #10;    i = 4'b0101; sel = 2'b01;
 #10;    i = 4'b0101; sel = 2'b10;
 #10;    i = 4'b0101; sel = 2'b11;
 #10;    i = 4'b1010; sel = 2'b00;
 #10;    i = 4'b1010; sel = 2'b01;
 #10;    i = 4'b1010; sel = 2'b10;
 #10;    i = 4'b1010; sel = 2'b11;
     
end
