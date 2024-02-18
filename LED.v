`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/31 15:43:53
// Design Name: 
// Module Name: LED
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


module LED(
    input CLK, RST,
    output reg  [7:0] OUT);
    
    reg [27:0] counter_1;
         
    always @(posedge CLK or posedge RST) begin
            if(RST) begin
                counter_1 <= 8'b0;
                OUT <= 8'b0;
            end
            else begin
              if (counter_1 < 100000000)
                counter_1 <= counter_1 + 1;
              else begin
                    OUT = OUT + 1;
                    counter_1 <= 0;
              end
            end
 end
endmodule