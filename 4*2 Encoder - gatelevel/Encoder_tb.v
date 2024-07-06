`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 09:48:56 AM
// Design Name: 
// Module Name: Encoder_tb
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


module Encoder_tb();
reg [3:0] i;
wire [1:0] y;
Encoder UUT (i, y);
initial
begin
        i = 4'b0001; 
   #10; i = 4'b0010;
   #10; i = 4'b0100;
   #10; i = 4'b1000;
end
endmodule
