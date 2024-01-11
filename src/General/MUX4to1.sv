`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2024 16:02:59
// Design Name: 
// Module Name: MUX4to1
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


module MUX4to1(
    input [31:0]A,
    input [31:0]B,
    input [31:0]C,
    input [31:0]D,
    input [1:0]select,
    output [31:0]result
    );
    assign result = select[1] ? (select[0] ? D : C) : (select[0] ? B : A);
endmodule
