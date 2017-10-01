`timescale 1ns / 1ps

module Filter(
	input CLK,
	input BTN_IN,
	input RST,
	output reg BTN_CEO
);

parameter [3:0] CNTR_WIDTH = 4;
reg [CNTR_WIDTH - 1:0] FLTR_CNT;
reg BTN_D, BTN_S1, BTN_S2;

always @ (posedge CLK, posedge RST) begin
	if(RST)
		FLTR_CNT <= 0;
	else if(BTN_S1 == BTN_S2) 
		FLTR_CNT <= 0;
	else
		FLTR_CNT <= FLTR_CNT + 1;
end

always @ (posedge CLK, posedge RST)  begin
	if(RST) begin
		BTN_D <= 1'b0;
		BTN_S1 <= 1'b0;
	end else begin
		BTN_D <= BTN_IN;
		BTN_S1 <= BTN_D;
	end
end

always @ (posedge CLK, posedge RST) begin
	if(RST)
		BTN_S2 <= 1'b0;
	else if(&(FLTR_CNT))
		BTN_S2 <= BTN_S1;
end

always @ (posedge CLK, posedge RST) begin
	if(RST)
		BTN_CEO <= 1'b0;
	else
		BTN_CEO <= &(FLTR_CNT) & BTN_S1;
end

endmodule
