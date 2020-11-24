module FullAdder4(input [3:0]a,b,input cIn,output [3:0]s,cOut);
  wire [2:0]c;
  FullAdder1 yy0(a[0],b[0],cIn,s[0],c[0]);
  FullAdder1 yy1(a[1],b[1],c[0],s[1],c[1]);
  FullAdder1 yy2(a[2],b[2],c[1],s[2],c[2]);
  FullAdder1 yy3(a[3],b[3],c[2],s[3],cOut);
endmodule
