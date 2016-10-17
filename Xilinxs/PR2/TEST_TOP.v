`timescale 1ns / 1ps

module TEST_TOP;

	reg CLK;
	reg BTNC;
	reg BTNR;

	wire [6:0] SEG;
	wire AN0;
	wire AN1;
	wire LED0;

	TOP uut (
		.CLK(CLK), 
		.BTNC(BTNC), 
		.BTNR(BTNR), 
		.SEG(SEG), 
		.AN0(AN0), 
		.AN1(AN1), 
		.LED0(LED0)
	);

   always begin
      CLK = 1'b0; #25;
      CLK = 1'b1; #25;
   end  
	
	initial begin
		BTNC = 0; BTNR = 0; #100;
		BTNR = 1; #100;
		BTNR = 0; #100;
		
		repeat (16) begin
			repeat (4) begin
				BTNC = 1; #10;
				BTNC = 0; #50;
				BTNC = 1; #250;
				BTNC = 0; #80;
				BTNC = 1; #20;
				BTNC = 0; #170;
							  
				BTNC = 1; #1000000;
				BTNC = 0; #120;
				
				BTNC = 1; #10;
				BTNC = 0; #50;
				BTNC = 1; #250;
				BTNC = 0; #80;
				BTNC = 1; #20;
				BTNC = 0; #170;
			end
		end
	end
      
endmodule

