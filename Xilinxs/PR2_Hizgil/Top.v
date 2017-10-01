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
wire [3:0] COUNTER;
reg [1:0] COUNTER_MINOR;

reg [3:0] I;
wire [3:0] VARIANT_I;

Filter CL1(CLK, BTNC, BTNR, BTN_IN);
VariantTable CL2(I, VARIANT_I);
Dysplay CL3(CLK, BTNR, I, COUNTER, VARIANT_I, AN, SEG);

assign COUNTER[1:0] = COUNTER_MINOR;
assign COUNTER[3:2] = 0;

always @ (posedge CLK, posedge BTNR)  begin
	
	case (COUNTER_MINOR)
		0: LED0 <= VARIANT_I[0];
		1: LED0 <= VARIANT_I[1];
		2: LED0 <= VARIANT_I[2];
		3: LED0 <= VARIANT_I[3];
	endcase
	
	if(BTNR) begin
		I <= 0;
		COUNTER_MINOR <= 0;
	end 
	else begin
		if(BTN_IN) begin
			COUNTER_MINOR <= COUNTER_MINOR + 1;
			
			if(COUNTER_MINOR == 3)
				I <= I + 1;
		end
	end
end

endmodule
