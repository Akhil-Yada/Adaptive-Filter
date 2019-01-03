module fx3(y,xn,d,r,clk,ck);
  input [9:0]d;
  input [7:0]xn;
  input r,clk,ck;
  output [9:0]y;
  wire [5:0]t;
  wire s0,s1,s2,sg;
  wire [10:0]s,c,sum,carry; 
  wire [9:0]Y,D,A1,A2,A3,A4,A5,A6,A7,A8,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,W1,W2,W3,W4,W5,W6,W7,W8,w1,w2,w3,w4,w5,w6,w7,w8,E,e;
  wire [7:0]x1,x2,x3,x4;
  tct ct(t,r,clk);
  
  Dffp dfs[10:0](sum,s,r,ck);
  Dffp dfc[10:0](carry,c,r,ck);
  Dffp dfe[9:0](e,E,r,ck);
  Dffp dfd[9:0](D,d,r,ck);
  Dffp dfy[9:0](y,Y,r,ck);
  
  irt ir(x1,x2,x3,x4,xn,r,ck);
  rgt rg(w1,w2,w3,w4,w5,w6,w7,w8,W1,W2,W3,W4,W5,W6,W7,W8,r,ck);
  
  DA11 das(s,c,t,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8,r,clk);
  oe1 oeo(Y,E,D,sum,carry);
  cwsm conmag(s0,s1,s2,sg,x,e);
  ipt ip(A1,A2,A3,A4,A5,A6,A7,A8,x2,x3,r,ck);
  bsb bs(Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,A1,A2,A3,A4,A5,A6,A7,A8,s0,s1,s2,x);
  adb ad(W1,W2,W3,W4,W5,W6,W7,W8,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,w1,w2,w3,w4,w5,w6,w7,w8,sg); 
endmodule

