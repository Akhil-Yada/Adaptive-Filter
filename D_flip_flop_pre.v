module Dffpr(Q,D,R,clk);
  input D,R,clk;
  output Q;
  reg Q;
always @(posedge clk, negedge R)
  begin
  if(!R)
  Q<=1'b1;
else
  Q<=D;
  end
endmodule