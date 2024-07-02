`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 11:04:07 AM
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
wire s,c;
FA_dataflow DUT (a,b,c_in,s,c);
integer i;
initial
begin
$display("Full Adder using Dataflow level MOdelling");
$monitor($time, " A=%b B=%b C=%b Sum=%b Carry=%b",a,b,c_in,s,c);
for(i=0;i<8;i=i+1)
begin
{a,b,c_in} = i;  //assigns value of i to a,b,c_in as 3 input vector
#10;
end
end
endmodule
