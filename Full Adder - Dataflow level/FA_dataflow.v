`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 10:59:29 AM
// Design Name: 
// Module Name: FA_dataflow
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


module FA_dataflow(
    input a,
    input b,
    input c_in,
    output s,
    output c
    );
  // assign s = a^b^c_in;
  // assign c = (a & b) | (b & c_in) | (a & c_in);
     assign {c, s} = a + b + c_in;  // computes the value of RHS and assigns its value to c, s as 2 input vector
endmodule
