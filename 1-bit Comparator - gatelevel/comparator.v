`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2024 11:36:47 AM
// Design Name: 
// Module Name: comparator
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


module comparator(
input a, b,
output less, greater, equal
);
wire na, nb;
not n1 (na, a);
not n2 (nb, b);
and a1 (greater, a, nb);
and a2 (less, na, b);
xnor x1 (equal, a, b);
endmodule
