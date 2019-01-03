module mux8_1(o,x,t);
 output o;
 input [7:0]x;
 input [2:0]t; 
 wire t1,t2,t3;
 wire x1,x2,x3,x4,x5,x6,x7,x8; 
 assign {x1,x2,x3,x4,x5,x6,x7,x8}=x;
 assign {t1,t2,t3}=t;
 assign o=t1?(t2?(t3?x1:x2):(t3?x3:x4)):(t2?(t3?x5:x6):(t3?x7:x8));
 endmodule 