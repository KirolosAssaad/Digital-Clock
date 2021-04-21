module modulo_6( input clk,input rstn, input en,output reg[2:0] out);  

  always @ (posedge clk,posedge rstn) begin 
    if(rstn)begin
      out <= 0;
    end
    if (en)begin 
        if (rstn==1) begin  
          out <= 0;  
        end else begin  
          if (out == 5)  
            out <= 0;  
          else  
            out <= out + 1;  
        end  
    end
  end  
endmodule