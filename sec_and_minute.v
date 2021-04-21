
module sec_min  ( input rst, input clk,output [3:0] sec1,min1, output [2:0] sec2, min2);

modulo_10 m1 (clk, rst,1, sec1);
modulo_6 m2 (clk,rst,(sec1==9),sec2);
modulo_10 m3 (clk,rst,(sec1==9 && sec2==5),min1);
modulo_6 m4 (clk,rst,(sec1==9 && sec2==5 && min1==9),min2);

endmodule

