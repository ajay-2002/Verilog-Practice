`timescale 1ns / 1ps

module Mux_16_tb;

    
    reg [15:0] i;
    reg [3:0] sel;

    
    wire y;

    
    Mux_16 uut (
        .i(i),
        .sel(sel),
        .y(y)
    );

   
    initial begin
      
        $display("Input             | Sel  | Output");
        
        i = 16'b1010_1010_1010_1010; sel = 4'b0000; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1010_1010_1010_1010; sel = 4'b0001; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1010_1010_1010_1010; sel = 4'b0010; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1010_1010_1010_1010; sel = 4'b0011; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1010_1010_1010_1010; sel = 4'b0100; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1111_0000_1111_0000; sel = 4'b0101; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1111_0000_1111_0000; sel = 4'b1010; #10;
        $display("%b | %b | %b", i, sel, y);
        
        i = 16'b1111_0000_1111_0000; sel = 4'b1111; #10;
        $display("%b | %b | %b", i, sel, y);
        
        $stop;
    end
