`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:02 10/17/2016 
// Design Name: 
// Module Name:    ctr64 
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
module ctr64(
    input tick,
    input clr,
    output [3:0] rg_a,
    output [1:0] bit_a
    );
reg [5:0] internalCounter;
assign rg_a = internalCounter[5:2];
assign bit_a = internalCounter[1:0];

initial 
	internalCounter <= 5'h00;


always @ (posedge tick or posedge clr)
	if(clr)
		internalCounter <= 5'h00;
	else
		internalCounter <= internalCounter + 1'b1;		


endmodule
