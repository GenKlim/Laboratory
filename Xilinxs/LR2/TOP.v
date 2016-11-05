`timescale 1ns / 1ps

module TOP(
	input CLK,
	input RST,
	output [3:0] CNT_VHDL,
	output [3:0] OUT_VHDL,
	output [3:0] CNT_VLOG,
	output reg [3:0] OUT_VLOG
 );
 
reg [3:0] STATE;

always @ (posedge CLK, posedge RST)
begin
	if(RST) begin
		STATE <= 0;
		OUT_VLOG <= 4'hE;
	end else
		STATE <= STATE + 1;
		
		case (STATE)
			4'h0 : OUT_VLOG <= 4'hC;
			4'h1 : OUT_VLOG <= 4'h0;
			4'h2 : OUT_VLOG <= 4'hE;
			4'h3 : OUT_VLOG <= 4'h4;
			4'h4 : OUT_VLOG <= 4'h5;
			4'h5 : OUT_VLOG <= 4'hF;
			4'h6 : OUT_VLOG <= 4'hC;
			4'h7 : OUT_VLOG <= 4'h6;
			4'h8 : OUT_VLOG <= 4'h6;
			4'h9 : OUT_VLOG <= 4'h9;
			4'hA : OUT_VLOG <= 4'h9;
			4'hB : OUT_VLOG <= 4'h2;
			4'hC : OUT_VLOG <= 4'h1;
			4'hD : OUT_VLOG <= 4'hB;
			4'hE : OUT_VLOG <= 4'h8;
			4'hF : OUT_VLOG <= 4'hE;
		endcase
end

assign CNT_VLOG = STATE;

VHDL INT_MOD(
	.CLK(CLK),
	.RST(RST),
	.CNT_O(CNT_VHDL),
	.VAR_O(OUT_VHDL));

endmodule
