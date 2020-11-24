module TestBench;
  reg clk;
  Datapath uut(clk);
  
  initial clk=0;
initial repeat(8)#50 clk=~clk;
  
endmodule
