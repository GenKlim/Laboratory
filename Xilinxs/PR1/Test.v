`timescale 1ns / 1ps

module LR1_DNF_LR1_DNF_sch_tb();

   reg X3;
   reg X2;
   reg X1;
   reg X0;

   wire Y0;
   wire Y1;
   wire Y2;
   wire Y3;

   LR1_DNF UUT (
		.X0(X0), 
		.X1(X1), 
		.X2(X2), 
		.X3(X3), 
		.Y0(Y0),
		.Y1(Y1),
		.Y2(Y2),
		.Y3(Y3)
   );
			
	 initial begin
		{X3,X2,X1,X0} = 4'b0000;	#100;
		{X3,X2,X1,X0} = 4'b0001;	#100;
		{X3,X2,X1,X0} = 4'b0010;	#100;
		{X3,X2,X1,X0} = 4'b0011;	#100;
		{X3,X2,X1,X0} = 4'b0100;	#100;
		{X3,X2,X1,X0} = 4'b0101;	#100;
		{X3,X2,X1,X0} = 4'b0110;	#100;
		{X3,X2,X1,X0} = 4'b0111;	#100;
		{X3,X2,X1,X0} = 4'b1000;	#100;
		{X3,X2,X1,X0} = 4'b1001;	#100;
		{X3,X2,X1,X0} = 4'b1010;	#100;
		{X3,X2,X1,X0} = 4'b1011;	#100;
		{X3,X2,X1,X0} = 4'b1100;	#100;
		{X3,X2,X1,X0} = 4'b1101;	#100;
		{X3,X2,X1,X0} = 4'b1110;	#100;
		{X3,X2,X1,X0} = 4'b1111;	#100;
	end
		
endmodule
