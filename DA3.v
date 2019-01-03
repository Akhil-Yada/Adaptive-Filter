module DA3(s,c,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8);
  output [10:0]s,c;
  input [7:0]x1,x2,x3,x4;
  input [9:0]w1,w2,w3,w4,w5,w6,w7,w8;
  wire [7:0]nx1,xx2,xx3,xx4;
  wire [9:0]l1,l2,l3,l4,l5,l6,l7,l8,xl1,xl2,xl3,xl4,xl5,xl6,xl7,xl8,w;
  
  assign nx1={x1[7],~x1[6],~x1[5],~x1[4],~x1[3],~x1[2],~x1[1],~x1[0]};
  assign xx2=x1^x2;
  assign xx3=x1^x3;
  assign xx4=x1^x4;
  assign w=~w1;
  mux8_18 m1(l1,w1,w2,w3,w4,w5,w6,w7,w8,xx2[0],xx3[0],xx4[0]);
  mux8_18 m2(l2,w1,w2,w3,w4,w5,w6,w7,w8,xx2[1],xx3[1],xx4[1]);
  mux8_18 m3(l3,w1,w2,w3,w4,w5,w6,w7,w8,xx2[2],xx3[2],xx4[2]);
  mux8_18 m4(l4,w1,w2,w3,w4,w5,w6,w7,w8,xx2[3],xx3[3],xx4[3]);
  mux8_18 m5(l5,w1,w2,w3,w4,w5,w6,w7,w8,xx2[4],xx3[4],xx4[4]);
  mux8_18 m6(l6,w1,w2,w3,w4,w5,w6,w7,w8,xx2[5],xx3[5],xx4[5]);
  mux8_18 m7(l7,w1,w2,w3,w4,w5,w6,w7,w8,xx2[6],xx3[6],xx4[6]);
  mux8_18 m8(l8,w1,w2,w3,w4,w5,w6,w7,w8,xx2[7],xx3[7],xx4[7]);
  
  xor a1[9:0](xl1,l1,nx1[0]);
  xor a2[9:0](xl2,l2,nx1[1]);
  xor a3[9:0](xl3,l3,nx1[2]);
  xor a4[9:0](xl4,l4,nx1[3]);
  xor a5[9:0](xl5,l5,nx1[4]);
  xor a6[9:0](xl6,l6,nx1[5]);
  xor a7[9:0](xl7,l7,nx1[6]);
  xor a8[9:0](xl8,l8,nx1[7]);
  d3 mac(s,c,xl1,xl2,xl3,xl4,xl5,xl6,xl7,xl8,nx1,w);

endmodule