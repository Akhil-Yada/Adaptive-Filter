module tffp(Q,T,R,clk);
  input T,R,clk;
  output Q;
  wire t;
  xor (t,Q,T);
  Dffp df(Q,t,R,clk);
endmodule

