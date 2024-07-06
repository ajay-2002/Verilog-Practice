`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 11:53:02 AM
// Design Name: 
// Module Name: DeMux
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


module DeMux(
input i,
input [1:0] s,
output reg [3:0] y
);
 
always@(i or s)
begin
y = 4'b0000;
case(s)
     0 : y[0] = i;
     1 : y[1] = i;
     2 : y[2] = i;
     3 : y[3] = i;
     default: y = 4'b0000;
endcase
end
endmodule
