module digitalClock (input clk, output  [6:0]out, output [3:0]enable, input RxD);
wire hz1, hz100;

wire reset;
UART_receiver_for_reset u11(.clk(clk), .RxD(RxD),.RxData(RxData), .output_level(reset));

clockDivider #(50000000) cd (clk, reset, hz1);
clockDivider #(500000) cdd (clk, reset, hz100);

wire [3:0] sec1,min1;
wire [2:0] sec2, min2;
sec_min sm1  ( reset, hz1, sec1,min1,sec2, min2);

wire [6:0] out1;
wire [6:0] out2;
wire [6:0] out3;
wire [6:0] out4;
pro_7_seg s1 (sec1,out1);
pro_7_seg s2 (min1,out2);
pro_7_seg_2 s3 (sec2,out3);
pro_7_seg_2 s4 (min2,out4);

wire [1:0] count;
decoder2x4 d (count,enable);
N_counter nc1 (hz100,reset,count,0,0);

mux_4to1_assign m1 (out1,out2,out3,out4,count,out);

//output [7:0] RxData;

endmodule