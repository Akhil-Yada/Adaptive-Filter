module bsb(W1,W2,W3,W4,W5,W6,W7,W8,A1,A2,A3,A4,A5,A6,A7,A8,s0,s1,s2,x);
  output [9:0]W1,W2,W3,W4,W5,W6,W7,W8;
  input [9:0]A1,A2,A3,A4,A5,A6,A7,A8;
  input s0,s1,s2,x;
  bsm b1(W1,A1,s0,s1,s2,x);
  bsm b2(W2,A2,s0,s1,s2,x);
  bsm b3(W3,A3,s0,s1,s2,x);
  bsm b4(W4,A4,s0,s1,s2,x);
  bsm b5(W5,A5,s0,s1,s2,x);
  bsm b6(W6,A6,s0,s1,s2,x);
  bsm b7(W7,A7,s0,s1,s2,x);
  bsm b8(W8,A8,s0,s1,s2,x);
endmodule

  
  
  
