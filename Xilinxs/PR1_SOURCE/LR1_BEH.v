`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:    Argon
// Engineer:   Nikolaev
// 
// Create Date:      09/2014 
// Design Name:      LR1
// Module Name:      LR1_BEH 
// Project Name:     LR1
// Target Devices:   XC7A100T-1CSG324C
// Tool versions:    ISE14.4(P.49d)
// Description: 
//
// Dependencies: 
//
// Revision:         1.0
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LR1_BEH(X,Y);
input      [3:0] X;
output reg [3:0] Y;

always @(X)
   begin
      case (X)
         4'b0000  : Y <= 4'b1000; //0-8
         4'b0001  : Y <= 4'b0101; //1-5
         4'b0010  : Y <= 4'b0010; //2-2
         4'b0011  : Y <= 4'b1010; //3-A
         
         4'b0100  : Y <= 4'b1110; //4-E
         4'b0101  : Y <= 4'b1000; //5-8
         4'b0110  : Y <= 4'b1001; //6-9
         4'b0111  : Y <= 4'b0111; //7-7
         
         4'h8  : Y <= 4'h5;       //8-5
         4'h9  : Y <= 4'hf;       //9-F
         4'ha  : Y <= 4'hb;       //A-B
         4'hb  : Y <= 4'h4;       //B-4
         
         4'd12  : Y <= 4'd8;      //C-8
         4'd13  : Y <= 4'd12;     //D-C
         4'd14  : Y <= 4'd1;      //E-1
         4'd15  : Y <= 4'd0;      //F-0
      endcase
   end

endmodule
