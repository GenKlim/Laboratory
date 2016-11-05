////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TOP_timesim.v
// /___/   /\     Timestamp: Mon Oct 31 11:48:02 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf TOP.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim TOP.ncd TOP_timesim.v 
// Device	: 7a100tcsg324-3 (PRODUCTION 1.10 2013-10-13)
// Input file	: TOP.ncd
// Output file	: C:\Users\admin\Desktop\MAKSIMOV_LR2_4\netgen\par\TOP_timesim.v
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
  wire seg_3_OBUF_578;
  wire seg_0_OBUF_0;
  wire \LED/selectInput/y<0>_0 ;
  wire seg_6_OBUF_593;
  wire seg_4_OBUF_0;
  wire an_0_OBUF_595;
  wire an_1_OBUF_597;
  wire an_2_OBUF_0;
  wire \LED/currentNumber/clk ;
  wire \CLICKfilter/currentState_600 ;
  wire \RSTfilter/currentState_601 ;
  wire \CLICKfilter/filterDelay/filteredTick ;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy[3] ;
  wire \CLICKfilter/runCounter_inv ;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy[7] ;
  wire \CLICKfilter/filterDelay/Mcount_internalCounter_cy[11] ;
  wire \RSTfilter/filterDelay/filteredTick ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy[3] ;
  wire \RSTfilter/runCounter_inv_0 ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy[7] ;
  wire \RSTfilter/filterDelay/Mcount_internalCounter_cy[11] ;
  wire \LED/currentNumber/clockDivider/filteredTick_0 ;
  wire \LED/currentNumber/clockDivider/Mcount_internalCounter_cy[3] ;
  wire \LED/currentNumber/clockDivider/Mcount_internalCounter_cy[7] ;
  wire \LED/currentNumber/clockDivider/Mcount_internalCounter_cy[11] ;
  wire led_0_OBUF_664;
  wire \clk_BUFGP/IBUFG_665 ;
  wire btnC_IBUF_666;
  wire btnU_IBUF_667;
  wire seg_1_OBUF_668;
  wire seg_2_OBUF_0;
  wire seg_5_OBUF_670;
  wire clk_BUFGP;
  wire \CLICKfilter/sigChanged ;
  wire \RSTfilter/sigChanged ;
  wire \divideClock/clk_reg_674 ;
  wire \CLICKfilter/filterDelay/countedNeededValue<15>1_675 ;
  wire \RSTfilter/filterDelay/countedNeededValue<15>1_676 ;
  wire \LED/currentNumber/clockDivider/countedNeededValue<15>1_677 ;
  wire N7;
  wire \LED/currentNumber/clr ;
  wire \CLICKfilter/filterDelay/internalCounter<0>_rt_18 ;
  wire \Result<3>3 ;
  wire \Result<1>4 ;
  wire \Result<0>4 ;
  wire \Result<2>3 ;
  wire \RSTfilter/filterDelay/internalCounter<0>_rt_127 ;
  wire \Result<3>2 ;
  wire \Result<1>3 ;
  wire \Result<0>3 ;
  wire \Result<2>2 ;
  wire \Result<14>2 ;
  wire \Result<12>2 ;
  wire \Result<13>2 ;
  wire \Result<15>2 ;
  wire \Result<11>1 ;
  wire \Result<10>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<14>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<15>1 ;
  wire \Result<5>2 ;
  wire \Result<7>1 ;
  wire \Result<6>1 ;
  wire \Result<4>2 ;
  wire \LED/currentNumber/clockDivider/internalCounter<0>_rt_230 ;
  wire \divideClock/clk_reg_INV_1_o ;
  wire \CLICKfilter/currentState_INV_37_o ;
  wire \RSTfilter/runCounter_inv ;
  wire \RSTfilter/currentState_INV_37_o ;
  wire \LED/currentNumber/clockDivider/filteredTick ;
  wire \Result<0>2 ;
  wire \Result<11>2 ;
  wire \Result<10>2 ;
  wire \Result<8>2 ;
  wire \Result<9>2 ;
  wire \Result<5>3 ;
  wire \Result<7>2 ;
  wire \Result<6>2 ;
  wire \Result<4>3 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \core/counter/internalCounter<4>_pack_1 ;
  wire \Result<1>1 ;
  wire \Result<0>1 ;
  wire seg_4_OBUF_538;
  wire \LED/selectedDigit<0>_pack_5 ;
  wire seg_0_OBUF_527;
  wire seg_2_OBUF_521;
  wire an_2_OBUF_561;
  wire \core/counter/internalCounter<2>_pack_10 ;
  wire \Result<1>2 ;
  wire \Result<2>1 ;
  wire \Result<5>1 ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_3/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_2/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_1/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_0/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_3/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_2/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_1/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_0/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_15/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_14/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_13/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_12/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_11/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_10/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_9/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_8/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_15/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_14/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_13/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_12/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_7/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_6/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_5/CLK ;
  wire \NlwBufferSignal_RSTfilter/filterDelay/internalCounter_4/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_15/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_14/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_13/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_12/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_7/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_6/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_5/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_4/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_11/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_10/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_9/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_8/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_3/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_2/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_1/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_0/CLK ;
  wire \NlwBufferSignal_an_0_OBUF/I ;
  wire \NlwBufferSignal_divideClock/clk_reg/CLK ;
  wire \NlwBufferSignal_seg_3_OBUF/I ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_CLICKfilter/currentState/CLK ;
  wire \NlwBufferSignal_seg_1_OBUF/I ;
  wire \NlwBufferSignal_seg_5_OBUF/I ;
  wire \NlwBufferSignal_seg_2_OBUF/I ;
  wire \NlwBufferSignal_an_1_OBUF/I ;
  wire \NlwBufferSignal_led_0_OBUF/I ;
  wire \NlwBufferSignal_seg_0_OBUF/I ;
  wire \NlwBufferSignal_seg_4_OBUF/I ;
  wire \NlwBufferSignal_an_2_OBUF/I ;
  wire \NlwBufferSignal_seg_6_OBUF/I ;
  wire \NlwBufferSignal_RSTfilter/currentState/CLK ;
  wire \NlwBufferSignal_core/counter/internalCounter_0/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_11/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_10/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_9/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_8/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_7/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_6/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_5/CLK ;
  wire \NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_4/CLK ;
  wire \NlwBufferSignal_core/counter/internalCounter_3/CLK ;
  wire \NlwBufferSignal_core/counter/internalCounter_4/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/counter_1/CLK ;
  wire \NlwBufferSignal_LED/currentNumber/counter_0/CLK ;
  wire \NlwBufferSignal_core/counter/internalCounter_5/CLK ;
  wire \NlwBufferSignal_core/counter/internalCounter_1/CLK ;
  wire \NlwBufferSignal_core/counter/internalCounter_2/CLK ;
  wire VCC;
  wire GND;
  wire \NLW_N0_37.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp7.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_36.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_35.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_inv_3.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_21.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp7.CYINITVCC.1_O_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_20.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_19.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_inv_2.A5LUT_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_48.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_47.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_46.A5LUT_O_UNCONNECTED ;
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
  wire \NLW_N0_25.D5LUT_O_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_24.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_23.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_22.A5LUT_O_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_16.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_15.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_ProtoComp11.CYINITVCC_O_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_inv.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_45.D5LUT_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_44.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_43.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_42.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_41.D5LUT_O_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_40.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_39.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_38.A5LUT_O_UNCONNECTED ;
  wire [3 : 0] \LED/selectedDigit ;
  wire [1 : 0] \LED/currentNumber/counter ;
  wire [5 : 0] \core/counter/internalCounter ;
  wire [15 : 0] \CLICKfilter/filterDelay/internalCounter ;
  wire [15 : 0] \RSTfilter/filterDelay/internalCounter ;
  wire [15 : 0] \LED/currentNumber/clockDivider/internalCounter ;
  wire [15 : 15] \RSTfilter/filterDelay/countedNeededValue ;
  wire [15 : 15] \CLICKfilter/filterDelay/countedNeededValue ;
  wire [15 : 15] \LED/currentNumber/clockDivider/countedNeededValue ;
  wire [15 : 1] \CLICKfilter/filterDelay/Mcount_internalCounter_lut ;
  wire [15 : 1] \RSTfilter/filterDelay/Mcount_internalCounter_lut ;
  wire [15 : 1] \LED/currentNumber/clockDivider/Mcount_internalCounter_lut ;
  wire [15 : 0] Result;
  wire [0 : 0] \LED/selectInput/y ;
  assign
    NlwRenamedSig_IO_btnC = btnC,
    NlwRenamedSig_IO_btnU = btnU;
  initial $sdf_annotate("netgen/par/top_timesim.sdf");
  X_FF #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_3/CLK ),
    .I(\Result<3>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [3]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_37.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_37.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X76Y94" ))
  \ProtoComp7.CYINITVCC  (
    .O(\NLW_ProtoComp7.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_2/CLK ),
    .I(\Result<2>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [2]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X76Y94" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\CLICKfilter/filterDelay/Mcount_internalCounter_cy[3] , \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\Result<3>3 , \Result<2>3 , \Result<1>4 , \Result<0>4 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [3], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [2], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1], \CLICKfilter/filterDelay/internalCounter<0>_rt_18 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_36.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_36.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_1/CLK ),
    .I(\Result<1>4 ),
    .O(\CLICKfilter/filterDelay/internalCounter [1]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_35.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_35.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_0/CLK ),
    .I(\Result<0>4 ),
    .O(\CLICKfilter/filterDelay/internalCounter [0]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \CLICKfilter/filterDelay/internalCounter<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/internalCounter<0>_rt_18 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y94" ),
    .INIT ( 32'h00000000 ))
  \N0_inv_3.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_inv_3.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_3/CLK ),
    .I(\Result<3>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [3]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y101" ),
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
    .LOC ( "SLICE_X56Y101" ))
  \ProtoComp7.CYINITVCC.1  (
    .O(\NLW_ProtoComp7.CYINITVCC.1_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_2/CLK ),
    .I(\Result<2>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [2]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X56Y101" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\RSTfilter/filterDelay/Mcount_internalCounter_cy[3] , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED 
}),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\Result<3>2 , \Result<2>2 , \Result<1>3 , \Result<0>3 }),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [3], \RSTfilter/filterDelay/Mcount_internalCounter_lut [2], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [1], \RSTfilter/filterDelay/internalCounter<0>_rt_127 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y101" ),
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
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_1/CLK ),
    .I(\Result<1>3 ),
    .O(\RSTfilter/filterDelay/internalCounter [1]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y101" ),
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
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_0/CLK ),
    .I(\Result<0>3 ),
    .O(\RSTfilter/filterDelay/internalCounter [0]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \RSTfilter/filterDelay/internalCounter<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/internalCounter<0>_rt_127 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y101" ),
    .INIT ( 32'h00000000 ))
  \N0_inv_2.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_inv_2.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_15/CLK ),
    .I(\Result<15>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [15]),
    .SET(\CLICKfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [15]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_14/CLK ),
    .I(\Result<14>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [14]),
    .SET(\CLICKfilter/runCounter_inv ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X76Y97" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({\Result<15>2 , \Result<14>2 , \Result<13>2 , \Result<12>2 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [15], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [14], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [14]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_48.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_48.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_13/CLK ),
    .I(\Result<13>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [13]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [13]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_47.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_47.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_12/CLK ),
    .I(\Result<12>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [12]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y97" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_46.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_46.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_11/CLK ),
    .I(\Result<11>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [11]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y103" ),
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
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_10/CLK ),
    .I(\Result<10>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [10]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X56Y103" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\RSTfilter/filterDelay/Mcount_internalCounter_cy[11] , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\Result<11>1 , \Result<10>1 , \Result<9>1 , \Result<8>1 }),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [11], \RSTfilter/filterDelay/Mcount_internalCounter_lut [10], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [9], \RSTfilter/filterDelay/Mcount_internalCounter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [10]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y103" ),
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
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_9/CLK ),
    .I(\Result<9>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [9]),
    .SET(\RSTfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [9]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y103" ),
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
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_8/CLK ),
    .I(\Result<8>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [8]),
    .SET(\RSTfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y103" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y103" ),
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
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_15/CLK ),
    .I(\Result<15>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [15]),
    .SET(\RSTfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\RSTfilter/filterDelay/internalCounter [15]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_14/CLK ),
    .I(\Result<14>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [14]),
    .SET(\RSTfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X56Y104" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_xor<15>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_RSTfilter/filterDelay/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({\Result<15>1 , \Result<14>1 , \Result<13>1 , \Result<12>1 }),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [15], \RSTfilter/filterDelay/Mcount_internalCounter_lut [14], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [13], \RSTfilter/filterDelay/Mcount_internalCounter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [14]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y104" ),
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
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_13/CLK ),
    .I(\Result<13>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [13]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [13]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y104" ),
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
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_12/CLK ),
    .I(\Result<12>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [12]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y104" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y104" ),
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
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_7/CLK ),
    .I(\Result<7>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [7]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y102" ),
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
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_6/CLK ),
    .I(\Result<6>1 ),
    .O(\RSTfilter/filterDelay/internalCounter [6]),
    .SET(\RSTfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X56Y102" ))
  \RSTfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .CI(\RSTfilter/filterDelay/Mcount_internalCounter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\RSTfilter/filterDelay/Mcount_internalCounter_cy[7] , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED , \NLW_RSTfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED 
}),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\Result<7>1 , \Result<6>1 , \Result<5>2 , \Result<4>2 }),
    .S({\RSTfilter/filterDelay/Mcount_internalCounter_lut [7], \RSTfilter/filterDelay/Mcount_internalCounter_lut [6], 
\RSTfilter/filterDelay/Mcount_internalCounter_lut [5], \RSTfilter/filterDelay/Mcount_internalCounter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y102" ),
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
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 1'b0 ))
  \RSTfilter/filterDelay/internalCounter_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_5/CLK ),
    .I(\Result<5>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [5]),
    .RST(\RSTfilter/runCounter_inv_0 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\RSTfilter/filterDelay/internalCounter [5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y102" ),
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
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 1'b1 ))
  \RSTfilter/filterDelay/internalCounter_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_4/CLK ),
    .I(\Result<4>2 ),
    .O(\RSTfilter/filterDelay/internalCounter [4]),
    .SET(\RSTfilter/runCounter_inv_0 ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X56Y102" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \RSTfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\RSTfilter/filterDelay/internalCounter [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X56Y102" ),
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
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_15/CLK ),
    .I(Result[15]),
    .O(\LED/currentNumber/clockDivider/internalCounter [15]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\LED/currentNumber/clockDivider/internalCounter [15]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [15])
  );
  X_FF #(
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_14/CLK ),
    .I(Result[14]),
    .O(\LED/currentNumber/clockDivider/internalCounter [14]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X84Y96" ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>  (
    .CI(\LED/currentNumber/clockDivider/Mcount_internalCounter_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[3]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[2]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[1]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [15], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [14], 
\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [13], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [14]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y96" ),
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
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_13/CLK ),
    .I(Result[13]),
    .O(\LED/currentNumber/clockDivider/internalCounter [13]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [13]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y96" ),
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
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_12/CLK ),
    .I(Result[12]),
    .O(\LED/currentNumber/clockDivider/internalCounter [12]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_14.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_7/CLK ),
    .I(Result[7]),
    .O(\LED/currentNumber/clockDivider/internalCounter [7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y94" ),
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
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_6/CLK ),
    .I(Result[6]),
    .O(\LED/currentNumber/clockDivider/internalCounter [6]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X84Y94" ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>  (
    .CI(\LED/currentNumber/clockDivider/Mcount_internalCounter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\LED/currentNumber/clockDivider/Mcount_internalCounter_cy[7] , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [7], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [6], 
\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [5], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y94" ),
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
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_5/CLK ),
    .I(Result[5]),
    .O(\LED/currentNumber/clockDivider/internalCounter [5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y94" ),
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
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_4/CLK ),
    .I(Result[4]),
    .O(\LED/currentNumber/clockDivider/internalCounter [4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y94" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y94" ),
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
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_11/CLK ),
    .I(Result[11]),
    .O(\LED/currentNumber/clockDivider/internalCounter [11]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y95" ),
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
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_10/CLK ),
    .I(Result[10]),
    .O(\LED/currentNumber/clockDivider/internalCounter [10]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X84Y95" ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>  (
    .CI(\LED/currentNumber/clockDivider/Mcount_internalCounter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\LED/currentNumber/clockDivider/Mcount_internalCounter_cy[11] , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [11], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [10], 
\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [9], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [10]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y95" ),
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
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_9/CLK ),
    .I(Result[9]),
    .O(\LED/currentNumber/clockDivider/internalCounter [9]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [9]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y95" ),
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
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_8/CLK ),
    .I(Result[8]),
    .O(\LED/currentNumber/clockDivider/internalCounter [8]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y95" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y95" ),
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
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_3/CLK ),
    .I(Result[3]),
    .O(\LED/currentNumber/clockDivider/internalCounter [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y93" ),
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
    .LOC ( "SLICE_X84Y93" ))
  \ProtoComp11.CYINITVCC  (
    .O(\NLW_ProtoComp11.CYINITVCC_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_2/CLK ),
    .I(Result[2]),
    .O(\LED/currentNumber/clockDivider/internalCounter [2]),
    .RST(GND),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X84Y93" ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>  (
    .CI(1'b0),
    .CYINIT(1'b1),
    .CO({\LED/currentNumber/clockDivider/Mcount_internalCounter_cy[3] , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>_CO[2]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>_CO[1]_UNCONNECTED , 
\NLW_LED/currentNumber/clockDivider/Mcount_internalCounter_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [3], \LED/currentNumber/clockDivider/Mcount_internalCounter_lut [2], 
\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [1], \LED/currentNumber/clockDivider/internalCounter<0>_rt_230 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [2]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y93" ),
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
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_1/CLK ),
    .I(Result[1]),
    .O(\LED/currentNumber/clockDivider/internalCounter [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \LED/currentNumber/clockDivider/Mcount_internalCounter_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [1]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/Mcount_internalCounter_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y93" ),
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
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/clockDivider/internalCounter_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_0/CLK ),
    .I(Result[0]),
    .O(\LED/currentNumber/clockDivider/internalCounter [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 64'hF0F0F0F0F0F0F0F0 ))
  \LED/currentNumber/clockDivider/internalCounter<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clockDivider/internalCounter<0>_rt_230 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y93" ),
    .INIT ( 32'h00000000 ))
  \N0_inv.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_inv.A5LUT_O_UNCONNECTED )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y63" ))
  \an<0>  (
    .PAD(an[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y63" ))
  an_0_OBUF (
    .I(\NlwBufferSignal_an_0_OBUF/I ),
    .O(an[0])
  );
  X_FF #(
    .LOC ( "SLICE_X70Y103" ),
    .INIT ( 1'b0 ))
  \divideClock/clk_reg  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_divideClock/clk_reg/CLK ),
    .I(\divideClock/clk_reg_INV_1_o ),
    .O(\divideClock/clk_reg_674 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X70Y103" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \divideClock/clk_reg_INV_1_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\divideClock/clk_reg_674 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\divideClock/clk_reg_INV_1_o )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y89" ))
  \seg<3>  (
    .PAD(seg[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y89" ))
  seg_3_OBUF (
    .I(\NlwBufferSignal_seg_3_OBUF/I ),
    .O(seg[3])
  );
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y31" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_FF #(
    .LOC ( "SLICE_X78Y95" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/currentState  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/currentState/CLK ),
    .I(\CLICKfilter/currentState_INV_37_o ),
    .O(\CLICKfilter/currentState_600 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X78Y95" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \CLICKfilter/currentState_INV_37_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\CLICKfilter/currentState_600 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\CLICKfilter/currentState_INV_37_o )
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y93" ))
  \seg<1>  (
    .PAD(seg[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y93" ))
  seg_1_OBUF (
    .I(\NlwBufferSignal_seg_1_OBUF/I ),
    .O(seg[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y91" ))
  \seg<5>  (
    .PAD(seg[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y91" ))
  seg_5_OBUF (
    .I(\NlwBufferSignal_seg_5_OBUF/I ),
    .O(seg[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y87" ))
  \seg<2>  (
    .PAD(seg[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y87" ))
  seg_2_OBUF (
    .I(\NlwBufferSignal_seg_2_OBUF/I ),
    .O(seg[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y64" ))
  \an<1>  (
    .PAD(an[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y64" ))
  an_1_OBUF (
    .I(\NlwBufferSignal_an_1_OBUF/I ),
    .O(an[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y51" ))
  \led<0>  (
    .PAD(led[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y51" ))
  led_0_OBUF (
    .I(\NlwBufferSignal_led_0_OBUF/I ),
    .O(led[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y95" ))
  \seg<0>  (
    .PAD(seg[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y95" ))
  seg_0_OBUF (
    .I(\NlwBufferSignal_seg_0_OBUF/I ),
    .O(seg[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y96" ))
  \seg<4>  (
    .PAD(seg[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y96" ))
  seg_4_OBUF (
    .I(\NlwBufferSignal_seg_4_OBUF/I ),
    .O(seg[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y102" ),
    .INIT ( 64'h0000000000000001 ))
  \RSTfilter/filterDelay/countedNeededValue<15>1  (
    .ADR1(\RSTfilter/filterDelay/internalCounter [1]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [0]),
    .ADR5(\RSTfilter/filterDelay/internalCounter [2]),
    .ADR0(\RSTfilter/filterDelay/internalCounter [3]),
    .ADR4(\RSTfilter/filterDelay/internalCounter [4]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [5]),
    .O(\RSTfilter/filterDelay/countedNeededValue [15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y102" ),
    .INIT ( 64'h0000000000000100 ))
  \RSTfilter/filterDelay/countedNeededValue<15>2  (
    .ADR5(\RSTfilter/filterDelay/internalCounter [6]),
    .ADR0(\RSTfilter/filterDelay/internalCounter [7]),
    .ADR4(\RSTfilter/filterDelay/internalCounter [8]),
    .ADR1(\RSTfilter/filterDelay/internalCounter [9]),
    .ADR3(\RSTfilter/filterDelay/countedNeededValue [15]),
    .ADR2(\RSTfilter/filterDelay/internalCounter [10]),
    .O(\RSTfilter/filterDelay/countedNeededValue<15>1_676 )
  );
  X_BUF   \RSTfilter/filterDelay/filteredTick/RSTfilter/filterDelay/filteredTick_DMUX_Delay  (
    .I(\RSTfilter/runCounter_inv ),
    .O(\RSTfilter/runCounter_inv_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y104" ),
    .INIT ( 64'h5500550055005500 ))
  \RSTfilter/filterDelay/filteredTick1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\divideClock/clk_reg_674 ),
    .ADR0(\RSTfilter/sigChanged ),
    .ADR5(1'b1),
    .O(\RSTfilter/filterDelay/filteredTick )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X57Y104" ),
    .INIT ( 32'hF0F00F0F ))
  \RSTfilter/runCounter_inv1  (
    .ADR0(1'b1),
    .ADR4(btnC_IBUF_666),
    .ADR2(\RSTfilter/currentState_601 ),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\RSTfilter/runCounter_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X57Y104" ),
    .INIT ( 64'h0000000000000010 ))
  \RSTfilter/filterDelay/countedNeededValue<15>3  (
    .ADR1(\RSTfilter/filterDelay/internalCounter [11]),
    .ADR0(\RSTfilter/filterDelay/internalCounter [12]),
    .ADR5(\RSTfilter/filterDelay/internalCounter [13]),
    .ADR3(\RSTfilter/filterDelay/internalCounter [14]),
    .ADR2(\RSTfilter/filterDelay/countedNeededValue<15>1_676 ),
    .ADR4(\RSTfilter/filterDelay/internalCounter [15]),
    .O(\RSTfilter/sigChanged )
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y126" ))
  clk_183 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y126" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_665 ),
    .I(clk)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y92" ))
  \an<2>  (
    .PAD(an[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y92" ))
  an_2_OBUF (
    .I(\NlwBufferSignal_an_2_OBUF/I ),
    .O(an[2])
  );
  X_PD #(
    .LOC ( "IOB_X0Y127" ))
  \ProtoComp16.PULL  (
    .O(NlwRenamedSig_IO_btnC)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y127" ))
  btnC_186 (
    .PAD(NlwRenamedSig_IO_btnC)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y127" ))
  btnC_IBUF (
    .O(btnC_IBUF_666),
    .I(NlwRenamedSig_IO_btnC)
  );
  X_OPAD #(
    .LOC ( "IOB_X1Y88" ))
  \seg<6>  (
    .PAD(seg[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X1Y88" ))
  seg_6_OBUF (
    .I(\NlwBufferSignal_seg_6_OBUF/I ),
    .O(seg[6])
  );
  X_FF #(
    .LOC ( "SLICE_X59Y104" ),
    .INIT ( 1'b0 ))
  \RSTfilter/currentState  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_RSTfilter/currentState/CLK ),
    .I(\RSTfilter/currentState_INV_37_o ),
    .O(\RSTfilter/currentState_601 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X59Y104" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \RSTfilter/currentState_INV_37_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\RSTfilter/currentState_601 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\RSTfilter/currentState_INV_37_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y95" ),
    .INIT ( 64'h0000000000000001 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>1  (
    .ADR1(\CLICKfilter/filterDelay/internalCounter [1]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [0]),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [2]),
    .ADR0(\CLICKfilter/filterDelay/internalCounter [3]),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [4]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [5]),
    .O(\CLICKfilter/filterDelay/countedNeededValue [15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y95" ),
    .INIT ( 64'h0000000000000100 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>2  (
    .ADR5(\CLICKfilter/filterDelay/internalCounter [6]),
    .ADR0(\CLICKfilter/filterDelay/internalCounter [7]),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [8]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [9]),
    .ADR3(\CLICKfilter/filterDelay/countedNeededValue [15]),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [10]),
    .O(\CLICKfilter/filterDelay/countedNeededValue<15>1_675 )
  );
  X_PD #(
    .LOC ( "IOB_X0Y122" ))
  \ProtoComp16.PULL.1  (
    .O(NlwRenamedSig_IO_btnU)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y122" ))
  btnU_190 (
    .PAD(NlwRenamedSig_IO_btnU)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y122" ))
  btnU_IBUF (
    .O(btnU_IBUF_667),
    .I(NlwRenamedSig_IO_btnU)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X77Y97" ),
    .INIT ( 64'hFFFF00000000FFFF ))
  \CLICKfilter/runCounter_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(btnU_IBUF_667),
    .ADR5(\CLICKfilter/currentState_600 ),
    .O(\CLICKfilter/runCounter_inv )
  );
  X_BUF   \CLICKfilter/filterDelay/filteredTick/CLICKfilter/filterDelay/filteredTick_CMUX_Delay  (
    .I(\LED/currentNumber/clockDivider/filteredTick ),
    .O(\LED/currentNumber/clockDivider/filteredTick_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X78Y96" ),
    .INIT ( 64'h0000FF000000FF00 ))
  \CLICKfilter/filterDelay/filteredTick1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\divideClock/clk_reg_674 ),
    .ADR4(\CLICKfilter/sigChanged ),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/filteredTick )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X78Y96" ),
    .INIT ( 32'h55005500 ))
  \LED/currentNumber/clockDivider/filteredTick1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\LED/currentNumber/clk ),
    .ADR3(\divideClock/clk_reg_674 ),
    .ADR4(1'b1),
    .O(\LED/currentNumber/clockDivider/filteredTick )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X78Y96" ),
    .INIT ( 64'h0000000000000010 ))
  \CLICKfilter/filterDelay/countedNeededValue<15>3  (
    .ADR0(\CLICKfilter/filterDelay/internalCounter [11]),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [12]),
    .ADR3(\CLICKfilter/filterDelay/internalCounter [13]),
    .ADR1(\CLICKfilter/filterDelay/internalCounter [14]),
    .ADR2(\CLICKfilter/filterDelay/countedNeededValue<15>1_675 ),
    .ADR5(\CLICKfilter/filterDelay/internalCounter [15]),
    .O(\CLICKfilter/sigChanged )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X78Y96" ),
    .INIT ( 64'h0000000000000010 ))
  \LED/currentNumber/clockDivider/countedNeededValue<15>3  (
    .ADR3(\LED/currentNumber/clockDivider/internalCounter [11]),
    .ADR1(\LED/currentNumber/clockDivider/internalCounter [12]),
    .ADR5(\LED/currentNumber/clockDivider/internalCounter [13]),
    .ADR0(\LED/currentNumber/clockDivider/internalCounter [14]),
    .ADR2(\LED/currentNumber/clockDivider/countedNeededValue<15>1_677 ),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [15]),
    .O(\LED/currentNumber/clk )
  );
  X_FF #(
    .LOC ( "SLICE_X83Y86" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_core/counter/internalCounter_0/CLK ),
    .I(\Result<0>2 ),
    .O(\core/counter/internalCounter [0]),
    .RST(\RSTfilter/currentState_601 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X83Y86" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \core/counter/Mcount_internalCounter_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\core/counter/internalCounter [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\Result<0>2 )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_11/CLK ),
    .I(\Result<11>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [11]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_45.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_45.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_10/CLK ),
    .I(\Result<10>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [10]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X76Y96" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy[7] ),
    .CYINIT(1'b0),
    .CO({\CLICKfilter/filterDelay/Mcount_internalCounter_cy[11] , \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\Result<11>2 , \Result<10>2 , \Result<9>2 , \Result<8>2 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [11], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [10], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [10]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_44.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_44.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_9/CLK ),
    .I(\Result<9>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [9]),
    .SET(\CLICKfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [9]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_43.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_43.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_8/CLK ),
    .I(\Result<8>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [8]),
    .SET(\CLICKfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y96" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_42.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_42.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_7/CLK ),
    .I(\Result<7>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [7]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_41.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_41.D5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_6/CLK ),
    .I(\Result<6>2 ),
    .O(\CLICKfilter/filterDelay/internalCounter [6]),
    .SET(\CLICKfilter/runCounter_inv ),
    .RST(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X76Y95" ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>  (
    .CI(\CLICKfilter/filterDelay/Mcount_internalCounter_cy[3] ),
    .CYINIT(1'b0),
    .CO({\CLICKfilter/filterDelay/Mcount_internalCounter_cy[7] , \NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[2]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[1]_UNCONNECTED , 
\NLW_CLICKfilter/filterDelay/Mcount_internalCounter_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\Result<7>2 , \Result<6>2 , \Result<5>3 , \Result<4>3 }),
    .S({\CLICKfilter/filterDelay/Mcount_internalCounter_lut [7], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [6], 
\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5], \CLICKfilter/filterDelay/Mcount_internalCounter_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [6]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_40.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_40.C5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 1'b0 ))
  \CLICKfilter/filterDelay/internalCounter_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_5/CLK ),
    .I(\Result<5>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [5]),
    .RST(\CLICKfilter/runCounter_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\CLICKfilter/filterDelay/internalCounter [5]),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_39.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_39.B5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 1'b1 ))
  \CLICKfilter/filterDelay/internalCounter_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_4/CLK ),
    .I(\Result<4>3 ),
    .O(\CLICKfilter/filterDelay/internalCounter [4]),
    .SET(\CLICKfilter/runCounter_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \CLICKfilter/filterDelay/Mcount_internalCounter_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\CLICKfilter/filterDelay/internalCounter [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\CLICKfilter/filterDelay/Mcount_internalCounter_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X76Y95" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_38.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_38.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \core/counter/internalCounter<3>/core/counter/internalCounter<3>_CMUX_Delay  (
    .I(\core/counter/internalCounter<4>_pack_1 ),
    .O(\core/counter/internalCounter [4])
  );
  X_FF #(
    .LOC ( "SLICE_X82Y86" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_core/counter/internalCounter_3/CLK ),
    .I(\Result<3>1 ),
    .O(\core/counter/internalCounter [3]),
    .RST(\RSTfilter/currentState_601 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y86" ),
    .INIT ( 64'h6C6CCCCC6C6CCCCC ))
  \core/counter/Mcount_internalCounter_xor<3>11  (
    .ADR3(1'b1),
    .ADR0(\core/counter/internalCounter [0]),
    .ADR4(\core/counter/internalCounter [1]),
    .ADR1(\core/counter/internalCounter [3]),
    .ADR2(\core/counter/internalCounter [2]),
    .ADR5(1'b1),
    .O(\Result<3>1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X82Y86" ),
    .INIT ( 32'h7F80FF00 ))
  \core/counter/Mcount_internalCounter_xor<4>11  (
    .ADR3(\core/counter/internalCounter [4]),
    .ADR0(\core/counter/internalCounter [0]),
    .ADR4(\core/counter/internalCounter [1]),
    .ADR1(\core/counter/internalCounter [3]),
    .ADR2(\core/counter/internalCounter [2]),
    .O(\Result<4>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X82Y86" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_core/counter/internalCounter_4/CLK ),
    .I(\Result<4>1 ),
    .O(\core/counter/internalCounter<4>_pack_1 ),
    .RST(\RSTfilter/currentState_601 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X86Y86" ),
    .INIT ( 64'hCCF030C0CCF030C0 ))
  \LED/DC7/Mram_y41  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(\LED/selectedDigit [2]),
    .ADR3(\LED/selectedDigit [0]),
    .ADR1(\LED/selectedDigit [1]),
    .ADR4(\LED/selectedDigit [3]),
    .O(seg_1_OBUF_668)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X86Y86" ),
    .INIT ( 64'h002E00E600AA002E ))
  \LED/selectInput/y<3>1  (
    .ADR3(\LED/currentNumber/counter [0]),
    .ADR2(\core/counter/internalCounter [2]),
    .ADR1(\LED/currentNumber/counter [1]),
    .ADR0(\core/counter/internalCounter [5]),
    .ADR4(\core/counter/internalCounter [4]),
    .ADR5(\core/counter/internalCounter [3]),
    .O(\LED/selectedDigit [3])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X85Y94" ),
    .INIT ( 64'h0000000000000001 ))
  \LED/currentNumber/clockDivider/countedNeededValue<15>1  (
    .ADR1(\LED/currentNumber/clockDivider/internalCounter [1]),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [0]),
    .ADR5(\LED/currentNumber/clockDivider/internalCounter [2]),
    .ADR0(\LED/currentNumber/clockDivider/internalCounter [3]),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [4]),
    .ADR3(\LED/currentNumber/clockDivider/internalCounter [5]),
    .O(\LED/currentNumber/clockDivider/countedNeededValue [15])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X85Y94" ),
    .INIT ( 64'h0000000000000100 ))
  \LED/currentNumber/clockDivider/countedNeededValue<15>2  (
    .ADR5(\LED/currentNumber/clockDivider/internalCounter [6]),
    .ADR0(\LED/currentNumber/clockDivider/internalCounter [7]),
    .ADR2(\LED/currentNumber/clockDivider/internalCounter [8]),
    .ADR1(\LED/currentNumber/clockDivider/internalCounter [9]),
    .ADR3(\LED/currentNumber/clockDivider/countedNeededValue [15]),
    .ADR4(\LED/currentNumber/clockDivider/internalCounter [10]),
    .O(\LED/currentNumber/clockDivider/countedNeededValue<15>1_677 )
  );
  X_SFF #(
    .LOC ( "SLICE_X85Y86" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/counter_1/CLK ),
    .I(\Result<1>1 ),
    .O(\LED/currentNumber/counter [1]),
    .SRST(\LED/currentNumber/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X85Y86" ),
    .INIT ( 64'h0F0F00000F0F0000 ))
  \LED/currentNumber/clr1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\LED/currentNumber/counter [1]),
    .ADR2(\LED/currentNumber/counter [0]),
    .ADR5(1'b1),
    .O(\LED/currentNumber/clr )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X85Y86" ),
    .INIT ( 32'h0F0FF0F0 ))
  \LED/currentNumber/Mcount_counter_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\LED/currentNumber/counter [1]),
    .ADR2(\LED/currentNumber/counter [0]),
    .O(\Result<1>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X85Y86" ),
    .INIT ( 1'b0 ))
  \LED/currentNumber/counter_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_LED/currentNumber/counter_0/CLK ),
    .I(\Result<0>1 ),
    .O(\LED/currentNumber/counter [0]),
    .SRST(\LED/currentNumber/clr ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X85Y86" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \LED/currentNumber/Mcount_counter_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\LED/currentNumber/counter [0]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\Result<0>1 )
  );
  X_BUF   \seg_3_OBUF/seg_3_OBUF_DMUX_Delay  (
    .I(seg_0_OBUF_527),
    .O(seg_0_OBUF_0)
  );
  X_BUF   \seg_3_OBUF/seg_3_OBUF_CMUX_Delay  (
    .I(\LED/selectedDigit<0>_pack_5 ),
    .O(\LED/selectedDigit [0])
  );
  X_BUF   \seg_3_OBUF/seg_3_OBUF_BMUX_Delay  (
    .I(seg_4_OBUF_538),
    .O(seg_4_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X87Y87" ),
    .INIT ( 64'h9090868690908686 ))
  \LED/DC7/Mram_y11  (
    .ADR3(1'b1),
    .ADR2(\LED/selectedDigit [1]),
    .ADR1(\LED/selectedDigit [2]),
    .ADR0(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [3]),
    .ADR5(1'b1),
    .O(seg_3_OBUF_578)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X87Y87" ),
    .INIT ( 32'h28280606 ))
  \LED/DC7/Mram_y61  (
    .ADR3(1'b1),
    .ADR2(\LED/selectedDigit [1]),
    .ADR1(\LED/selectedDigit [2]),
    .ADR0(\LED/selectedDigit [0]),
    .ADR4(\LED/selectedDigit [3]),
    .O(seg_0_OBUF_527)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X87Y87" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \LED/selectOutput/y_inv<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/counter [0]),
    .ADR3(\LED/currentNumber/counter [1]),
    .ADR5(1'b1),
    .O(an_0_OBUF_595)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X87Y87" ),
    .INIT ( 32'h00AAF0F0 ))
  \LED/selectInput/y<0>2  (
    .ADR1(1'b1),
    .ADR0(\core/counter/internalCounter [0]),
    .ADR2(\LED/selectInput/y<0>_0 ),
    .ADR4(\LED/currentNumber/counter [0]),
    .ADR3(\LED/currentNumber/counter [1]),
    .O(\LED/selectedDigit<0>_pack_5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X87Y87" ),
    .INIT ( 64'h4411221144112211 ))
  \LED/DC7/Mram_y31  (
    .ADR2(1'b1),
    .ADR1(\LED/selectedDigit [1]),
    .ADR3(\LED/selectedDigit [2]),
    .ADR0(\LED/selectedDigit [3]),
    .ADR4(\LED/selectedDigit [0]),
    .ADR5(1'b1),
    .O(seg_6_OBUF_593)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X87Y87" ),
    .INIT ( 32'h55771100 ))
  \LED/DC7/Mram_y21  (
    .ADR2(1'b1),
    .ADR1(\LED/selectedDigit [1]),
    .ADR3(\LED/selectedDigit [2]),
    .ADR0(\LED/selectedDigit [3]),
    .ADR4(\LED/selectedDigit [0]),
    .O(seg_4_OBUF_538)
  );
  X_BUF   \seg_5_OBUF/seg_5_OBUF_DMUX_Delay  (
    .I(seg_2_OBUF_521),
    .O(seg_2_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X87Y86" ),
    .INIT ( 64'h0C00C0FC0C00C0FC ))
  \LED/DC7/Mram_y51  (
    .ADR0(1'b1),
    .ADR4(\LED/selectedDigit [3]),
    .ADR2(\LED/selectedDigit [1]),
    .ADR1(\LED/selectedDigit [0]),
    .ADR3(\LED/selectedDigit [2]),
    .ADR5(1'b1),
    .O(seg_5_OBUF_670)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X87Y86" ),
    .INIT ( 32'hF3000030 ))
  \LED/DC7/Mram_y111  (
    .ADR0(1'b1),
    .ADR4(\LED/selectedDigit [3]),
    .ADR2(\LED/selectedDigit [1]),
    .ADR1(\LED/selectedDigit [0]),
    .ADR3(\LED/selectedDigit [2]),
    .O(seg_2_OBUF_521)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X87Y86" ),
    .INIT ( 64'h00000000A5FF9100 ))
  \LED/selectInput/y<2>1  (
    .ADR5(\LED/currentNumber/counter [0]),
    .ADR4(\core/counter/internalCounter [4]),
    .ADR0(\core/counter/internalCounter [2]),
    .ADR2(\core/counter/internalCounter [5]),
    .ADR3(\LED/currentNumber/counter [1]),
    .ADR1(\core/counter/internalCounter [3]),
    .O(\LED/selectedDigit [2])
  );
  X_BUF   \N7/N7_CMUX_Delay  (
    .I(\LED/selectInput/y [0]),
    .O(\LED/selectInput/y<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y86" ),
    .INIT ( 64'hFF33CC33FF33CC33 ))
  \LED/selectInput/y<1>_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\core/counter/internalCounter [4]),
    .ADR1(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [3]),
    .ADR5(1'b1),
    .O(N7)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X84Y86" ),
    .INIT ( 32'h0CBC5CAC ))
  \LED/selectInput/y<0>1  (
    .ADR2(\LED/currentNumber/counter [1]),
    .ADR0(\core/counter/internalCounter [5]),
    .ADR3(\core/counter/internalCounter [4]),
    .ADR1(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [3]),
    .O(\LED/selectInput/y [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X84Y86" ),
    .INIT ( 64'h00CCF0AA00CC0FAA ))
  \LED/selectInput/y<1>  (
    .ADR4(\LED/currentNumber/counter [0]),
    .ADR3(\LED/currentNumber/counter [1]),
    .ADR2(\core/counter/internalCounter [5]),
    .ADR5(N7),
    .ADR0(\core/counter/internalCounter [3]),
    .ADR1(\core/counter/internalCounter [1]),
    .O(\LED/selectedDigit [1])
  );
  X_BUF   \an_1_OBUF/an_1_OBUF_DMUX_Delay  (
    .I(an_2_OBUF_561),
    .O(an_2_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X89Y86" ),
    .INIT ( 64'hFFFF5555FFFF5555 ))
  \LED/selectOutput/y_inv<1>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/counter [1]),
    .ADR0(\LED/currentNumber/counter [0]),
    .ADR5(1'b1),
    .O(an_1_OBUF_597)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X89Y86" ),
    .INIT ( 32'hAAAAFFFF ))
  \LED/selectOutput/y_inv<2>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\LED/currentNumber/counter [1]),
    .ADR0(\LED/currentNumber/counter [0]),
    .O(an_2_OBUF_561)
  );
  X_BUF   \core/counter/internalCounter<5>/core/counter/internalCounter<5>_CMUX_Delay  (
    .I(\core/counter/internalCounter<2>_pack_10 ),
    .O(\core/counter/internalCounter [2])
  );
  X_FF #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_core/counter/internalCounter_5/CLK ),
    .I(\Result<5>1 ),
    .O(\core/counter/internalCounter [5]),
    .RST(\RSTfilter/currentState_601 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 64'h78F0F0F0F0F0F0F0 ))
  \core/counter/Mcount_internalCounter_xor<5>11  (
    .ADR3(\core/counter/internalCounter [0]),
    .ADR1(\core/counter/internalCounter [1]),
    .ADR0(\core/counter/internalCounter [2]),
    .ADR2(\core/counter/internalCounter [5]),
    .ADR4(\core/counter/internalCounter [3]),
    .ADR5(\core/counter/internalCounter [4]),
    .O(\Result<5>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_core/counter/internalCounter_1/CLK ),
    .I(\Result<1>2 ),
    .O(\core/counter/internalCounter [1]),
    .RST(\RSTfilter/currentState_601 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \core/counter/Mcount_internalCounter_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [0]),
    .ADR5(1'b1),
    .O(\Result<1>2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 32'h0FF0F0F0 ))
  \core/counter/Mcount_internalCounter_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\core/counter/internalCounter [2]),
    .ADR4(\core/counter/internalCounter [1]),
    .ADR3(\core/counter/internalCounter [0]),
    .O(\Result<2>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 1'b0 ))
  \core/counter/internalCounter_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_core/counter/internalCounter_2/CLK ),
    .I(\Result<2>1 ),
    .O(\core/counter/internalCounter<2>_pack_10 ),
    .RST(\RSTfilter/currentState_601 ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X82Y85" ),
    .INIT ( 64'h4CC1E391A83C75CE ))
  \core/bit_decipher/Mmux_Y11  (
    .ADR3(\core/counter/internalCounter [1]),
    .ADR4(\core/counter/internalCounter [2]),
    .ADR0(\core/counter/internalCounter [3]),
    .ADR5(\core/counter/internalCounter [4]),
    .ADR1(\core/counter/internalCounter [5]),
    .ADR2(\core/counter/internalCounter [0]),
    .O(led_0_OBUF_664)
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_3/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_3/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_2/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_2/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_1/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_0/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_3/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_3/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_2/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_2/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_1/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_0/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_15/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_15/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_14/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_14/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_13/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_13/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_12/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_12/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_11/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_11/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_10/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_10/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_9/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_9/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_8/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_8/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_15/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_15/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_14/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_14/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_13/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_13/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_12/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_12/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_7/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_7/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_6/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_6/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_5/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_5/CLK )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/filterDelay/internalCounter_4/CLK  (
    .I(\RSTfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_RSTfilter/filterDelay/internalCounter_4/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_15/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_15/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_14/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_14/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_13/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_13/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_12/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_12/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_7/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_7/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_6/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_6/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_5/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_5/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_4/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_4/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_11/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_11/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_10/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_10/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_9/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_9/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_8/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_8/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_3/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_3/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_2/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_2/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_1/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/clockDivider/internalCounter_0/CLK  (
    .I(\LED/currentNumber/clockDivider/filteredTick_0 ),
    .O(\NlwBufferSignal_LED/currentNumber/clockDivider/internalCounter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_an_0_OBUF/I  (
    .I(an_0_OBUF_595),
    .O(\NlwBufferSignal_an_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_divideClock/clk_reg/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_divideClock/clk_reg/CLK )
  );
  X_BUF   \NlwBufferBlock_seg_3_OBUF/I  (
    .I(seg_3_OBUF_578),
    .O(\NlwBufferSignal_seg_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_665 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/currentState/CLK  (
    .I(\CLICKfilter/sigChanged ),
    .O(\NlwBufferSignal_CLICKfilter/currentState/CLK )
  );
  X_BUF   \NlwBufferBlock_seg_1_OBUF/I  (
    .I(seg_1_OBUF_668),
    .O(\NlwBufferSignal_seg_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_seg_5_OBUF/I  (
    .I(seg_5_OBUF_670),
    .O(\NlwBufferSignal_seg_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_seg_2_OBUF/I  (
    .I(seg_2_OBUF_0),
    .O(\NlwBufferSignal_seg_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_an_1_OBUF/I  (
    .I(an_1_OBUF_597),
    .O(\NlwBufferSignal_an_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_led_0_OBUF/I  (
    .I(led_0_OBUF_664),
    .O(\NlwBufferSignal_led_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_seg_0_OBUF/I  (
    .I(seg_0_OBUF_0),
    .O(\NlwBufferSignal_seg_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_seg_4_OBUF/I  (
    .I(seg_4_OBUF_0),
    .O(\NlwBufferSignal_seg_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_an_2_OBUF/I  (
    .I(an_2_OBUF_0),
    .O(\NlwBufferSignal_an_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_seg_6_OBUF/I  (
    .I(seg_6_OBUF_593),
    .O(\NlwBufferSignal_seg_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_RSTfilter/currentState/CLK  (
    .I(\RSTfilter/sigChanged ),
    .O(\NlwBufferSignal_RSTfilter/currentState/CLK )
  );
  X_BUF   \NlwBufferBlock_core/counter/internalCounter_0/CLK  (
    .I(\CLICKfilter/currentState_600 ),
    .O(\NlwBufferSignal_core/counter/internalCounter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_11/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_11/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_10/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_10/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_9/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_9/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_8/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_8/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_7/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_7/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_6/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_6/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_5/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_5/CLK )
  );
  X_BUF   \NlwBufferBlock_CLICKfilter/filterDelay/internalCounter_4/CLK  (
    .I(\CLICKfilter/filterDelay/filteredTick ),
    .O(\NlwBufferSignal_CLICKfilter/filterDelay/internalCounter_4/CLK )
  );
  X_BUF   \NlwBufferBlock_core/counter/internalCounter_3/CLK  (
    .I(\CLICKfilter/currentState_600 ),
    .O(\NlwBufferSignal_core/counter/internalCounter_3/CLK )
  );
  X_BUF   \NlwBufferBlock_core/counter/internalCounter_4/CLK  (
    .I(\CLICKfilter/currentState_600 ),
    .O(\NlwBufferSignal_core/counter/internalCounter_4/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/counter_1/CLK  (
    .I(\LED/currentNumber/clk ),
    .O(\NlwBufferSignal_LED/currentNumber/counter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_LED/currentNumber/counter_0/CLK  (
    .I(\LED/currentNumber/clk ),
    .O(\NlwBufferSignal_LED/currentNumber/counter_0/CLK )
  );
  X_BUF   \NlwBufferBlock_core/counter/internalCounter_5/CLK  (
    .I(\CLICKfilter/currentState_600 ),
    .O(\NlwBufferSignal_core/counter/internalCounter_5/CLK )
  );
  X_BUF   \NlwBufferBlock_core/counter/internalCounter_1/CLK  (
    .I(\CLICKfilter/currentState_600 ),
    .O(\NlwBufferSignal_core/counter/internalCounter_1/CLK )
  );
  X_BUF   \NlwBufferBlock_core/counter/internalCounter_2/CLK  (
    .I(\CLICKfilter/currentState_600 ),
    .O(\NlwBufferSignal_core/counter/internalCounter_2/CLK )
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

