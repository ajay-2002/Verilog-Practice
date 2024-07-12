`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 07:02:16 PM
// Design Name: 
// Module Name: JK_flipflop
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


module JK_flipflop (
    input clk, reset, j, k,
    output reg q,
    output reg qbar
);

always @(posedge clk)
begin
    if (reset) begin
        q <= 0;
        qbar <= 1;
    end else begin
        case ({j, k})
            2'b00: begin
                // No change
            end
            2'b01: begin
                q <= 0;
                qbar <= 1;
            end
            2'b10: begin
                q <= 1;
                qbar <= 0;
            end
            2'b11: begin
                q <= ~q;
                qbar <= ~qbar;
            end
        endcase
    end
end

endmodule
