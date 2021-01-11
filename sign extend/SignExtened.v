module SignExtend(input [31:0]datain,output [63:0]dataout);
  assign dataout[31:0]=datain;
  assign dataout[63:32]=datain[31]?32'h11111111:32'h00000000;
endmodule
