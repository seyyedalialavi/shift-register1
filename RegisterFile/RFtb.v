module RFtb;
  reg clk,RegWrite;
  reg [4:0] readreg1, readreg2, writereg;
  reg [63:0] writedata;
  wire [63:0] readdata1, readdata2;
  RegFile uut(clk,RegWrite,readreg1, readreg2, writereg,writedata,readdata1,readdata2);

  initial repeat(20)#50 clk=~clk;
  initial begin 
    clk=0;
    readreg1=12;
    readreg2=10;
    writereg=10;
    writedata=12;
    RegWrite=0;
    #100 RegWrite=1;
    #100 writereg=12;
    #60 RegWrite=0;
  end
endmodule