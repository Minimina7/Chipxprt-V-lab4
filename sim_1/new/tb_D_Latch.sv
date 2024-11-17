`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:56:46 PM
// Design Name: 
// Module Name: tb_D_Latch
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


module tb_D_Latch;

logic d;
logic clk = 0;
logic reset;
logic Q1, Q2;

D_Latch DET(.D(d), .clk(clk), .reset(reset), .q1(Q1), .q2(Q2));


 
always #5 clk = ~clk;



initial begin
    //clk = 0;
    d= 1'b0;
    reset= 1'b1;
#5
    d= 1'b1;
    reset= 1'b1;
#5
    d= 1'b1;
    reset= 1'b0;
#5
    d= 1'b1;
    reset= 1'b1;
#2
    d= 1'b0;
    reset= 1'b1;
#10
$finish;
end
endmodule
