`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 10:45:56 AM
// Design Name: 
// Module Name: HA_tb
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


module HA_tb();
reg A, B;
wire S, C;
HA_dataflow DUT (.a(A), .b(B), .sum(S), .carry(C));
initial
begin
$display("Half Adder using Dataflow level Modelling");
$monitor($time, " A=%b B=%b S=%b C=%b",A, B, S, C);
     A = 0; B = 0;
#10; A = 0; B = 1;
#10; A = 1; B = 0;
#10; A = 1; B = 1;
end
endmodule
