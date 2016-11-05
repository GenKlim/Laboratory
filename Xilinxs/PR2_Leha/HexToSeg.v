`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:16 10/17/2016 
// Design Name: 
// Module Name:    HexToLed 
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
module HexToSeg(
    input [3:0] x,
    output [6:0] transformedY
    );
reg [6:0]y;
initial y <= 7'b1111111;


assign transformedY[0] = y[6];
assign transformedY[1] = y[4];
assign transformedY[2] = y[1];
assign transformedY[3] = y[0];
assign transformedY[4] = y[2];
assign transformedY[5] = y[5];
assign transformedY[6] = y[3];

always @ (x)
   case (x)
      4'b0000: y <= 7'b0001000;
      4'b0001: y <= 7'b1101101;
      4'b0010: y <= 7'b0100010;
      4'b0011: y <= 7'b0100100;

      4'b0100: y <= 7'b1000101;
      4'b0101: y <= 7'b0010100;
      4'b0110: y <= 7'b0010000;
      4'b0111: y <= 7'b0101101;

      4'b1000: y <= 7'b0000000;
      4'b1001: y <= 7'b0000100;
      4'b1010: y <= 7'b0000001;
      4'b1011: y <= 7'b1010000;

      4'b1100: y <= 7'b0011010;
      4'b1101: y <= 7'b1100000;
      4'b1110: y <= 7'b0010010;
      4'b1111: y <= 7'b0010011;

      default: y <= 7'b1111111;
   endcase



endmodule
