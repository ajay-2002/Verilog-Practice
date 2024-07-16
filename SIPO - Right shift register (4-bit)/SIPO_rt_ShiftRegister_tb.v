`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 05:40:19 PM
// Design Name: 
// Module Name: SIPO_rt_ShiftRegister_tb
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


module SIPO_rt_ShiftRegister_tb();
reg clk, reset, s_in;
wire [3:0] p_out;
SIPO_rt_ShiftRegister UUT (.clk(clk), .reset(reset), .s_in(s_in), .p_out(p_out));
initial
begin

//initialize variables
clk = 0; reset = 0; s_in = 0;

//reset the register
#10 reset = 1;
#10 reset = 0;

//all combinations
#10 s_in = 0;
#10 s_in = 1;
#10 s_in = 0;
#10 s_in = 1;
#10 s_in = 0;
#10 s_in = 1;
#10 s_in = 1;
#10 s_in = 1;
#10 s_in = 0;
#10 s_in = 1;
#10 s_in = 0;
#10 s_in = 1;

end
//clock generation
always #5 clk = ~clk;
endmodule
