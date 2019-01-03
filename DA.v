 module DA(su,ca,t,x1,x2,x3,x4,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,r,clk);
 input [2:0]t;
 input [7:0]x1,x2,x3,x4;
 input [9:0]w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
 input r,clk;
 output [9:0]su,ca;
 wire [9:0]w,l;
 wire a,b,c,d,t_,w1_,nt;
 assign t_=~t[0]|~t[1]|~t[2];
 assign nt=&t;
 mux8_1 m1(a,x1,t);
 mux8_1 m2(b,x2,t);
 mux8_1 m3(c,x3,t);
 mux8_1 m4(d,x4,t);
 mux16_1 m(w,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,a,b,c,d);
 xor xr[9:0](l,w,nt);
 cb mac(su,ca,l,t_,r,clk);
 endmodule
 
