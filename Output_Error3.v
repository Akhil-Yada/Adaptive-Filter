module oe3(Y,E,D,sum,carry);
  output [9:0]Y;
  output [9:0]E;
  input [9:0]D;
  input [10:0]sum,carry;
  wire c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12;
  //////////////////////////////////////////////////////////////////////////////////////////////////////
 and (c2,sum[0],carry[0]);
  FA f3(Y[0],c3,sum[1],carry[1],c2);
  FA f4(Y[1],c4,sum[2],carry[2],c3);
  FA f5(Y[2],c5,sum[3],carry[3],c4);
  FA f6(Y[3],c6,sum[4],carry[4],c5);
  FA f7(Y[4],c7,sum[5],carry[5],c6);
  FA f8(Y[5],c8,sum[6],carry[6],c7);
  FA f9(Y[6],c9,sum[7],carry[7],c8);
  FA f10(Y[7],c10,sum[8],carry[8],c9);
  FA f11(Y[8],c11,sum[9],carry[9],c10);
  FA f12(Y[9],c12,sum[10],carry[10],c11);
  sub10 ub(E,D,Y);
  endmodule
