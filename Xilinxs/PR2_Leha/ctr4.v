`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:30 10/18/2016 
// Design Name: 
// Module Name:    ctr4 
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
module ctr4(
    input clk_raw,
    output reg [1:0] counter
    );
wire clr, clk;
assign clr = counter[1] & ~counter [0];
counter10k clockDivider(clk_raw, 1'b1, clk);
initial 
	counter <= 2'h0;
always @(posedge clk)
	if(clr)
		counter <= 0;
	else
		counter <= counter + 1'b1;
	


endmodule
