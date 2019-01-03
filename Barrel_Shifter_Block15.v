module bsb15(W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,s0,s1,s2,x);
  output [9:0]W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16;
  input [9:0]A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16;
  input s0,s1,s2,x;
  bsmb b2(W2,A2,s0,s1,s2,x);
  bsmb b3(W3,A3,s0,s1,s2,x);
  bsmb b4(W4,A4,s0,s1,s2,x);
  bsmb b5(W5,A5,s0,s1,s2,x);
  bsmb b6(W6,A6,s0,s1,s2,x);
  bsmb b7(W7,A7,s0,s1,s2,x);
  bsmb b8(W8,A8,s0,s1,s2,x);
  bsmb b9(W9,A9,s0,s1,s2,x);
  bsmb b10(W10,A10,s0,s1,s2,x);
  bsmb b11(W11,A11,s0,s1,s2,x);
  bsmb b12(W12,A12,s0,s1,s2,x);
  bsmb b13(W13,A13,s0,s1,s2,x);
  bsmb b14(W14,A14,s0,s1,s2,x);
  bsmb b15(W15,A15,s0,s1,s2,x);
  bsmb b16(W16,A16,s0,s1,s2,x);
endmodule

  
  
  

