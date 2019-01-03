module count(t,r,clk);
  output [2:0]t;
  input r,clk;
  wire w1,w2,w3,w4,w5;
  
  not (w4,w2);
  and (w5,w4,t[0]);
  and (w1,t[0],t[1]);
  and (w2,t[0],t[2]);
  or (w3,w1,w2);
  
  tffpr t1(t[0],1'b1,r,clk);
  tffp t2(t[1],w5,r,clk);
  tffpr t3(t[2],w3,r,clk);
endmodule
  
