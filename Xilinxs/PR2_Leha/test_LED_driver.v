`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:   21:02:23 10/18/2016 
// Design Name: 
// Module Name:   test_LED_driver 
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
module test_LED_driver(
   );
reg clock;
reg [3:0] x0, x1, x2;
wire [6:0] seg;
wire [2:0] an;
LED_driver driverToTest(clock, x0, x1, x2, seg, an);

initial begin
	x0 = 4'h8;
	x1 = 4'h0;
	x2 = 4'h1;
	clock =1'b0;
end
always begin
	clock = ~clock; #10;
end
endmodule
