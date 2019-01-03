module csas(s,cout,su,c,x,y,a,b,cin,r,clk);
  input a,b,cin,r,x,y,clk;
  output s,cout,su,c;
  FA f(su,c,a,b,cin);
  Dffp sum(s,x,r,clk);
  Dffp carry(cout,y,r,clk);
endmodule
  
  
