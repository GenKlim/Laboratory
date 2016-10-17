`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:10:05 10/16/2016 
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
    input [3:0] x,
    output [3:0] y
    );
assign y[0] = (x[3]|x[2]|x[1])
					&(x[3]|~x[1]|~x[0])
					&(~x[2]|~x[1])
					&(~x[3]|~x[2]);
assign y[1] = (x[3]|x[2]|x[0])
					&(x[3]|~x[1]|x[0])
					&(x[3]|~x[2]|~x[0])
					&(~x[3]|~x[2]|x[1]|x[0])
					&(~x[3]|x[2]|~x[0]);
					
assign y[2] = (x[2]|x[1]|~x[0])
					&(x[2]|~x[1]|x[0])
					&(x[3]|~x[0])
					&(~x[3]|~x[2]|x[0]);
assign y[3] = (x[2]|x[1]|~x[0])
					&(x[3]|~x[2]|x[1])
					&(~x[2]|~x[1]|~x[0])
					&(~x[3]|x[2]|~x[1]|x[0]);
endmodule
