module mab(W1,W2,W3,W4,W5,W6,W7,W8,w1,w2,w3,w4,w5,w6,w7,w8,x,A1,A2,A3,A4,s0,s1,s2,z,sg);
input [9:0]w1,w2,w3,w4,w5,w6,w7,w8,x,A1,A2,A3,A4;
input s0,s1,s2,z,sg;
output [9:0]W1,W2,W3,W4,W5,W6,W7,W8;

wire [7:0]l0,l1,l2,l3,l4;
wire [9:0]B1,B2,B3,B4,xx;
wire b1,b2,m1,m2,m3,m4,m5,m6,m7,m8,n1,n2,n3,n4,n5,n6,n7,n8;

assign b1=sg^1'b0;
assign b2=sg^1'b1;

bsmc bs1(l0,xx,x,s0,s1,s2,z);
bsmc bs2(l1,B1,A1,s0,s1,s2,z);
bsmc bs3(l2,B2,A2,s0,s1,s2,z);
bsmc bs4(l3,B3,A3,s0,s1,s2,z);
bsmc bs5(l4,B4,A4,s0,s1,s2,z);

cc c1(m1,n1,l1,l0,sg,b1,s0,s1,s2);
cc c2(m2,n2,l1,l0,sg,b2,s0,s1,s2);
cc c3(m3,n3,l2,l0,sg,b1,s0,s1,s2);
cc c4(m4,n4,l2,l0,sg,b2,s0,s1,s2);
cc c5(m5,n5,l3,l0,sg,b1,s0,s1,s2);
cc c6(m6,n6,l3,l0,sg,b2,s0,s1,s2);
cc c7(m7,n7,l4,l0,sg,b1,s0,s1,s2);
cc c8(m8,n8,l4,l0,sg,b2,s0,s1,s2);

mau u1(W1,w1,xx,B1,m1,n1,sg,b1);
mau u2(W8,w8,xx,B1,m2,n2,sg,b2);
mau u3(W4,w4,xx,B2,m3,n3,sg,b1);
mau u4(W5,w5,xx,B2,m4,n4,sg,b2);
mau u5(W2,w2,xx,B3,m5,n5,sg,b1);
mau u6(W7,w7,xx,B3,m6,n6,sg,b2);
mau u7(W3,w3,xx,B4,m7,n7,sg,b1);
mau u8(W6,w6,xx,B4,m8,n8,sg,b2);

endmodule


