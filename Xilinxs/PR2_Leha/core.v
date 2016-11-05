`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:36 10/17/2016 
// Design Name: 
// Module Name:    core 
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
module core(
    input hit,
    input clr,
    output [3:0] NOM,
    output [1:0] BIT,
    output [3:0] EL,
    output TX
    );
wire [3:0] 	rg_a;
wire [1:0] 	bit_a;
wire [3:0] 	rg_word;
wire			bit_word;
ctr64 counter(hit, clr, rg_a, bit_a);
reg_16x4 rom(rg_a, rg_word);
multiplexer4 bit_decipher(rg_word, bit_a, bit_word);
assign NOM 	= rg_a;
assign BIT 	= bit_a;
assign EL	= rg_word;
assign TX	= bit_word;

endmodule
