`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 10:36:19 AM
// Design Name: 
// Module Name: Counter_tb
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


module Counter_tb();
reg clk, reset;
wire [3:0]q;
Counter DUT (.clk(clk), .reset(reset), .q(q));
initial
begin

    $display("MOD 16 Counter");
    $monitor($time, " clk = %b reset = %b q = %d",clk, reset, q);
   
   //initialize variables
   clk = 0; reset = 0;
   
   //reset the Counter
   #10 reset = 1;
   #10 reset = 0;
   
   //test the reset functionality
   #80 reset = 1;
   #10 reset = 0;
  
end
   //generate the clock
   always #5 clk = ~clk;
   
endmodule
