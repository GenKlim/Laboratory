`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:53 10/06/2016 
// Design Name: 
// Module Name:    LR1_BEH 
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
    input [3:0] x,
    output reg [3:0] y
    );
always @ (x)
begin
	case(x)
	4'hf: y<=4'h6;
	4'he: y<=4'ha;
	4'hd: y<=4'he;
	4'hc: y<=4'h8;
	4'hb: y<=4'hd;
	4'ha: y<=4'h3;
	4'h9: y<=4'h1;
	4'h8: y<=4'hf;
	4'h7: y<=4'h0;
	4'h6: y<=4'hc;
	4'h5: y<=4'h1;
	4'h4: y<=4'h7;
	4'h3: y<=4'ha;
	4'h2: y<=4'h9;
	4'h1: y<=4'h2;
	4'h0: y<=4'hc;
	endcase
end

endmodule
