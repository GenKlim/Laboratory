`timescale 1ns / 1ps

module Dysplay(
    input CLK,
    input RST,
	 input [3:0] NUM1,
	 input [3:0] NUM2,
	 input [3:0] NUM3,
	 output reg [2:0] AN,
	 output [6:0] SEG
    );

reg [1:0] NUM;
reg [3:0] ToDysplay;

Divider CL1(CLK, RST, CEO);
SEG_Decoder CL2(ToDysplay, SEG);

always @ (posedge CEO, posedge RST) begin
	if(RST)
		NUM <= 0;
	else begin
		case(NUM)
			2'b00: begin
				NUM <= 2'b01;
				AN <= 3'b011;
				ToDysplay <= NUM1;
			end
			2'b01: begin
				NUM <= 2'b10;
				AN <= 3'b101;
				ToDysplay <= NUM2;
			end
			2'b10: begin
				NUM <= 2'b00;
				AN <= 3'b110;
				ToDysplay <= NUM3;
			end
		endcase
	end
end

endmodule
