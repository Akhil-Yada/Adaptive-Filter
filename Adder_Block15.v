module adb15(N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,sg);
output [9:0]N2,N3,N4,N5,N6,N7,N8,N9,N10,N11,N12,N13,N14,N15,N16;
input [9:0]A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16;  
input sg;
addsub10 a2(N2,A2,W2,sg);
addsub10 a3(N3,A3,W3,sg);
addsub10 a4(N4,A4,W4,sg);
addsub10 a5(N5,A5,W5,sg);
addsub10 a6(N6,A6,W6,sg);
addsub10 a7(N7,A7,W7,sg);
addsub10 a8(N8,A8,W8,sg);
addsub10 a9(N9,A9,W9,sg);
addsub10 a10(N10,A10,W10,sg);
addsub10 a11(N11,A11,W11,sg);
addsub10 a12(N12,A12,W12,sg);
addsub10 a13(N13,A13,W13,sg);
addsub10 a14(N14,A14,W14,sg);
addsub10 a15(N15,A15,W15,sg);
addsub10 a16(N16,A16,W16,sg);

endmodule
