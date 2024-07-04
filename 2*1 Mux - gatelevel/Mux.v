
module Mux(
input a,b,sel,  // a, b are inputs, sel is selection line, y is output
output y
);
wire nsel, and1, and2;
not n1 (nsel, sel);
and a1 (and1, nsel, a);
and a2 (and2, sel, b);
or o1 (y, and1, and2);
endmodule
