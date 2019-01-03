module fxb(y,e,xn,d,r,clk,ck);
  input [9:0]d;
  input [7:0]xn;
  input r,clk,ck;
  output [9:0]y,e;
  wire [2:0]t;
  wire s0,s1,s2,sg,x;
  wire [9:0]s,sum,carry,c;
  wire [9:0]Y,D,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z10,Z11,Z12,Z13,Z14,Z15,Z16,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,E;
  wire [7:0]x1,x2,x3,x4,x5;
  count8 ct(t,r,clk);
  
  Dffp dfs[9:0](sum,s,r,ck);
  Dffp dfc[9:0](carry,c,r,ck);
  Dffp dfe[9:0](e,E,r,ck);
  Dffp dfd[9:0](D,d,r,ck);
  Dffp dfy[9:0](y,Y,r,ck);
  //Dffp dfx[7:0](x5,x,r,clk);
  irt ir(x1,x2,x3,x4,xn,r,ck);
  rgt15 rg(w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,r,ck);
  DA das(s,c,t,x1,x2,x3,x4,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,r,clk);
  oeb oeo(Y,E,D,sum,carry);
  cwsm conmag(s0,s1,s2,sg,x,e);
  iptb ip(A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,x2,x3,x4,r,ck);
  bsb15 bs(Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z10,Z11,Z12,Z13,Z14,Z15,Z16,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,s0,s1,s2,x);
  adb15 ad(W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,Z2,Z3,Z4,Z5,Z6,Z7,Z8,Z9,Z10,Z11,Z12,Z13,Z14,Z15,Z16,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,sg); 
endmodule
module testfxb();
  reg [7:0]x;
  reg r,cak,ck;
  reg [9:0]d;
  reg [7:0]xn[7:0];
  reg [9:0]dn[8:0];
  wire [9:0]y,e;
integer i,j,k,f;
fxb fx(y,e,x,d,r,cak,ck);
initial 
begin 
r<=0'd0;
x<=8'b00000000;
d<=10'b0000000000;
xn[0]<=8'b00010000;
xn[1]<=8'b00100000;
xn[2]<=8'b00110000;
xn[3]<=8'b00100000;
#1;
xn[4]<=8'b00010000;
xn[5]<=8'b00000000;
xn[6]<=8'b00000000;
xn[7]<=8'b00000000;
#1;
dn[0]<=10'b0000000000;
dn[1]<=10'b0000001000;
dn[2]<=10'b0000010100;
dn[3]<=10'b0000100010;
#1;
dn[4]<=10'b0000100001;
dn[5]<=10'b0000011000;
dn[6]<=10'b0000001011;
dn[7]<=10'b0000000100;
dn[8]<=10'b0000000001;
i<=0;
j<=0;
k<=0;
#1;
f=$fopen("E:\\harish1.bin");
#1;
cak<=1'd1;
ck<=1'd1;
#150;
r<=1'd1;
end
always @(cak)
begin
#10 cak<=~cak;
end    

always @(ck)
begin
#80 ck<=~ck;
if(k==50)
  begin
  $fclose(f);
  $stop();
end
end  

always @(negedge ck)
begin
  if(r&&k!=50)
  begin
  x<=xn[i];
  d<=dn[j];
  k=k+(i+1)/8;
  i=(i+1)%8;
  if(j==8)
  j=1;
  else
  j=j+1;
  $fwrite(f,"%b",e);
  end   
  end
  endmodule 

