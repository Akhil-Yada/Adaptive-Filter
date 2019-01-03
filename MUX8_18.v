module mux8_18(w,w1,w2,w3,w4,w5,w6,w7,w8,b,c,d);
output [9:0]w;
input [9:0]w1,w2,w3,w4,w5,w6,w7,w8;
input b,c,d;
assign w=b?(c?(d?w8:w7):(d?w6:w5)):(c?(d?w4:w3):(d?w2:w1));
endmodule
