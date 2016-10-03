`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company:    Argon
// Engineer:   Nikolaev
// 
// Create Date:      09/2014 
// Design Name:      LR1
// Module Name:      CL_TB
// Project Name:     LR1
// Target Devices:   XC7A100T-1CSG324C
// Tool versions:    ISE14.4(P.49d)
// Description:      Test Bench for LR1_TOP
//
// Dependencies: 
//
// Revision:         1.0
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module LR1_TB_TOP;

	// Inputs
	wire [11:0] SW;
   reg [3:0]  X;
   assign SW = {X,X,X};

	// Outputs
	wire [11:0] LED;

	// Instantiate the Unit Under Test (UUT)
	LR1_TOP uut (
                .SW(SW), 
                .LED(LED)
                );
 
	initial begin
      X = 4'hF;
      #20;
      X = 4'hE;
      #20;
      X = 4'hD;
      #20;
      X = 4'hC;
      #20;
      X = 4'hB;
      #20;
      X = 4'hA;
      #20;
      X = 4'h9;
      #20;
      X = 4'h8;
      #20;
      X = 4'h7;
      #20;
      X = 4'h6;
      #20;
      X = 4'h5;
      #20;
      X = 4'h4;
      #20;
      X = 4'h3;
      #20;
      X = 4'h2;
      #20;
      X = 4'h1;
      #20;      
      X = 4'h0;
      #20; 
      $stop;
	end
      
endmodule

