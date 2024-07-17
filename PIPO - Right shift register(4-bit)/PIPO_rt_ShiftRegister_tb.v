`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/17/2024 11:19:09 AM
// Design Name: 
// Module Name: PIPO_rt_ShiftRegister_tb
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


module PIPO_rt_ShiftRegister_tb();
reg clk, load, reset;
reg [3:0] p_in;
wire [3:0] p_out;
PIPO_rt_ShiftRegister DUT (.clk(clk), .load(load), .reset(reset), .p_in(p_in), .p_out(p_out)); 
initial
begin

//initialize
clk = 0; load = 0; reset = 0; p_in = 0;

//reset the register
#10 reset = 1;
#10 reset = 0;

//all values
#10 load = 1;
p_in = 4'b1101;
#10 load = 0;

#80;
$stop;

end

//clock generation
always #5 clk = ~clk;
endmodule
