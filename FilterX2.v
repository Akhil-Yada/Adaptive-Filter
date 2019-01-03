module fx2(y,e,xn,d,r,clk);
  input [9:0]d;
  input [7:0]xn;
  input r,clk;
  output [9:0]y,e;
  wire s0,s1,s2,sg,x;
  wire [10:0]s,c,sum,carry; 
  wire [9:0]Y,D,A1,A2,A3,A4,A5,A6,A7,A8,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,W1,W2,W3,W4,W5,W6,W7,W8,w1,w2,w3,w4,w5,w6,w7,w8,E;
  wire [7:0]x1,x2,x3,x4;
  
  Dffp dfs[10:0](sum,s,r,clk);
  Dffp dfc[10:0](carry,c,r,clk);
  Dffp dfe[9:0](e,E,r,clk);
  Dffp dfd[9:0](D,d,r,clk);
  Dffp dfy[9:0](y,Y,r,clk);
  
  irt ir(x1,x2,x3,x4,xn,r,clk);
  rgt rg(w1,w2,w3,w4,w5,w6,w7,w8,W1,W2,W3,W4,W5,W6,W7,W8,r,clk);
  
  DA3 das(s,c,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8);
  oe3 oeo(Y,E,D,sum,carry);
  cwsm conmag(s0,s1,s2,sg,x,e);
  ipt ip(A1,A2,A3,A4,A5,A6,A7,A8,x2,x3,r,clk);
  bsb bs(Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,A1,A2,A3,A4,A5,A6,A7,A8,s0,s1,s2,x);
  adb ad(W1,W2,W3,W4,W5,W6,W7,W8,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,w1,w2,w3,w4,w5,w6,w7,w8,sg);  
endmodule
  
