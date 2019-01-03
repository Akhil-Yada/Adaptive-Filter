module mux16_1(w,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,x1,x2,x3,x4);
output [9:0]w;
input [9:0]w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
input x1,x2,x3,x4;
assign w=(x1?(x2?(x3?(x4?w16:w15):(x4?w14:w13)):(x3?(x4?w12:w11):(x4?w10:w9))):(x2?(x3?(x4?w8:w7):(x4?w6:w5)):(x3?(x4?w4:w3):(x4?w2:(10'b0000000000)))));
endmodule

