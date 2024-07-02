`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 11:43:47 AM
// Design Name: 
// Module Name: FS_dataflow
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


module FS_dataflow(
    input a,
    input b,
    input c,
    output diff,
    output borr
    );
    //assign diff = a^b^c;
    //assign borr = ((~a)&b) | ((~a)&c) | (b&c);
    assign {borr, diff} = a-b-c;
endmodule
