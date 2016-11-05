`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:02 10/17/2016 
// Design Name: 
// Module Name:    test_btn 
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
module test_btn(
    );
reg clock;
reg rawButton;
wire filteredButton;
BTN_FILTER filter(
			rawButton,
			clock,
			filteredButton);

initial begin
		rawButton <= 0;
		clock=1;#3;clock=0;#1; //0
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		rawButton <= 1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		rawButton <= 0;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1; //F
		rawButton <= 1;
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
		rawButton <= 0;
		clock=1;#3;clock=0;#1; //0
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		rawButton <= 1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		rawButton <= 0;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		rawButton <= 1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1;
		clock=1;#3;clock=0;#1; //F
		rawButton <= 0;
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
end
endmodule
