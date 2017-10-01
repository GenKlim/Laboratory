`timescale 1ns / 1ps

module Top(
	input CLK,
	input BTNC,
	input BTNR,
	output [6:0] SEG,
	output [2:0] AN,
	output reg LED0
);

wire BTN_IN;
wire [3:0] EL;
wire [3:0] BIT_4;
reg [3:0] NOM;
reg [1:0] BIT;

Filter CL1(CLK, BTNC, BTNR, BTN_IN);
EL_Decoder CL2(NOM, EL);
Dysplay CL3(CLK, BTNR, NOM, BIT_4, EL, AN, SEG);

assign BIT_4[1:0] = BIT;
assign BIT_4[3:2] = 0;

always @ (posedge CLK, posedge BTNR)  begin
	if(BTNR) begin
		NOM <= 0;
		BIT <= 0;
	end else begin
		if(BTN_IN) begin
			BIT <= BIT + 1;
			
			if(BIT == 3)
				NOM <= NOM + 1;
		end
	end
	
	case (BIT)
		2'b00: LED0 <= EL[0];
		2'b01: LED0 <= EL[1];
		2'b10: LED0 <= EL[2];
		2'b11: LED0 <= EL[3];
	endcase
end

endmodule
