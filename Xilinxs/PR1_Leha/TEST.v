`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:44 10/06/2016 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test;
wire [11:0]SW;
reg [3:0] X;
assign SW={X,X,X};
wire [11:0] LED;

TOP testing(
		.SW(SW),
		.LED(LED)
		);
		
initial begin

X=4'hf;
#20;
X=	4'he;
#20;
X=	4'hd;
#20;
X=	4'hc;
#20;
X=	4'hb;
#20;
X=	4'ha;
#20;
X=	4'h9;
#20;
X=	4'h8;
#20;
X=	4'h7;
#20;
X=	4'h6;
#20;
X=	4'h5;
#20;
X=	4'h4;
#20;
X=	4'h3;
#20;
X=	4'h2;
#20;
X=	4'h1;
#20;
X=	4'h0;
#20;

end


endmodule
