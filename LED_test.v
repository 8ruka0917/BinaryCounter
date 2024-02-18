`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/31 15:44:39
// Design Name: 
// Module Name: LED_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LED_test();
    reg CLK, RST;
    wire  [7:0] OUT;
    LED dut (.RST(RST), .CLK(CLK), .OUT(OUT));
    initial begin
        CLK <=0;
        RST <=0;
       #25 RST <=1;
       #20 RST <=0;
 end
 always #10 begin
      CLK <= ~CLK;
 end
endmodule
