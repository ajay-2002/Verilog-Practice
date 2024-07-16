`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 06:16:21 PM
// Design Name: 
// Module Name: PISO_rt_ShiftRegister_tb
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


module PISO_rt_ShiftRegister_tb();
reg clk, reset, load;
reg [3:0] p_in;
wire s_out;
PISO_rt_ShiftRegister UUT (.clk(clk), .reset(reset), .load(load), .p_in(p_in), .s_out(s_out));
initial
begin

//initialize
clk = 0; reset = 0; p_in = 0; load = 0;

//reset the register
#10 reset = 1;
#10 reset = 0;

//load parallel data
#10 load = 1;
p_in = 4'b1011;
#10 load = 0;

end

//generate clock
always #5 clk = ~clk;
endmodule
