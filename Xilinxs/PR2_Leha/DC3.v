`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:01 10/18/2016 
// Design Name: 
// Module Name:    DC3 
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
module DC3(
    input [1:0] x,
    output reg [2:0] y
    );
initial y <= 2'h0;
always @ (x)
	case(x)
		2'b00: y <= 3'b110;
		2'b01: y <= 3'b101;
		2'b10: y <= 3'b011;
		2'b11: y <= 3'b111;
	endcase

endmodule
