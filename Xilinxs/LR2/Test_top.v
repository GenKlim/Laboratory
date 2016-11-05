`timescale 1ns / 1ps

module Test_top;

	reg CLK;
	reg RST;

	wire [3:0] CNT_VHDL;
	wire [3:0] OUT_VHDL;
	wire [3:0] CNT_VLOG;
	wire [3:0] OUT_VLOG;

	TOP uut (
		.CLK(CLK), 
		.RST(RST), 
		.CNT_VHDL(CNT_VHDL), 
		.OUT_VHDL(OUT_VHDL), 
		.CNT_VLOG(CNT_VLOG), 
		.OUT_VLOG(OUT_VLOG)
	);
	
	always begin
      CLK = 0; #50;
      CLK = 1; #50;
   end  
				
	initial begin
		CLK = 0; RST = 1; #50;
		CLK = 0; RST = 0;
	end
      
endmodule

