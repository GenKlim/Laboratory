`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:30 10/17/2016 
// Design Name: 
// Module Name:    multiplexer4 
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
module multiplexer4(
    input [3:0] X,
    input [1:0] Address,
    output reg Y
    );
// <\w+?(\d)> => X[\1]  -- template to input // and minus 1 :(
// <output>   => Y      -- template to output
	initial
		Y = X[0];
	
   always @(Address, X)
      case (Address)
         2'b00: Y = X[0];
         2'b01: Y = X[1];
         2'b10: Y = X[2];
         2'b11: Y = X[3];
      endcase

endmodule
