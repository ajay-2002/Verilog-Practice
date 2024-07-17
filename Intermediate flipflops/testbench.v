`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2024 12:01:58 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clk, s_in;
wire s_out;
Intermediate_Flipflops DUT (clk, s_in, s_out);
initial
begin

//initialize
clk = 0; s_in = 0;

//values
#12 s_in = 1;
 
end

always #5 clk = ~clk;
endmodule
