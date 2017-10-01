`timescale 1ns / 1ps

module SEG_Decoder(
    input [3:0] DIGIT,
    output reg [6:0] SEG
    );
	
	always @ (DIGIT)
	begin
		SEG[0] <= (DIGIT == 1)|(DIGIT == 4)|(DIGIT == 4'hB)|(DIGIT == 4'hD);
		SEG[1] <= (DIGIT == 5)|(DIGIT == 6)|(DIGIT == 4'hB)|(DIGIT == 4'hC)|(DIGIT == 4'hE)|(DIGIT == 4'hF);
		SEG[2] <= (DIGIT == 2)|(DIGIT == 4'hC)|(DIGIT == 4'hE)|(DIGIT == 4'hF);
		SEG[3] <= (DIGIT == 1)|(DIGIT == 4)|(DIGIT == 7)|(DIGIT == 4'hA)|(DIGIT == 4'hF);
		SEG[4] <= (DIGIT == 1)|(DIGIT == 3)|(DIGIT == 4)|(DIGIT == 5)|(DIGIT == 7)|(DIGIT == 9);
		SEG[5] <= (DIGIT == 1)|(DIGIT == 2)|(DIGIT == 3)|(DIGIT == 7)|(DIGIT == 4'hD);
		SEG[6] <= (DIGIT == 0)|(DIGIT == 1)|(DIGIT == 7)|(DIGIT == 4'hC);
	end
endmodule
