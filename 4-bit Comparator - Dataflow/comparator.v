`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 10:18:42 AM
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
input [3:0] a,
input [3:0] b,
output less, greater, equal
);

wire [3:0] x;
assign x[0] = ~(a[0]^b[0]);
assign x[1] = ~(a[1]^b[1]);
assign x[2] = ~(a[2]^b[2]);
assign x[3] = ~(a[3]^b[3]);

assign equal = x[0]&x[1]&x[2]&x[3];
assign greater = a[3]&~b[3] | x[3]&a[2]&~b[2] | x[3]&x[2]&a[1]&~b[1] | x[3]&x[2]&x[1]&a[0]&~b[0] ;
assign less =    ~a[3]&b[3] | x[3]&~a[2]&b[2] | x[3]&x[2]&~a[1]&b[1] | x[3]&x[2]&x[1]&~a[0]&b[0] ;

endmodule
