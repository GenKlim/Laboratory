`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:04:23 10/02/2016 
// Design Name: 
// Module Name:    TOP 
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
module TOP(
    input [11:0] SW,
    output [11:0] LED
    );
DNF CL1( .X3(SW[3]),
  .X2(SW[2]),
  .X1(SW[1]),
  .X0(SW[0]),
  .Y3(LED[3]),
  .Y2(LED[2]),
  .Y1(LED[1]),
  .Y0(LED[0]));
KNF CL2(.X(SW[7:4]), .Y(LED[7:4]));
BEH2 CL3(.X( SW[11:8]), .Y( LED[11:8]));
endmodule
