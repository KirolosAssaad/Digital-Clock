module pro_7_seg_2 (input [2:0]in, output reg [6:0] out);
always @(in)begin
case(in)
0 : out = 7'b0000001;
1 : out = 7'b1001111;
2 : out = 7'b0010010;
3 : out = 7'b0000110;
4 : out = 7'b1001100;
5 : out = 7'b0100100;
6 : out = 7'b0100000;
7 : out = 7'b0001111;

endcase
end
endmodule