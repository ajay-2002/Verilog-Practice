`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 03:35:20 PM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();
reg a,b,c_in;
wire s_out, c_out;
FA DUT (a,b,c_in,s_out,c_out);
integer i;
initial
begin
$display("Full adder using Half adders");
$monitor($time, " A=%b B=%b C=%b Sum=%b Carry=%b",a,b,c_in,s_out,c_out);
for (i=0;i<8;i=i+1)
begin
{a,b,c_in} = i;
#10;
$display("\nA=%b B=%b C=%b Sum=%b Carry=%b",a,b,c_in,s_out,c_out);
end
end
endmodule
