////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_map.v
// /___/   /\     Timestamp: Mon Oct 31 03:19:52 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf TOP.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim TOP_map.ncd TOP_map.v 
// Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
// Input file	: TOP_map.ncd
// Output file	: /media/ext4_tb/lin/moved/apcel/Documents/5sem/Xilinx/MAKSIMOV_LR2/netgen/map/TOP_map.v
// # of Modules	: 1
// Design Name	: TOP
// Xilinx        : /media/ext4_tb/lin/moved/opt/Xilinx/14.7/ISE_DS/ISE/
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
  clk, btnC, btnU, seg, led, an
);
  input clk;
  input btnC;
  input btnU;
  output [6 : 0] seg;
  output [0 : 0] led;
  output [2 : 0] an;
  wire NlwRenamedSig_IO_btnC;
  wire NlwRenamedSig_IO_btnU;
  wire seg_6_OBUF_447;
  wire \clk_BUFGP/IBUFG_448 ;
  wire clk_BUFGP;
  wire \CLICKfilter/sigChanged ;
  wire \CLICKfilter/currentState_451 ;
  wire \divideClock/clk_reg_452 ;
  wire an_2_OBUF_454;
  wire \RSTfilter/currentState_456 ;
  wire \RSTfilter/sigChanged ;
  wire seg_5_OBUF_465;
  wire seg_2_OBUF_0;
  wire seg_1_OBUF_471;
  wire led_0_OBUF_472;
  wire \CLICKfilter/filterDelay/countedNeededValue<15>1_473 ;
  wire \RSTfilter/filterDelay/countedNeededValue<15>1_485 ;
  wire \RSTfilter/filterDelay/filteredTick ;
  wire \CLICKfilter/filterDelay/filteredTick_0 ;
  wire an_0_OBUF_509;
  wire seg_3_OBUF_510;
  wire seg_0_OBUF_0;
  wire \LED/selectInput/y<0>_0 ;
  wire seg_4_OBUF_0;
  wire an_1_OBUF_514;
  wire \RSTfilter/runCounter_inv ;
  wire btnU_IBUF_516;
  wire btnC_IBUF_517;
  wire \CLICKfilter/runCounter_inv_0 ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy[3] ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy[7] ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy[11] ;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy[3] ;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy[7] ;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy[11] ;
  wire N6;
  wire \RSTfilter/filterDelay/internalCounter<0>_rt_25 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \CLICKfilter/filterDelay/internalCounter<0>_rt_134 ;
  wire \Result<0>3 ;
  wire \Result<1>3 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \Result<4>2 ;
  wire \Result<5>2 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \CLICKfilter/runCounter_inv ;
  wire \CLICKfilter/filterDelay/filteredTick ;
  wire \CLICKfilter/currentState_INV_37_o ;
  wire \RSTfilter/currentState_INV_37_o ;
  wire \divideClock/clk_reg_INV_1_o ;
  wire \core/counter/internalCounter<2>_pack_4 ;
  wire \Result<1>1 ;
  wire \core/counter/internalCounter<4>_pack_6 ;
  wire \Result<0>1 ;
  wire seg_2_OBUF_400;
  wire seg_0_OBUF_425;
  wire seg_4_OBUF_419;
  wire \LED/selectedDigit<0>_pack_5 ;
  wire VCC;
  wire GND;
  wire \NLW_N0_21.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp19.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_20.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_19.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1_2.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_25.D5LUT_O_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_24.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_23.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_22.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_29.D5LUT_O_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_28.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_27.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_26.A5LUT_O_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_32.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_31.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_30.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp19.CYINITVCC.1_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_N1.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_16.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_15.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_14.A5LUT_O_UNCONNECTED ;
  wire [1 : 0] \LED/currentNumber/counter ;
  wire [5 : 0] \core/counter/internalCounter ;
  wire [3 : 0] \LED/selectedDigit ;
  wire [15 : 0] \CLICKfilter/filterDelay/internalCounter ;
  wire [15 : 0] \RSTfilter/filterDelay/internalCounter ;
  wire [15 : 15] \RSTfilter/filterDelay/countedNeededValue ;
  wire [15 : 15] \CLICKfilter/filterDelay/countedNeededValue ;
  wire [15 : 1] \RSTfilter/filterDelay/Mcount_internalCounter_lut ;
  wire [15 : 0] Result;
  wire [15 : 1] \CLICKfilter/filterDelay/Mcount_internalCounter_lut ;
  wire [0 : 0] \LED/selectInput/y ;
  assign
    NlwRenamedSig_IO_btnC = btnC,
    NlwRenamedSig_IO_btnU = btnU;
  initial $sdf_annotate("netgen/map/TOP_map.sdf");
  X_OPAD #(
    .LOC ( "IOB_X1Y88" ))
  \seg<6>  (
    .PAD(seg[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y88" ))
  seg_6_OBUF (
    .I(seg_6_OBUF_447),
    .O(seg[6])
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y31" ))
  \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_448 ),
    .O(clk_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_3  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<3>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [3]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_21.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_21.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X42Y94" ))
  \ProtoComp19.CYINITVCC  (
    .O(\NLW_ProtoComp19.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_2  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<2>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [2]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X42Y94" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\RSTfilter/filterDelay/Mcount_internalCounter_cy[3] , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED 
}),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\Result<3>1 , \Result<2>1 , \Result<1>2 , \Result<0>2 }),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [3], \RSTfilter/filterDelay/Mcount_internalCounter_lut [2], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [1], \RSTfilter/filterDelay/internalCounter<0>_rt_25 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_20.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_20.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_1  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<1>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [1]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_19.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_19.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_0  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<0>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [0]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \RSTfilter/filterDelay/internalCounter<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/internalCounter<0>_rt_25 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y94" ),
    .INIT ( 32'h00000000 ))
  \N1_2.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1_2.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_7  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[7]),
    .O(\RSTfilter/filterDelay/internalCounter [7]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_25.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_25.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_6  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[6]),
    .O(\RSTfilter/filterDelay/internalCounter [6]),
    .SET(\RSTfilter/runCounter_inv ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X42Y95" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\RSTfilter/filterDelay/Mcount_internalCounter_cy[7] , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED 
}),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({Result[7], Result[6], \Result<5>1 , \Result<4>1 }),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [7], \RSTfilter/filterDelay/Mcount_internalCounter_lut [6], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [5], \RSTfilter/filterDelay/Mcount_internalCounter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_24.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_24.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_5  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<5>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [5]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_23.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_23.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_4  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<4>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [4]),
    .SET(\RSTfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_22.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_22.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_11  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[11]),
    .O(\RSTfilter/filterDelay/internalCounter [11]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_29.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_29.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_10  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[10]),
    .O(\RSTfilter/filterDelay/internalCounter [10]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X42Y96" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\RSTfilter/filterDelay/Mcount_internalCounter_cy[11] , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [11], \RSTfilter/filterDelay/Mcount_internalCounter_lut [10], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [9], \RSTfilter/filterDelay/Mcount_internalCounter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [10]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_28.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_28.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_9  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[9]),
    .O(\RSTfilter/filterDelay/internalCounter [9]),
    .SET(\RSTfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_27.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_27.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_8  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[8]),
    .O(\RSTfilter/filterDelay/internalCounter [8]),
    .SET(\RSTfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_26.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_26.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_15  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[15]),
    .O(\RSTfilter/filterDelay/internalCounter [15]),
    .SET(\RSTfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [15]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_14  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[14]),
    .O(\RSTfilter/filterDelay/internalCounter [14]),
    .SET(\RSTfilter/runCounter_inv ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X42Y97" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [15], \RSTfilter/filterDelay/Mcount_internalCounter_lut [14], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [13], \RSTfilter/filterDelay/Mcount_internalCounter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [14]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_32.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_32.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_13  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[13]),
    .O(\RSTfilter/filterDelay/internalCounter [13]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [13]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_31.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_31.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_12  (
    .CE(VCC),
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[12]),
    .O(\RSTfilter/filterDelay/internalCounter [12]),
    .RST(\RSTfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/filterDelay/internalCounter [12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X42Y97" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_30.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_30.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_3  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<3>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [3]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_5.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X52Y92" ))
  \ProtoComp19.CYINITVCC.1  (
    .O(\NLW_ProtoComp19.CYINITVCC.1_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_2  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<2>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [2]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X52Y92" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\CLICKfilter/filterDelay/Mcount_internalCounter_cy[3] , \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\Result<3>2 , \Result<2>2 , \Result<1>3 , \Result<0>3 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [2], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1], \CLICKfilter/filterDelay/internalCounter<0>_rt_134 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_4.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_1  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<1>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [1]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_3.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_0  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<0>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [0]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \CLICKfilter/filterDelay/internalCounter<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/internalCounter<0>_rt_134 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y92" ),
    .INIT ( 32'h00000000 ))
  \N1.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_7  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<7>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [7]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_9.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_6  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<6>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [6]),
    .SET(\CLICKfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X52Y93" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\CLICKfilter/filterDelay/Mcount_internalCounter_cy[7] , \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\Result<7>1 , \Result<6>1 , \Result<5>2 , \Result<4>2 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [6], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_8.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_5  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<5>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [5]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_7.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_4  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<4>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [4]),
    .SET(\CLICKfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y93" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_6.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_11  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<11>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [11]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_13.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_13.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_10  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<10>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [10]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X52Y94" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\CLICKfilter/filterDelay/Mcount_internalCounter_cy[11] , \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\Result<11>1 , \Result<10>1 , \Result<9>1 , \Result<8>1 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [10], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [10]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_12.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_9  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<9>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [9]),
    .SET(\CLICKfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_11.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_8  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<8>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [8]),
    .SET(\CLICKfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_10.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_15  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<15>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [15]),
    .SET(\CLICKfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [15]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_14  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<14>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [14]),
    .SET(\CLICKfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X52Y95" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({\Result<15>1 , \Result<14>1 , \Result<13>1 , \Result<12>1 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [14], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [14]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_16.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_16.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_13  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<13>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [13]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [13]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_15.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_15.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_12  (
    .CE(VCC),
    .CLK(\CLICKfilter/filterDelay/filteredTick_0 ),
    .I(\Result<12>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [12]),
    .RST(\CLICKfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X52Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_14.A5LUT_O_UNCONNECTED )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y63" ))
  \an<0>  (
    .PAD(an[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y63" ))
  an_0_OBUF (
    .I(an_0_OBUF_509),
    .O(an[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y64" ))
  \an<1>  (
    .PAD(an[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y64" ))
  an_1_OBUF (
    .I(an_1_OBUF_514),
    .O(an[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y92" ))
  \an<2>  (
    .PAD(an[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y92" ))
  an_2_OBUF (
    .I(an_2_OBUF_454),
    .O(an[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y51" ))
  \led<0>  (
    .PAD(led[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y51" ))
  led_0_OBUF (
    .I(led_0_OBUF_472),
    .O(led[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y126" ))
  clk_132 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y126" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_448 ),
    .I(clk)
  );
  X_PD #(
    .LOC ( "IOB_X0Y127" ))
  \ProtoComp24.PULL  (
    .O(NlwRenamedSig_IO_btnC)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y127" ))
  btnC_135 (
    .PAD(NlwRenamedSig_IO_btnC)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y127" ))
  btnC_IBUF (
    .O(btnC_IBUF_517),
    .I(NlwRenamedSig_IO_btnC)
  );
  X_PD #(
    .LOC ( "IOB_X0Y122" ))
  \ProtoComp24.PULL.1  (
    .O(NlwRenamedSig_IO_btnU)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y122" ))
  btnU_139 (
    .PAD(NlwRenamedSig_IO_btnU)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y122" ))
  btnU_IBUF (
    .O(btnU_IBUF_516),
    .I(NlwRenamedSig_IO_btnU)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y95" ))
  \seg<0>  (
    .PAD(seg[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y95" ))
  seg_0_OBUF (
    .I(seg_0_OBUF_0),
    .O(seg[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y93" ))
  \seg<1>  (
    .PAD(seg[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y93" ))
  seg_1_OBUF (
    .I(seg_1_OBUF_471),
    .O(seg[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y87" ))
  \seg<2>  (
    .PAD(seg[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y87" ))
  seg_2_OBUF (
    .I(seg_2_OBUF_0),
    .O(seg[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y89" ))
  \seg<3>  (
    .PAD(seg[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y89" ))
  seg_3_OBUF (
    .I(seg_3_OBUF_510),
    .O(seg[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y96" ))
  \seg<4>  (
    .PAD(seg[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y96" ))
  seg_4_OBUF (
    .I(seg_4_OBUF_0),
    .O(seg[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y91" ))
  \seg<5>  (
    .PAD(seg[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y91" ))
  seg_5_OBUF (
    .I(seg_5_OBUF_465),
    .O(seg[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y95" ),
    .INIT ( 64'h0000000000000001 ))
  \RSTfilter/filterDelay/countedNeededValue<15>1  (
    .ADR0(\RSTfilter/filterDelay/internalCounter [1]),
    .ADR1(\RSTfilter/filterDelay/internalCounter [0]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [2]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [3]),
    .ADR4(\RSTfilter/filterDelay/internalCounter [4]),
    .ADR5(\RSTfilter/filterDelay/internalCounter [5]),
    .O(\RSTfilter/filterDelay/countedNeededValue [15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X43Y95" ),
    .INIT ( 64'h0000000000010000 ))
  \RSTfilter/filterDelay/countedNeededValue<15>2  (
    .ADR0(\RSTfilter/filterDelay/internalCounter [6]),
    .ADR1(\RSTfilter/filterDelay/internalCounter [7]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [8]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [9]),
    .ADR4(\RSTfilter/filterDelay/countedNeededValue [15]),
    .ADR5(\RSTfilter/filterDelay/internalCounter [10]),
    .O(\RSTfilter/filterDelay/countedNeededValue<15>1_485 )
  );
  X_BUF   \RSTfilter/runCounter_inv/RSTfilter/runCounter_inv_DMUX_Delay  (
    .I(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/runCounter_inv_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X44Y95" ),
    .INIT ( 64'hFF0000FFFF0000FF ))
  \RSTfilter/runCounter_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(btnC_IBUF_517),
    .ADR4(\RSTfilter/currentState_456 ),
    .ADR5(1'b1),
    .O(\RSTfilter/runCounter_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X44Y95" ),
    .INIT ( 32'hC3C3C3C3 ))
  \CLICKfilter/runCounter_inv1  (
    .ADR0(1'b1),
    .ADR1(btnU_IBUF_516),
    .ADR2(\CLICKfilter/currentState_451 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\CLICKfilter/runCounter_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y93" ),
    .INIT ( 64'h0000000000000001 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>1  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [1]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [0]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [2]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [3]),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [4]),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [5]),
    .O(\CLICKfilter/filterDelay/countedNeededValue [15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y93" ),
    .INIT ( 64'h0000000000010000 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>2  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [6]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [7]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [8]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [9]),
    .ADR4(\CLICKfilter/filterDelay/countedNeededValue [15]),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [10]),
    .O(\CLICKfilter/filterDelay/countedNeededValue<15>1_473 )
  );
  X_BUF   \RSTfilter/filterDelay/filteredTick/RSTfilter/filterDelay/filteredTick_CMUX_Delay  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\CLICKfilter/filterDelay/filteredTick_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y95" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \RSTfilter/filterDelay/filteredTick1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\divideClock/clk_reg_452 ),
    .ADR4(\RSTfilter/sigChanged ),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/filteredTick )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X53Y95" ),
    .INIT ( 32'h0F000F00 ))
  \CLICKfilter/filterDelay/filteredTick1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\CLICKfilter/sigChanged ),
    .ADR3(\divideClock/clk_reg_452 ),
    .ADR4(1'b1),
    .O(\CLICKfilter/filterDelay/filteredTick )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y95" ),
    .INIT ( 64'h0000000000010000 ))
  \RSTfilter/filterDelay/countedNeededValue<15>3  (
    .ADR0(\RSTfilter/filterDelay/internalCounter [11]),
    .ADR1(\RSTfilter/filterDelay/internalCounter [12]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [13]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [14]),
    .ADR4(\RSTfilter/filterDelay/countedNeededValue<15>1_485 ),
    .ADR5(\RSTfilter/filterDelay/internalCounter [15]),
    .O(\RSTfilter/sigChanged )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X53Y95" ),
    .INIT ( 64'h0000000000010000 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>3  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [11]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [12]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [13]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [14]),
    .ADR4(\CLICKfilter/filterDelay/countedNeededValue<15>1_473 ),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [15]),
    .O(\CLICKfilter/sigChanged )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y95" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/currentState  (
    .CE(VCC),
    .CLK(\CLICKfilter/sigChanged ),
    .I(\CLICKfilter/currentState_INV_37_o ),
    .O(\CLICKfilter/currentState_451 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X54Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \CLICKfilter/currentState_INV_37_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\CLICKfilter/currentState_451 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/currentState_INV_37_o )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y95" ),
    .INIT ( 1'b0 ))
  \RSTfilter/currentState  (
    .CE(VCC),
    .CLK(\RSTfilter/sigChanged ),
    .I(\RSTfilter/currentState_INV_37_o ),
    .O(\RSTfilter/currentState_456 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X55Y95" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \RSTfilter/currentState_INV_37_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\RSTfilter/currentState_456 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/currentState_INV_37_o )
  );
  X_FF #(
    .LOC ( "SLICE_X70Y90" ),
    .INIT ( 1'b0 ))
  \divideClock/clk_reg  (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(\divideClock/clk_reg_INV_1_o ),
    .O(\divideClock/clk_reg_452 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X70Y90" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \divideClock/clk_reg_INV_1_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\divideClock/clk_reg_452 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\divideClock/clk_reg_INV_1_o )
  );
  X_FF #(
    .LOC ( "SLICE_X72Y86" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_5  (
    .CE(VCC),
    .CLK(\CLICKfilter/currentState_451 ),
    .I(Result[5]),
    .O(\core/counter/internalCounter [5]),
    .RST(\RSTfilter/currentState_456 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y86" ),
    .INIT ( 64'h7F80FF00FF00FF00 ))
  \core/counter/Mcount_internalCounter_xor<5>11  (
    .ADR0(\core/counter/internalCounter [0]),
    .ADR1(\core/counter/internalCounter [1]),
    .ADR2(\core/counter/internalCounter [2]),
    .ADR3(\core/counter/internalCounter [5]),
    .ADR4(\core/counter/internalCounter [3]),
    .ADR5(\core/counter/internalCounter [4]),
    .O(Result[5])
  );
  X_BUF   \core/counter/internalCounter<3>/core/counter/internalCounter<3>_CMUX_Delay  (
    .I(\core/counter/internalCounter<4>_pack_6 ),
    .O(\core/counter/internalCounter [4])
  );
  X_BUF   \core/counter/internalCounter<3>/core/counter/internalCounter<3>_BMUX_Delay  (
    .I(\core/counter/internalCounter<2>_pack_4 ),
    .O(\core/counter/internalCounter [2])
  );
  X_FF #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_3  (
    .CE(VCC),
    .CLK(\CLICKfilter/currentState_451 ),
    .I(Result[3]),
    .O(\core/counter/internalCounter [3]),
    .RST(\RSTfilter/currentState_456 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 64'h3FC0FF003FC0FF00 ))
  \core/counter/Mcount_internalCounter_xor<3>11  (
    .ADR0(1'b1),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [3]),
    .ADR4(\core/counter/internalCounter [2]),
    .ADR5(1'b1),
    .O(Result[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 32'h6AAAAAAA ))
  \core/counter/Mcount_internalCounter_xor<4>11  (
    .ADR0(\core/counter/internalCounter [4]),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [3]),
    .ADR4(\core/counter/internalCounter [2]),
    .O(Result[4])
  );
  X_FF #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_4  (
    .CE(VCC),
    .CLK(\CLICKfilter/currentState_451 ),
    .I(Result[4]),
    .O(\core/counter/internalCounter<4>_pack_6 ),
    .RST(\RSTfilter/currentState_456 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_1  (
    .CE(VCC),
    .CLK(\CLICKfilter/currentState_451 ),
    .I(\Result<1>1 ),
    .O(\core/counter/internalCounter [1]),
    .RST(\RSTfilter/currentState_456 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \core/counter/Mcount_internalCounter_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\core/counter/internalCounter [1]),
    .ADR4(\core/counter/internalCounter [0]),
    .ADR5(1'b1),
    .O(\Result<1>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 32'h0FF0F0F0 ))
  \core/counter/Mcount_internalCounter_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\core/counter/internalCounter [2]),
    .ADR3(\core/counter/internalCounter [1]),
    .ADR4(\core/counter/internalCounter [0]),
    .O(Result[2])
  );
  X_FF #(
    .LOC ( "SLICE_X72Y87" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_2  (
    .CE(VCC),
    .CLK(\CLICKfilter/currentState_451 ),
    .I(Result[2]),
    .O(\core/counter/internalCounter<2>_pack_4 ),
    .RST(\RSTfilter/currentState_456 ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X73Y87" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_0  (
    .CE(VCC),
    .CLK(\CLICKfilter/currentState_451 ),
    .I(\Result<0>1 ),
    .O(\core/counter/internalCounter [0]),
    .RST(\RSTfilter/currentState_456 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X73Y87" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \core/counter/Mcount_internalCounter_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\core/counter/internalCounter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\Result<0>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X77Y87" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_1  (
    .CE(VCC),
    .CLK(\divideClock/clk_reg_452 ),
    .I(Result[1]),
    .O(\LED/currentNumber/counter [1]),
    .SRST(an_2_OBUF_454),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y87" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \an<2>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\LED/currentNumber/counter [1]),
    .ADR4(\LED/currentNumber/counter [0]),
    .ADR5(1'b1),
    .O(an_2_OBUF_454)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X77Y87" ),
    .INIT ( 32'h00FFFF00 ))
  \LED/currentNumber/Mcount_counter_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\LED/currentNumber/counter [1]),
    .ADR4(\LED/currentNumber/counter [0]),
    .O(Result[1])
  );
  X_SFF #(
    .LOC ( "SLICE_X77Y87" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_0  (
    .CE(VCC),
    .CLK(\divideClock/clk_reg_452 ),
    .I(Result[0]),
    .O(\LED/currentNumber/counter [0]),
    .SRST(an_2_OBUF_454),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y87" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \LED/currentNumber/Mcount_counter_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\LED/currentNumber/counter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(Result[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X81Y87" ),
    .INIT ( 64'h7E9321E688D72712 ))
  \core/bit_decipher/Mmux_Y11  (
    .ADR0(\core/counter/internalCounter [1]),
    .ADR1(\core/counter/internalCounter [2]),
    .ADR2(\core/counter/internalCounter [3]),
    .ADR3(\core/counter/internalCounter [4]),
    .ADR4(\core/counter/internalCounter [5]),
    .ADR5(\core/counter/internalCounter [0]),
    .O(led_0_OBUF_472)
  );
  X_BUF   \N6/N6_BMUX_Delay  (
    .I(\LED/selectInput/y [0]),
    .O(\LED/selectInput/y<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X80Y87" ),
    .INIT ( 64'hF0FFF00FF0FFF00F ))
  \LED/selectInput/y<1>_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\core/counter/internalCounter [4]),
    .ADR3(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [3]),
    .ADR5(1'b1),
    .O(N6)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X80Y87" ),
    .INIT ( 32'h5D0A7D28 ))
  \LED/selectInput/y<0>1  (
    .ADR0(\LED/currentNumber/counter [1]),
    .ADR1(\core/counter/internalCounter [5]),
    .ADR2(\core/counter/internalCounter [4]),
    .ADR3(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [3]),
    .O(\LED/selectInput/y [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X80Y87" ),
    .INIT ( 64'h7337622651154004 ))
  \LED/selectInput/y<1>  (
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR1(\LED/currentNumber/counter [1]),
    .ADR2(\core/counter/internalCounter [5]),
    .ADR3(N6),
    .ADR4(\core/counter/internalCounter [3]),
    .ADR5(\core/counter/internalCounter [1]),
    .O(\LED/selectedDigit [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X83Y87" ),
    .INIT ( 64'hFFF000F000F0F000 ))
  \LED/DC7/Mram_y41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [1]),
    .ADR5(\LED/selectedDigit [3]),
    .O(seg_1_OBUF_471)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X83Y87" ),
    .INIT ( 64'h1510455055001510 ))
  \LED/selectInput/y<3>1  (
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR1(\core/counter/internalCounter [2]),
    .ADR2(\LED/currentNumber/counter [1]),
    .ADR3(\core/counter/internalCounter [5]),
    .ADR4(\core/counter/internalCounter [4]),
    .ADR5(\core/counter/internalCounter [3]),
    .O(\LED/selectedDigit [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y86" ),
    .INIT ( 64'h000000000000FFFF ))
  \an<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\LED/currentNumber/counter [0]),
    .ADR5(\LED/currentNumber/counter [1]),
    .O(an_0_OBUF_509)
  );
  X_BUF   \seg_5_OBUF/seg_5_OBUF_BMUX_Delay  (
    .I(seg_2_OBUF_400),
    .O(seg_2_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y87" ),
    .INIT ( 64'h3C0033303C003330 ))
  \LED/DC7/Mram_y51  (
    .ADR0(1'b1),
    .ADR1(\LED/selectedDigit [3]),
    .ADR2(\LED/selectedDigit [1]),
    .ADR3(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [2]),
    .ADR5(1'b1),
    .O(seg_5_OBUF_465)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X82Y87" ),
    .INIT ( 32'hC0CC0030 ))
  \LED/DC7/Mram_y111  (
    .ADR0(1'b1),
    .ADR1(\LED/selectedDigit [3]),
    .ADR2(\LED/selectedDigit [1]),
    .ADR3(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [2]),
    .O(seg_2_OBUF_400)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y87" ),
    .INIT ( 64'h5004444441054444 ))
  \LED/selectInput/y<2>1  (
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR1(\core/counter/internalCounter [4]),
    .ADR2(\core/counter/internalCounter [2]),
    .ADR3(\core/counter/internalCounter [5]),
    .ADR4(\LED/currentNumber/counter [1]),
    .ADR5(\core/counter/internalCounter [3]),
    .O(\LED/selectedDigit [2])
  );
  X_BUF   \an_1_OBUF/an_1_OBUF_CMUX_Delay  (
    .I(\LED/selectedDigit<0>_pack_5 ),
    .O(\LED/selectedDigit [0])
  );
  X_BUF   \an_1_OBUF/an_1_OBUF_BMUX_Delay  (
    .I(seg_4_OBUF_419),
    .O(seg_4_OBUF_0)
  );
  X_BUF   \an_1_OBUF/an_1_OBUF_AMUX_Delay  (
    .I(seg_0_OBUF_425),
    .O(seg_0_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y88" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \LED/selectOutput/Mram_y111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\LED/currentNumber/counter [0]),
    .ADR4(\LED/currentNumber/counter [1]),
    .ADR5(1'b1),
    .O(an_1_OBUF_514)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X82Y88" ),
    .INIT ( 32'h00F0CCF0 ))
  \LED/selectInput/y<0>2  (
    .ADR0(1'b1),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\LED/selectInput/y<0>_0 ),
    .ADR3(\LED/currentNumber/counter [0]),
    .ADR4(\LED/currentNumber/counter [1]),
    .O(\LED/selectedDigit<0>_pack_5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y88" ),
    .INIT ( 64'h00C3300300C33003 ))
  \LED/DC7/Mram_y31  (
    .ADR0(1'b1),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [3]),
    .ADR4(\LED/selectedDigit [0]),
    .ADR5(1'b1),
    .O(seg_6_OBUF_447)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X82Y88" ),
    .INIT ( 32'h03FF0030 ))
  \LED/DC7/Mram_y21  (
    .ADR0(1'b1),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [3]),
    .ADR4(\LED/selectedDigit [0]),
    .O(seg_4_OBUF_419)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y88" ),
    .INIT ( 64'hC00CC330C00CC330 ))
  \LED/DC7/Mram_y11  (
    .ADR0(1'b1),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [3]),
    .ADR5(1'b1),
    .O(seg_3_OBUF_510)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X82Y88" ),
    .INIT ( 32'h3C000330 ))
  \LED/DC7/Mram_y61  (
    .ADR0(1'b1),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [3]),
    .O(seg_0_OBUF_425)
  );
  X_ONE   NlwBlock_TOP_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_TOP_GND (
    .O(GND)
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

