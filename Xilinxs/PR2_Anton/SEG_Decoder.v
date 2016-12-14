`timescale 1ns / 1ps

module SEG_Decoder(
    input [3:0] NUM,
    output reg [6:0] SEG
    );

always @ (NUM)
   case (NUM)
      4'b0000: SEG <= 7'b0001000;
      4'b0001: SEG <= 7'b1101101;
      4'b0010: SEG <= 7'b0100010;
      4'b0011: SEG <= 7'b0100100;

      4'b0100: SEG <= 7'b1000101;
      4'b0101: SEG <= 7'b0010100;
      4'b0110: SEG <= 7'b0010000;
      4'b0111: SEG <= 7'b0101101;

      4'b1000: SEG <= 7'b0000000;
      4'b1001: SEG <= 7'b0000100;
      4'b1010: SEG <= 7'b0000001;
      4'b1011: SEG <= 7'b1010000;

      4'b1100: SEG <= 7'b0011010;
      4'b1101: SEG <= 7'b1100000;
      4'b1110: SEG <= 7'b0010010;
      4'b1111: SEG <= 7'b0010011;

      default: SEG <= 7'b1111111;
   endcase

endmodule
