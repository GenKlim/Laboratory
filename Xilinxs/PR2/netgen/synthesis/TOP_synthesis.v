////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_synthesis.v
// /___/   /\     Timestamp: Mon Oct 17 20:33:43 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TOP.ngc TOP_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: TOP.ngc
// Output file	: C:\Users\admin\Documents\Visual Studio 2015\Projects\Laboratory\Xilinxs\PR2\netgen\synthesis\TOP_synthesis.v
// # of Modules	: 1
// Design Name	: TOP
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

module TOP (
  CLK, BTNC, BTNR, AN0, AN1, LED0, SWG
);
  input CLK;
  input BTNC;
  input BTNR;
  output AN0;
  output AN1;
  output LED0;
  output [6 : 0] SWG;
  wire CLK_BUFGP_0;
  wire BTNC_IBUF_1;
  wire BTNR_IBUF_2;
  wire STATE_3;
  wire LED0_OBUF_10;
  wire AN0_OBUF_11;
  wire AN1_OBUF_12;
  wire STATE_INV_1_o;
  wire \VALUE[3]_ADDRESS[5]_mux_3_OUT<3> ;
  wire \VALUE[3]_ADDRESS[5]_mux_3_OUT<2> ;
  wire \VALUE[3]_ADDRESS[5]_mux_3_OUT<1> ;
  wire \VALUE[3]_ADDRESS[5]_mux_3_OUT<0> ;
  wire SWG_6_OBUF_22;
  wire SWG_5_OBUF_23;
  wire SWG_4_OBUF_24;
  wire SWG_3_OBUF_25;
  wire SWG_2_OBUF_26;
  wire SWG_1_OBUF_27;
  wire SWG_0_OBUF_28;
  wire \ADDRESS[1]_VALUE[3]_Mux_2_o ;
  wire BTNR_inv;
  wire [5 : 0] ADDRESS;
  wire [3 : 0] SWG_BUFF;
  wire [5 : 0] Result;
  FDE   AN0_1 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(STATE_INV_1_o),
    .Q(AN0_OBUF_11)
  );
  FDC   STATE (
    .C(CLK_BUFGP_0),
    .CLR(BTNR_IBUF_2),
    .D(STATE_INV_1_o),
    .Q(STATE_3)
  );
  FDE   AN1_3 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(STATE_3),
    .Q(AN1_OBUF_12)
  );
  FDE   LED0_4 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(\ADDRESS[1]_VALUE[3]_Mux_2_o ),
    .Q(LED0_OBUF_10)
  );
  FDE   SWG_BUFF_0 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(\VALUE[3]_ADDRESS[5]_mux_3_OUT<0> ),
    .Q(SWG_BUFF[0])
  );
  FDE   SWG_BUFF_1 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(\VALUE[3]_ADDRESS[5]_mux_3_OUT<1> ),
    .Q(SWG_BUFF[1])
  );
  FDE   SWG_BUFF_2 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(\VALUE[3]_ADDRESS[5]_mux_3_OUT<2> ),
    .Q(SWG_BUFF[2])
  );
  FDE   SWG_BUFF_3 (
    .C(CLK_BUFGP_0),
    .CE(BTNR_inv),
    .D(\VALUE[3]_ADDRESS[5]_mux_3_OUT<3> ),
    .Q(SWG_BUFF[3])
  );
  FDCE   ADDRESS_0 (
    .C(CLK_BUFGP_0),
    .CE(BTNC_IBUF_1),
    .CLR(BTNR_IBUF_2),
    .D(Result[0]),
    .Q(ADDRESS[0])
  );
  FDCE   ADDRESS_1 (
    .C(CLK_BUFGP_0),
    .CE(BTNC_IBUF_1),
    .CLR(BTNR_IBUF_2),
    .D(Result[1]),
    .Q(ADDRESS[1])
  );
  FDCE   ADDRESS_2 (
    .C(CLK_BUFGP_0),
    .CE(BTNC_IBUF_1),
    .CLR(BTNR_IBUF_2),
    .D(Result[2]),
    .Q(ADDRESS[2])
  );
  FDCE   ADDRESS_3 (
    .C(CLK_BUFGP_0),
    .CE(BTNC_IBUF_1),
    .CLR(BTNR_IBUF_2),
    .D(Result[3]),
    .Q(ADDRESS[3])
  );
  FDCE   ADDRESS_4 (
    .C(CLK_BUFGP_0),
    .CE(BTNC_IBUF_1),
    .CLR(BTNR_IBUF_2),
    .D(Result[4]),
    .Q(ADDRESS[4])
  );
  FDCE   ADDRESS_5 (
    .C(CLK_BUFGP_0),
    .CE(BTNC_IBUF_1),
    .CLR(BTNR_IBUF_2),
    .D(Result[5]),
    .Q(ADDRESS[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_ADDRESS_xor<1>11  (
    .I0(ADDRESS[1]),
    .I1(ADDRESS[0]),
    .O(Result[1])
  );
  LUT4 #(
    .INIT ( 16'h53B7 ))
  \CL3/Y<1>1  (
    .I0(SWG_BUFF[1]),
    .I1(SWG_BUFF[2]),
    .I2(SWG_BUFF[0]),
    .I3(SWG_BUFF[3]),
    .O(SWG_1_OBUF_27)
  );
  LUT4 #(
    .INIT ( 16'h5EDF ))
  \CL3/Y<2>1  (
    .I0(SWG_BUFF[3]),
    .I1(SWG_BUFF[0]),
    .I2(SWG_BUFF[2]),
    .I3(SWG_BUFF[1]),
    .O(SWG_2_OBUF_26)
  );
  LUT4 #(
    .INIT ( 16'hBEDE ))
  \CL3/Y<6>1  (
    .I0(SWG_BUFF[3]),
    .I1(SWG_BUFF[1]),
    .I2(SWG_BUFF[2]),
    .I3(SWG_BUFF[0]),
    .O(SWG_6_OBUF_22)
  );
  LUT4 #(
    .INIT ( 16'hB6EF ))
  \CL3/Y<0>1  (
    .I0(SWG_BUFF[1]),
    .I1(SWG_BUFF[3]),
    .I2(SWG_BUFF[2]),
    .I3(SWG_BUFF[0]),
    .O(SWG_0_OBUF_28)
  );
  LUT4 #(
    .INIT ( 16'hBF71 ))
  \CL3/Y<5>1  (
    .I0(SWG_BUFF[1]),
    .I1(SWG_BUFF[0]),
    .I2(SWG_BUFF[2]),
    .I3(SWG_BUFF[3]),
    .O(SWG_5_OBUF_23)
  );
  LUT4 #(
    .INIT ( 16'hEF0B ))
  \CL3/Y<4>1  (
    .I0(SWG_BUFF[1]),
    .I1(SWG_BUFF[2]),
    .I2(SWG_BUFF[0]),
    .I3(SWG_BUFF[3]),
    .O(SWG_4_OBUF_24)
  );
  LUT5 #(
    .INIT ( 32'h78F0F0F0 ))
  \Result<4>1  (
    .I0(ADDRESS[2]),
    .I1(ADDRESS[3]),
    .I2(ADDRESS[4]),
    .I3(ADDRESS[0]),
    .I4(ADDRESS[1]),
    .O(Result[4])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>1  (
    .I0(ADDRESS[2]),
    .I1(ADDRESS[3]),
    .I2(ADDRESS[0]),
    .I3(ADDRESS[1]),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>1  (
    .I0(ADDRESS[2]),
    .I1(ADDRESS[0]),
    .I2(ADDRESS[1]),
    .O(Result[2])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \Result<5>1  (
    .I0(ADDRESS[5]),
    .I1(ADDRESS[2]),
    .I2(ADDRESS[3]),
    .I3(ADDRESS[4]),
    .I4(ADDRESS[0]),
    .I5(ADDRESS[1]),
    .O(Result[5])
  );
  LUT4 #(
    .INIT ( 16'h5EE7 ))
  \SWG<3>1  (
    .I0(SWG_BUFF[1]),
    .I1(SWG_BUFF[3]),
    .I2(SWG_BUFF[0]),
    .I3(SWG_BUFF[2]),
    .O(SWG_3_OBUF_25)
  );
  LUT6 #(
    .INIT ( 64'h4E9AB9B569BC59FE ))
  \ADDRESS[1]_VALUE[3]_Mux_2_o1  (
    .I0(ADDRESS[3]),
    .I1(ADDRESS[5]),
    .I2(ADDRESS[2]),
    .I3(ADDRESS[0]),
    .I4(ADDRESS[1]),
    .I5(ADDRESS[4]),
    .O(\ADDRESS[1]_VALUE[3]_Mux_2_o )
  );
  LUT5 #(
    .INIT ( 32'hAAAAA6D5 ))
  \VALUE[3]_ADDRESS[5]_mux_3_OUT<1>1  (
    .I0(ADDRESS[3]),
    .I1(ADDRESS[2]),
    .I2(ADDRESS[4]),
    .I3(ADDRESS[5]),
    .I4(STATE_3),
    .O(\VALUE[3]_ADDRESS[5]_mux_3_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA9BFE ))
  \VALUE[3]_ADDRESS[5]_mux_3_OUT<0>1  (
    .I0(ADDRESS[2]),
    .I1(ADDRESS[3]),
    .I2(ADDRESS[5]),
    .I3(ADDRESS[4]),
    .I4(STATE_3),
    .O(\VALUE[3]_ADDRESS[5]_mux_3_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h89CCDCC9 ))
  \VALUE[3]_ADDRESS[5]_mux_3_OUT<3>1  (
    .I0(STATE_3),
    .I1(ADDRESS[5]),
    .I2(ADDRESS[4]),
    .I3(ADDRESS[3]),
    .I4(ADDRESS[2]),
    .O(\VALUE[3]_ADDRESS[5]_mux_3_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hD9DC8D98 ))
  \VALUE[3]_ADDRESS[5]_mux_3_OUT<2>1  (
    .I0(STATE_3),
    .I1(ADDRESS[4]),
    .I2(ADDRESS[5]),
    .I3(ADDRESS[2]),
    .I4(ADDRESS[3]),
    .O(\VALUE[3]_ADDRESS[5]_mux_3_OUT<2> )
  );
  IBUF   BTNC_IBUF (
    .I(BTNC),
    .O(BTNC_IBUF_1)
  );
  IBUF   BTNR_IBUF (
    .I(BTNR),
    .O(BTNR_IBUF_2)
  );
  OBUF   SWG_6_OBUF (
    .I(SWG_6_OBUF_22),
    .O(SWG[6])
  );
  OBUF   SWG_5_OBUF (
    .I(SWG_5_OBUF_23),
    .O(SWG[5])
  );
  OBUF   SWG_4_OBUF (
    .I(SWG_4_OBUF_24),
    .O(SWG[4])
  );
  OBUF   SWG_3_OBUF (
    .I(SWG_3_OBUF_25),
    .O(SWG[3])
  );
  OBUF   SWG_2_OBUF (
    .I(SWG_2_OBUF_26),
    .O(SWG[2])
  );
  OBUF   SWG_1_OBUF (
    .I(SWG_1_OBUF_27),
    .O(SWG[1])
  );
  OBUF   SWG_0_OBUF (
    .I(SWG_0_OBUF_28),
    .O(SWG[0])
  );
  OBUF   AN0_OBUF (
    .I(AN0_OBUF_11),
    .O(AN0)
  );
  OBUF   AN1_OBUF (
    .I(AN1_OBUF_12),
    .O(AN1)
  );
  OBUF   LED0_OBUF (
    .I(LED0_OBUF_10),
    .O(LED0)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_0)
  );
  INV   STATE_INV_1_o1_INV_0 (
    .I(STATE_3),
    .O(STATE_INV_1_o)
  );
  INV   BTNR_inv1_INV_0 (
    .I(BTNR_IBUF_2),
    .O(BTNR_inv)
  );
  INV   \Mcount_ADDRESS_xor<0>11_INV_0  (
    .I(ADDRESS[0]),
    .O(Result[0])
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

