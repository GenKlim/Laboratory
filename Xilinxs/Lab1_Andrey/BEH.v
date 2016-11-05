`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:22:17 10/14/2016 
// Design Name: 
// Module Name:    BEH 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BEH(
    input [3:0] X,
    output reg [3:0] Y
    );
always @(X)
	begin
		case (X)
			4'h0 : Y <= 4'hD;
			4'h1 : Y <= 4'h0;
			4'h2 : Y <= 4'h7;
			4'h3 : Y <= 4'hC;
			
			4'h4 : Y <= 4'h6;
			4'h5 : Y <= 4'h2;
			4'h6 : Y <= 4'h8;
			4'h7 : Y <= 4'h5;
			
			4'h8 : Y <= 4'h3;
			4'h9 : Y <= 4'hD;
			4'hA : Y <= 4'h8;
			4'hB : Y <= 4'h4;
			
			4'hC : Y <= 4'hF;
			4'hD : Y <= 4'hE;
			4'hE : Y <= 4'h8;
			4'hF : Y <= 4'h1;
		endcase	
	end

endmodule
