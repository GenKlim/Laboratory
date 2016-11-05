`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:31 10/14/2016 
// Design Name: 
// Module Name:    KNF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module KNF(
    input [3:0] X,
    output [3:0] Y
    );

assign Y[0] = (~X[0] | X[3] | X[2])&(X[0] | ~X[2] | X[3])&(X[1] | ~X[0] | ~X[2])&(~X[2] | ~X[1] | X[0])&(~X[1] | ~X[0] | X[2])&(~X[1] | X[2] | ~X[3]);

assign Y[1] = (X[1] | X[2] | X[3])&(~X[1] | ~X[0])&(~X[2] | ~X[1])&(~X[0] | X[2])&(~X[3] | ~X[1]);

assign Y[2] = (X[1] | ~X[0] | X[3])&(~X[1] | X[0] | ~X[2])&(~X[1] | ~X[2] | ~X[3])&(~X[3] | X[2] | X[0]);

assign Y[3] = (X[1] | ~X[0] | X[3])&(~X[1] | X[0] | X[2] | X[3])&(X[3] | ~X[2] | X[1])&(~X[2] | ~X[1] | ~X[0])&(X[1] | X[0] | ~X[3] | X[2])&(~X[3] | ~X[1] | ~X[0]);

endmodule
