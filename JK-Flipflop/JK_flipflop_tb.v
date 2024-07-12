`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 07:28:12 PM
// Design Name: 
// Module Name: D_flipflop_tb
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

module JK_flipflop_tb;

    // Inputs
    reg clk;
    reg reset;
    reg j;
    reg k;

    // Outputs
    wire q;
    wire qbar;

    // Instantiate the Unit Under Test (UUT)
    JK_flipflop uut (
        .clk(clk),
        .reset(reset),
        .j(j),
        .k(k),
        .q(q),
        .qbar(qbar)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 0;
        j = 0;
        k = 0;

        // Apply reset
        #10 reset = 1;
        #10 reset = 0;

        // Test JK inputs
        #10 j = 1; k = 0; // Set
        #10 j = 0; k = 1; // Reset
        #10 j = 1; k = 1; // Toggle
        #10 j = 0; k = 0; // No change

        // Test reset functionality again
        #10 reset = 1; // Activate reset
        #10 reset = 0; // Deactivate reset

        // Test toggling
        #10 j = 1; k = 1; // Toggle
        #10 j = 1; k = 1; // Toggle again
    end
    
    // Clock generation
    always #5 clk = ~clk;

    // Monitor the signals
    initial begin
        $monitor("Time: %0t | clk: %b | reset: %b | j: %b | k: %b | q: %b | qbar: %b", 
                 $time, clk, reset, j, k, q, qbar);
    end

endmodule
