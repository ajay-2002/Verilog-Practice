`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 11:10:24 AM
// Design Name: 
// Module Name: DeMux_tb
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


module DeMux_tb();
reg i;
reg [1:0] s;
wire [3:0] y;
DeMux UUT (i,s,y);
initial
begin
         s = 0;  i = 1;
    #10; s = 1;  i = 1;
    #10; s = 2;  i = 1;
    #10; s = 3;  i = 1;
    
         s = 0;  i = 0;
    #10; s = 1;  i = 0;
    #10; s = 2;  i = 0;
    #10; s = 3;  i = 0;
    
    $finish;
end

endmodule
