module tct(x,r,clk);
output [5:0]x;  
input r,clk;
Dffp df1(x[0],x[5],r,clk);
Dffp df2(x[1],x[0],r,clk);
Dffp df3(x[2],x[1],r,clk);
Dffp df4(x[3],x[2],r,clk);
Dffp df5(x[4],x[3],r,clk);
Dffpr df6(x[5],x[4],r,clk);
endmodule
