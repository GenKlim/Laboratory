`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:31 10/17/2016 
// Design Name: 
// Module Name:    test_core 
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
module test_core(
    );
reg clr, hit;
wire [3:0] 	NOM;
wire [1:0] 	BIT;
wire [3:0] 	LE;
wire			TX;
core coreToTest(hit, clr, NOM, BIT, LE, TX);
initial begin
	clr = 0; hit = 0; #4;
    hit=1;#3;hit=0;#1; //0
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1; //F
    hit=1;#3;hit=0;#1; //0
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1; //F
    hit=1;#3;hit=0;#1; //0
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1; //F
    hit=1;#3;hit=0;#1; //0
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1; //F
    hit=1;#3;hit=0;#1; //0
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
	 clr = 1; #1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
	 clr = 0; #1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1;
    hit=1;#3;hit=0;#1; //F
end

endmodule
