`timescale 1ns / 1ps

module KNF(
    input [3:0] X,
    output [3:0] Y
    );
	 
	assign Y[0] = (~X[2] | ~X[0]) & (X[2] | ~X[1] | X[0]) & (~X[3] | X[2] | X[0]) & (~X[3] | ~X[1] | ~X[0]);
	assign Y[1] = (~X[3] | X[1])&(X[3] | ~X[1] | ~X[0])&(X[3] | ~X[2] | ~X[1])&(~X[3] | X[2] | X[0]);
	assign Y[2] = (X[1] | ~X[0])&(~X[3] | X[1])&(~X[3] | X[2] | ~X[0]);
	assign Y[3] = (X[3] | X[0])&(X[1] | ~X[0])&(X[2] | ~X[1] | X[0]);

endmodule
