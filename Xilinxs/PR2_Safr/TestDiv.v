`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:55:23 12/11/2016
// Design Name:   Divider
// Module Name:   C:/Users/admin/Documents/Laboratory/Xilinxs/PR2_Anton/TestDiv.v
// Project Name:  PR2_Anton
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Divider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestDiv;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire CEO;

	// Instantiate the Unit Under Test (UUT)
	Divider uut (
		.CLK(CLK), 
		.RST(RST), 
		.CEO(CEO)
	);

   always begin
      CLK = 1'b0; #25;
      CLK = 1'b1; #25;
   end  

	initial begin
		CLK = 0;
		RST = 1;

		#100;
		RST = 0;
	end
      
endmodule

