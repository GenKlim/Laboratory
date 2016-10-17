`timescale 1ns / 1ps

module TEST_TOP;

	reg CLK;
	reg BTNC;
	reg BTNR;

	wire [6:0] SWG;
	wire AN0;
	wire AN1;
	wire LED0;

	TOP uut (
		.CLK(CLK), 
		.BTNC(BTNC), 
		.BTNR(BTNR), 
		.SWG(SWG), 
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
				BTNC = 1; #50;
				BTNC = 0; #150;
			end
		end
	end
      
endmodule

