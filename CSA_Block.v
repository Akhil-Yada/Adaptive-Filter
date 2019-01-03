module cb(s,c,w,t,r,clk);
  output [9:0]s,c;
  input t,r,clk;
  input [9:0]w;
  wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10;
  wire sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,sc9,sc10,cc1,cc2,cc3,cc4,cc5,cc6,cc7,cc8,cc9,cc10;
  assign s={sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,sc9,sc10};
  assign c={cc2,cc3,cc4,cc5,cc6,cc7,cc8,cc9,cc10,1'b1};
  ///////////////////////////////////////////////////////////////////////////////////////
  assign is1=(sc1&t);
  assign is2=(sc2&t);
  assign is3=(sc3&t);
  assign is4=(sc4&t);
  assign is5=(sc5&t);
  assign is6=(sc6&t);
  assign is7=(sc7&t);
  assign is8=(sc8&t);
  assign is9=(sc9&t);
  assign is10=(sc10&t);
  //////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////////////
  assign ic1=(cc1&t);
  assign ic2=(cc2&t);
  assign ic3=(cc3&t);
  assign ic4=(cc4&t);
  assign ic5=(cc5&t);
  assign ic6=(cc6&t);
  assign ic7=(cc7&t);
  assign ic8=(cc8&t);
  assign ic9=(cc9&t);
  assign ic8=(cc8&t);
  assign ic9=(cc9&t);
  assign ic10=(cc10&t);
  //////////////////////////////////////////////////////////////////////////////////////
  csas cs1(s1,c1,sc1,cc1,is1,ic1,w[9],s1,c1,r,clk);
  csas cs2(s2,c2,sc2,cc2,is2,ic2,w[8],s1,c2,r,clk);
  csas cs3(s3,c3,sc3,cc3,is3,ic3,w[7],s2,c3,r,clk);
  csas cs4(s4,c4,sc4,cc4,is4,ic4,w[6],s3,c4,r,clk);
  csas cs5(s5,c5,sc5,cc5,is5,ic5,w[5],s4,c5,r,clk);
  csas cs6(s6,c6,sc6,cc6,is6,ic6,w[4],s5,c6,r,clk);
  csas cs7(s7,c7,sc7,cc7,is7,ic7,w[3],s6,c7,r,clk);
  csas cs8(s8,c8,sc8,cc8,is8,ic8,w[2],s7,c8,r,clk);
  csas cs9(s9,c9,sc9,cc9,is9,ic9,w[1],s8,c9,r,clk);
  csas cs10(s10,c10,sc10,cc10,is10,ic10,w[0],s9,c10,r,clk);
endmodule
