module tffpr(Q,T,R,clk);
  input T,R,clk;
  output Q;
  wire t;
  xor (t,Q,T);
  Dffpr df(Q,t,R,clk);
endmodule


