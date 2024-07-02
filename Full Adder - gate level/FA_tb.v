`timescale 1ns / 1ps

module FA_tb();
reg a,b,c_in;
wire s,c;
FA_gate_level DUT (.a(a), .b(b), .c_in(c_in), .s(s), .c(c));
integer i;
initial
begin
$display("Full Adder Simulation");
$monitor($time, "a=%b b=%b c_in=%b s=%b c=%b",a,b,c_in,s,c);
for(i=0;i<8;i=i+1)
begin
{a, b, c_in} = i; //assign i to a, b, c_in as 3 input vector
#10;
end
end
