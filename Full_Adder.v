module FA(s,cout,a,b,cin);
  input a,b,cin;
  output s,cout;
  assign {cout,s}=a+b+cin;
endmodule
  
