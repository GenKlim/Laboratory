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
module reg_16x4(
    input [3:0] Address,
    output reg [3:0] Y
    );

initial begin
	Y <= 4'hc;
end

always @(Address)
   case (Address)
      4'b0000: Y <= 4'hc;
      4'b0001: Y <= 4'h2;
      4'b0010: Y <= 4'h9;
      4'b0011: Y <= 4'ha;

      4'b0100: Y <= 4'h7;
      4'b0101: Y <= 4'h1;
      4'b0110: Y <= 4'hc;
      4'b0111: Y <= 4'h0;

      4'b1000: Y <= 4'hf;
      4'b1001: Y <= 4'h1;
      4'b1010: Y <= 4'h3;
      4'b1011: Y <= 4'hd;

      4'b1100: Y <= 4'h8;
      4'b1101: Y <= 4'he;
      4'b1110: Y <= 4'ha;
      4'b1111: Y <= 4'h6;

      default: Y <= 4'hc;
   endcase
endmodule