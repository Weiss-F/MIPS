`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.01.2024 11:06:50
// Design Name: 
// Module Name: ALU
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


module ALU(
    input  [31:0] A,
    input  [31:0] B,
    input [3:0] AluOp,
    output  [31:0] result,
    output zero
    ); 
    
    logic [31:0]AlogicB;
    logic [31:0]AarithmeticB;
    
    LogicUnit logic1(A, B, AluOp[1:0], AlogicB);
    ArithmeticUnit arithmetic1(A, B, AluOp[3:0], AarithmeticB);
    MUX2to1 mux1(AarithmeticB, AlogicB, AluOp[2], result);
    assign zero = |result;
endmodule
