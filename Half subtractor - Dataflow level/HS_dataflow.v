`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 11:24:46 AM
// Design Name: 
// Module Name: HS_dataflow
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


module HS_dataflow(
    input a,
    input b,
    output diff,
    output borr
    );
    //assign diff = a^b;
    //assign borr = (~a)&b;
    assign {borr, diff} = a - b; 
endmodule
