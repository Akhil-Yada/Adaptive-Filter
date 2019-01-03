module fxm(y,e,xn,d,r,clk);
  input [9:0]d;
  input [7:0]xn;
  input r,clk;
  output [9:0]y,e;
  
  wire s0,s1,s2,sg,x;
  wire [10:0]s,c,sum,carry; 
  wire [9:0]Y,D,A1,A2,A3,A4,W1,W2,W3,W4,W5,W6,W7,W8,w1,w2,w3,w4,w5,w6,w7,w8,E,xx;
  wire [7:0]x1,x2,x3,x4;
  
  Dffp dfs[10:0](sum,s,r,clk);
  Dffp dfc[10:0](carry,c,r,clk);
  Dffp dfe[9:0](e,E,r,clk);
  Dffp dfd[9:0](D,d,r,clk);
  Dffp dfy[9:0](y,Y,r,clk);
  
  irt ir(x1,x2,x3,x4,xn,r,clk);
  rgt rg(w1,w2,w3,w4,w5,w6,w7,w8,W1,W2,W3,W4,W5,W6,W7,W8,r,clk);
  
  DA3 das(s,c,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8);
  oe3 oeo(Y,E,D,sum,carry);
  cwsm conmag(s0,s1,s2,sg,x,e);
  iptm ip(xx,A1,A2,A3,A4,x2,x3,r,clk);
  mab ma(W1,W2,W3,W4,W5,W6,W7,W8,w1,w2,w3,w4,w5,w6,w7,w8,xx,A1,A2,A3,A4,s0,s1,s2,x,sg);
  endmodule
  
module testfx2m();
  reg [7:0]x;
  reg r,clk;
  reg [9:0]d;
  reg [7:0]xn[7:0];
  reg [9:0]dn[8:0];
  wire [9:0]y,e;
integer i,j,k,f;
fxm fx(y,e,x,d,r,clk);
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
clk<=1'd0;
i<=0;
j<=0;
k<=0;
#1;
f=$fopen("E:\\harish.bin");
#60;
r=1'd1;
end
  
always @(clk)
begin
#50 clk<=~clk;
if(k==50)
  begin
  $fclose(f);
  $stop();
end
end  
always @(negedge clk)
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

