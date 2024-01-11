`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 15:34:28
// Design Name: 
// Module Name: LogicUnit
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


module LogicUnit(
    input  [31:0] A,
    input  [31:0] B,
    input [1:0] AluOp,
    output  [31:0] result
    );  
    logic [31:0] AandB;
    logic [31:0] AorB;
    logic [31:0] AndB_mux_AorB;
    logic [31:0] AnorB;
    logic [31:0] AxorB;
    
    AND and1(A,B,AandB);
    OR or1(A,B, AorB);
    MUX2to1 mux1(AndB, AorB, AluOp[0], AndB_mux_AorB);
    NOT not1(AndB_mux_AorB, AnorB);
    AND and2(AorB, AnorB, AxorB);
    
    MUX4to1 res(AndB, AorB, AxorB, AnorB, AluOp, result );
endmodule
