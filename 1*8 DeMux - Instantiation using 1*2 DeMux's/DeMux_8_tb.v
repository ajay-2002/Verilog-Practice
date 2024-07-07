`timescale 1ns / 1ps

module DeMux_8_tb();
    reg i;
    reg [2:0] s;
    wire [7:0] y;

    // Instantiate the DeMux_8
    DeMux_8 UUT (
        .i(i),
        .s(s),
        .y(y)
    );

    integer a;

    initial begin
        // Initialize input and selector
        i = 1; // Set input to 1 to test demux routing
        $display("Time(ns) | s    | y");
        $monitor("%0t    | %b | %b", $time, s, y);

        // Iterate over all possible selector values
        for (a = 0; a < 8; a = a + 1) begin
            s = a;
            #10; // Wait for 10 time units
        end
        
        $finish; // End simulation
    end
endmodule
