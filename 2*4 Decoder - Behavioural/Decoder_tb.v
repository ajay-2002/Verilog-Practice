`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2024 10:43:11 AM
// Design Name: 
// Module Name: Decoder_tb
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


module Decoder_tb();
reg [1:0] i;
wire [3:0] y;
Decoder UUT (i, y);
initial
begin
$display("Decoder Simulation Starts..");
$display("i = %b y = %b",i,y);
    i = 0;
#10;i = 1;
#10;i = 2;
#10;i = 3;
#10; $finish;
end
endmodule
