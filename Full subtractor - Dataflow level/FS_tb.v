`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 11:47:14 AM
// Design Name: 
// Module Name: FS_tb
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


module FS_tb();
reg a,b,c;
wire diff,borr;
FS_dataflow DUT(a,b,c,diff,borr);
integer i;
initial
begin
for (i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#10;
$display("\nA=%b B=%b C=%b Diff=%b Borr=%b",a,b,c,diff,borr);
end
end
endmodule
