`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 15:33:18
// Design Name: 
// Module Name: ArithmeticUnit
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


module ArithmeticUnit(
    input  [31:0] A,
    input  [31:0] B,
    input [3:0] AluOp,
    output  [31:0] result
    );  
    logic [31:0]AaddB;
    logic [31:0]Bin;   
    logic [31:0]notB;
    logic [31:0]slt;
    
    NOT not1(B, notB);
    MUX2to1 mux1(B, notB, AluOp[1], Bin);
    ADD add1(A, Bin, AluOp[1], AaddB);
    
    ZeroExtend ext1(AaddB[31], slt);
    
    MUX2to1 mux2(AaddB, slt, AluOp[3], result);
    
endmodule
