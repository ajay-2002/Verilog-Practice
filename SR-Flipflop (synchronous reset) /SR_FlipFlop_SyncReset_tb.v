
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:55:50 AM
// Design Name: 
// Module Name: SR_flipflop_tb
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


`timescale 1ns / 1ps

module SR_FlipFlop_SyncReset_tb;

    // Inputs
    reg clk;
    reg reset;
    reg S;
    reg R;

    // Outputs
    wire Q;
    wire Qn;

    // Instantiate the Unit Under Test (UUT)
    SR_FlipFlop_SyncReset uut (
        .clk(clk),
        .reset(reset),
        .S(S),
        .R(R),
        .Q(Q),
        .Qn(Qn)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        S = 0;
        R = 0;

        // Reset the flip-flop
        #10 reset = 1;
        #10 reset = 0;

        // Test SR inputs
        #10 S = 1; R = 0; // Set
        #10 S = 0; R = 1; // Reset
        #10 S = 1; R = 1; // Invalid state
        #10 S = 0; R = 0; // No change

        // Test reset functionality
        #10 reset = 1; // Activate reset
        #10 reset = 0; // Deactivate reset
    end
    
    // Clock generation
    always #5 clk = ~clk;

endmodule
