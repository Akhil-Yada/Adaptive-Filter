module DA1(sum,carry,t,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8,r,clk);
output [10:0]sum,carry;
input [2:0]t;
input [7:0]x1,x2,x3,x4;
input [9:0]w1,w2,w3,w4,w5,w6,w7,w8;
input r,clk;
wire t1,t2,t3,t_,z;
wire a,a_,b,b_,c,c_,d,d_,e,e_,f,f_,g,g_,h,h_;
wire [9:0]l1,l2,l1_,l2_,lx1,lx2,w;
wire [7:0]x1_;
assign {t1,t2,t3}=t;
assign t_=t1|t2|t3;
assign z=~t1;
assign z1=~t1&~t2&~t3;
assign z2=~t1&~t2&t3;
assign z3=~t1&t2&~t3;
assign z4=~t1&t2&t3;
///////////////////////////////////////////////////////////////////////////////////////////////////
assign a=(z1&x1[0])|(z2&x1[2])|(z3&x1[4])|(z4&x1[6]);
assign b=(z2&x2[0])|(z2&x2[2])|(z3&x2[4])|(z4&x2[6]);
assign c=(z3&x3[0])|(z2&x3[2])|(z3&x3[4])|(z4&x3[6]);
assign d=(z4&x4[0])|(z2&x4[2])|(z3&x4[4])|(z4&x4[6]);  
///////////////////////////////////////////////////////////////////////////////////////////////////
assign e=(z1&x1[1])|(z2&x1[3])|(z3&x1[5])|(z4&~x1[7]);
assign f=(z2&x2[1])|(z2&x2[3])|(z3&x2[5])|(z4&~x2[7]);
assign g=(z3&x3[1])|(z2&x3[3])|(z3&x3[5])|(z4&~x3[7]);
assign h=(z4&x4[1])|(z2&x4[3])|(z3&x4[5])|(z4&~x4[7]); 
//////////////////////////////////////////////////////////////////////////////////////////////////
assign x1_={x1[7],~x1[6],~x1[5],~x1[4],~x1[3],~x1[2],~x1[1],~x1[0]};
not nw[9:0](w,w1);
not (a_,a);
not (e_,e);
xor (b_,b,a);
xor (c_,c,a);
xor (d_,d,a);
xor (f_,f,e);
xor (g_,g,e);
xor (h_,h,e);
mux8_18 m1(l1,w1,w2,w3,w4,w5,w6,w7,w8,b_,c_,d_);
mux8_18 m2(l2,w1,w2,w3,w4,w5,w6,w7,w8,f_,g_,h_);
xor xr1[9:0](lx1,l1,a_);
xor xr2[9:0](lx2,l2,e_);
and a1[9:0](l1_,lx1,z);
and a2[9:0](l2_,lx2,z);
/////////////////////////////////////////////////////////////////////////////////////////////////
d1 mac(sum,carry,x1_,w,l2_,l1_,t_,r,clk);
endmodule

/*module testda1();
reg r,clk;
reg [9:0]w1,w2,w3,w4,w5,w6,w7,w8;
reg [7:0]x1,x2,x3,x4;
wire [9:0]s,c;
wire [2:0]t;
count c1(t,r,clk);
DA1 da(s,c,t,x1,x2,x3,x4,w1,w2,w3,w4,w5,w6,w7,w8,r,clk);  
initial
begin 
r=0;
#5;
clk=0;
#5;
x1=8'd1;
#10;
x2=8'd2;
#10;
x3=8'd4;
#10;
x4=8'd8;
#10; 
w1=10'd1;
#10;
w2=10'd2;
#10; 
w3=10'd3;
#10;
w4=10'd4;
#10; 
w5=10'd5;
#10;
w6=10'd6;
#10; 
w7=10'd7;
#10;
w8=10'd8;
#10;
r=1;
#80;
  clk=1'b1;
  #50;
  clk=1'b0;
  #50;
  clk=1'b1;
  #50;
  clk=1'b0;
  #50;
  clk=1'b1;
  #50;
  clk=1'b0;
  #50;
  clk=1'b1;
  #50;
  clk=1'b0;
  #50;
  clk=1'b1;
  #50;
  clk=1'b0;
  #50;
  clk=1'b1;
  #50;
  clk=1'b0;
  #50;
end
endmodule*/