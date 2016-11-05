`timescale 1ns / 1ps

// Hex to 7-bit indicator

module ToDysplay(
    input [3:0] X,
    output reg [6:0] Y
    );
	
	always @ (X)
	begin
		Y[0] <= (X == 1)|(X == 4)|(X == 4'hB)|(X == 4'hD);
		Y[1] <= (X == 5)|(X == 6)|(X == 4'hB)|(X == 4'hC)|(X == 4'hE)|(X == 4'hF);
		Y[2] <= (X == 2)|(X == 4'hC)|(X == 4'hE)|(X == 4'hF);
		Y[3] <= (X == 1)|(X == 4)|(X == 7)|(X == 4'hA)|(X == 4'hF);
		Y[4] <= (X == 1)|(X == 3)|(X == 4)|(X == 5)|(X == 7)|(X == 9);
		Y[5] <= (X == 1)|(X == 2)|(X == 3)|(X == 7)|(X == 4'hD);
		Y[6] <= (X == 0)|(X == 1)|(X == 7)|(X == 4'hC);
	end
endmodule
