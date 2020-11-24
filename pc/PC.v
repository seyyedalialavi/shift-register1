module PC(input clk,input[1:0]  shift,input [63:0] PC_Input,output  [63:0] PC_Output);
  
  wire [7:0]DIN,DOUT;
  Register8 y0(clk,shift,DIN[0],PC_Input[7:0],PC_Output[7:0],DOUT[0]);
  Register8 y1(clk,shift,DIN[1],PC_Input[15:8],PC_Output[15:8],DOUT[1]);
  Register8 y2(clk,shift,DIN[2],PC_Input[23:16],PC_Output[23:16],DOUT[2]);
  Register8 y3(clk,shift,DIN[3],PC_Input[31:24],PC_Output[31:24],DOUT[3]);
  Register8 y4(clk,shift,DIN[4],PC_Input[39:32],PC_Output[39:32],DOUT[4]);
  Register8 y5(clk,shift,DIN[5],PC_Input[47:40],PC_Output[47:40],DOUT[5]);
  Register8 y6(clk,shift,DIN[6],PC_Input[55:48],PC_Output[55:48],DOUT[6]);
  Register8 y7(clk,shift,DIN[7],PC_Input[63:56],PC_Output[63:56],DOUT[7]);
  
  assign DIN=shift[1]?{DOUT[6:0],1'b0}:shift[0]?{1'b0,DOUT[7:1]}:8'H00;//Shift[1]=1 => shift left ,Shift[0]=1 => shift right ,shift=00 ,DataOut=DataIn

endmodule
  
