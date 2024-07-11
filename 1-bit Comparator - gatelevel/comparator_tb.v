`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2024 11:44:42 AM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg a,b;
wire less, greater, equal;
comparator DUT (a, b, less, greater, equal);
integer i;
initial
begin
$display("1 bit comparator simulation");
$display($time, "a=%b b=%b less=%d greater=%b equal=%b",a,b,less,greater,equal);
for (i=0;i<4;i=i+1)
begin
{a, b} = i;
#10;
end
#50; $finish;
end
endmodule
