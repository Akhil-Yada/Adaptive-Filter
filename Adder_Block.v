module adb(N1,N2,N3,N4,N5,N6,N7,N8,A1,A2,A3,A4,A5,A6,A7,A8,W1,W2,W3,W4,W5,W6,W7,W8,sg);
output [9:0]N1,N2,N3,N4,N5,N6,N7,N8;
input [9:0]A1,A2,A3,A4,A5,A6,A7,A8,W1,W2,W3,W4,W5,W6,W7,W8;  
input sg;
addsub10 a1(N1,A1,W1,sg);
addsub10 a2(N2,A2,W2,sg);
addsub10 a3(N3,A3,W3,sg);
addsub10 a4(N4,A4,W4,sg);
addsub10 a5(N5,A5,W5,sg);
addsub10 a6(N6,A6,W6,sg);
addsub10 a7(N7,A7,W7,sg);
addsub10 a8(N8,A8,W8,sg);
endmodule