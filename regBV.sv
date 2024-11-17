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


module regBV #(parameter bits = 4)(
input logic [bits - 1:0] D,
input logic CLK,
input logic reset,
output logic [bits - 1:0] Q
    );
    
    always @ (posedge CLK or negedge reset)
    begin
    if (reset == 0)
        Q <= 4'b0000;
    else 
        Q <= D;
    end
endmodule

