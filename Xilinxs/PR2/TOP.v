`timescale 1ns / 1ps

module TOP(
	input CLK,
	input BTNC,
	input BTNR,
	output [6:0] SEG,
	output reg AN0,
	output reg AN1,
	output reg LED0
);

reg STATE;
reg [5:0] ADDRESS;
reg [3:0] SEG_BUFF;
wire [3:0] VALUE;

initial begin
	STATE <= 0;
	ADDRESS <= 0;
end

always @ (posedge CLK, posedge BTNR) begin
	if(BTNR) begin
		STATE <= 0;
		ADDRESS <= 0;
	end else begin
		if(BTNC_F) begin
			ADDRESS <= ADDRESS + 1;
		end
		
		LED0 <= VALUE[ADDRESS[1:0]];
			
		AN0 <= ~STATE;
		AN1 <= STATE;
	
		if(STATE)
			SEG_BUFF <= ADDRESS[5:2];
		else
			SEG_BUFF <= VALUE;
			
		STATE <= ~STATE;
	end
end

	ButtonFilter CL1(BTNC, CLK, BTNC_F);
	ToValue CL2(ADDRESS[5:2], VALUE);
	ToDysplay CL3(SEG_BUFF, SEG);
	
endmodule
