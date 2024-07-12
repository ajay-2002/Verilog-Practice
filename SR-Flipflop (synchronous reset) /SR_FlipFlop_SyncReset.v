`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:41:13 AM
// Design Name: 
// Module Name: SR_flipflop
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

module SR_FlipFlop_SyncReset (
    input wire clk,
    input wire reset,
    input wire S,
    input wire R,
    output reg Q,
    output reg Qn
);

always @(posedge clk) begin
    if (reset) begin
        Q <= 0;
        Qn <= 1;
    end else begin
        case ({S, R})
            2'b00: begin
                // No change
            end
            2'b01: begin
                Q <= 0;
                Qn <= 1;
            end
            2'b10: begin
                Q <= 1;
                Qn <= 0;
            end
            2'b11: begin
                Q <= 0; // Invalid state for SR flip-flop, Q is set to 0
                Qn <= 0;
            end
        endcase
    end
end

endmodule
