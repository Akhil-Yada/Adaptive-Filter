module Mux2_1(o,i1,i2,s);
output o;
input i1,i2,s;
assign o=i1&~s|i2&s;
endmodule

