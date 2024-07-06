`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 10:36:52 AM
// Design Name: 
// Module Name: Encoder_4_2_tb
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


module Encoder_4_2_tb();
reg [3:0] i;
wire [1:0] y;
Encoder_4_2 UUT (i,y);
initial
begin
$display("Encoder Simulation");
$monitor($time, " i = %b y = %b",i,y);

              i = 1;
    #10;      i = 2;
    #10       i = 4;
    #10;      i = 8;
end
endmodule
