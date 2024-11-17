`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:40:36 PM
// Design Name: 
// Module Name: regDF
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


module regDF #(parameter bits = 4)(
input logic [bits - 1:0] D,
input logic CLK,
input logic reset,
output logic [bits - 1:0] Q
    );
    
    ff F1(.D(D[0]), .clk(CLK), .reset(reset), .q(Q[0]));
    ff F2(.D(D[1]), .clk(CLK), .reset(reset), .q(Q[1]));
    ff F3(.D(D[2]), .clk(CLK), .reset(reset), .q(Q[2]));
    ff F4(.D(D[3]), .clk(CLK), .reset(reset), .q(Q[3]));
endmodule
