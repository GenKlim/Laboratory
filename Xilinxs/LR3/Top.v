`timescale 1ns / 1ps

module Top(
    input CLK,
    input RST,
    input WE,
    input OE,
    output reg IRQ,
    inout [3:0] DB
    );

reg [3:0] T;
reg [3:0] STATE;
reg [3:0] TIMER;
wire [3:0] OUTPUT;

Code CL1(STATE, OUTPUT);

assign DB = OE ? OUTPUT : 4'bZ;

always @ (DB) begin
	if(WE)
		T <= DB;
end

always @ (posedge RST) begin
	STATE <= 4'hF;
	TIMER <= 4'h0;
	T <= 4'h0;
end

always @ (posedge CLK) begin
	IRQ <= 0;

	if(!RST && !WE) begin
		if(OE) begin
			STATE <= STATE + 1;
			TIMER <= T;
		end else begin
			if(TIMER != 4'h0) begin
				if(TIMER == 4'h1)
					IRQ <= 1;
				
				
				TIMER <= TIMER - 1;
			end
		end
	end
end

endmodule
