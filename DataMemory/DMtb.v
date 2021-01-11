module tb;
  reg MemRead,MemWrite;
  reg[63:0]address,WriteData;
  wire[63:0]ReadData;
  DataMemory uut(MemRead,MemWrite,address,WriteData,ReadData);
  
  initial begin
    MemRead=0;
    MemWrite=0;
    address=18;
    WriteData=523;
    #100 MemRead=1;
    #100 MemRead=0;
    MemWrite=1;
    #100 MemRead=1;
    #100 ;
  end
endmodule
