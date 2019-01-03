module irt(x1,x2,x3,x4,xn,r,clk);
  output [7:0]x1,x2,x3,x4;
  input [7:0]xn;
  input r,clk;
Dffp r1[7:0](x1,xn,r,clk);
Dffp r2[7:0](x2,x1,r,clk);
Dffp r3[7:0](x3,x2,r,clk);
Dffp r4[7:0](x4,x3,r,clk);
endmodule