`timescale 1ns / 1ps

module GetValueBit(
   // input [3:0] A,
   // input [1:0] X,
    input [5:0] X,
    output reg Y
    );
	
	wire [3:0] VALUE;
	
	ToValue CL1(X[5:2], VALUE);

	always @ (X)
	begin
		  Y <= VALUE[X[1:0]];
	end
endmodule
