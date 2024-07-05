`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2024 12:31:37 PM
// Design Name: 
// Module Name: Mux_4_tb
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


module Mux_4_tb();
reg [3:0] i;
reg [1:0] sel;
wire y;
Mux_4 DUT (i,sel,y);
initial
begin
            i = 4'b1100; sel = 2'b00;
  #10;      i = 4'b1100; sel = 2'b01;
  #10;      i = 4'b1100; sel = 2'b10;
  #10;      i = 4'b1100; sel = 2'b11;
end
endmodule
