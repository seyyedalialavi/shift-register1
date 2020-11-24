module Datapath(input clk);
  wire [63:0] PC_Input,PC_Output;
  wire [31:0]Instuction;
  wire[1:0]  shift
  
  PC po0(clk,shift,PC_Input,PC_Output);
  InstuctionMemory po1(PC_Output,Instuction);
  Adder4 po2(PC_Output,PC_Input);
endmodule