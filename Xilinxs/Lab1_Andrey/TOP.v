`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:33 10/06/2016 
// Design Name: 
// Module Name:    TOP 
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
		.X0(SW[0]),
		.X1(SW[1]),
		.X2(SW[2]),
		.X3(SW[3]),
		.Y0(LED[0]),
		.Y1(LED[1]),
		.Y2(LED[2]),
		.Y3(LED[3]));
		
	KNF CL2(.X(SW[7:4]), .Y(LED[7:4]));
	BEH CL3(.X(SW[11:8]), .Y(LED[11:8]));


endmodule
