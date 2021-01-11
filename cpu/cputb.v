module tb;
  reg clk;
  cpu uut(clk);
  
  initial clk=0;
  initial repeat (50)#25 clk=~clk;
endmodule