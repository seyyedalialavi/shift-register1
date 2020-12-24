module ALU(input [63:0]Input1,Input2,input[3:0]ALUControlInput,output reg [63:0]ALUResult,output reg zero);
  
  always@(*)begin
    case (ALUControlInput)
      4'b0010:ALUResult=Input1+Input2;
      4'b0110:ALUResult=Input1-Input2;
      4'b0000:ALUResult=Input1 & Input2;
      4'b0001:ALUResult=Input1 | Input2;
      default:ALUResult=64'hxxxxxxxxxxxxxxxx;
    endcase
    if(ALUResult==0)zero=1;
    else zero=0;
  end
endmodule