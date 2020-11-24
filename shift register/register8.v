module Register8(input clk,input[1:0]shift,input datain_s,input[7:0] DataIn,output[7:0]DataOut,output dataout_s);
  wire [7:0]DIN,DOUT;
  
  dff u0(DIN[0],clk,DOUT[0]);
  dff u1(DIN[1],clk,DOUT[1]);
  dff u2(DIN[2],clk,DOUT[2]);
  dff u3(DIN[3],clk,DOUT[3]);
  dff u4(DIN[4],clk,DOUT[4]);
  dff u5(DIN[5],clk,DOUT[5]);
  dff u6(DIN[6],clk,DOUT[6]);
  dff u7(DIN[7],clk,DOUT[7]);
  
  assign DIN=shift[1]?{DOUT[6:0],datain_s}:shift[0]?{datain_s,DOUT[7:1]}:DataIn;//Shift[1]=1 => shift left ,Shift[0]=1 => shift right ,shift=00 ,DataOut=DataIn
  assign DataOut=DOUT;
  assign dataout_s=shift[1]?DOUT[7]:shift[0]?DOUT[0]:DOUT[0];
endmodule