module Dffp(Q,D,R,clk);
  input D,R,clk;
  output Q;
  reg Q;
  /*wire w1,w2,w3,w4,w6;
  wire b1,b4,b3;
  nand (Q,w1,w6);
  nand (w6,w2,Q,R);
  nand (w3,w2,D,R);
  nand (w1,b4,clk,R);
  buf (b1,w1);
  buf (b4,w4);
  buf (b3,w3);
  nand (w2,b1,b3,clk);
  nand (w4,w3,w1);*/
  always @(posedge clk, negedge R)
  begin
  if(!R)
  Q<=1'b0;
else
  Q<=D;
  end
endmodule

  
