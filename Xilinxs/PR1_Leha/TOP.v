`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:44 10/06/2016 
// Design Name: 
// Module Name:    LR1_TOP 
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
module TOP(
    input [11:0] SW,
    output [11:0] LED
    );

DNF CL1(
	.x3(SW[3]),
	.x2(SW[2]),
	.x1(SW[1]),
	.x0(SW[0]),
	.y3(LED[3]),
	.y2(LED[2]),
	.y1(LED[1]),
	.y0(LED[0])
	);
KNF CL2(
	.x(SW[7:4]),
	.y(LED[7:4])
	);
BEH CL3(
	.x(SW[11:8]),
	.y(LED[11:8])
	);
endmodule
