module Adder4(input[63:0]DataIn,output[63:0] DataOut);
  FullAdder64 yy12(DataIn,4,1'b0,DataOut,);
endmodule
