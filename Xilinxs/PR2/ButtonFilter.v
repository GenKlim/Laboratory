`timescale 1ns / 1ps

module ButtonFilter(
    input State,
    input CLK,
    output reg Enable
    );

	reg [11:0] counter;	// 4096/100000000 ~= 4ms
	reg SET;
	
	initial begin
		SET <= 0;
		Enable <= 0;
	end
	
	always @(posedge CLK) begin
		Enable <= 0;
		
		if(State) begin
			counter <= counter + 1;
		
			if(counter == 12'hFFF && SET == 0) begin
				Enable <= 1;
				SET <= 1;
			end
		end else begin
			counter <= 0;
			SET <= 0;
		end
	end

endmodule
