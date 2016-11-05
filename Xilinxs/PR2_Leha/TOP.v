`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:44 10/06/2016 
// Design Name: 
// Module Name:    LR1_TOP 
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
// ^[^/].*?(\w+)\s*:\s*(\w+).*?(\d)+.*?(\d)+.*  => \2put [\3:\4] \1,    -- vhd to v [bus]
// ^[^/].*?(\w+)\s*:\s*(\w+).*?                 => \2put \1,            -- vhd to v [bus]
module TOP(
			input clk,
			input btnC,
			input btnU,
			output [6:0] seg,
			output [0:0] led,
			output [2:0] an
		);
clkDivider divideClock(clk, clk_reg);
BTN_FILTER RSTfilter(btnC, clk_reg, sigRST);
BTN_FILTER CLICKfilter(btnU, clk_reg, sigCLICK);

wire [3:0] 	NOM, BIT_w;
wire [1:0] 	BIT;
assign BIT_w = {2'b00, BIT};
wire [3:0] 	EL;
wire			TX;

core core (sigCLICK, sigRST, NOM, BIT, EL, TX);
LED_driver LED(clk_reg, NOM, BIT_w, EL, seg, an);
assign led[0] = TX;
endmodule

module clkDivider (input clocksource, output reg clk_reg);
initial
	clk_reg <= 0;
always @(posedge clocksource)
	clk_reg <= ~clk_reg;
endmodule