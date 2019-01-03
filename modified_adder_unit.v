module mau(W,w,x,A,a,b,y,z);
input [9:0]w,x,A;
input a,b,y,z;
output [9:0]W;
wire [9:0]s,c,x1,A1;
wire [9:0]c1;
xor xr1[9:0](x1,x,y);
xor xr2[9:0](A1,A,z);
FA10 f(s,c,w,x1,A1);
FA f1(W[0],c1[0],s[0],a,b);
FA f2(W[1],c1[1],s[1],c[0],c1[0]);
FA f3(W[2],c1[2],s[2],c[1],c1[1]);
FA f4(W[3],c1[3],s[3],c[2],c1[2]);
FA f5(W[4],c1[4],s[4],c[3],c1[3]);
FA f6(W[5],c1[5],s[5],c[4],c1[4]);
FA f7(W[6],c1[6],s[6],c[5],c1[5]);
FA f8(W[7],c1[7],s[7],c[6],c1[6]);
FA f9(W[8],c1[8],s[8],c[7],c1[7]);
FA f10(W[9],c1[9],s[9],c[8],c1[8]);
endmodule

   
  
