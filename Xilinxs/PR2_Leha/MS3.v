`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:39 10/18/2016 
// Design Name: 
// Module Name:    MS3 
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
module MS3(
    input [3:0] x0,
    input [3:0] x1,
    input [3:0] x2,
    input [1:0] adr,
    output [3:0] y
    );
wire c0, c1, c2;
assign c0 = ~adr[0] 	& ~adr[1];
assign c1 =  adr[0] 	& ~adr[1];
assign c2 = ~adr[0] 	&  adr[1];
wire [3:0]s0, s1, s2;
assign s0 = {4{c0}};
assign s1 = {4{c1}};
assign s2 = {4{c2}};
assign y = x0 & s0 | x1 & s1 | x2 & s2;
endmodule
