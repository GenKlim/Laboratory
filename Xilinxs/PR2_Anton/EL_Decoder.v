`timescale 1ns / 1ps

module EL_Decoder(
    input [3:0] NOM,
    output reg [3:0] EL
    );
	 
	always @ (NOM)
		case(NOM)
			4'h0: EL <= 4'hA;
			4'h1: EL <= 4'h7;
			4'h2: EL <= 4'h1;
			4'h3: EL <= 4'hD;
			4'h4: EL <= 4'h3;
			4'h5: EL <= 4'h7;
			4'h6: EL <= 4'hC;
			4'h7: EL <= 4'h3;
			4'h8: EL <= 4'h5;
			4'h9: EL <= 4'hB;
			4'hA: EL <= 4'hF;
			4'hB: EL <= 4'h5;
			4'hC: EL <= 4'h9;
			4'hD: EL <= 4'h8;
			4'hE: EL <= 4'hE;
			4'hF: EL <= 4'h7;
		endcase
		
endmodule
