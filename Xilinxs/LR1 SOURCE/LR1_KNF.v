`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:    Argon
// Engineer:   Nikolaev
// 
// Create Date:      09/2014 
// Design Name:      LR1
// Module Name:      LR1_KNF
// Project Name:     LR1
// Target Devices:   XC7A100T-1CSG324C
// Tool versions:    ISE14.4(P.49d)
// Description: 
//
// Dependencies: 
//
// Revision:         1.0
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LR1_KNF(X,Y);
input  [3:0] X;
output [3:0] Y;

assign Y[3] = (~X[2]|~X[1]|~X[0])&(~X[3]|~X[1]|~X[0])&(~X[3]|X[2]|X[1]|X[0])&
              (X[3]|X[2]|X[1]|~X[0])&(X[3]|X[2]|~X[1]|X[0])&(~X[3]|~X[2]|~X[1]);
              
assign Y[2] = (~X[1]|X[0])&(X[3]|X[2]|X[0])&(~X[3]|~X[2]|X[0])&(X[3]|X[2]|~X[1])&
              (~X[3]|~X[2]|~X[1])&(X[3]|~X[2]|X[1]|~X[0]);
              
assign Y[1] = (~X[3]|~X[2])&(X[2]|X[1]|X[0])&(X[3]|X[1]|~X[0])&(~X[3]|~X[1]|~X[0])&
              (~X[2]|~X[1]|X[0]);
              
assign Y[0] = (~X[2]| X[1])&(X[3]|X[2]|X[0])&(X[3]|X[2]|~X[1])&(~X[3]|~X[1]|~X[0]);

endmodule
