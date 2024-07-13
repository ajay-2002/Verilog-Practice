`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 09:33:34 AM
// Design Name: 
// Module Name: T_flipflop_tb
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


module T_flipflop_tb();
reg clk, reset, T;
wire q, qbar;
T_flipflop UUT (.clk(clk), .reset(reset), .T(T), .q(q), .qbar(qbar));
initial
begin

//initialize all variables
clk = 0; reset = 0; T = 0;

//reset the flipflop
#10 reset = 1;
#10 reset = 0;

//all combinations
#10 T = 0;
#10 T = 1;
#10 T = 0;
#10 T = 1;
#10 T = 0;
#10 T = 1;
#10 T = 1;
#10 T = 0;
#10 T = 1;
#10 T = 0;
#10 T = 0;
#10 T = 0;

end

//generate clock with 10ns Timeperiod
always #5 clk = ~clk;
endmodule
