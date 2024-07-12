`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 10:05:05 AM
// Design Name: 
// Module Name: Comparator_tb
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


module Comparator_tb();
reg [7:0]a; reg [7:0]b;
wire less, greater, equal;
Comparator DUT (a, b, less, greater, equal);
initial
begin
    a = 8'b00001111;  b = 8'b00001111;
#10;a = 8'b00001010;  b = 8'b00001011;
#10;a = 8'b00001011;  b = 8'b00001010;


#10;
end
endmodule
