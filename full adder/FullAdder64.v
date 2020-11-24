module FullAdder64(input [63:0]a,b,input cIn,output [63:0]s,cOut);
  wire [2:0]c;
  FullAdder16 yy8(a[15:0],b[15:0],cIn,s[15:0],c[0]);
  FullAdder16 yy9(a[31:16],b[31:16],c[0],s[31:16],c[1]);
  FullAdder16 yy10(a[47:32],b[47:32],c[1],s[47:32],c[2]);
  FullAdder16 yy11(a[63:48],b[63:48],c[2],s[63:48],cOut);
endmodule
