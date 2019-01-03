module count8(t,r,clk);
  output [2:0]t;
  input r,clk;
  wire w1;
  and (w1,t[0],t[1]);
  
  tffpr t1(t[0],1'b1,r,clk);
  tffpr t2(t[1],t[0],r,clk);
  tffpr t3(t[2],w1,r,clk);
endmodule
  

