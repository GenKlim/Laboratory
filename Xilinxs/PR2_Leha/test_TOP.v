`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:15:08 10/18/2016 
// Design Name: 
// Module Name:    test_TOP 
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
module test_TOP(
    );
	 /* TOP(
			input clk,
			input btnC,
			input btnU,
			output [6:0] seg,
			output [0:0] led,
			output [2:0] an
		);*/
reg rawC, rawU;
reg clk, btnC, btnU;
wire [6:0] seg;
wire led;
wire [2:0] an;
TOP topToTest(clk, btnC, btnU, seg, led, an);
initial begin
	clk <=0;
	btnU <= 0; rawU <=0; rawC <=0;
	btnC <= 0; #1; btnC <=1; #1; btnC <=0;
	#10000000;
	//00
	rawU <=1; #2000000; rawU <=0;#10000000; //01
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	btnC <= 0; #1; btnC <=1; #10000000; btnC <=0;
	rawU <=1; #2000000; rawU <=0;#10000000; //01
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //0F
	#30000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //10
	rawU <=1; #2000000; rawU <=0;#10000000; //11
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //1F
	#30000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //20	
	rawU <=1; #2000000; rawU <=0;#10000000; //21
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //2F
	#30000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //30	
	rawU <=1; #2000000; rawU <=0;#10000000; //31
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //3F
	#30000000;
	rawU <=1; #2000000; rawU <=0;#10000000; //00	
	rawU <=1; #2000000; rawU <=0;#10000000; //01
	rawU <=1; #2000000; rawU <=0;#10000000; //02
	btnC <= 0; #1; btnC <=1; #10000000; btnC <=0;
	#3000000;
end	

always @ (posedge rawU)
	begin
		#1000; btnU <=1; #1000;
		btnU <=0; #2000; btnU <=1; #10000;
		btnU <=0; #4000; btnU <=1; #50000;
		btnU <=0; #4000; btnU <=1;
	end
always @ (negedge rawU)
	begin
		btnU <=0; #1000; btnU <=1; #1000;
		btnU <=0; #2000; btnU <=1; #10000;
		btnU <=0; #4000; btnU <=1; #50000;
		btnU <=0;
	end

always 
begin
	#5;
	clk <= ~clk; //100 MHz
end
endmodule
