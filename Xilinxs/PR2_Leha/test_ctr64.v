`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:19 10/17/2016 
// Design Name: 
// Module Name:    test_ctr64 
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
module test_ctr64(
    );
wire [3:0] rg_a;
wire [1:0] bit_a;
reg rst;
reg clock;
ctr64 counter(clock, rst, rg_a, bit_a);
initial begin
	rst = 0;
    clock=1;#3;clock=0;#1; //0
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1; //F
    clock=1;#3;clock=0;#1; //0
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1; //F
    clock=1;#3;clock=0;#1; //0
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1; //F
    clock=1;#3;clock=0;#1; //0
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1; //F
    clock=1;#3;clock=0;#1; //0
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
	 rst = 1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
	 rst = 0;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1;
    clock=1;#3;clock=0;#1; //F
end
endmodule
