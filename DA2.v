 module DA2(y,t,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8,r,clk);
 input [2:0]t;
 input [7:0]x1,x2,x3,x4;
 input [9:0]w1,w2,w3,w4,w5,w6,w7,w8;
 input r,clk;
 output [9:0]y;
 wire [9:0]w,l;
 wire [7:0]x1_;
 wire a,b,c,d,a_,t_,b_,c_,d_,w1_;
 not (a_,a);
 assign x1_={x1[7],~x1[6],~x1[5],~x1[4],~x1[3],~x1[2],~x1[1],~x1[0]};
 assign t_=|t;
 xor(b_,b,a);
 xor(c_,c,a);
 xor(d_,d,a);
 mux8_1 m1(a,x1,t);
 mux8_1 m2(b,x2,t);
 mux8_1 m3(c,x3,t);
 mux8_1 m4(d,x4,t);
 mux8_18 m(w,w1,w2,w3,w4,w5,w6,w7,w8,b_,c_,d_);
 xor xr[9:0](l,a_,w);
 not (w1_,w1[9]);
 d2 mac(y,x1_,w1_,l,t_,r,clk);
 endmodule
 