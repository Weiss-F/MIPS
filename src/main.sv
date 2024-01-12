`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 14:36:59
// Design Name: 
// Module Name: main
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


module main(
    input [15:0]sw,
    output [15:0]led
    );
    logic [31:0]A;
    logic [31:0]B;
    logic [3:0]AluOp;
    logic [31:0]res;
    
    assign A = {26'b0, sw[5:0]};
    assign B = {26'b0, sw[15:10]};
    assign AluOp = sw[9:6];
    assign res = {16'b0, led[15:0]};
    
    //assign A = {26'b0, 6'b0000_11};
    //assign B = {26'b0, 6'b0000_11};
    //assign AluOp = {4'b0000};
    //assign res = {16'b0, led[15:0]};
    ALU alu1(A, B, AluOp, res);
    
endmodule
