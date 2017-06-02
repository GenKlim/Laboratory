`timescale 1ns / 1ps

module JK_JK_sch_tb();

// Inputs
   reg CLK;

// Output

// Bidirs

// Instantiate the UUT
   JK UUT (
		.CLK(CLK)
   );
// Initialize Inputs

	always begin
      CLK = 0; #50;
      CLK = 1; #50;
   end
endmodule
