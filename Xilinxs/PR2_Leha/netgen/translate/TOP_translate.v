////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_translate.v
// /___/   /\     Timestamp: Mon Oct 31 03:20:07 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim TOP.ngd TOP_translate.v 
// Device	: 7a100tcsg324-3
// Input file	: TOP.ngd
// Output file	: /media/ext4_tb/lin/moved/apcel/Documents/5sem/Xilinx/MAKSIMOV_LR2/netgen/translate/TOP_translate.v
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
  wire clk_BUFGP;
  wire btnC_IBUF_4;
  wire btnU_IBUF_5;
  wire \divideClock/clk_reg_6 ;
  wire \RSTfilter/currentState_7 ;
  wire \CLICKfilter/currentState_8 ;
  wire seg_6_OBUF_9;
  wire seg_5_OBUF_10;
  wire seg_4_OBUF_11;
  wire seg_3_OBUF_12;
  wire seg_2_OBUF_13;
  wire seg_1_OBUF_14;
  wire seg_0_OBUF_15;
  wire an_2_OBUF_16;
  wire an_1_OBUF_17;
  wire an_0_OBUF_18;
  wire led_0_OBUF_25;
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
  wire \RSTfilter/filterDelay/countedNeededValue<15>1_176 ;
  wire \CLICKfilter/filterDelay/countedNeededValue<15>1_178 ;
  wire N6;
  wire NlwRenamedSig_IO_btnC;
  wire NlwRenamedSig_IO_btnU;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_195 ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_196 ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
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
  assign
    NlwRenamedSig_IO_btnC = btnC,
    NlwRenamedSig_IO_btnU = btnU;
  X_ONE   XST_VCC (
    .O(N0)
  );
  X_ZERO   XST_GND (
    .O(N1)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \divideClock/clk_reg  (
    .CLK(clk_BUFGP),
    .I(\divideClock/clk_reg_INV_1_o ),
    .O(\divideClock/clk_reg_6 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/currentState  (
    .CLK(\CLICKfilter/sigChanged ),
    .I(\CLICKfilter/currentState_INV_37_o ),
    .O(\CLICKfilter/currentState_8 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/currentState  (
    .CLK(\RSTfilter/sigChanged ),
    .I(\RSTfilter/currentState_INV_37_o ),
    .O(\RSTfilter/currentState_7 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_0  (
    .CLK(\divideClock/clk_reg_6 ),
    .I(Result[0]),
    .SRST(an_2_OBUF_16),
    .O(\LED/currentNumber/counter [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_1  (
    .CLK(\divideClock/clk_reg_6 ),
    .I(Result[1]),
    .SRST(an_2_OBUF_16),
    .O(\LED/currentNumber/counter [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_0  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(\Result<0>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_1  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(\Result<1>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_2  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(\Result<2>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_5  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(\Result<5>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_3  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(\Result<3>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_4  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(\Result<4>1 ),
    .SET(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/filterDelay/internalCounter [4]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_6  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[6]),
    .SET(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/filterDelay/internalCounter [6]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_7  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(Result[7]),
    .O(\RSTfilter/filterDelay/internalCounter [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_10  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(Result[10]),
    .O(\RSTfilter/filterDelay/internalCounter [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_8  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[8]),
    .SET(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/filterDelay/internalCounter [8]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_9  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[9]),
    .SET(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/filterDelay/internalCounter [9]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_11  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(Result[11]),
    .O(\RSTfilter/filterDelay/internalCounter [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_12  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(Result[12]),
    .O(\RSTfilter/filterDelay/internalCounter [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_15  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[15]),
    .SET(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/filterDelay/internalCounter [15]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_13  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .RST(\RSTfilter/runCounter_inv ),
    .I(Result[13]),
    .O(\RSTfilter/filterDelay/internalCounter [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_14  (
    .CLK(\RSTfilter/filterDelay/filteredTick ),
    .I(Result[14]),
    .SET(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/filterDelay/internalCounter [14]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_0  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<0>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_3  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<3>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_1  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<1>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_2  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<2>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_4  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .I(\Result<4>2 ),
    .SET(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/filterDelay/internalCounter [4]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_5  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<5>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_8  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .I(\Result<8>1 ),
    .SET(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/filterDelay/internalCounter [8]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_6  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .I(\Result<6>1 ),
    .SET(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/filterDelay/internalCounter [6]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_7  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<7>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [7]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_9  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .I(\Result<9>1 ),
    .SET(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/filterDelay/internalCounter [9]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_10  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<10>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [10]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_13  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<13>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [13]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_11  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<11>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [11]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_12  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .RST(\CLICKfilter/runCounter_inv ),
    .I(\Result<12>1 ),
    .O(\CLICKfilter/filterDelay/internalCounter [12]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_14  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .I(\Result<14>1 ),
    .SET(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/filterDelay/internalCounter [14]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_15  (
    .CLK(\CLICKfilter/filterDelay/filteredTick ),
    .I(\Result<15>1 ),
    .SET(\CLICKfilter/runCounter_inv ),
    .O(\CLICKfilter/filterDelay/internalCounter [15]),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_0  (
    .CLK(\CLICKfilter/currentState_8 ),
    .RST(\RSTfilter/currentState_7 ),
    .I(\Result<0>1 ),
    .O(\core/counter/internalCounter [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_1  (
    .CLK(\CLICKfilter/currentState_8 ),
    .RST(\RSTfilter/currentState_7 ),
    .I(\Result<1>1 ),
    .O(\core/counter/internalCounter [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_2  (
    .CLK(\CLICKfilter/currentState_8 ),
    .RST(\RSTfilter/currentState_7 ),
    .I(Result[2]),
    .O(\core/counter/internalCounter [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_3  (
    .CLK(\CLICKfilter/currentState_8 ),
    .RST(\RSTfilter/currentState_7 ),
    .I(Result[3]),
    .O(\core/counter/internalCounter [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_4  (
    .CLK(\CLICKfilter/currentState_8 ),
    .RST(\RSTfilter/currentState_7 ),
    .I(Result[4]),
    .O(\core/counter/internalCounter [4]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_5  (
    .CLK(\CLICKfilter/currentState_8 ),
    .RST(\RSTfilter/currentState_7 ),
    .I(Result[5]),
    .O(\core/counter/internalCounter [5]),
    .CE(VCC),
    .SET(GND)
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_195 ),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [0])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<0>  (
    .I0(N0),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_195 ),
    .O(\Result<0>3 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<1>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [1])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<1>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\Result<1>3 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<2>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [2])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<2>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\Result<2>2 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [3])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<3>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\Result<3>2 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<4>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [4])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<4>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\Result<4>2 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<5>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [5])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<5>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\Result<5>2 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<6>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [6])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<6>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(\Result<6>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [7])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<7>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(\Result<7>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<8>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [8])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<8>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(\Result<8>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<9>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [9])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<9>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(\Result<9>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<10>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [10])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<10>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(\Result<10>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [11])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<11>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(\Result<11>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<12>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [12])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<12>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(\Result<12>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<13>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [13])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<13>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(\Result<13>1 )
  );
  X_MUX2   \CLICKfilter/filterDelay/Mcount_internalCounter_cy<14>  (
    .IB(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .IA(N0),
    .SEL(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [14])
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<14>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(\Result<14>1 )
  );
  X_XOR2   \CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .I0(\CLICKfilter/filterDelay/Mcount_internalCounter_cy [14]),
    .I1(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15]),
    .O(\Result<15>1 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<0>  (
    .IB(N0),
    .IA(N1),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_196 ),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [0])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<0>  (
    .I0(N0),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_196 ),
    .O(\Result<0>2 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<1>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [1])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<1>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [0]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1]),
    .O(\Result<1>2 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<2>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [2])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<2>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [1]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2]),
    .O(\Result<2>1 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [3])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<3>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [2]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3]),
    .O(\Result<3>1 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<4>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [4])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<4>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [3]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4]),
    .O(\Result<4>1 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<5>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [5])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<5>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [4]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5]),
    .O(\Result<5>1 )
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<6>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [6])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<6>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [5]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6]),
    .O(Result[6])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [7])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<7>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [6]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7]),
    .O(Result[7])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<8>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [8])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<8>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [7]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8]),
    .O(Result[8])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<9>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [9])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<9>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [8]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9]),
    .O(Result[9])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<10>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [10])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<10>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [9]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10]),
    .O(Result[10])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [11])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<11>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [10]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11]),
    .O(Result[11])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<12>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [12])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<12>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [11]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12]),
    .O(Result[12])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<13>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [13])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<13>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [12]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13]),
    .O(Result[13])
  );
  X_MUX2   \RSTfilter/filterDelay/Mcount_internalCounter_cy<14>  (
    .IB(\RSTfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .IA(N0),
    .SEL(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy [14])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<14>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [13]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14]),
    .O(Result[14])
  );
  X_XOR2   \RSTfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .I0(\RSTfilter/filterDelay/Mcount_internalCounter_cy [14]),
    .I1(\RSTfilter/filterDelay/Mcount_internalCounter_lut [15]),
    .O(Result[15])
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \RSTfilter/filterDelay/filteredTick1  (
    .ADR0(\divideClock/clk_reg_6 ),
    .ADR1(\RSTfilter/sigChanged ),
    .O(\RSTfilter/filterDelay/filteredTick )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \CLICKfilter/filterDelay/filteredTick1  (
    .ADR0(\divideClock/clk_reg_6 ),
    .ADR1(\CLICKfilter/sigChanged ),
    .O(\CLICKfilter/filterDelay/filteredTick )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \an<0>1  (
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR1(\LED/currentNumber/counter [1]),
    .O(an_0_OBUF_18)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \an<2>1  (
    .ADR0(\LED/currentNumber/counter [1]),
    .ADR1(\LED/currentNumber/counter [0]),
    .O(an_2_OBUF_16)
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \RSTfilter/runCounter_inv1  (
    .ADR0(btnC_IBUF_4),
    .ADR1(\RSTfilter/currentState_7 ),
    .O(\RSTfilter/runCounter_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h9 ))
  \CLICKfilter/runCounter_inv1  (
    .ADR0(btnU_IBUF_5),
    .ADR1(\CLICKfilter/currentState_8 ),
    .O(\CLICKfilter/runCounter_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \LED/selectOutput/Mram_y111  (
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR1(\LED/currentNumber/counter [1]),
    .O(an_1_OBUF_17)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \LED/currentNumber/Mcount_counter_xor<1>11  (
    .ADR0(\LED/currentNumber/counter [1]),
    .ADR1(\LED/currentNumber/counter [0]),
    .O(Result[1])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \core/counter/Mcount_internalCounter_xor<1>11  (
    .ADR0(\core/counter/internalCounter [1]),
    .ADR1(\core/counter/internalCounter [0]),
    .O(\Result<1>1 )
  );
  X_LUT4 #(
    .INIT ( 16'hE228 ))
  \LED/DC7/Mram_y41  (
    .ADR0(\LED/selectedDigit [2]),
    .ADR1(\LED/selectedDigit [0]),
    .ADR2(\LED/selectedDigit [1]),
    .ADR3(\LED/selectedDigit [3]),
    .O(seg_1_OBUF_14)
  );
  X_LUT4 #(
    .INIT ( 16'h0941 ))
  \LED/DC7/Mram_y31  (
    .ADR0(\LED/selectedDigit [1]),
    .ADR1(\LED/selectedDigit [2]),
    .ADR2(\LED/selectedDigit [3]),
    .ADR3(\LED/selectedDigit [0]),
    .O(seg_6_OBUF_9)
  );
  X_LUT4 #(
    .INIT ( 16'h02BA ))
  \LED/DC7/Mram_y21  (
    .ADR0(\LED/selectedDigit [0]),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [3]),
    .O(seg_4_OBUF_11)
  );
  X_LUT4 #(
    .INIT ( 16'h6054 ))
  \LED/DC7/Mram_y51  (
    .ADR0(\LED/selectedDigit [3]),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [0]),
    .ADR3(\LED/selectedDigit [2]),
    .O(seg_5_OBUF_10)
  );
  X_LUT4 #(
    .INIT ( 16'hD004 ))
  \LED/DC7/Mram_y111  (
    .ADR0(\LED/selectedDigit [0]),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [3]),
    .O(seg_2_OBUF_13)
  );
  X_LUT4 #(
    .INIT ( 16'h8294 ))
  \LED/DC7/Mram_y11  (
    .ADR0(\LED/selectedDigit [1]),
    .ADR1(\LED/selectedDigit [2]),
    .ADR2(\LED/selectedDigit [0]),
    .ADR3(\LED/selectedDigit [3]),
    .O(seg_3_OBUF_12)
  );
  X_LUT4 #(
    .INIT ( 16'h2812 ))
  \LED/DC7/Mram_y61  (
    .ADR0(\LED/selectedDigit [0]),
    .ADR1(\LED/selectedDigit [1]),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [3]),
    .O(seg_0_OBUF_15)
  );
  X_LUT6 #(
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
  X_LUT6 #(
    .INIT ( 64'h7E9321E688D72712 ))
  \core/bit_decipher/Mmux_Y11  (
    .ADR0(\core/counter/internalCounter [1]),
    .ADR1(\core/counter/internalCounter [2]),
    .ADR2(\core/counter/internalCounter [3]),
    .ADR3(\core/counter/internalCounter [4]),
    .ADR4(\core/counter/internalCounter [5]),
    .ADR5(\core/counter/internalCounter [0]),
    .O(led_0_OBUF_25)
  );
  X_LUT6 #(
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
  X_LUT3 #(
    .INIT ( 8'h6A ))
  \core/counter/Mcount_internalCounter_xor<2>11  (
    .ADR0(\core/counter/internalCounter [2]),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\core/counter/internalCounter [1]),
    .O(Result[2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \core/counter/Mcount_internalCounter_xor<3>11  (
    .ADR0(\core/counter/internalCounter [3]),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [2]),
    .O(Result[3])
  );
  X_LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \core/counter/Mcount_internalCounter_xor<4>11  (
    .ADR0(\core/counter/internalCounter [4]),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [3]),
    .O(Result[4])
  );
  X_LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \core/counter/Mcount_internalCounter_xor<5>11  (
    .ADR0(\core/counter/internalCounter [5]),
    .ADR1(\core/counter/internalCounter [0]),
    .ADR2(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [3]),
    .ADR5(\core/counter/internalCounter [4]),
    .O(Result[5])
  );
  X_LUT6 #(
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
    .INIT ( 64'h0000000000010000 ))
  \RSTfilter/filterDelay/countedNeededValue<15>2  (
    .ADR0(\RSTfilter/filterDelay/internalCounter [6]),
    .ADR1(\RSTfilter/filterDelay/internalCounter [7]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [8]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [9]),
    .ADR4(\RSTfilter/filterDelay/countedNeededValue [15]),
    .ADR5(\RSTfilter/filterDelay/internalCounter [10]),
    .O(\RSTfilter/filterDelay/countedNeededValue<15>1_176 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \RSTfilter/filterDelay/countedNeededValue<15>3  (
    .ADR0(\RSTfilter/filterDelay/internalCounter [11]),
    .ADR1(\RSTfilter/filterDelay/internalCounter [12]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [13]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [14]),
    .ADR4(\RSTfilter/filterDelay/countedNeededValue<15>1_176 ),
    .ADR5(\RSTfilter/filterDelay/internalCounter [15]),
    .O(\RSTfilter/sigChanged )
  );
  X_LUT6 #(
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
    .INIT ( 64'h0000000000010000 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>2  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [6]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [7]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [8]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [9]),
    .ADR4(\CLICKfilter/filterDelay/countedNeededValue [15]),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [10]),
    .O(\CLICKfilter/filterDelay/countedNeededValue<15>1_178 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>3  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [11]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [12]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [13]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [14]),
    .ADR4(\CLICKfilter/filterDelay/countedNeededValue<15>1_178 ),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [15]),
    .O(\CLICKfilter/sigChanged )
  );
  X_LUT3 #(
    .INIT ( 8'hB9 ))
  \LED/selectInput/y<1>_SW0  (
    .ADR0(\core/counter/internalCounter [4]),
    .ADR1(\core/counter/internalCounter [2]),
    .ADR2(\core/counter/internalCounter [3]),
    .O(N6)
  );
  X_LUT6 #(
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
  X_LUT5 #(
    .INIT ( 32'h77225D28 ))
  \LED/selectInput/y<0>1  (
    .ADR0(\LED/currentNumber/counter [1]),
    .ADR1(\core/counter/internalCounter [4]),
    .ADR2(\core/counter/internalCounter [3]),
    .ADR3(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [5]),
    .O(\LED/selectInput/y [0])
  );
  X_LUT4 #(
    .INIT ( 16'h7520 ))
  \LED/selectInput/y<0>2  (
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR1(\LED/currentNumber/counter [1]),
    .ADR2(\core/counter/internalCounter [0]),
    .ADR3(\LED/selectInput/y [0]),
    .O(\LED/selectedDigit [0])
  );
  X_BUF   btnC_IBUF (
    .I(NlwRenamedSig_IO_btnC),
    .O(btnC_IBUF_4)
  );
  X_BUF   btnU_IBUF (
    .I(NlwRenamedSig_IO_btnU),
    .O(btnU_IBUF_5)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [0]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_195 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt  (
    .ADR0(\RSTfilter/filterDelay/internalCounter [0]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_cy<0>_rt_196 ),
    .ADR1(GND)
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [1]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [2]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [3]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [4]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [5]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [6]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [7]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [8]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [9]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [10]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [11]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [12]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [13]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [14]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  X_INV   \CLICKfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .I(\CLICKfilter/filterDelay/internalCounter [15]),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [1]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [2]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [3]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [4]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [5]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [6]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [7]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [8]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [9]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [10]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [11]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [12]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [13]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [14]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  X_INV   \RSTfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .I(\RSTfilter/filterDelay/internalCounter [15]),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  X_INV   \divideClock/clk_reg_INV_1_o1_INV_0  (
    .I(\divideClock/clk_reg_6 ),
    .O(\divideClock/clk_reg_INV_1_o )
  );
  X_INV   \CLICKfilter/currentState_INV_37_o1_INV_0  (
    .I(\CLICKfilter/currentState_8 ),
    .O(\CLICKfilter/currentState_INV_37_o )
  );
  X_INV   \RSTfilter/currentState_INV_37_o1_INV_0  (
    .I(\RSTfilter/currentState_7 ),
    .O(\RSTfilter/currentState_INV_37_o )
  );
  X_INV   \LED/currentNumber/Mcount_counter_xor<0>11_INV_0  (
    .I(\LED/currentNumber/counter [0]),
    .O(Result[0])
  );
  X_INV   \core/counter/Mcount_internalCounter_xor<0>11_INV_0  (
    .I(\core/counter/internalCounter [0]),
    .O(\Result<0>1 )
  );
  X_IPAD #(
    .LOC ( "E3" ))
  clk_194 (
    .PAD(clk)
  );
  X_IPAD #(
    .LOC ( "E16" ))
  btnC_195 (
    .PAD(NlwRenamedSig_IO_btnC)
  );
  X_IPAD #(
    .LOC ( "F15" ))
  btnU_196 (
    .PAD(NlwRenamedSig_IO_btnU)
  );
  X_OPAD #(
    .LOC ( "L6" ))
  \seg<6>  (
    .PAD(seg[6])
  );
  X_OPAD #(
    .LOC ( "M2" ))
  \seg<5>  (
    .PAD(seg[5])
  );
  X_OPAD #(
    .LOC ( "K3" ))
  \seg<4>  (
    .PAD(seg[4])
  );
  X_OPAD #(
    .LOC ( "L4" ))
  \seg<3>  (
    .PAD(seg[3])
  );
  X_OPAD #(
    .LOC ( "L5" ))
  \seg<2>  (
    .PAD(seg[2])
  );
  X_OPAD #(
    .LOC ( "N1" ))
  \seg<1>  (
    .PAD(seg[1])
  );
  X_OPAD #(
    .LOC ( "L3" ))
  \seg<0>  (
    .PAD(seg[0])
  );
  X_OPAD #(
    .LOC ( "T8" ))
  \led<0>  (
    .PAD(led[0])
  );
  X_OPAD #(
    .LOC ( "M3" ))
  \an<2>  (
    .PAD(an[2])
  );
  X_OPAD #(
    .LOC ( "M6" ))
  \an<1>  (
    .PAD(an[1])
  );
  X_OPAD #(
    .LOC ( "N6" ))
  \an<0>  (
    .PAD(an[0])
  );
  X_PD   btnC_PULLDOWN (
    .O(NlwRenamedSig_IO_btnC)
  );
  X_PD   btnU_PULLDOWN (
    .O(NlwRenamedSig_IO_btnU)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   seg_6_OBUF (
    .I(seg_6_OBUF_9),
    .O(seg[6])
  );
  X_OBUF   seg_5_OBUF (
    .I(seg_5_OBUF_10),
    .O(seg[5])
  );
  X_OBUF   seg_4_OBUF (
    .I(seg_4_OBUF_11),
    .O(seg[4])
  );
  X_OBUF   seg_3_OBUF (
    .I(seg_3_OBUF_12),
    .O(seg[3])
  );
  X_OBUF   seg_2_OBUF (
    .I(seg_2_OBUF_13),
    .O(seg[2])
  );
  X_OBUF   seg_1_OBUF (
    .I(seg_1_OBUF_14),
    .O(seg[1])
  );
  X_OBUF   seg_0_OBUF (
    .I(seg_0_OBUF_15),
    .O(seg[0])
  );
  X_OBUF   led_0_OBUF (
    .I(led_0_OBUF_25),
    .O(led[0])
  );
  X_OBUF   an_2_OBUF (
    .I(an_2_OBUF_16),
    .O(an[2])
  );
  X_OBUF   an_1_OBUF (
    .I(an_1_OBUF_17),
    .O(an[1])
  );
  X_OBUF   an_0_OBUF (
    .I(an_0_OBUF_18),
    .O(an[0])
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

