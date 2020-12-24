module ALUtb;
  reg [63:0]Input1,Input2;
  reg[3:0]ALUControlInput;
  wire [63:0]ALUResult;
  wire zero;
  ALU uut(Input1,Input2,ALUControlInput,ALUResult,zero);
  
  initial begin
    Input1=85;
    Input2=850000;
    ALUControlInput=4'b0010;
    #100 ALUControlInput=4'b0110;
    #100 ALUControlInput=4'b0000;
    #100 ALUControlInput=4'b0001;
    #100 ;
  end
endmodule
