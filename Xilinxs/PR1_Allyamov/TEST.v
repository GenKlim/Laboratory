`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:57:53 10/02/2016
// Design Name:   TOP
// Module Name:   C:/Users/Ildar/Documents/XILINX/LR_1/TEST.v
// Project Name:  LR_1
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
  SW = 12'h000; #100;
  SW = 12'h111; #100;
  SW = 12'h222; #100;
  SW = 12'h333; #100;
  SW = 12'h444; #100;
  SW = 12'h555; #100;
  SW = 12'h666; #100;
  SW = 12'h777; #100;
  SW = 12'h888; #100;
  SW = 12'h999; #100;
  SW = 12'hAAA; #100;
  SW = 12'hBBB; #100;
  SW = 12'hCCC; #100;
  SW = 12'hDDD; #100;
  SW = 12'hEEE; #100;
  SW = 12'hFFF; #100;
 end
      
endmodule

