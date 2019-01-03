module fx1(y,e,xn,d,r,clk,ck);
  input [9:0]d;
  input [7:0]xn;
  input r,clk,ck;
  output [9:0]y,e;
  wire [2:0]t;
  wire s0,s1,s2,sg,x;
  wire [10:0]s,c,sum,carry; 
  wire [9:0]Y,D,A1,A2,A3,A4,A5,A6,A7,A8,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,W1,W2,W3,W4,W5,W6,W7,W8,w1,w2,w3,w4,w5,w6,w7,w8,E;
  wire [7:0]x1,x2,x3,x4;
  count ct(t,r,clk);
  
  Dffp dfs[10:0](sum,s,r,ck);
  Dffp dfc[10:0](carry,c,r,ck);
  Dffp dfe[9:0](e,E,r,ck);
  Dffp dfd[9:0](D,d,r,ck);
  Dffp dfy[9:0](y,Y,r,ck);
  
  irt ir(x1,x2,x3,x4,xn,r,ck);
  rgt rg(w1,w2,w3,w4,w5,w6,w7,w8,W1,W2,W3,W4,W5,W6,W7,W8,r,ck);
  
  DA1 das(s,c,t,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8,r,clk);
  oe1 oeo(Y,E,D,sum,carry);
  cwsm conmag(s0,s1,s2,sg,x,e);
  ipt ip(A1,A2,A3,A4,A5,A6,A7,A8,x2,x3,r,ck);
  bsb bs(Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,A1,A2,A3,A4,A5,A6,A7,A8,s0,s1,s2,x);
  adb ad(W1,W2,W3,W4,W5,W6,W7,W8,Z1,Z2,Z3,Z4,Z5,Z6,Z7,Z8,w1,w2,w3,w4,w5,w6,w7,w8,sg); 
endmodule

module testfx1();
  reg [7:0]x;
  reg r,cak,ck;
  reg [9:0]d;
  reg [7:0]xn[7:0];
  reg [9:0]dn[8:0];
  wire [9:0]y,e;
integer i,j,k,f;
fx1 fx(y,e,x,d,r,cak,ck);
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
f=$fopen("E:\\harish2.bin");
#1;
cak<=1'd1;
ck<=1'd1;
#110;
r<=1'd1;
end
always @(cak)
begin
#10 cak<=~cak;
end    

always @(ck)
begin
#60 ck<=~ck;
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

