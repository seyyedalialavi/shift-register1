module RegFile (input clk,RegWrite,input [4:0] readreg1, readreg2, writereg,input [63:0] writedata,output [63:0] readdata1, readdata2);
  integer i=0;
  reg [63:0] regfile [31:0];
  initial begin
    for(i=0;i<32;i=i+1)
      regfile[i]=0;
  end

  always @(posedge clk)
  begin
    regfile[0]=0;
		  	if (RegWrite) 
	 				regfile[writereg] <= writedata;
  end

  assign readdata1 = regfile[readreg1];
  assign readdata2 = regfile[readreg2];
endmodule;
