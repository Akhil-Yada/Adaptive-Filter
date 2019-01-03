module testfx2();
  reg [7:0]x;
  reg r,clk;
  reg [9:0]d;
  reg [7:0]xn[7:0];
  reg [9:0]dn[8:0];
  wire [9:0]y,e;
integer i,j,k,f;
fx2 fx(y,e,x,d,r,clk);
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
#1;
r=1'd1;
end
  
always @(clk)
begin
#10 clk<=~clk;
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

