`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/11/2024 11:58:49 AM
// Design Name: 
// Module Name: Comparator
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


module Comparator(
input [7:0]a,
input [7:0]b,
output reg less,greater,equal
);

always@(a or b)
begin
if(a > b)
begin
greater = 1;
less =0;
equal = 0;
end

else if(a<b)
begin
less = 1;
greater = 0;
equal = 0;
end

else
begin
equal = 1;
less = 0;
greater = 0;
end

end
endmodule
