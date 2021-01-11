module DataMemory(input MemRead,MemWrite,input[63:0]address,WriteData,output reg[63:0]ReadData);
  reg [63:0] Memory[2047:0];
  
  always @(*)begin
    if(MemRead)ReadData=Memory[address];
    if(MemWrite)Memory[address]=WriteData;
  end
endmodule
