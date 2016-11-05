`timescale 1ns / 1ps

module Test;

	reg CLK;
	reg RST;
	reg WE;
	reg OE;
	
	wire IRQ;

	wire [3:0] DB;

	Top uut (
		.CLK(CLK), 
		.RST(RST), 
		.WE(WE), 
		.OE(OE), 
		.IRQ(IRQ), 
		.DB(DB)
	);
	
	always begin
		CLK = ~CLK; #50;
	end
	
	always begin
		OE = 0; #550;
		OE = 1; #50;
	end
	
	assign DB = (WE && !OE) ? 4'h5 : 4'bZ;

	initial begin
		CLK = 0;
		WE = 0;
		OE = 0;
		
		RST = 0; #50;
		RST = 1; #50;
		RST = 0; #50;
		
		WE = 1; #50;
		WE = 0; #150;

	end
      
endmodule

