`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:15:43 PM
// Design Name: 
// Module Name: tb_ff
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


module tb_ff;
logic d;
logic clk = 0;
logic reset;
logic Q1;

ff DET(.D(d), .clk(clk), .reset(reset), .q(Q1));


 
always #5 clk = ~clk;



initial begin
    //clk = 0;
    d= 1'b1;
    reset= 1'b1;
#5
    d= 1'b1;
    reset= 1'b1;
#5
    d= 1'b1;
    reset= 1'b0;
#5
    d= 1'b0;
    reset= 1'b1;
#2
    d= 1'b0;
    reset= 1'b1;
#5
    d= 1'b0;
    reset= 1'b1;
#4
    d= 1'b1;
    reset= 1'b1;
#3
    d= 1'b0;
    reset= 1'b1;
#5
    d= 1'b1;
    reset= 1'b1;
#5
    d= 1'b1;
    reset= 1'b0;
#10
$finish;
end
endmodule
