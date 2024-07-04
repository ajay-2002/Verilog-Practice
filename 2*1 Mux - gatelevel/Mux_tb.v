
module Mux_tb();
reg a, b, sel;
wire y;
Mux UUT (a, b, sel, y);
integer i;
initial
begin
$display("Mux using gate level modelling");
for (i=0;i<8;i=i+1)
begin
{a,b,sel}=i;
#10;
$display("\nA=%b B=%b Sel=%b Y=%b",a,b,sel,y);
end
end
endmodule
