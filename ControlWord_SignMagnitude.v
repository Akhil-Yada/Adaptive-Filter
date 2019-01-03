module cwsm(s0,s1,s2,sg,x,e);
output s0,s1,s2,sg,x;
input [9:0]e;
wire [9:0]ee;
wire x1,x2,x3,x4,x5,x6,x7,c,c7,c6,c5,c4,c3,c2;
assign c=ee[0]&ee[1];
xor xr[9:0](ee,e,e[9]);
HA h1(x7,c7,ee[2],c);
HA h2(x6,c6,ee[3],c7);
HA h3(x5,c5,ee[4],c6);
HA h4(x4,c4,ee[5],c5);
HA h5(x3,c3,ee[6],c4);
HA h6(x2,c2,ee[7],c3);
assign x1=ee[8]^c2;
assign sg=e[9];
assign s0=x1||(~x1&~x2&x3)||(~x1&~x2&~x3&~x4&x5)||(~x1&~x2&~x3&~x4&~x5&~x6&x7);
assign s1=(~x1&x2)||(~x1&~x2&x3)||(~x1&~x2&~x3&~x4&~x5&x6)||(~x1&~x2&~x3&~x4&~x5&~x6&x7);
assign s2=(~x1&~x2&~x3&x4)||(~x1&~x2&~x3&~x4&x5)||(~x1&~x2&~x3&~x4&~x5&x6)||(~x1&~x2&~x3&~x4&~x5&~x6&x7);
assign x=s0|s1|s2;
endmodule

 
