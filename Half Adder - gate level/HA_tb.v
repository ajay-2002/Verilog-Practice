module HA_tb();
reg a,b;
wire s,c;
HA_gate_level DUT (.a(a), .b(b), .c(c), .s(s));
initial
begin
$display("Half Adder Simulation");
$monitor($time, "a=%b b=%b s=%b c=%b",a,b,s,c);
    a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
end
endmodule
