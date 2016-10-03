`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:    Argon
// Engineer:   Nikolaev
// 
// Create Date:      09/2014 
// Design Name:      LR1
// Module Name:      LR1_TOP 
// Project Name:     LR1
// Target Devices:   XC7A100T-1CSG324C
// Tool versions:    ISE14.4(P.49d)
// Description:      TOP module
//
// Dependencies: 
//
// Revision:         1.0
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LR1_TOP(SW, LED);
input  [11:0]SW;
output [11:0]LED;

LR1_DNF CL1 (
               .X3(SW[3]),
               .X2(SW[2]),
               .X1(SW[1]),
               .X0(SW[0]),
               .Y3(LED[3]),
               .Y2(LED[2]),
               .Y1(LED[1]),
               .Y0(LED[0])
               );
            
LR1_KNF CL2 (
               .X(SW[7:4]),
               .Y(LED[7:4])
               );        

LR1_BEH CL3 (
               .X(SW[11:8]),
               .Y(LED[11:8])
               );     
            
endmodule
