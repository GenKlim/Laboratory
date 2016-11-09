`timescale 1ns / 1ps

module counter10k(
    input tick,
	 input run,
    output countedNeededValue);
reg [15:0] internalCounter;
wire [15:0] valueToStartWith;

wire filteredTick;
wire clear;

//assign valueToStartWith = 16'h000a; //44ns is 16'd10
assign valueToStartWith = 16'hC350; 
	//50000 tacts * 50MHz (clk frequency is divided by 2 earlier) * 2 (as we are using posedge)
	//As result, we get 2ms. Should be enough
initial 
	internalCounter <= valueToStartWith;
	

assign countedNeededValue = (internalCounter == 16'h0000);
assign filteredTick = tick & (~countedNeededValue);
assign clear = ~run | countedNeededValue;

always @ (posedge filteredTick or posedge clear)
	if(clear)
		internalCounter <= valueToStartWith;
	else
		internalCounter <= internalCounter - 1'b1;	
endmodule
