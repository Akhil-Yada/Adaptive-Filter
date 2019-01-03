module rgt(W1,W2,W3,W4,W5,W6,W7,W8,A1,A2,A3,A4,A5,A6,A7,A8,r,clk);
input [9:0]A1,A2,A3,A4,A5,A6,A7,A8;
input r,clk;
output [9:0]W1,W2,W3,W4,W5,W6,W7,W8;
Dffp P1[9:0](W1,A1,r,clk);
Dffp P2[9:0](W2,A2,r,clk);
Dffp P3[9:0](W3,A3,r,clk);
Dffp P4[9:0](W4,A4,r,clk);
Dffp P5[9:0](W5,A5,r,clk);
Dffp P6[9:0](W6,A6,r,clk); 
Dffp P7[9:0](W7,A7,r,clk);
Dffp P8[9:0](W8,A8,r,clk);
endmodule
