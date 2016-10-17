`timescale 1ns / 1ps

module GetValueBit(
    input [3:0] A,
    input [1:0] X,
    output reg Y
    );
	
	wire [3:0] VALUE;
	
	ToValue CL1(A, VALUE);
	
	always @ (X or A)
	begin
		 // Y <= VALUE & (4'b0001 << X);
		case (X)
			0: Y <= VALUE & 4'b0001;
			1: Y <= VALUE & 4'b0010;
			2: Y <= VALUE & 4'b0100;
			3: Y <= VALUE & 4'b1000;
		endcase
	end
endmodule
