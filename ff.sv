`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:11:22 PM
// Design Name: 
// Module Name: ff
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


module ff(
input logic D,
input logic clk,
input logic reset,
output logic q
    );
    logic out1;
    logic noth1;
    logic noth2;
    
    D_Latch G1 (.D(D), .clk(~clk), .reset(reset), .q1(out1), .q2(noth1));
    D_Latch G2 (.D(out1), .clk(clk), .reset(reset), .q1(q), .q2(noth2));
    
    
endmodule
