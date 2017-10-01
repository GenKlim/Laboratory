`timescale 1ns / 1ps

module Divider(
    input CLK,
    input RST,
    output CEO
    );

parameter [9:0] N = 10'd100; 
	 
reg [9:0] STATE;

always @ (posedge CLK, posedge RST) begin
	if(RST)
		STATE <= 0;
	else begin
		STATE <= STATE + 1;
		
		if(STATE == N - 1)
			STATE <= 0;
	end	
end

assign CEO = &(~STATE);

endmodule
