`timescale 1ns / 1ps

module LR1_TB;

	reg [11:0] SW;

	wire [11:0] LED;

	LR1_TOP uut (
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		SW = 12'h000;	#100;
		SW = 12'h111;	#100;
		SW = 12'h222;	#100;
		SW = 12'h333;	#100;
		SW = 12'h444;	#100;
		SW = 12'h555;	#100;
		SW = 12'h666;	#100;
		SW = 12'h777;	#100;
		SW = 12'h888;	#100;
		SW = 12'h999;	#100;
		SW = 12'hAAA;	#100;
		SW = 12'hBBB;	#100;
		SW = 12'hCCC;	#100;
		SW = 12'hDDD;	#100;
		SW = 12'hEEE;	#100;
		SW = 12'hFFF;	#100;
	end
      
endmodule
