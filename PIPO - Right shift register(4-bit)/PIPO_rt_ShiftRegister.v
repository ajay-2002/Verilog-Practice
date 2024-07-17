module PIPO_rt_ShiftRegister(
input clk, reset, load,
input [3:0] p_in,
output reg [3:0] p_out
);


always @(posedge clk or posedge reset)
begin
if (reset)
begin
p_out = 4'b0000;
end
else if(load)
begin
p_out <= p_in;
end
else
begin
p_out <= p_out >> 1;
end
end
endmodule
