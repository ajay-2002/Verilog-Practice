module HA(
input a,
input b,
output sum,
output carry
);
xor x1(sum, a, b);
and a1(carry,a ,b);
endmodule

module FA(
input a,
input b,
input c_in,
output s_out,
output c_out
);
wire c_0,c_1,w1;
HA A1 (.a(a), .b(b), .sum(w1), .carry(c_0));
HA A2 (.a(w1), .b(c_in), .sum(s_out), .carry(c_1));
or o1(c_out, c_0, c_1);
endmodule
