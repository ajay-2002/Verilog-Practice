`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2024 04:06:50 PM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb();
reg [15:0] a;
reg [15:0] b;
reg [15:0] c_in;
wire [15:0] sum;
wire carry;
Adder_16bit DUT (a,b,c_in,sum,carry);
initial
begin
$monitor($time, " a=%b b=%b c_in=%b sum=%b carry=%b",a,b,c_in,sum,carry);
a = 'h158A; b = 'h7095; c_in = 0;
#200 $finish;
end

always begin //change a every 60 ns
#60 a = 'h52AF; #60 a = 'hB903; #60 a = 'h158A;
end

always begin   // change b every 20 ns
#20 b = 'h9A4E; #20 b = 'hC6BD; #20 b = 'h7095;
end

always #10 c_in = ~c_in;
endmodule
