////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: LR1_TOP_synthesis.v
// /___/   /\     Timestamp: Mon Sep 19 11:14:56 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim LR1_TOP.ngc LR1_TOP_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: LR1_TOP.ngc
// Output file	: C:\Users\admin\Documents\Xilinxs\LR1\netgen\synthesis\LR1_TOP_synthesis.v
// # of Modules	: 1
// Design Name	: LR1_TOP
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module LR1_TOP (
SW, LED
);
  input [11 : 0] SW;
  output [11 : 0] LED;
  wire SW_0_IBUF_7;
  wire SW_1_IBUF_8;
  wire SW_2_IBUF_9;
  wire SW_3_IBUF_10;
  wire SW_11_IBUF_11;
  wire SW_10_IBUF_12;
  wire SW_9_IBUF_13;
  wire SW_8_IBUF_14;
  wire LED_0_OBUF_15;
  wire LED_1_OBUF_16;
  wire LED_2_OBUF_17;
  wire LED_3_OBUF_18;
  wire LED_11_OBUF_19;
  wire LED_10_OBUF_20;
  wire LED_9_OBUF_21;
  wire LED_8_OBUF_22;
  wire \CL1/XLXN_64 ;
  wire \CL1/XLXN_134 ;
  wire \CL1/XLXN_120 ;
  wire \CL1/XLXN_104 ;
  wire \CL1/XLXN_67 ;
  wire \CL1/XLXN_135 ;
  wire \CL1/XLXN_137 ;
  wire \CL1/XLXN_136 ;
  wire \CL1/XLXN_133 ;
  wire \CL1/XLXN_121 ;
  wire \CL1/XLXN_119 ;
  wire \CL1/XLXN_122 ;
  wire \CL1/XLXN_123 ;
  wire \CL1/XLXN_105 ;
  wire \CL1/XLXN_110 ;
  wire \CL1/XLXN_107 ;
  wire \CL1/XLXN_132 ;
  wire \CL1/XLXN_66 ;
  wire \CL1/XLXN_63 ;
  wire \CL1/XLXN_65 ;
  OR5   \CL1/XLXI_77  (
    .I0(\CL1/XLXN_121 ),
    .I1(\CL1/XLXN_120 ),
    .I2(\CL1/XLXN_119 ),
    .I3(\CL1/XLXN_122 ),
    .I4(\CL1/XLXN_123 ),
    .O(LED_2_OBUF_17)
  );
  OR4   \CL1/XLXI_91  (
    .I0(\CL1/XLXN_110 ),
    .I1(\CL1/XLXN_107 ),
    .I2(\CL1/XLXN_105 ),
    .I3(\CL1/XLXN_104 ),
    .O(LED_1_OBUF_16)
  );
  OR5   \CL1/XLXI_54  (
    .I0(\CL1/XLXN_67 ),
    .I1(\CL1/XLXN_66 ),
    .I2(\CL1/XLXN_63 ),
    .I3(\CL1/XLXN_64 ),
    .I4(\CL1/XLXN_65 ),
    .O(LED_0_OBUF_15)
  );
  AND2B1   \CL1/XLXI_56  (
    .I0(SW_2_IBUF_9),
    .I1(SW_3_IBUF_10),
    .O(\CL1/XLXN_64 )
  );
  AND3B1   \CL1/XLXI_134  (
    .I0(SW_1_IBUF_8),
    .I1(SW_2_IBUF_9),
    .I2(SW_3_IBUF_10),
    .O(\CL1/XLXN_134 )
  );
  AND2   \CL1/XLXI_102  (
    .I0(SW_3_IBUF_10),
    .I1(SW_1_IBUF_8),
    .O(\CL1/XLXN_120 )
  );
  AND2B2   \CL1/XLXI_87  (
    .I0(SW_1_IBUF_8),
    .I1(SW_3_IBUF_10),
    .O(\CL1/XLXN_104 )
  );
  AND2B1   \CL1/XLXI_59  (
    .I0(SW_2_IBUF_9),
    .I1(SW_1_IBUF_8),
    .O(\CL1/XLXN_67 )
  );
  AND3B1   \CL1/XLXI_138  (
    .I0(SW_1_IBUF_8),
    .I1(SW_0_IBUF_7),
    .I2(SW_3_IBUF_10),
    .O(\CL1/XLXN_135 )
  );
  AND3B1   \CL1/XLXI_137  (
    .I0(SW_0_IBUF_7),
    .I1(SW_1_IBUF_8),
    .I2(SW_3_IBUF_10),
    .O(\CL1/XLXN_137 )
  );
  AND3B1   \CL1/XLXI_135  (
    .I0(SW_0_IBUF_7),
    .I1(SW_2_IBUF_9),
    .I2(SW_1_IBUF_8),
    .O(\CL1/XLXN_136 )
  );
  AND4B2   \CL1/XLXI_132  (
    .I0(SW_2_IBUF_9),
    .I1(SW_3_IBUF_10),
    .I2(SW_0_IBUF_7),
    .I3(SW_1_IBUF_8),
    .O(\CL1/XLXN_133 )
  );
  AND3B2   \CL1/XLXI_104  (
    .I0(SW_2_IBUF_9),
    .I1(SW_0_IBUF_7),
    .I2(SW_3_IBUF_10),
    .O(\CL1/XLXN_121 )
  );
  AND3B1   \CL1/XLXI_101  (
    .I0(SW_0_IBUF_7),
    .I1(SW_1_IBUF_8),
    .I2(SW_2_IBUF_9),
    .O(\CL1/XLXN_119 )
  );
  AND3B2   \CL1/XLXI_99  (
    .I0(SW_2_IBUF_9),
    .I1(SW_3_IBUF_10),
    .I2(SW_0_IBUF_7),
    .O(\CL1/XLXN_122 )
  );
  AND3B2   \CL1/XLXI_98  (
    .I0(SW_3_IBUF_10),
    .I1(SW_1_IBUF_8),
    .I2(SW_0_IBUF_7),
    .O(\CL1/XLXN_123 )
  );
  AND3B2   \CL1/XLXI_92  (
    .I0(SW_2_IBUF_9),
    .I1(SW_1_IBUF_8),
    .I2(SW_0_IBUF_7),
    .O(\CL1/XLXN_105 )
  );
  AND3B1   \CL1/XLXI_90  (
    .I0(SW_0_IBUF_7),
    .I1(SW_1_IBUF_8),
    .I2(SW_3_IBUF_10),
    .O(\CL1/XLXN_110 )
  );
  AND3   \CL1/XLXI_89  (
    .I0(SW_2_IBUF_9),
    .I1(SW_1_IBUF_8),
    .I2(SW_0_IBUF_7),
    .O(\CL1/XLXN_107 )
  );
  AND4B4   \CL1/XLXI_78  (
    .I0(SW_3_IBUF_10),
    .I1(SW_2_IBUF_9),
    .I2(SW_1_IBUF_8),
    .I3(SW_0_IBUF_7),
    .O(\CL1/XLXN_132 )
  );
  AND2B1   \CL1/XLXI_58  (
    .I0(SW_3_IBUF_10),
    .I1(SW_0_IBUF_7),
    .O(\CL1/XLXN_66 )
  );
  AND3B2   \CL1/XLXI_57  (
    .I0(SW_1_IBUF_8),
    .I1(SW_0_IBUF_7),
    .I2(SW_2_IBUF_9),
    .O(\CL1/XLXN_63 )
  );
  AND2   \CL1/XLXI_55  (
    .I0(SW_1_IBUF_8),
    .I1(SW_0_IBUF_7),
    .O(\CL1/XLXN_65 )
  );
  LUT4 #(
    .INIT ( 16'h26E9 ))
  \CL3/Mram_Y31  (
    .I0(SW_11_IBUF_11),
    .I1(SW_9_IBUF_13),
    .I2(SW_10_IBUF_12),
    .I3(SW_8_IBUF_14),
    .O(LED_11_OBUF_19)
  );
  LUT4 #(
    .INIT ( 16'hD399 ))
  \CL3/Mram_Y111  (
    .I0(SW_11_IBUF_11),
    .I1(SW_9_IBUF_13),
    .I2(SW_10_IBUF_12),
    .I3(SW_8_IBUF_14),
    .O(LED_9_OBUF_21)
  );
  LUT4 #(
    .INIT ( 16'hBE52 ))
  \CL3/Mram_Y21  (
    .I0(SW_11_IBUF_11),
    .I1(SW_10_IBUF_12),
    .I2(SW_8_IBUF_14),
    .I3(SW_9_IBUF_13),
    .O(LED_10_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'hF57E ))
  \CL3/Mram_Y11  (
    .I0(SW_10_IBUF_12),
    .I1(SW_11_IBUF_11),
    .I2(SW_8_IBUF_14),
    .I3(SW_9_IBUF_13),
    .O(LED_8_OBUF_22)
  );
  IBUF   SW_11_IBUF (
    .I(SW[11]),
    .O(SW_11_IBUF_11)
  );
  IBUF   SW_10_IBUF (
    .I(SW[10]),
    .O(SW_10_IBUF_12)
  );
  IBUF   SW_9_IBUF (
    .I(SW[9]),
    .O(SW_9_IBUF_13)
  );
  IBUF   SW_8_IBUF (
    .I(SW[8]),
    .O(SW_8_IBUF_14)
  );
  IBUF   SW_3_IBUF (
    .I(SW[3]),
    .O(SW_3_IBUF_10)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_9)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_8)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_7)
  );
  OBUF   LED_11_OBUF (
    .I(LED_11_OBUF_19),
    .O(LED[11])
  );
  OBUF   LED_10_OBUF (
    .I(LED_10_OBUF_20),
    .O(LED[10])
  );
  OBUF   LED_9_OBUF (
    .I(LED_9_OBUF_21),
    .O(LED[9])
  );
  OBUF   LED_8_OBUF (
    .I(LED_8_OBUF_22),
    .O(LED[8])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_OBUF_18),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_17),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_OBUF_16),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_15),
    .O(LED[0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \CL1/XLXI_133/O1  (
    .I0(\CL1/XLXN_133 ),
    .I1(\CL1/XLXN_132 ),
    .I2(\CL1/XLXN_137 ),
    .I3(\CL1/XLXN_136 ),
    .I4(\CL1/XLXN_135 ),
    .I5(\CL1/XLXN_134 ),
    .O(LED_3_OBUF_18)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

