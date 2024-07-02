module HA_dataflow(
input a,
input b,
output sum,
output carry
);
assign {carry, sum} = a+b; // computes a+b and assigns it to the carry, sum as 2 bit vector
//assign sum = a^b ;
//assign carry = a & b ;
endmodule
