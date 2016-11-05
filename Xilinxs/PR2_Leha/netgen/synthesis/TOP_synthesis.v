////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_synthesis.v
// /___/   /\     Timestamp: Mon Oct 31 03:20:10 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TOP.ngc TOP_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: TOP.ngc
// Output file	: /media/ext4_tb/lin/moved/apcel/Documents/5sem/Xilinx/MAKSIMOV_LR2/netgen/synthesis/TOP_synthesis.v
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
  wire clk_BUFGP_0;
  wire btnC_IBUF_1;
  wire btnU_IBUF_2;
  wire \divideClock/clk_reg_3 ;
  wire \RSTfilter/currentState_4 ;
  wire \CLICKfilter/currentState_5 ;
  wire seg_6_OBUF_6;
  wire seg_5_OBUF_7;
  wire seg_4_OBUF_8;
  wire seg_3_OBUF_9;
  wire seg_2_OBUF_10;
  wire seg_1_OBUF_11;
  wire seg_0_OBUF_12;
  wire an_2_OBUF_13;
  wire an_1_OBUF_14;
  wire an_0_OBUF_15;
  wire led_0_OBUF_22;
  wire N0;
  wire N1;
  wire \divideClock/clk_reg_INV_1_o ;
  wire \CLICKfilter/currentState_INV_37_o ;
  wire \CLICKfilter/sigChanged ;
  wire \RSTfilter/currentState_INV_37_o ;
  wire \RSTfilter/sigChanged ;
  wire \RSTfilter/filterDelay/filteredTick ;
  wire \CLICKfilter/filterDelay/filteredTick ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \RSTfilter/runCounter_inv ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \CLICKfilter/runCounter_inv ;
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
  wire \RSTfilter/filterDelay/countedNeededValue<15>1_173 ;
  wire \CLICKfilter/filterDelay/countedNeededValue<15>1_175 ;
  wire N6;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_192 ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_193 ;
  wire [5 : 0] \core/counter/internalCounter ;
  wire [15 : 0] \RSTfilter/filterDelay/internalCounter ;
  wire [15 : 0] \CLICKfilter/filterDelay/internalCounter ;
  wire [3 : 0] \LED/selectedDigit ;
  wire [15 : 0] Result;
  wire [1 : 0] \LED/currentNumber/counter ;
  wire [14 : 0] \CLICKfilter/filterDelay/Mcount_internalCounter_cy ;
  wire [15 : 1] \CLICKfilter/filterDelay/Mcount_internalCounter_lut ;
  wire [14 : 0] \RSTfilter/filterDelay/Mcount_internalCounter_cy ;
  wire [15 : 1] \RSTfilter/filterDelay/Mcount_internalCounter_lut ;
  wire [15 : 15] \RSTfilter/filterDelay/countedNeededValue ;
  wire [15 : 15] \CLICKfilter/filterDelay/countedNeededValue ;
  wire [0 : 0] \LED/selectInput/y ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \divideClock/clk_reg  (
    .C(clk_BUFGP_0),
    .D(\divideClock/clk_reg_INV_1_o ),
    .Q(\divideClock/clk_reg_3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \CLICKfilter/currentState  (
    .C(\CLICKfilter/sigChanged ),
    .D(\CLICKfilter/currentState_INV_37_o ),
    .Q(\CLICKfilter/currentState_5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \RSTfilter/currentState  (
    .C(\RSTfilter/sigChanged ),
    .D(\RSTfilter/currentState_INV_37_o ),
    .Q(\RSTfilter/currentState_4 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_0  (
    .C(\divideClock/clk_reg_3 ),
    .D(Result[0]),
    .R(an_2_OBUF_13),
    .Q(\LED/currentNumber/counter [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_1  (
    .C(\divideClock/clk_reg_3 ),
    .D(Result[1]),
    .R(an_2_OBUF_13),
    .Q(\LED/currentNumber/counter [1])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_0  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(\Result<0>2 ),
    .Q(\RSTfilter/filterDelay/internalCounter [0])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_1  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(\Result<1>2 ),
    .Q(\RSTfilter/filterDelay/internalCounter [1])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_2  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(\Result<2>1 ),
    .Q(\RSTfilter/filterDelay/internalCounter [2])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_5  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(\Result<5>1 ),
    .Q(\RSTfilter/filterDelay/internalCounter [5])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_3  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(\Result<3>1 ),
    .Q(\RSTfilter/filterDelay/internalCounter [3])
  );
  FDP   \RSTfilter/filterDelay/internalCounter_4  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .D(\Result<4>1 ),
    .PRE(\RSTfilter/runCounter_inv ),
    .Q(\RSTfilter/filterDelay/internalCounter [4])
  );
  FDP   \RSTfilter/filterDelay/internalCounter_6  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .D(Result[6]),
    .PRE(\RSTfilter/runCounter_inv ),
    .Q(\RSTfilter/filterDelay/internalCounter [6])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_7  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(Result[7]),
    .Q(\RSTfilter/filterDelay/internalCounter [7])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_10  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(Result[10]),
    .Q(\RSTfilter/filterDelay/internalCounter [10])
  );
  FDP   \RSTfilter/filterDelay/internalCounter_8  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .D(Result[8]),
    .PRE(\RSTfilter/runCounter_inv ),
    .Q(\RSTfilter/filterDelay/internalCounter [8])
  );
  FDP   \RSTfilter/filterDelay/internalCounter_9  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .D(Result[9]),
    .PRE(\RSTfilter/runCounter_inv ),
    .Q(\RSTfilter/filterDelay/internalCounter [9])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_11  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(Result[11]),
    .Q(\RSTfilter/filterDelay/internalCounter [11])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_12  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(Result[12]),
    .Q(\RSTfilter/filterDelay/internalCounter [12])
  );
  FDP   \RSTfilter/filterDelay/internalCounter_15  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .D(Result[15]),
    .PRE(\RSTfilter/runCounter_inv ),
    .Q(\RSTfilter/filterDelay/internalCounter [15])
  );
  FDC   \RSTfilter/filterDelay/internalCounter_13  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .CLR(\RSTfilter/runCounter_inv ),
    .D(Result[13]),
    .Q(\RSTfilter/filterDelay/internalCounter [13])
  );
  FDP   \RSTfilter/filterDelay/internalCounter_14  (
    .C(\RSTfilter/filterDelay/filteredTick ),
    .D(Result[14]),
    .PRE(\RSTfilter/runCounter_inv ),
    .Q(\RSTfilter/filterDelay/internalCounter [14])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_0  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<0>3 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [0])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_3  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<3>2 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [3])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_1  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<1>3 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [1])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_2  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<2>2 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [2])
  );
  FDP   \CLICKfilter/filterDelay/internalCounter_4  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .D(\Result<4>2 ),
    .PRE(\CLICKfilter/runCounter_inv ),
    .Q(\CLICKfilter/filterDelay/internalCounter [4])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_5  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<5>2 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [5])
  );
  FDP   \CLICKfilter/filterDelay/internalCounter_8  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .D(\Result<8>1 ),
    .PRE(\CLICKfilter/runCounter_inv ),
    .Q(\CLICKfilter/filterDelay/internalCounter [8])
  );
  FDP   \CLICKfilter/filterDelay/internalCounter_6  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .D(\Result<6>1 ),
    .PRE(\CLICKfilter/runCounter_inv ),
    .Q(\CLICKfilter/filterDelay/internalCounter [6])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_7  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<7>1 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [7])
  );
  FDP   \CLICKfilter/filterDelay/internalCounter_9  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .D(\Result<9>1 ),
    .PRE(\CLICKfilter/runCounter_inv ),
    .Q(\CLICKfilter/filterDelay/internalCounter [9])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_10  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<10>1 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [10])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_13  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<13>1 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [13])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_11  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<11>1 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [11])
  );
  FDC   \CLICKfilter/filterDelay/internalCounter_12  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .CLR(\CLICKfilter/runCounter_inv ),
    .D(\Result<12>1 ),
    .Q(\CLICKfilter/filterDelay/internalCounter [12])
  );
  FDP   \CLICKfilter/filterDelay/internalCounter_14  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .D(\Result<14>1 ),
    .PRE(\CLICKfilter/runCounter_inv ),
    .Q(\CLICKfilter/filterDelay/internalCounter [14])
  );
  FDP   \CLICKfilter/filterDelay/internalCounter_15  (
    .C(\CLICKfilter/filterDelay/filteredTick ),
    .D(\Result<15>1 ),
    .PRE(\CLICKfilter/runCounter_inv ),
    .Q(\CLICKfilter/filterDelay/internalCounter [15])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_0  (
    .C(\CLICKfilter/currentState_5 ),
    .CLR(\RSTfilter/currentState_4 ),
    .D(\Result<0>1 ),
    .Q(\core/counter/internalCounter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_1  (
    .C(\CLICKfilter/currentState_5 ),
    .CLR(\RSTfilter/currentState_4 ),
    .D(\Result<1>1 ),
    .Q(\core/counter/internalCounter [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_2  (
    .C(\CLICKfilter/currentState_5 ),
    .CLR(\RSTfilter/currentState_4 ),
    .D(Result[2]),
    .Q(\core/counter/internalCounter [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_3  (
    .C(\CLICKfilter/currentState_5 ),
    .CLR(\RSTfilter/currentState_4 ),
    .D(Result[3]),
    .Q(\core/counter/internalCounter [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_4  (
    .C(\CLICKfilter/currentState_5 ),
    .CLR(\RSTfilter/currentState_4 ),
    .D(Result[4]),
    .Q(\core/counter/internalCounter [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_5  (
    .C(\CLICKfilter/currentState_5 ),
    .CLR(\RSTfilter/currentState_4 ),
    .D(Result[5]),
    .Q(\core/counter/internalCounter [5])
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_192 ),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [0])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<0>  (
    .CI(N0),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_192 ),
    .O(\Result<0>3 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<1>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [1])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<1>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\Result<1>3 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<2>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [2])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<2>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\Result<2>2 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [3])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<3>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\Result<3>2 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<4>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [4])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<4>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\Result<4>2 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<5>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [5])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<5>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\Result<5>2 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<6>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [6])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<6>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(\Result<6>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [7])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<7>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(\Result<7>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<8>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [8])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<8>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(\Result<8>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<9>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [9])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<9>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(\Result<9>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<10>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [10])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<10>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(\Result<10>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [11])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<11>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(\Result<11>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<12>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [12])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<12>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(\Result<12>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<13>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [13])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<13>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(\Result<13>1 )
  );
  MUXCY   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<14>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .DI(N0),
    .S(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [14])
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<14>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(\Result<14>1 )
  );
  XORCY   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [14]),
    .LI(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15]),
    .O(\Result<15>1 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_193 ),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [0])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<0>  (
    .CI(N0),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_193 ),
    .O(\Result<0>2 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<1>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [1])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<1>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\Result<1>2 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<2>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [2])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<2>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\Result<2>1 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [3])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<3>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\Result<3>1 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<4>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [4])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<4>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\Result<4>1 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<5>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [5])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<5>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\Result<5>1 )
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<6>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [6])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<6>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(Result[6])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [7])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<7>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(Result[7])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<8>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [8])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<8>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(Result[8])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<9>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [9])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<9>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(Result[9])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<10>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [10])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<10>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(Result[10])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [11])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<11>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(Result[11])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<12>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [12])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<12>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(Result[12])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<13>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [13])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<13>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(Result[13])
  );
  MUXCY   \RSTfilter/filterDelay/Mcount_internalCounter_cy<14>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .DI(N0),
    .S(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [14])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<14>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(Result[14])
  );
  XORCY   \RSTfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy [14]),
    .LI(\RSTfilter/filterDelay/Mcount_internalCounter_lut [15]),
    .O(Result[15])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \RSTfilter/filterDelay/filteredTick1  (
    .I0(\divideClock/clk_reg_3 ),
    .I1(\RSTfilter/sigChanged ),
    .O(\RSTfilter/filterDelay/filteredTick )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \CLICKfilter/filterDelay/filteredTick1  (
    .I0(\divideClock/clk_reg_3 ),
    .I1(\CLICKfilter/sigChanged ),
    .O(\CLICKfilter/filterDelay/filteredTick )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \an<0>1  (
    .I0(\LED/currentNumber/counter [0]),
    .I1(\LED/currentNumber/counter [1]),
    .O(an_0_OBUF_15)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \an<2>1  (
    .I0(\LED/currentNumber/counter [1]),
    .I1(\LED/currentNumber/counter [0]),
    .O(an_2_OBUF_13)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \RSTfilter/runCounter_inv1  (
    .I0(btnC_IBUF_1),
    .I1(\RSTfilter/currentState_4 ),
    .O(\RSTfilter/runCounter_inv )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \CLICKfilter/runCounter_inv1  (
    .I0(btnU_IBUF_2),
    .I1(\CLICKfilter/currentState_5 ),
    .O(\CLICKfilter/runCounter_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \LED/selectOutput/Mram_y111  (
    .I0(\LED/currentNumber/counter [0]),
    .I1(\LED/currentNumber/counter [1]),
    .O(an_1_OBUF_14)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \LED/currentNumber/Mcount_counter_xor<1>11  (
    .I0(\LED/currentNumber/counter [1]),
    .I1(\LED/currentNumber/counter [0]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \core/counter/Mcount_internalCounter_xor<1>11  (
    .I0(\core/counter/internalCounter [1]),
    .I1(\core/counter/internalCounter [0]),
    .O(\Result<1>1 )
  );
  LUT4 #(
    .INIT ( 16'hE228 ))
  \LED/DC7/Mram_y41  (
    .I0(\LED/selectedDigit [2]),
    .I1(\LED/selectedDigit [0]),
    .I2(\LED/selectedDigit [1]),
    .I3(\LED/selectedDigit [3]),
    .O(seg_1_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h0941 ))
  \LED/DC7/Mram_y31  (
    .I0(\LED/selectedDigit [1]),
    .I1(\LED/selectedDigit [2]),
    .I2(\LED/selectedDigit [3]),
    .I3(\LED/selectedDigit [0]),
    .O(seg_6_OBUF_6)
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \LED/DC7/Mram_y21  (
    .I0(\LED/selectedDigit [0]),
    .I1(\LED/selectedDigit [1]),
    .I2(\LED/selectedDigit [2]),
    .I3(\LED/selectedDigit [3]),
    .O(seg_4_OBUF_8)
  );
  LUT4 #(
    .INIT ( 16'h6054 ))
  \LED/DC7/Mram_y51  (
    .I0(\LED/selectedDigit [3]),
    .I1(\LED/selectedDigit [1]),
    .I2(\LED/selectedDigit [0]),
    .I3(\LED/selectedDigit [2]),
    .O(seg_5_OBUF_7)
  );
  LUT4 #(
    .INIT ( 16'hD004 ))
  \LED/DC7/Mram_y111  (
    .I0(\LED/selectedDigit [0]),
    .I1(\LED/selectedDigit [1]),
    .I2(\LED/selectedDigit [2]),
    .I3(\LED/selectedDigit [3]),
    .O(seg_2_OBUF_10)
  );
  LUT4 #(
    .INIT ( 16'h8294 ))
  \LED/DC7/Mram_y11  (
    .I0(\LED/selectedDigit [1]),
    .I1(\LED/selectedDigit [2]),
    .I2(\LED/selectedDigit [0]),
    .I3(\LED/selectedDigit [3]),
    .O(seg_3_OBUF_9)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \LED/DC7/Mram_y61  (
    .I0(\LED/selectedDigit [0]),
    .I1(\LED/selectedDigit [1]),
    .I2(\LED/selectedDigit [2]),
    .I3(\LED/selectedDigit [3]),
    .O(seg_0_OBUF_12)
  );
  LUT6 #(
    .INIT ( 64'h5004444441054444 ))
  \LED/selectInput/y<2>1  (
    .I0(\LED/currentNumber/counter [0]),
    .I1(\core/counter/internalCounter [4]),
    .I2(\core/counter/internalCounter [2]),
    .I3(\core/counter/internalCounter [5]),
    .I4(\LED/currentNumber/counter [1]),
    .I5(\core/counter/internalCounter [3]),
    .O(\LED/selectedDigit [2])
  );
  LUT6 #(
    .INIT ( 64'h7E9321E688D72712 ))
  \core/bit_decipher/Mmux_Y11  (
    .I0(\core/counter/internalCounter [1]),
    .I1(\core/counter/internalCounter [2]),
    .I2(\core/counter/internalCounter [3]),
    .I3(\core/counter/internalCounter [4]),
    .I4(\core/counter/internalCounter [5]),
    .I5(\core/counter/internalCounter [0]),
    .O(led_0_OBUF_22)
  );
  LUT6 #(
    .INIT ( 64'h1510455055001510 ))
  \LED/selectInput/y<3>1  (
    .I0(\LED/currentNumber/counter [0]),
    .I1(\core/counter/internalCounter [2]),
    .I2(\LED/currentNumber/counter [1]),
    .I3(\core/counter/internalCounter [5]),
    .I4(\core/counter/internalCounter [4]),
    .I5(\core/counter/internalCounter [3]),
    .O(\LED/selectedDigit [3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \core/counter/Mcount_internalCounter_xor<2>11  (
    .I0(\core/counter/internalCounter [2]),
    .I1(\core/counter/internalCounter [0]),
    .I2(\core/counter/internalCounter [1]),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \core/counter/Mcount_internalCounter_xor<3>11  (
    .I0(\core/counter/internalCounter [3]),
    .I1(\core/counter/internalCounter [0]),
    .I2(\core/counter/internalCounter [1]),
    .I3(\core/counter/internalCounter [2]),
    .O(Result[3])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \core/counter/Mcount_internalCounter_xor<4>11  (
    .I0(\core/counter/internalCounter [4]),
    .I1(\core/counter/internalCounter [0]),
    .I2(\core/counter/internalCounter [1]),
    .I3(\core/counter/internalCounter [2]),
    .I4(\core/counter/internalCounter [3]),
    .O(Result[4])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \core/counter/Mcount_internalCounter_xor<5>11  (
    .I0(\core/counter/internalCounter [5]),
    .I1(\core/counter/internalCounter [0]),
    .I2(\core/counter/internalCounter [1]),
    .I3(\core/counter/internalCounter [2]),
    .I4(\core/counter/internalCounter [3]),
    .I5(\core/counter/internalCounter [4]),
    .O(Result[5])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \RSTfilter/filterDelay/countedNeededValue<15>1  (
    .I0(\RSTfilter/filterDelay/internalCounter [1]),
    .I1(\RSTfilter/filterDelay/internalCounter [0]),
    .I2(\RSTfilter/filterDelay/internalCounter [2]),
    .I3(\RSTfilter/filterDelay/internalCounter [3]),
    .I4(\RSTfilter/filterDelay/internalCounter [4]),
    .I5(\RSTfilter/filterDelay/internalCounter [5]),
    .O(\RSTfilter/filterDelay/countedNeededValue [15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \RSTfilter/filterDelay/countedNeededValue<15>2  (
    .I0(\RSTfilter/filterDelay/internalCounter [6]),
    .I1(\RSTfilter/filterDelay/internalCounter [7]),
    .I2(\RSTfilter/filterDelay/internalCounter [8]),
    .I3(\RSTfilter/filterDelay/internalCounter [9]),
    .I4(\RSTfilter/filterDelay/countedNeededValue [15]),
    .I5(\RSTfilter/filterDelay/internalCounter [10]),
    .O(\RSTfilter/filterDelay/countedNeededValue<15>1_173 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \RSTfilter/filterDelay/countedNeededValue<15>3  (
    .I0(\RSTfilter/filterDelay/internalCounter [11]),
    .I1(\RSTfilter/filterDelay/internalCounter [12]),
    .I2(\RSTfilter/filterDelay/internalCounter [13]),
    .I3(\RSTfilter/filterDelay/internalCounter [14]),
    .I4(\RSTfilter/filterDelay/countedNeededValue<15>1_173 ),
    .I5(\RSTfilter/filterDelay/internalCounter [15]),
    .O(\RSTfilter/sigChanged )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>1  (
    .I0(\CLICKfilter/filterDelay/internalCounter [1]),
    .I1(\CLICKfilter/filterDelay/internalCounter [0]),
    .I2(\CLICKfilter/filterDelay/internalCounter [2]),
    .I3(\CLICKfilter/filterDelay/internalCounter [3]),
    .I4(\CLICKfilter/filterDelay/internalCounter [4]),
    .I5(\CLICKfilter/filterDelay/internalCounter [5]),
    .O(\CLICKfilter/filterDelay/countedNeededValue [15])
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>2  (
    .I0(\CLICKfilter/filterDelay/internalCounter [6]),
    .I1(\CLICKfilter/filterDelay/internalCounter [7]),
    .I2(\CLICKfilter/filterDelay/internalCounter [8]),
    .I3(\CLICKfilter/filterDelay/internalCounter [9]),
    .I4(\CLICKfilter/filterDelay/countedNeededValue [15]),
    .I5(\CLICKfilter/filterDelay/internalCounter [10]),
    .O(\CLICKfilter/filterDelay/countedNeededValue<15>1_175 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>3  (
    .I0(\CLICKfilter/filterDelay/internalCounter [11]),
    .I1(\CLICKfilter/filterDelay/internalCounter [12]),
    .I2(\CLICKfilter/filterDelay/internalCounter [13]),
    .I3(\CLICKfilter/filterDelay/internalCounter [14]),
    .I4(\CLICKfilter/filterDelay/countedNeededValue<15>1_175 ),
    .I5(\CLICKfilter/filterDelay/internalCounter [15]),
    .O(\CLICKfilter/sigChanged )
  );
  LUT3 #(
    .INIT ( 8'hB9 ))
  \LED/selectInput/y<1>_SW0  (
    .I0(\core/counter/internalCounter [4]),
    .I1(\core/counter/internalCounter [2]),
    .I2(\core/counter/internalCounter [3]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h7337622651154004 ))
  \LED/selectInput/y<1>  (
    .I0(\LED/currentNumber/counter [0]),
    .I1(\LED/currentNumber/counter [1]),
    .I2(\core/counter/internalCounter [5]),
    .I3(N6),
    .I4(\core/counter/internalCounter [3]),
    .I5(\core/counter/internalCounter [1]),
    .O(\LED/selectedDigit [1])
  );
  LUT5 #(
    .INIT ( 32'h77225D28 ))
  \LED/selectInput/y<0>1  (
    .I0(\LED/currentNumber/counter [1]),
    .I1(\core/counter/internalCounter [4]),
    .I2(\core/counter/internalCounter [3]),
    .I3(\core/counter/internalCounter [2]),
    .I4(\core/counter/internalCounter [5]),
    .O(\LED/selectInput/y [0])
  );
  LUT4 #(
    .INIT ( 16'h7520 ))
  \LED/selectInput/y<0>2  (
    .I0(\LED/currentNumber/counter [0]),
    .I1(\LED/currentNumber/counter [1]),
    .I2(\core/counter/internalCounter [0]),
    .I3(\LED/selectInput/y [0]),
    .O(\LED/selectedDigit [0])
  );
  IBUF   btnC_IBUF (
    .I(btnC),
    .O(btnC_IBUF_1)
  );
  IBUF   btnU_IBUF (
    .I(btnU),
    .O(btnU_IBUF_2)
  );
  OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_6),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_7),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_8),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_9),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_10),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_11),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_12),
    .O(seg[0])
  );
  OBUF   led_0_OBUF (
    .I(led_0_OBUF_22),
    .O(led[0])
  );
  OBUF   an_2_OBUF (
    .I(an_2_OBUF_13),
    .O(an[2])
  );
  OBUF   an_1_OBUF (
    .I(an_1_OBUF_14),
    .O(an[1])
  );
  OBUF   an_0_OBUF (
    .I(an_0_OBUF_15),
    .O(an[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt  (
    .I0(\CLICKfilter/filterDelay/internalCounter [0]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_192 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt  (
    .I0(\RSTfilter/filterDelay/internalCounter [0]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_193 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [1]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [2]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [3]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [4]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [5]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [6]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [7]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [8]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [9]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [10]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [11]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [12]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [13]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [14]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [15]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [1]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [2]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [3]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [4]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [5]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [6]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [7]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [8]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [9]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [10]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [11]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [12]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [13]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [14]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [15]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  INV   \divideClock/clk_reg_INV_1_o1_INV_0  (
    .I(\divideClock/clk_reg_3 ),
    .O(\divideClock/clk_reg_INV_1_o )
  );
  INV   \CLICKfilter/currentState_INV_37_o1_INV_0  (
    .I(\CLICKfilter/currentState_5 ),
    .O(\CLICKfilter/currentState_INV_37_o )
  );
  INV   \RSTfilter/currentState_INV_37_o1_INV_0  (
    .I(\RSTfilter/currentState_4 ),
    .O(\RSTfilter/currentState_INV_37_o )
  );
  INV   \LED/currentNumber/Mcount_counter_xor<0>11_INV_0  (
    .I(\LED/currentNumber/counter [0]),
    .O(Result[0])
  );
  INV   \core/counter/Mcount_internalCounter_xor<0>11_INV_0  (
    .I(\core/counter/internalCounter [0]),
    .O(\Result<0>1 )
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

