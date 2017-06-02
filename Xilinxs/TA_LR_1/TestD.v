`timescale 1ns / 1ps

module Test_D;

	reg CLK;

	Main uut (
		.Clock(CLK)
	);

	always begin
      CLK = 0; #50;
      CLK = 1; #50;
   end
      
endmodule

