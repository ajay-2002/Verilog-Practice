`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 06:10:04 PM
// Design Name: 
// Module Name: Adder
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


module Adder(
input [15:0] a,
input [15:0] b,
input carry_in,
output [15:0] sum,
output carry_out
);
wire [15:0] carry;
genvar i;
generate
for(i=0;i<16;i=i+1)
begin: adder_block
if(i==0)
begin
FA A(.a(a[i]), .b(b[i]), .c_in(carry_in), .s_out(sum[i]), .c_out(carry[i]));
end

else
begin
FA B(.a(a[i]), .b(b[i]), .c_in(carry[i-1]), .s_out(sum[i]), .c_out(carry[i]));
end
end
endgenerate

assign carry_out = carry[15];
endmodule

module HA(
input a,b,
output sum,carry
);
xor x1(sum, a, b);
and a1(carry, a, b);
endmodule

module FA(
input a,b,c_in,
output s_out,c_out
);
wire w1,c_0,c_1;
HA H1(.a(a), .b(b), .sum(w1), .carry(c_0));
HA H2(.a(w1), .b(c_in), .sum(s_out), .carry(c_1));
or o1(c_out, c_0, c_1);
endmodule
