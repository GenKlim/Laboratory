`timescale 1ns / 1ps

module TOP(
	input CLK,
	input BTNC,
	input BTNR,
	output [6:0] SEG,
	output reg [2:0] AN,
	output reg LED0
);

reg [1:0] STATE;
reg [5:0] ADDRESS;
reg [3:0] SEG_BUFF;
reg [9:0] UPDATE_TIMER;
wire [3:0] VALUE;

initial begin
	STATE <= 2'h0;
	ADDRESS <= 0;
	UPDATE_TIMER <= 3'b000;
end




always @(posedge CLK, posedge SE, posedge LD_CONST) begin
	if(CLK) begin
		if(SE)
			myReg <= data;
		else if (LD_CONST)
			myReg <= 12'hE44;
	end
end

wire [15:0] data_input;
wire [15:0] data_output;

reg [15:0] data;

always @(posedge CLK)
	if(LD_CONST)
		data <= 16'h12C7;
	else if(WE)
		data <= data_input;
	else if(SHIFT)
		data <= {data[14:0], data[15]};

assign data = data_output;
	
reg D_tr;

always @(gate_in, resert_in, data_in, setOne)
	if(reset_in)
		D_tr <= 1'b0;
	else if(setOne)
		D_tr <= 1'b1;
	else if(gate_in)
		D_tr <= data_in;
	

always @ (posedge CLK, posedge BTNR) begin
	if(BTNR) begin
		STATE <= 2'h0;
		ADDRESS <= 0;
		UPDATE_TIMER <= 0;
	end else begin
		if(BTNC_F) begin
			ADDRESS <= ADDRESS + 1;
		end
		
		LED0 <= VALUE[ADDRESS[1:0]];
		
		case (STATE)
			2'b00  : begin
				SEG_BUFF <= ADDRESS[5:2];
				AN <= 3'b110;
			end
			2'b01  : begin
				SEG_BUFF <= VALUE;
				AN <= 3'b101;
			end
			default: begin
				SEG_BUFF[3:2] <= 2'b00;
				SEG_BUFF[1:0] <= ADDRESS[1:0];
				AN <= 3'b011;
			end
		endcase
				
		if(UPDATE_TIMER == 0) begin
			STATE <= STATE + 1;
		end
		
		UPDATE_TIMER <= UPDATE_TIMER + 1;
	end
end

	ButtonFilter CL1(BTNC, CLK, BTNC_F);
	ToValue CL2(ADDRESS[5:2], VALUE);
	ToDysplay CL3(SEG_BUFF, SEG);
	
endmodule
