`timescale 1ns / 1ps

module SISO_rt_ShiftRegister_tb;

    reg clk;
    reg reset;
    reg s_in;
    wire s_out;

    // Instantiate the shift register module
    SISO_rt_ShiftRegister uut (
        .clk(clk),
        .reset(reset),
        .s_in(s_in),
        .s_out(s_out)
    );

    initial begin
        // Initialize inputs
        clk = 0;
        reset = 0;
        s_in = 0;

        // Apply reset
        #5 reset = 1;
        #5 reset = 0;

        // Load serial data and observe shifting
        #10 s_in = 1; // Shift in 1
        #10 s_in = 0; // Shift in 0
        #10 s_in = 1; // Shift in 1
        #10 s_in = 1; // Shift in 1
        #40; // Wait for a few clock cycles to observe the serial output

        $stop;
    end

    // Generate clock
    always #5 clk = ~clk;

    // Monitor signals
    initial begin
        $monitor("Time: %0t | clk: %b | rst: %b | s_in: %b | s_out: %b | shift_reg: %b", 
                 $time, clk, reset, s_in, s_out, uut.shift_reg);
    end

endmodule
