module rgt15(W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,r,clk);
input [9:0]A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16;
input r,clk;
output [9:0]W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16;
Dffp P2[9:0](W2,A2,r,clk);
Dffp P3[9:0](W3,A3,r,clk);
Dffp P4[9:0](W4,A4,r,clk);
Dffp P5[9:0](W5,A5,r,clk);
Dffp P6[9:0](W6,A6,r,clk); 
Dffp P7[9:0](W7,A7,r,clk);
Dffp P8[9:0](W8,A8,r,clk);
Dffp P9[9:0](W9,A9,r,clk);
Dffp P10[9:0](W10,A10,r,clk);
Dffp P11[9:0](W11,A11,r,clk);
Dffp P12[9:0](W12,A12,r,clk);
Dffp P13[9:0](W13,A13,r,clk); 
Dffp P14[9:0](W14,A14,r,clk);
Dffp P15[9:0](W15,A15,r,clk);
Dffp P16[9:0](W16,A16,r,clk);
endmodule

