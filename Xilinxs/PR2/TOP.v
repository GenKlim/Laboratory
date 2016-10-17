`timescale 1ns / 1ps

module TOP(
	input CLK,
	input BTNC,
	input BTNR,
	output [6:0] SWG,
	output reg AN0,
	output reg AN1,
	output LED0
);

reg STATE;
reg [5:0] ADDRESS;
reg [3:0] SWG_BUFF;
wire [3:0] VALUE;

always @ (posedge CLK, posedge BTNR, posedge BTNC) begin
	if(BTNR) begin
		STATE <= 0;
		ADDRESS <= 0;
	end
	else begin
		if(BTNC)
			ADDRESS <= ADDRESS + 1;
		else begin
			AN0 <= ~STATE;
			AN1 <= STATE;
		
			if(STATE)
				SWG_BUFF <= ADDRESS[5:2];
			else
				SWG_BUFF <= VALUE;
				
			STATE <= ~STATE;
		end
	end
end

	GetValueBit CL1(ADDRESS[5:2], ADDRESS[1:0], LED0);
	ToValue CL2(ADDRESS[5:2], VALUE);
	ToDysplay CL3(SWG_BUFF, SWG);
	
endmodule
