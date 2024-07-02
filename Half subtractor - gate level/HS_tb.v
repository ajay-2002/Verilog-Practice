`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2024 11:33:43 AM
// Design Name: 
// Module Name: HS_tb
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


module HS_tb();
reg x,y;
wire d,b;
HS_gate_level DUT(.a(x), .b(y), .diff(d), .borr(b));
integer i;
initial
begin
$display("Half Subtractor Simulation");
for(i=0;i<4;i=i+1)
begin
{x,y}=i;
#10;
$display("\nA=%b B=%b Difference=%b Borrow=%b",x,y,d,b);
end
end
endmodule
