`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:25:20 10/14/2016
// Design Name:   TOP
// Module Name:   C:/Users/Andrey/Documents/GitHub/learning/Lab1/TEST.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TOP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST;

	// Inputs
	reg [11:0] SW;

	// Outputs
	wire [11:0] LED;

	// Instantiate the Unit Under Test (UUT)
	TOP uut (
		.SW(SW), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		SW = 12'h000;#10;
		SW = 12'h111;#10;
		SW = 12'h222;#10;
		SW = 12'h333;#10;
		SW = 12'h444;#10;
		SW = 12'h555;#10;
		SW = 12'h666;#10;
		SW = 12'h777;#10;
		SW = 12'h888;#10;
		SW = 12'h999;#10;
		SW = 12'hAAA;#10;
		SW = 12'hBBB;#10;
		SW = 12'hCCC;#10;
		SW = 12'hDDD;#10;
		SW = 12'hEEE;#10;
		SW = 12'hFFF;#10;

	end
      
endmodule

