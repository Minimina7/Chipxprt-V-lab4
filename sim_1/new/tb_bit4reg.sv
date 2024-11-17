`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:53:55 PM
// Design Name: 
// Module Name: tb_bit4reg
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


module tb_bit4reg;

logic [3:0] in;
logic [3:0] resDF;
logic [3:0] resBV;
logic clk = 0;
logic reset;

regBV DUT(.D(in), .CLK(clk), .reset(reset), .Q(resBV));
regDF DET(.D(in), .CLK(clk), .reset(reset), .Q(resDF));

always #5 clk = ~clk;

initial begin
    in= 4'b0011;
    reset= 1'b1;
#5
    in= 4'b1100;
    reset= 1'b1;
#5
    in= 4'b0101;
    reset= 1'b0;
#5
    in= 4'b0100;
    reset= 1'b1;
#2
    in= 4'b1101;
    reset= 1'b1;
#10
$finish;
end
endmodule

