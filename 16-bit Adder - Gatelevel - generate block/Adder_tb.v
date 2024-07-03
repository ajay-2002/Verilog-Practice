`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 10:40:28 AM
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb();
reg [15:0] a;
reg [15:0] b;
reg carry_in;
wire [15:0] sum;
wire carry_out;
Adder DUT (a, b, carry_in, sum, carry_out);

initial
begin
a = 'h0001; b = 'h0001; carry_in = 'h0000;
#300 $finish; 
end

always begin
#50 a = 'h12ab;
#50 a='h21ba;
end

always begin
#20 b = 'h34cd;
#20 b = 'h43dc;
end

always #10 carry_in = ~carry_in;
endmodule
