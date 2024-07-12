`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 10:37:25 AM
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
reg [3:0]a;
reg [3:0] b;
wire less, greater, equal;
comparator UUT (.a(a), .b(b), .less(less), .greater(greater), .equal(equal));
initial
begin
       a = 4'b1110;
       b = 4'b1111;
  #10; b = 4'b0101;
  #10; b = 4'b1110;
  
  #30; $finish;
  
end
endmodule
