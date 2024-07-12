`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 06:29:34 PM
// Design Name: 
// Module Name: D_flipflop_tb
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


module D_flipflop_tb();
reg clk, reset, d;
wire q, qbar;
D_flipflop UUT (.clk(clk), .reset(reset), .qbar(qbar), .q(q), .d(d));
initial
begin
    
    //initialize variables
    clk = 0; reset = 0; d = 0;
    
    //reset the flipflop
    #10 reset = 1;
    #10 reset = 0;
    
    //give all combinations of Inputs
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    
    //check reset functionality
    #10 reset = 1;
    #10 reset = 0;
    
end
   //generate clk with 10ns Time period
   always #5 clk = ~clk;  
endmodule
