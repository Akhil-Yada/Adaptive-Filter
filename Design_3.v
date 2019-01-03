module d3(s,c,w1,w2,w3,w4,w5,w6,w7,w8,x,w);
output [10:0]s,c;
input [9:0]w1,w2,w3,w4,w5,w6,w7,w8,w;
input [7:0]x;
wire [9:0]x1,s0,c0,w,w_;
wire [11:0]l2,l3,l4,l5,l6,l7;
wire [12:0]l8;
wire [11:0]s1,c1,s2,c2,s3,c3,s4,c4,s5,c5,s4_;
wire [12:0]s3_,c3_,s5_,c5_,s6,c6,s6_,s7,c7,s7_,s8,c8;
assign w_={w[9:1],~w[0]};
assign x1={1'b0,1'b0,x};
assign l2={w2[9],w2[9],w2};
assign l3={w3[9],w3,w[0]};
assign l4={w4,1'b0,1'b0};
assign l5={w5[9],w5[9],w5};
assign l6={w6[9],w6,1'b0};
assign l7={w7,1'b0,1'b0};

assign s1={s0[9],s0[9],s0[9],s0[9:1]};
assign c1={c0[9],c0[9],c0};
assign s4_={s4[11],s4[11:1]};
assign s3_={s3,1'b0};
assign s5_={s5[11],s5[11],s5[11:1]};
assign c5_={c5[11],c5};
assign c3_={c3,1'b0};
assign s6_={s6[12],s6[12:1]};
assign s7_={s7[12],s7[12:1]};
assign l8={w8[9],w8,1'b0,1'b0};
assign s=s8[11:1];
assign c=c8[10:0];
FA10 f1(s0,c0,w1,x1,w_);
FA12 f2(s2,c2,l2,l3,l4);
FA12 f3(s3,c3,l5,l6,l7);
FA12 f4(s4,c4,s1,c1,s2);
FA12 f5(s5,c5,s4_,c4,c2);

FA13 f6(s6,c6,s3_,s5_,c5_);
FA13 f7(s7,c7,s6_,c3_,c6);
FA13 f8(s8,c8,c7,s7_,l8);

endmodule 

module testd3();
  reg [9:0]w1,w2,w3,w4,w5,w6,w7,w8,w;
  reg [7:0]x;
  wire [11:0]s,c;
  d3 dd3(s,c,w1,w2,w3,w4,w5,w6,w7,w8,x,w);
  initial
  begin
  /*x=8'd0;
  w=10'd0;
  w1=10'b0000010111;
  w2=10'b0000001011;
  w3=10'b1001010101;
  w4=10'b1000010001;
  w5=10'b0000100011;
  w6=10'b0000010001;
  w7=10'b1110100101;
  w8=10'b0000100101;*/
  x=8'b11111111;
  w=10'b1111111111;
  w1=10'b1111111111;
  w2=10'b1111111111;
  w3=10'b1111111111;
  w4=10'b1111111111;
  w5=10'b1111111111;
  w6=10'b1111111111;
  w7=10'b1111111111;
  w8=10'b1111111111;
  #1000;
  end
endmodule