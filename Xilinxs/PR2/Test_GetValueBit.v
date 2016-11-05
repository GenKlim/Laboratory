`timescale 1ns / 1ps

module Test_GetValueBit;

	reg [3:0] A;
	reg [1:0] X;

	wire Y;

	GetValueBit uut (
		.A(A), 
		.X(X), 
		.Y(Y)
	);

   always begin
      A = 4'h0; #200;
      A = 4'h1; #200;
      A = 4'h2; #200;
      A = 4'h3; #200;
      A = 4'h4; #200;
      A = 4'h5; #200;
      A = 4'h6; #200;
      A = 4'h7; #200;
      A = 4'h8; #200;
      A = 4'h9; #200;
      A = 4'hA; #200;
      A = 4'hB; #200;
      A = 4'hC; #200;
      A = 4'hD; #200;
      A = 4'hE; #200;
      A = 4'hF; #200;
   end
	
   always begin
      X = 2'b00; #50;
      X = 2'b01; #50;
      X = 2'b10; #50;
      X = 2'b11; #50;
	end
      
endmodule
