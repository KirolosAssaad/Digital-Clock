module N_counter (input clk, reset, output reg [1:0]count, input UpDown, input Inc);


always @(posedge clk, posedge reset) begin
if (reset == 1) 
count <= 0;

else begin
 if (UpDown ==0) begin
 if (Inc==0)
count <= count + 1;
else count<=count +2;
end
else begin
if (Inc ==0) 
count <= count -1;
else 
count <= count -2;

end
end
end
endmodule

