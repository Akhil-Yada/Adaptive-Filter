module sub10(W,X,Y_);
output [9:0]W;
input [9:0]X,Y_;
wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10;
wire [9:0]Y;
not n[9:0](Y,Y_);
FA f1(W[0],c1,X[0],Y[0],1'b1);
FA f2(W[1],c2,X[1],Y[1],c1);
FA f3(W[2],c3,X[2],Y[2],c2);
FA f4(W[3],c4,X[3],Y[3],c3);
FA f5(W[4],c5,X[4],Y[4],c4);
FA f6(W[5],c6,X[5],Y[5],c5);
FA f7(W[6],c7,X[6],Y[6],c6);
FA f8(W[7],c8,X[7],Y[7],c7);
FA f9(W[8],c9,X[8],Y[8],c8);
FA f10(W[9],c10,X[9],Y[9],c9);
endmodule
