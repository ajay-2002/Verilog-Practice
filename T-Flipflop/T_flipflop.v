`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2024 09:19:46 AM
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(
input clk, reset, T,
output reg q,
output reg qbar
);

always@(posedge clk)
begin
if(reset)
begin
q <= 0;
qbar <= 1;
end
else
begin
 case(T)
     1'b0 : begin
            q <= q;
            qbar <= ~q;
            end
     1'b1 : begin
            q <= ~q;
            qbar <= q;
            end
 endcase
end
end
endmodule
