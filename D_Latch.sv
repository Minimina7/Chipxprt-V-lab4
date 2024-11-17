`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:56:31 PM
// Design Name: 
// Module Name: D_Latch
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


module D_Latch(
input logic D,
input logic clk,
input logic reset,
output logic q1,
output logic q2

    );

logic w1;
logic w2;
logic w3;
logic res;

not (res, reset);


nand G1 (w1, D, clk); 
nand G2 (w2, ~D, clk);
nand G3 (w3, w1, q2);
nand G5 (q2, q1, w2);
and G4 (q1, reset, w3);


endmodule
