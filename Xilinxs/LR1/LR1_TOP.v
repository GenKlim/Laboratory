`timescale 1ns / 1ps

module LR1_TOP(
    input [11:0] SW,
    output [11:0] LED
    );
	
	LR1_DNF CL1(
		.X3(SW[3]),
		.X2(SW[2]),
		.X1(SW[1]),
		.X0(SW[0]),
		.Y3(LED[3]),
		.Y2(LED[2]),
		.Y1(LED[1]),
		.Y0(LED[0]));
		
	LR1_KNF CL2(
		.X(SW[7:4]),
		.Y(LED[7:4]));
		
	LR1_BEH CL3(
		.X(SW[11:8]),
		.Y(LED[11:8]));

endmodule
