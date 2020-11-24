module FullAdder16(input [15:0]a,b,input cIn,output [15:0]s,cOut);
  wire [2:0]c;
  FullAdder4 yy4(a[3:0],b[3:0],cIn,s[3:0],c[0]);
  FullAdder4 yy5(a[7:4],b[7:4],c[0],s[7:4],c[1]);
  FullAdder4 yy6(a[11:8],b[11:8],c[1],s[11:8],c[2]);
  FullAdder4 yy7(a[15:12],b[15:12],c[2],s[15:12],cOut);
endmodule

