module csa(s,cout,a,b,cin,r,clk);
  input a,b,cin,r,clk;
  output s,cout;
  wire su,c;
  FA f(su,c,a,b,cin);
  Dffp sum(s,su,r,clk);
  Dffp carry(cout,c,r,clk);
endmodule
  
  
