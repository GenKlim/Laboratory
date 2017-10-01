`timescale 1ns / 1ps

module Test;

	// Inputs
	reg CLK;
	reg BTNC;
	reg BTNR;

	// Outputs
	wire [6:0] SEG;
	wire [2:0] AN;
	wire LED0;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.CLK(CLK), 
		.BTNC(BTNC), 
		.BTNR(BTNR), 
		.SEG(SEG), 
		.AN(AN), 
		.LED0(LED0)
	);

   always begin
      CLK = 1'b0; #25;
      CLK = 1'b1; #25;
		
   end  
	
   always begin
		BTNC = 1;
		#20000;
		BTNC = 0;
		#20000;
   end  
	
	initial begin
		BTNR = 1; #100;
		BTNR = 0;
	end
      
endmodule

