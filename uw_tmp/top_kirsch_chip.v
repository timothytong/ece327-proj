// Copyright (C) 1991-2010 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

// DATE "03/23/2016 21:06:04"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_kirsch_chip (	nrst,
	clk,
	rxflex,
	txflex,
	o_sevenseg,
	o_mode,
	o_nrst,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_sevenseg_0,
	debug_sevenseg_1,
	debug_sevenseg_2,
	debug_sevenseg_3,
	debug_sevenseg_4,
	debug_sevenseg_5);
input 	nrst;
input 	clk;
input 	rxflex;
output 	txflex;
output 	[15:0] o_sevenseg;
output 	[1:0] o_mode;
output 	o_nrst;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[16:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[7:0] debug_sevenseg_0;
output 	[7:0] debug_sevenseg_1;
output 	[7:0] debug_sevenseg_2;
output 	[7:0] debug_sevenseg_3;
output 	[7:0] debug_sevenseg_4;
output 	[7:0] debug_sevenseg_5;

// Design Ports Information
// txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[15]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_nrst	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_led_red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_0[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_1[7]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_2[7]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_3[7]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_4[7]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_sevenseg_5[7]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("top_kirsch_v.sdo");
// synopsys translate_on

wire \u_uw_uart|ld_sdout ;
wire \u_uw_uart|i_uarts|nx27627z2 ;
wire \u_uw_uart|i_uarts|nx27627z4 ;
wire \u_kirsch|nx25376z7 ;
wire \u_kirsch|column_valid2_7_ ;
wire \u_kirsch|column_valid2_3_ ;
wire \u_kirsch|nx26373z5 ;
wire \u_kirsch|nx25376z4 ;
wire \u_uw_uart|i_uarts|TxDiv_4_ ;
wire \u_uw_uart|i_uarts|TxDiv_11_ ;
wire \u_uw_uart|i_uarts|TxDiv_10_ ;
wire \u_uw_uart|i_uarts|TxDiv_9_ ;
wire \u_uw_uart|i_uarts|TxDiv_6_ ;
wire \u_uw_uart|i_uarts|nx32400z5 ;
wire \u_uw_uart|state ;
wire \u_uw_uart|dsend ;
wire \u_uw_uart|nx18433z1 ;
wire \u_uw_uart|i_uarts|TxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|TxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|TxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|TxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx4608z3 ;
wire \u_uw_uart|sdout_0_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_2_ ;
wire \u_uw_uart|i_uarts|nx35603z1 ;
wire \u_kirsch|column_7_ ;
wire \u_kirsch|nx62927z3 ;
wire \u_kirsch|nx23902z3 ;
wire \u_kirsch|nx23902z2 ;
wire \u_kirsch|column_valid1_7_ ;
wire \u_kirsch|column_valid1_3_ ;
wire \u_uw_uart|i_uarts|inc_d_4__dup_103 ;
wire \u_uw_uart|i_uarts|inc_d_6__dup_107 ;
wire \u_uw_uart|i_uarts|nx18093z3 ;
wire \u_uw_uart|i_uarts|nx18093z2 ;
wire \u_uw_uart|i_uarts|inc_d_9__dup_113 ;
wire \u_uw_uart|i_uarts|nx18093z1 ;
wire \u_uw_uart|i_uarts|inc_d_10__dup_114 ;
wire \u_uw_uart|i_uarts|inc_d_11_ ;
wire \u_uw_uart|nx39865z1 ;
wire \u_uw_uart|i_uarts|RxErr ;
wire \u_uw_uart|ack ;
wire \u_uw_uart|nx39739z1 ;
wire \u_uw_uart|waitcount_15_ ;
wire \u_uw_uart|waitcount_14_ ;
wire \u_uw_uart|waitcount_13_ ;
wire \u_uw_uart|waitcount_12_ ;
wire \u_uw_uart|nx39480z4 ;
wire \u_uw_uart|waitcount_11_ ;
wire \u_uw_uart|waitcount_10_ ;
wire \u_uw_uart|waitcount_9_ ;
wire \u_uw_uart|waitcount_8_ ;
wire \u_uw_uart|nx39480z5 ;
wire \u_uw_uart|waitcount_7_ ;
wire \u_uw_uart|waitcount_6_ ;
wire \u_uw_uart|waitcount_5_ ;
wire \u_uw_uart|waitcount_4_ ;
wire \u_uw_uart|nx39480z6 ;
wire \u_uw_uart|waitcount_3_ ;
wire \u_uw_uart|waitcount_2_ ;
wire \u_uw_uart|waitcount_1_ ;
wire \u_uw_uart|waitcount_0_ ;
wire \u_uw_uart|nx39480z7 ;
wire \u_uw_uart|nx39480z3 ;
wire \u_uw_uart|nx39739z3 ;
wire \u_uw_uart|nx39739z2 ;
wire \u_uw_uart|i_uarts|nx51917z2 ;
wire \u_uw_uart|i_uarts|nx51917z1 ;
wire \u_uw_uart|i_uarts|nx48926z2 ;
wire \u_uw_uart|i_uarts|nx50920z2 ;
wire \u_uw_uart|i_uarts|nx50920z1 ;
wire \u_uw_uart|i_uarts|nx49923z1 ;
wire \u_uw_uart|i_uarts|nx48926z1 ;
wire \u_uw_uart|mdata_0_ ;
wire \u_uw_uart|sdout_1_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_3_ ;
wire \u_kirsch|nx19921z1 ;
wire \u_kirsch|inc_d_7__dup_237 ;
wire \u_uw_uart|i_uarts|TopRx ;
wire \u_uw_uart|i_uarts|nx15376z1 ;
wire \u_uw_uart|nx39480z2 ;
wire \u_uw_uart|nx39480z1 ;
wire \u_uw_uart|nx22081z15 ;
wire \u_uw_uart|nx22081z14 ;
wire \u_uw_uart|inc_d_1_ ;
wire \u_uw_uart|nx22081z13 ;
wire \u_uw_uart|inc_d_2_ ;
wire \u_uw_uart|nx22081z12 ;
wire \u_uw_uart|inc_d_3_ ;
wire \u_uw_uart|nx22081z11 ;
wire \u_uw_uart|inc_d_4_ ;
wire \u_uw_uart|nx22081z10 ;
wire \u_uw_uart|inc_d_5_ ;
wire \u_uw_uart|nx22081z9 ;
wire \u_uw_uart|inc_d_6_ ;
wire \u_uw_uart|nx22081z8 ;
wire \u_uw_uart|inc_d_7_ ;
wire \u_uw_uart|nx22081z7 ;
wire \u_uw_uart|inc_d_8_ ;
wire \u_uw_uart|nx22081z6 ;
wire \u_uw_uart|inc_d_9_ ;
wire \u_uw_uart|nx22081z5 ;
wire \u_uw_uart|inc_d_10_ ;
wire \u_uw_uart|nx22081z4 ;
wire \u_uw_uart|inc_d_11_ ;
wire \u_uw_uart|nx22081z3 ;
wire \u_uw_uart|inc_d_12_ ;
wire \u_uw_uart|nx22081z2 ;
wire \u_uw_uart|inc_d_13_ ;
wire \u_uw_uart|nx22081z1 ;
wire \u_uw_uart|inc_d_14_ ;
wire \u_uw_uart|inc_d_15_ ;
wire \u_uw_uart|nx21084z1 ;
wire \u_uw_uart|inc_d_0_ ;
wire \u_kirsch|o_edge ;
wire \u_uw_uart|nx36748z2 ;
wire \u_uw_uart|nx33757z1 ;
wire \u_uw_uart|mdata_1_ ;
wire \u_uw_uart|sdout_2_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_4_ ;
wire \u_uw_uart|i_uarts|RxDiv_3_ ;
wire \u_uw_uart|i_uarts|a_3_ ;
wire \u_uw_uart|i_uarts|RxDiv_7_ ;
wire \u_uw_uart|i_uarts|RxDiv_6_ ;
wire \u_uw_uart|i_uarts|RxDiv_4_ ;
wire \u_uw_uart|i_uarts|nx53265z5 ;
wire \u_uw_uart|i_uarts|RxDiv_10_ ;
wire \u_uw_uart|i_uarts|RxDiv_9_ ;
wire \u_uw_uart|i_uarts|RxDiv_8_ ;
wire \u_uw_uart|i_uarts|RxDiv_5_ ;
wire \u_uw_uart|i_uarts|nx53265z6 ;
wire \u_uw_uart|i_uarts|RxDiv_2_ ;
wire \u_uw_uart|i_uarts|RxDiv_1_ ;
wire \u_uw_uart|i_uarts|RxDiv_0_ ;
wire \u_uw_uart|i_uarts|nx34394z2 ;
wire \u_uw_uart|i_uarts|nx34394z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_3_ ;
wire \u_uw_uart|i_uarts|RxBitCnt_2_ ;
wire \u_uw_uart|i_uarts|nx13547z2 ;
wire \u_uw_uart|i_uarts|nx15541z2 ;
wire \u_kirsch|r6_12_ ;
wire \u_kirsch|r4_9_ ;
wire \u_kirsch|r6_11_ ;
wire \u_kirsch|r4_8_ ;
wire \u_kirsch|r6_10_ ;
wire \u_kirsch|r4_7_ ;
wire \u_kirsch|r6_9_ ;
wire \u_kirsch|r4_6_ ;
wire \u_kirsch|r6_8_ ;
wire \u_kirsch|r4_5_ ;
wire \u_kirsch|r6_7_ ;
wire \u_kirsch|r4_4_ ;
wire \u_kirsch|r6_6_ ;
wire \u_kirsch|r4_3_ ;
wire \u_kirsch|r6_5_ ;
wire \u_kirsch|r4_2_ ;
wire \u_kirsch|r6_4_ ;
wire \u_kirsch|r4_1_ ;
wire \u_kirsch|r6_3_ ;
wire \u_kirsch|r4_0_ ;
wire \u_kirsch|r6_2_ ;
wire \u_kirsch|r6_1_ ;
wire \u_kirsch|r6_0_ ;
wire \u_kirsch|nx61908z14 ;
wire \u_kirsch|nx61908z13 ;
wire \u_kirsch|nx61908z12 ;
wire \u_kirsch|nx61908z11 ;
wire \u_kirsch|nx61908z10 ;
wire \u_kirsch|nx61908z9 ;
wire \u_kirsch|nx61908z8 ;
wire \u_kirsch|sub_out_7_ ;
wire \u_kirsch|nx61908z7 ;
wire \u_kirsch|sub_out_8_ ;
wire \u_kirsch|nx61908z6 ;
wire \u_kirsch|sub_out_9_ ;
wire \u_kirsch|nx61908z5 ;
wire \u_kirsch|sub_out_10_ ;
wire \u_kirsch|nx61908z4 ;
wire \u_kirsch|sub_out_11_ ;
wire \u_kirsch|nx61908z3 ;
wire \u_kirsch|sub_out_12_ ;
wire \u_kirsch|nx61908z2 ;
wire \u_kirsch|nx61908z15 ;
wire \u_kirsch|nx61908z16 ;
wire \u_kirsch|nx61908z17 ;
wire \u_kirsch|nx61908z1 ;
wire \u_kirsch|r8_0_ ;
wire \u_kirsch|o_dir_0_ ;
wire \u_uw_uart|nx34754z1 ;
wire \u_uw_uart|mdata_2_ ;
wire \u_uw_uart|sdout_3_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_5_ ;
wire \u_uw_uart|i_uarts|nx52268z1 ;
wire \u_uw_uart|i_uarts|nx54262z2 ;
wire \u_uw_uart|i_uarts|inc_d_1_ ;
wire \u_uw_uart|i_uarts|nx54262z1 ;
wire \u_uw_uart|i_uarts|inc_d_2_ ;
wire \u_uw_uart|i_uarts|nx58250z4 ;
wire \u_uw_uart|i_uarts|inc_d_3_ ;
wire \u_uw_uart|i_uarts|nx53265z4 ;
wire \u_uw_uart|i_uarts|nx53265z3 ;
wire \u_uw_uart|i_uarts|nx53265z1 ;
wire \u_uw_uart|i_uarts|nx58250z3 ;
wire \u_uw_uart|i_uarts|inc_d_4_ ;
wire \u_uw_uart|i_uarts|nx58250z2 ;
wire \u_uw_uart|i_uarts|inc_d_5_ ;
wire \u_uw_uart|i_uarts|nx58250z1 ;
wire \u_uw_uart|i_uarts|inc_d_6_ ;
wire \u_uw_uart|i_uarts|nx17096z3 ;
wire \u_uw_uart|i_uarts|inc_d_7_ ;
wire \u_uw_uart|i_uarts|nx17096z2 ;
wire \u_uw_uart|i_uarts|inc_d_8_ ;
wire \u_uw_uart|i_uarts|nx17096z1 ;
wire \u_uw_uart|i_uarts|inc_d_9_ ;
wire \u_uw_uart|i_uarts|inc_d_10_ ;
wire \u_uw_uart|i_uarts|inc_d_0_ ;
wire \u_uw_uart|i_uarts|nx8373z2 ;
wire \u_uw_uart|i_uarts|nx8373z1 ;
wire \u_uw_uart|i_uarts|nx9370z1 ;
wire \u_kirsch|i_add4_12_ ;
wire \u_kirsch|i_add3_12_ ;
wire \u_kirsch|i_add4_11_ ;
wire \u_kirsch|i_add3_11_ ;
wire \u_kirsch|i_add4_10_ ;
wire \u_kirsch|i_add3_10_ ;
wire \u_kirsch|i_add4_9_ ;
wire \u_kirsch|i_add3_9_ ;
wire \u_kirsch|temp_add_8_ ;
wire \u_kirsch|i_add4_8_ ;
wire \u_kirsch|r2_8_ ;
wire \u_kirsch|i_add3_8_ ;
wire \u_kirsch|temp_add_7_ ;
wire \u_kirsch|i_add4_7_ ;
wire \u_kirsch|r2_7_ ;
wire \u_kirsch|i_add3_7_ ;
wire \u_kirsch|temp_add_6_ ;
wire \u_kirsch|i_add4_6_ ;
wire \u_kirsch|r2_6_ ;
wire \u_kirsch|i_add3_6_ ;
wire \u_kirsch|temp_add_5_ ;
wire \u_kirsch|i_add4_5_ ;
wire \u_kirsch|r2_5_ ;
wire \u_kirsch|i_add3_5_ ;
wire \u_kirsch|temp_add_4_ ;
wire \u_kirsch|i_add4_4_ ;
wire \u_kirsch|r2_4_ ;
wire \u_kirsch|i_add3_4_ ;
wire \u_kirsch|temp_add_3_ ;
wire \u_kirsch|i_add4_3_ ;
wire \u_kirsch|r2_3_ ;
wire \u_kirsch|i_add3_3_ ;
wire \u_kirsch|temp_add_2_ ;
wire \u_kirsch|i_add4_2_ ;
wire \u_kirsch|r2_2_ ;
wire \u_kirsch|i_add3_2_ ;
wire \u_kirsch|temp_add_1_ ;
wire \u_kirsch|i_add4_1_ ;
wire \u_kirsch|r2_1_ ;
wire \u_kirsch|i_add3_1_ ;
wire \u_kirsch|r2_0_ ;
wire \u_kirsch|i_add3_0_ ;
wire \u_kirsch|temp_add_0_ ;
wire \u_kirsch|i_add4_0_ ;
wire \u_kirsch|stage2|nx22301z12 ;
wire \u_kirsch|stage2|o_add_op12_stage2_0_ ;
wire \u_kirsch|stage2|nx22301z11 ;
wire \u_kirsch|stage2|o_add_op12_stage2_1_ ;
wire \u_kirsch|stage2|nx22301z10 ;
wire \u_kirsch|stage2|o_add_op12_stage2_2_ ;
wire \u_kirsch|stage2|nx22301z9 ;
wire \u_kirsch|stage2|o_add_op12_stage2_3_ ;
wire \u_kirsch|stage2|nx22301z8 ;
wire \u_kirsch|stage2|o_add_op12_stage2_4_ ;
wire \u_kirsch|stage2|nx22301z7 ;
wire \u_kirsch|stage2|o_add_op12_stage2_5_ ;
wire \u_kirsch|stage2|nx22301z6 ;
wire \u_kirsch|stage2|o_add_op12_stage2_6_ ;
wire \u_kirsch|stage2|nx22301z5 ;
wire \u_kirsch|stage2|o_add_op12_stage2_7_ ;
wire \u_kirsch|stage2|nx22301z4 ;
wire \u_kirsch|stage2|o_add_op12_stage2_8_ ;
wire \u_kirsch|stage2|nx22301z3 ;
wire \u_kirsch|stage2|o_add_op12_stage2_9_ ;
wire \u_kirsch|stage2|nx22301z2 ;
wire \u_kirsch|stage2|o_add_op12_stage2_10_ ;
wire \u_kirsch|stage2|nx22301z1 ;
wire \u_kirsch|stage2|o_add_op12_stage2_11_ ;
wire \u_kirsch|stage2|o_add_op12_stage2_12_ ;
wire \u_kirsch|temp_max_9_ ;
wire \u_kirsch|i_max3_9_ ;
wire \u_kirsch|r3_9_ ;
wire \u_kirsch|r3_8_ ;
wire \u_kirsch|temp_max_8_ ;
wire \u_kirsch|i_max3_8_ ;
wire \u_kirsch|r3_7_ ;
wire \u_kirsch|temp_max_7_ ;
wire \u_kirsch|i_max3_7_ ;
wire \u_kirsch|r3_6_ ;
wire \u_kirsch|temp_max_6_ ;
wire \u_kirsch|i_max3_6_ ;
wire \u_kirsch|r3_5_ ;
wire \u_kirsch|temp_max_5_ ;
wire \u_kirsch|i_max3_5_ ;
wire \u_kirsch|r3_4_ ;
wire \u_kirsch|temp_max_4_ ;
wire \u_kirsch|i_max3_4_ ;
wire \u_kirsch|r3_3_ ;
wire \u_kirsch|temp_max_3_ ;
wire \u_kirsch|i_max3_3_ ;
wire \u_kirsch|r3_2_ ;
wire \u_kirsch|temp_max_2_ ;
wire \u_kirsch|i_max3_2_ ;
wire \u_kirsch|r3_1_ ;
wire \u_kirsch|temp_max_1_ ;
wire \u_kirsch|i_max3_1_ ;
wire \u_kirsch|temp_max_0_ ;
wire \u_kirsch|i_max3_0_ ;
wire \u_kirsch|r3_0_ ;
wire \u_kirsch|stage2|u_max2|nx52134z10 ;
wire \u_kirsch|stage2|u_max2|nx52134z9 ;
wire \u_kirsch|stage2|u_max2|nx52134z8 ;
wire \u_kirsch|stage2|u_max2|nx52134z7 ;
wire \u_kirsch|stage2|u_max2|nx52134z6 ;
wire \u_kirsch|stage2|u_max2|nx52134z5 ;
wire \u_kirsch|stage2|u_max2|nx52134z4 ;
wire \u_kirsch|stage2|u_max2|nx52134z3 ;
wire \u_kirsch|stage2|u_max2|nx52134z2 ;
wire \u_kirsch|stage2|u_max2|nx52134z1 ;
wire \u_kirsch|stage2|u_max2|o_max_pix_9_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_8_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_7_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_6_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_5_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_4_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_3_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_2_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_1_ ;
wire \u_kirsch|stage2|u_max2|o_max_pix_0_ ;
wire \u_kirsch|r5_0_ ;
wire \u_kirsch|nx24856z1 ;
wire \u_kirsch|r8_1_ ;
wire \u_kirsch|o_dir_1_ ;
wire \u_uw_uart|nx35751z1 ;
wire \u_uw_uart|mdata_3_ ;
wire \u_uw_uart|sdout_4_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_6_ ;
wire \u_kirsch|e_7_ ;
wire \u_kirsch|nx28679z3 ;
wire \u_kirsch|g_7_ ;
wire \u_kirsch|nx28679z52 ;
wire \u_kirsch|c_7_ ;
wire \u_kirsch|h_7_ ;
wire \u_kirsch|nx28679z53 ;
wire \u_kirsch|i_add2_7_ ;
wire \u_kirsch|d_7_ ;
wire \u_kirsch|f_7_ ;
wire \u_kirsch|nx28679z36 ;
wire \u_kirsch|a_7_ ;
wire \u_kirsch|b_7_ ;
wire \u_kirsch|nx28679z37 ;
wire \u_kirsch|i_add1_7_ ;
wire \u_kirsch|e_6_ ;
wire \u_kirsch|g_6_ ;
wire \u_kirsch|nx28679z54 ;
wire \u_kirsch|c_6_ ;
wire \u_kirsch|h_6_ ;
wire \u_kirsch|nx28679z55 ;
wire \u_kirsch|i_add2_6_ ;
wire \u_kirsch|d_6_ ;
wire \u_kirsch|f_6_ ;
wire \u_kirsch|nx28679z38 ;
wire \u_kirsch|a_6_ ;
wire \u_kirsch|b_6_ ;
wire \u_kirsch|nx28679z39 ;
wire \u_kirsch|i_add1_6_ ;
wire \u_kirsch|e_5_ ;
wire \u_kirsch|g_5_ ;
wire \u_kirsch|nx28679z56 ;
wire \u_kirsch|c_5_ ;
wire \u_kirsch|h_5_ ;
wire \u_kirsch|nx28679z57 ;
wire \u_kirsch|i_add2_5_ ;
wire \u_kirsch|d_5_ ;
wire \u_kirsch|f_5_ ;
wire \u_kirsch|nx28679z40 ;
wire \u_kirsch|a_5_ ;
wire \u_kirsch|b_5_ ;
wire \u_kirsch|nx28679z41 ;
wire \u_kirsch|i_add1_5_ ;
wire \u_kirsch|e_4_ ;
wire \u_kirsch|g_4_ ;
wire \u_kirsch|nx28679z58 ;
wire \u_kirsch|c_4_ ;
wire \u_kirsch|h_4_ ;
wire \u_kirsch|nx28679z59 ;
wire \u_kirsch|i_add2_4_ ;
wire \u_kirsch|d_4_ ;
wire \u_kirsch|f_4_ ;
wire \u_kirsch|nx28679z42 ;
wire \u_kirsch|a_4_ ;
wire \u_kirsch|b_4_ ;
wire \u_kirsch|nx28679z43 ;
wire \u_kirsch|i_add1_4_ ;
wire \u_kirsch|e_3_ ;
wire \u_kirsch|g_3_ ;
wire \u_kirsch|nx28679z60 ;
wire \u_kirsch|c_3_ ;
wire \u_kirsch|h_3_ ;
wire \u_kirsch|nx28679z61 ;
wire \u_kirsch|i_add2_3_ ;
wire \u_kirsch|d_3_ ;
wire \u_kirsch|f_3_ ;
wire \u_kirsch|nx28679z44 ;
wire \u_kirsch|a_3_ ;
wire \u_kirsch|b_3_ ;
wire \u_kirsch|nx28679z45 ;
wire \u_kirsch|i_add1_3_ ;
wire \u_kirsch|e_2_ ;
wire \u_kirsch|g_2_ ;
wire \u_kirsch|nx28679z62 ;
wire \u_kirsch|c_2_ ;
wire \u_kirsch|h_2_ ;
wire \u_kirsch|nx28679z63 ;
wire \u_kirsch|i_add2_2_ ;
wire \u_kirsch|d_2_ ;
wire \u_kirsch|f_2_ ;
wire \u_kirsch|nx28679z46 ;
wire \u_kirsch|a_2_ ;
wire \u_kirsch|b_2_ ;
wire \u_kirsch|nx28679z47 ;
wire \u_kirsch|i_add1_2_ ;
wire \u_kirsch|e_1_ ;
wire \u_kirsch|g_1_ ;
wire \u_kirsch|nx28679z64 ;
wire \u_kirsch|c_1_ ;
wire \u_kirsch|h_1_ ;
wire \u_kirsch|nx28679z65 ;
wire \u_kirsch|i_add2_1_ ;
wire \u_kirsch|d_1_ ;
wire \u_kirsch|f_1_ ;
wire \u_kirsch|nx28679z48 ;
wire \u_kirsch|a_1_ ;
wire \u_kirsch|b_1_ ;
wire \u_kirsch|nx28679z49 ;
wire \u_kirsch|i_add1_1_ ;
wire \u_kirsch|d_0_ ;
wire \u_kirsch|f_0_ ;
wire \u_kirsch|nx28679z50 ;
wire \u_kirsch|a_0_ ;
wire \u_kirsch|b_0_ ;
wire \u_kirsch|nx28679z51 ;
wire \u_kirsch|i_add1_0_ ;
wire \u_kirsch|e_0_ ;
wire \u_kirsch|g_0_ ;
wire \u_kirsch|nx28679z66 ;
wire \u_kirsch|c_0_ ;
wire \u_kirsch|h_0_ ;
wire \u_kirsch|nx28679z67 ;
wire \u_kirsch|i_add2_0_ ;
wire \u_kirsch|stage1|nx45057z8 ;
wire \u_kirsch|stage1|o_add_op12_stage1_0_ ;
wire \u_kirsch|stage1|nx45057z7 ;
wire \u_kirsch|stage1|o_add_op12_stage1_1_ ;
wire \u_kirsch|stage1|nx45057z6 ;
wire \u_kirsch|stage1|o_add_op12_stage1_2_ ;
wire \u_kirsch|stage1|nx45057z5 ;
wire \u_kirsch|stage1|o_add_op12_stage1_3_ ;
wire \u_kirsch|stage1|nx45057z4 ;
wire \u_kirsch|stage1|o_add_op12_stage1_4_ ;
wire \u_kirsch|stage1|nx45057z3 ;
wire \u_kirsch|stage1|o_add_op12_stage1_5_ ;
wire \u_kirsch|stage1|nx45057z2 ;
wire \u_kirsch|stage1|o_add_op12_stage1_6_ ;
wire \u_kirsch|stage1|o_add_op12_stage1_8_ ;
wire \u_kirsch|stage1|o_add_op12_stage1_7_ ;
wire \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout ;
wire \u_kirsch|stage1|ix45057z52923~1_cout ;
wire \u_kirsch|stage1|nx45057z1 ;
wire \u_kirsch|nx28679z4 ;
wire \u_kirsch|nx28679z5 ;
wire \u_kirsch|i_max1_7_ ;
wire \u_kirsch|nx28679z20 ;
wire \u_kirsch|nx28679z21 ;
wire \u_kirsch|i_max2_7_ ;
wire \u_kirsch|nx28679z22 ;
wire \u_kirsch|nx28679z23 ;
wire \u_kirsch|i_max2_6_ ;
wire \u_kirsch|nx28679z6 ;
wire \u_kirsch|nx28679z7 ;
wire \u_kirsch|i_max1_6_ ;
wire \u_kirsch|nx28679z24 ;
wire \u_kirsch|nx28679z25 ;
wire \u_kirsch|i_max2_5_ ;
wire \u_kirsch|nx28679z8 ;
wire \u_kirsch|nx28679z9 ;
wire \u_kirsch|i_max1_5_ ;
wire \u_kirsch|nx28679z26 ;
wire \u_kirsch|nx28679z27 ;
wire \u_kirsch|i_max2_4_ ;
wire \u_kirsch|nx28679z10 ;
wire \u_kirsch|nx28679z11 ;
wire \u_kirsch|i_max1_4_ ;
wire \u_kirsch|nx28679z28 ;
wire \u_kirsch|nx28679z29 ;
wire \u_kirsch|i_max2_3_ ;
wire \u_kirsch|nx28679z12 ;
wire \u_kirsch|nx28679z13 ;
wire \u_kirsch|i_max1_3_ ;
wire \u_kirsch|nx28679z30 ;
wire \u_kirsch|nx28679z31 ;
wire \u_kirsch|i_max2_2_ ;
wire \u_kirsch|nx28679z14 ;
wire \u_kirsch|nx28679z15 ;
wire \u_kirsch|i_max1_2_ ;
wire \u_kirsch|nx28679z32 ;
wire \u_kirsch|nx28679z33 ;
wire \u_kirsch|i_max2_1_ ;
wire \u_kirsch|nx28679z16 ;
wire \u_kirsch|nx28679z17 ;
wire \u_kirsch|i_max1_1_ ;
wire \u_kirsch|nx28679z18 ;
wire \u_kirsch|nx28679z19 ;
wire \u_kirsch|i_max1_0_ ;
wire \u_kirsch|nx28679z34 ;
wire \u_kirsch|nx28679z35 ;
wire \u_kirsch|i_max2_0_ ;
wire \u_kirsch|stage1|u_max1|nx54128z8 ;
wire \u_kirsch|stage1|u_max1|nx54128z7 ;
wire \u_kirsch|stage1|u_max1|nx54128z6 ;
wire \u_kirsch|stage1|u_max1|nx54128z5 ;
wire \u_kirsch|stage1|u_max1|nx54128z4 ;
wire \u_kirsch|stage1|u_max1|nx54128z3 ;
wire \u_kirsch|stage1|u_max1|nx54128z2 ;
wire \u_kirsch|stage1|u_max1|nx54128z1 ;
wire \u_kirsch|stage1|u_max1|o_max_pix_7_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_6_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_5_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_4_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_3_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_2_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_1_ ;
wire \u_kirsch|stage1|u_max1|o_max_pix_0_ ;
wire \u_kirsch|stage1|nx15254z10 ;
wire \u_kirsch|stage1|o_max_add_stage1_0_ ;
wire \u_kirsch|stage1|nx15254z9 ;
wire \u_kirsch|stage1|o_max_add_stage1_1_ ;
wire \u_kirsch|stage1|nx15254z8 ;
wire \u_kirsch|stage1|o_max_add_stage1_2_ ;
wire \u_kirsch|stage1|nx15254z7 ;
wire \u_kirsch|stage1|o_max_add_stage1_3_ ;
wire \u_kirsch|stage1|nx15254z6 ;
wire \u_kirsch|stage1|o_max_add_stage1_4_ ;
wire \u_kirsch|stage1|nx15254z5 ;
wire \u_kirsch|stage1|o_max_add_stage1_5_ ;
wire \u_kirsch|stage1|nx15254z4 ;
wire \u_kirsch|stage1|o_max_add_stage1_6_ ;
wire \u_kirsch|stage1|nx15254z3 ;
wire \u_kirsch|stage1|o_max_add_stage1_7_ ;
wire \u_kirsch|stage1|nx15254z2 ;
wire \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout ;
wire \u_kirsch|stage1|o_max_add_stage1_9_ ;
wire \u_kirsch|stage1|o_max_add_stage1_8_ ;
wire \u_kirsch|stage1|nx15254z1 ;
wire \u_kirsch|temp_dir_0_ ;
wire \u_kirsch|i_dir3_0_ ;
wire \u_kirsch|r1_0_ ;
wire \u_kirsch|stage2|u_max2|nx19309z10 ;
wire \u_kirsch|stage2|u_max2|nx19309z9 ;
wire \u_kirsch|stage2|u_max2|nx19309z8 ;
wire \u_kirsch|stage2|u_max2|nx19309z7 ;
wire \u_kirsch|stage2|u_max2|nx19309z6 ;
wire \u_kirsch|stage2|u_max2|nx19309z5 ;
wire \u_kirsch|stage2|u_max2|nx19309z4 ;
wire \u_kirsch|stage2|u_max2|nx19309z3 ;
wire \u_kirsch|stage2|u_max2|nx19309z2 ;
wire \u_kirsch|stage2|u_max2|nx19309z1 ;
wire \u_kirsch|stage2|u_max2|o_max_dir_0_ ;
wire \u_kirsch|r5_1_ ;
wire \u_kirsch|nx23859z1 ;
wire \u_kirsch|r8_2_ ;
wire \u_kirsch|o_dir_2_ ;
wire \u_uw_uart|nx36748z1 ;
wire \u_uw_uart|mdata_5_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_7_ ;
wire \u_uw_uart|rdata_7_ ;
wire \u_uw_uart|datain_7_ ;
wire \u_kirsch|nx20492z1 ;
wire \u_kirsch|i_7_ ;
wire \u_uw_uart|rdata_6_ ;
wire \u_uw_uart|datain_6_ ;
wire \u_kirsch|i_6_ ;
wire \u_uw_uart|rdata_5_ ;
wire \u_uw_uart|datain_5_ ;
wire \u_kirsch|i_5_ ;
wire \u_uw_uart|rdata_4_ ;
wire \u_uw_uart|datain_4_ ;
wire \u_kirsch|i_4_ ;
wire \u_uw_uart|rdata_3_ ;
wire \u_uw_uart|datain_3_ ;
wire \u_kirsch|i_3_ ;
wire \u_uw_uart|rdata_2_ ;
wire \u_uw_uart|datain_2_ ;
wire \u_kirsch|i_2_ ;
wire \u_uw_uart|rdata_1_ ;
wire \u_uw_uart|datain_1_ ;
wire \u_kirsch|i_1_ ;
wire \u_uw_uart|rdata_0_ ;
wire \u_uw_uart|datain_0_ ;
wire \u_kirsch|i_0_ ;
wire \u_kirsch|nx28679z1 ;
wire \u_kirsch|nx28679z2 ;
wire \u_kirsch|stage1|u_max1|nx19309z7 ;
wire \u_kirsch|stage1|u_max1|nx19309z6 ;
wire \u_kirsch|stage1|u_max1|nx19309z5 ;
wire \u_kirsch|stage1|u_max1|nx19309z4 ;
wire \u_kirsch|stage1|u_max1|nx19309z3 ;
wire \u_kirsch|stage1|u_max1|nx19309z2 ;
wire \u_kirsch|stage1|u_max1|nx19309z1 ;
wire \u_kirsch|stage1|u_max1|o_max_dir_2_ ;
wire \u_kirsch|stage1|u_max1|o_max_dir_0_ ;
wire \u_kirsch|temp_dir_1_ ;
wire \u_kirsch|i_dir3_1_ ;
wire \u_kirsch|r1_1_ ;
wire \u_kirsch|stage2|u_max2|o_max_dir_1_ ;
wire \u_kirsch|r5_2_ ;
wire \u_kirsch|nx22862z1 ;
wire \u_uw_uart|mdata_7n5ss1_4_ ;
wire \u_uw_uart|sdout_6_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_8_ ;
wire \u_uw_uart|i_uarts|Dout_7_ ;
wire \u_kirsch|mem_wren_0_ ;
wire \u_kirsch|mem_wren_1_ ;
wire \u_uw_uart|i_uarts|Dout_6_ ;
wire \u_uw_uart|i_uarts|Dout_5_ ;
wire \u_uw_uart|i_uarts|Dout_4_ ;
wire \u_uw_uart|i_uarts|Dout_3_ ;
wire \u_uw_uart|i_uarts|Dout_2_ ;
wire \u_uw_uart|i_uarts|Dout_1_ ;
wire \u_uw_uart|i_uarts|Dout_0_ ;
wire \u_kirsch|nx35074z1 ;
wire \u_kirsch|temp_dir_2_ ;
wire \u_kirsch|i_dir3_2_ ;
wire \u_kirsch|r1_2_ ;
wire \u_kirsch|stage2|u_max2|o_max_dir_2_ ;
wire \u_uw_uart|mdata_7_ ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_7_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_6_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_5_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_4_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_3_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_2_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_1_ ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_ ;
wire \u_uw_uart|mdata_7n5ss1_6_ ;
wire \u_uw_uart|i_uarts|nx54636z2 ;
wire \u_uw_uart|i_uarts|nx54636z1~_wirecell_combout ;
wire \u_uw_uart|sdout_0_~_wirecell_combout ;
wire \u_uw_uart|sdout_1_~_wirecell_combout ;
wire \u_uw_uart|sdout_2_~_wirecell_combout ;
wire \u_uw_uart|sdout_3_~_wirecell_combout ;
wire \u_uw_uart|sdout_4_~_wirecell_combout ;
wire \u_uw_uart|sdout_6_~_wirecell_combout ;
wire \u_kirsch|column_valid1_7_~feeder_combout ;
wire \u_uw_uart|sdout_0_~feeder_combout ;
wire \u_uw_uart|sdout_1_~feeder_combout ;
wire \u_uw_uart|sdout_3_~feeder_combout ;
wire \u_uw_uart|sdout_4_~feeder_combout ;
wire \u_kirsch|c_7_~feeder_combout ;
wire \u_kirsch|d_7_~feeder_combout ;
wire \u_kirsch|c_6_~feeder_combout ;
wire \u_kirsch|d_6_~feeder_combout ;
wire \u_kirsch|c_5_~feeder_combout ;
wire \u_kirsch|d_5_~feeder_combout ;
wire \u_kirsch|c_4_~feeder_combout ;
wire \u_kirsch|d_4_~feeder_combout ;
wire \u_kirsch|c_3_~feeder_combout ;
wire \u_kirsch|d_3_~feeder_combout ;
wire \u_kirsch|c_2_~feeder_combout ;
wire \u_kirsch|d_2_~feeder_combout ;
wire \u_kirsch|c_1_~feeder_combout ;
wire \u_kirsch|d_1_~feeder_combout ;
wire \u_kirsch|d_0_~feeder_combout ;
wire \u_kirsch|c_0_~feeder_combout ;
wire \u_uw_uart|sdout_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_6_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_3_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_2_~feeder_combout ;
wire \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_1_~feeder_combout ;
wire \u_uw_uart|i_uarts|Dout_0_~feeder_combout ;
wire \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart|i_uarts|inc_d_0__dup_95 ;
wire \nrst~combout ;
wire \u_uw_uart|i_uarts|TxDiv_0_ ;
wire \u_uw_uart|i_uarts|nx12704z1 ;
wire \u_uw_uart|i_uarts|inc_d_1__dup_97 ;
wire \u_uw_uart|i_uarts|TxDiv_1_ ;
wire \u_uw_uart|i_uarts|nx28532z7 ;
wire \u_uw_uart|i_uarts|nx28532z6 ;
wire \u_uw_uart|i_uarts|inc_d_3__dup_101 ;
wire \u_uw_uart|i_uarts|TxDiv_3_ ;
wire \u_uw_uart|i_uarts|inc_d_2__dup_99 ;
wire \u_uw_uart|i_uarts|TxDiv_2_ ;
wire \u_uw_uart|i_uarts|nx32400z6 ;
wire \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout ;
wire \u_uw_uart|i_uarts|RxDivisor_4_ ;
wire \u_uw_uart|i_uarts|nx28532z5 ;
wire \u_uw_uart|i_uarts|nx28532z4 ;
wire \u_uw_uart|i_uarts|inc_d_5__dup_105 ;
wire \u_uw_uart|i_uarts|TxDiv_5_ ;
wire \u_uw_uart|i_uarts|nx28532z3 ;
wire \u_uw_uart|i_uarts|nx28532z2 ;
wire \u_uw_uart|i_uarts|inc_d_7__dup_109 ;
wire \u_uw_uart|i_uarts|TxDiv_7_ ;
wire \u_uw_uart|i_uarts|nx28532z1 ;
wire \u_uw_uart|i_uarts|inc_d_8__dup_111 ;
wire \u_uw_uart|i_uarts|TxDiv_8_ ;
wire \u_uw_uart|i_uarts|nx32400z4 ;
wire \u_uw_uart|i_uarts|nx32400z3 ;
wire \u_uw_uart|i_uarts|nx32400z2 ;
wire \u_uw_uart|i_uarts|nx32400z1 ;
wire \u_uw_uart|i_uarts|TopTx ;
wire \u_uw_uart|i_uarts|nx5605z1 ;
wire \u_uw_uart|i_uarts|TxFSM_1_ ;
wire \u_uw_uart|i_uarts|nx4608z2 ;
wire \u_uw_uart|i_uarts|nx4608z1 ;
wire \u_uw_uart|i_uarts|TxFSM_0_ ;
wire \u_uw_uart|i_uarts|nx27627z3 ;
wire \u_uw_uart|i_uarts|nx27627z1 ;
wire \u_uw_uart|i_uarts|nx18332z1 ;
wire \u_kirsch|nx54262z3 ;
wire \u_kirsch|inc_d_1_ ;
wire \u_kirsch|inc_d_0__dup_223 ;
wire \rxflex~combout ;
wire \u_uw_uart|rawrx ;
wire \u_uw_uart|rawrx~_wirecell_combout ;
wire \u_uw_uart|i_uarts|nx54636z1 ;
wire \u_uw_uart|i_uarts|nx11553z1 ;
wire \u_uw_uart|i_uarts|nx15541z3 ;
wire \u_uw_uart|i_uarts|nx15541z1 ;
wire \u_uw_uart|i_uarts|RxFSM_5_ ;
wire \u_uw_uart|i_uarts|nx16538z1 ;
wire \u_uw_uart|i_uarts|nx53265z2 ;
wire \u_uw_uart|i_uarts|nx11364z1 ;
wire \u_uw_uart|i_uarts|nx53265z2~_wirecell_combout ;
wire \u_uw_uart|i_uarts|RxFSM_1_ ;
wire \u_uw_uart|i_uarts|nx14544z1 ;
wire \u_uw_uart|i_uarts|RxFSM_2_ ;
wire \u_uw_uart|i_uarts|nx13547z1 ;
wire \u_uw_uart|i_uarts|RxFSM_3_ ;
wire \u_uw_uart|i_uarts|nx11364z2 ;
wire \u_uw_uart|i_uarts|RxBitCnt_0_ ;
wire \u_uw_uart|i_uarts|nx10367z1 ;
wire \u_uw_uart|i_uarts|RxBitCnt_1_ ;
wire \u_uw_uart|i_uarts|nx12550z1 ;
wire \u_uw_uart|i_uarts|RxFSM_4_ ;
wire \u_uw_uart|i_uarts|nx30017z1 ;
wire \u_uw_uart|i_uarts|RxRDY ;
wire \u_uw_uart|nx58116z1 ;
wire \u_uw_uart|o_pixavail ;
wire \u_kirsch|valid_0_ ;
wire \u_kirsch|nx62927z1 ;
wire \u_kirsch|column_0_ ;
wire \u_kirsch|nx25361z1 ;
wire \u_kirsch|nx45393z2 ;
wire \u_kirsch|nx45393z1 ;
wire \u_kirsch|inc_d_3__dup_229 ;
wire \u_kirsch|column_3_ ;
wire \u_kirsch|inc_d_2__dup_227 ;
wire \u_kirsch|column_2_ ;
wire \u_kirsch|nx62927z4 ;
wire \u_kirsch|nx62927z2 ;
wire \u_kirsch|o_row_1_ ;
wire \u_kirsch|inc_d_0_ ;
wire \u_kirsch|o_row_0_ ;
wire \u_kirsch|nx54262z2 ;
wire \u_kirsch|nx54262z1 ;
wire \u_kirsch|inc_d_3_ ;
wire \u_kirsch|o_row_3_ ;
wire nx58136z1;
wire o_sevenseg_0_;
wire nx59133z1;
wire o_sevenseg_1_;
wire nx60130z1;
wire o_sevenseg_2_;
wire nx61127z1;
wire o_sevenseg_3_;
wire nx62124z1;
wire o_sevenseg_4_;
wire nx63121z1;
wire o_sevenseg_5_;
wire nx64118z1;
wire o_sevenseg_6_;
wire \u_kirsch|nx58250z4 ;
wire \u_kirsch|nx58250z3 ;
wire \u_kirsch|inc_d_5_ ;
wire \u_kirsch|o_row_5_ ;
wire \u_kirsch|inc_d_4_ ;
wire \u_kirsch|o_row_4_ ;
wire \u_kirsch|nx58250z2 ;
wire \u_kirsch|nx58250z1 ;
wire \u_kirsch|inc_d_7_ ;
wire \u_kirsch|o_row_7_ ;
wire nx576z1;
wire o_sevenseg_8_;
wire \u_kirsch|inc_d_6_ ;
wire \u_kirsch|o_row_6_ ;
wire nx1573z1;
wire o_sevenseg_9_;
wire nx19779z1;
wire o_sevenseg_10_;
wire nx18782z1;
wire o_sevenseg_11_;
wire nx17785z1;
wire o_sevenseg_12_;
wire nx16788z1;
wire o_sevenseg_13_;
wire nx15791z1;
wire o_sevenseg_14_;
wire \u_kirsch|nx25376z8 ;
wire \u_kirsch|row_valid1_1_~feeder_combout ;
wire \u_kirsch|row_valid1_1_ ;
wire \u_kirsch|row_valid2_1_~feeder_combout ;
wire \u_kirsch|valid_1_ ;
wire \u_kirsch|valid_2_ ;
wire \u_kirsch|valid_3_ ;
wire \u_kirsch|valid_4_ ;
wire \u_kirsch|row_valid2_1_ ;
wire \u_kirsch|row_valid1_0_ ;
wire \u_kirsch|row_valid2_0_ ;
wire \u_kirsch|nx25376z6 ;
wire \u_kirsch|nx19921z4 ;
wire \u_kirsch|inc_d_4__dup_231 ;
wire \u_kirsch|column_4_ ;
wire \u_kirsch|nx19921z3 ;
wire \u_kirsch|nx19921z2 ;
wire \u_kirsch|inc_d_6__dup_235 ;
wire \u_kirsch|column_6_ ;
wire \u_kirsch|column_valid1_6_~feeder_combout ;
wire \u_kirsch|column_valid1_6_ ;
wire \u_kirsch|column_valid2_6_ ;
wire \u_kirsch|valid_5_ ;
wire \u_kirsch|valid_6_ ;
wire \u_kirsch|row_valid1_4_~feeder_combout ;
wire \u_kirsch|row_valid1_4_ ;
wire \u_kirsch|row_valid2_4_ ;
wire \u_kirsch|row_valid1_6_ ;
wire \u_kirsch|row_valid2_6_ ;
wire \u_kirsch|row_valid1_5_~feeder_combout ;
wire \u_kirsch|row_valid1_5_ ;
wire \u_kirsch|row_valid2_5_ ;
wire \u_kirsch|nx23902z5 ;
wire \u_kirsch|inc_d_2_ ;
wire \u_kirsch|o_row_2_ ;
wire \u_kirsch|row_valid1_2_~feeder_combout ;
wire \u_kirsch|row_valid1_2_ ;
wire \u_kirsch|row_valid2_2_~feeder_combout ;
wire \u_kirsch|row_valid2_2_ ;
wire \u_kirsch|row_valid1_3_~feeder_combout ;
wire \u_kirsch|row_valid1_3_ ;
wire \u_kirsch|row_valid2_3_ ;
wire \u_kirsch|nx23902z4 ;
wire \u_kirsch|nx23902z1 ;
wire \u_kirsch|o_valid ;
wire \u_kirsch|nx25376z3 ;
wire \u_kirsch|column_valid1_4_~feeder_combout ;
wire \u_kirsch|column_valid1_4_ ;
wire \u_kirsch|column_valid2_4_ ;
wire \u_kirsch|inc_d_5__dup_233 ;
wire \u_kirsch|column_5_ ;
wire \u_kirsch|column_valid1_5_~feeder_combout ;
wire \u_kirsch|column_valid1_5_ ;
wire \u_kirsch|column_valid2_5_ ;
wire \u_kirsch|nx25376z2 ;
wire \u_kirsch|nx25376z1 ;
wire \u_kirsch|o_mode_1_ ;
wire \u_kirsch|nx26373z2 ;
wire \u_kirsch|row_valid1_7_~feeder_combout ;
wire \u_kirsch|row_valid1_7_ ;
wire \u_kirsch|row_valid2_7_ ;
wire \u_kirsch|nx26373z4 ;
wire \u_kirsch|column_valid1_2_~feeder_combout ;
wire \u_kirsch|column_valid1_2_ ;
wire \u_kirsch|column_valid2_2_~feeder_combout ;
wire \u_kirsch|column_valid2_2_ ;
wire \u_kirsch|column_valid1_0_ ;
wire \u_kirsch|column_valid2_0_ ;
wire \u_kirsch|inc_d_1__dup_225 ;
wire \u_kirsch|column_1_ ;
wire \u_kirsch|column_valid1_1_ ;
wire \u_kirsch|column_valid2_1_~feeder_combout ;
wire \u_kirsch|column_valid2_1_ ;
wire \u_kirsch|nx25376z5 ;
wire \u_kirsch|nx26373z3 ;
wire \u_kirsch|nx26373z1 ;
wire \u_kirsch|nx25376z9 ;
wire [7:0] \u_kirsch|mem|ix64056z29481|auto_generated|q_a ;
wire [7:0] \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a ;

wire [7:0] \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [7:0] \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus ;

assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [0] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [1] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [2] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [3] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [4] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [5] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [6] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [7] = \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [0] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [1] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [2] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [3] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [4] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [5] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [6] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_kirsch|mem|ix64056z29481|auto_generated|q_a [7] = \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];

// Location: LCFF_X38_Y24_N21
cycloneii_lcell_ff \u_uw_uart|reg_ld_sdout (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx18433z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ld_sdout ));

// Location: LCCOMB_X38_Y24_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z2  = (\u_uw_uart|i_uarts|TxFSM_1_  & (((\u_uw_uart|i_uarts|TxFSM_0_  & !\u_uw_uart|i_uarts|nx18332z1 )))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|i_uarts|TxFSM_0_  & ((\u_uw_uart|ld_sdout ) # 
// (!\u_uw_uart|i_uarts|nx18332z1 ))))

	.dataa(\u_uw_uart|ld_sdout ),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|nx18332z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52924 .lut_mask = 16'h02C3;
defparam \u_uw_uart|i_uarts|ix27627z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y24_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx27627z4 ));

// Location: LCCOMB_X44_Y22_N2
cycloneii_lcell_comb \u_kirsch|ix25376z52929 (
// Equation(s):
// \u_kirsch|nx25376z7  = ((!\u_kirsch|row_valid2_3_ ) # (!\u_kirsch|row_valid2_4_ )) # (!\u_kirsch|row_valid2_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|row_valid2_2_ ),
	.datac(\u_kirsch|row_valid2_4_ ),
	.datad(\u_kirsch|row_valid2_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z7 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52929 .lut_mask = 16'h3FFF;
defparam \u_kirsch|ix25376z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N21
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_valid1_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_7_ ));

// Location: LCFF_X44_Y22_N13
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_valid1_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_3_ ));

// Location: LCCOMB_X44_Y22_N24
cycloneii_lcell_comb \u_kirsch|ix26373z52927 (
// Equation(s):
// \u_kirsch|nx26373z5  = ((!\u_kirsch|column_valid2_4_ ) # (!\u_kirsch|column_valid2_5_ )) # (!\u_kirsch|column_valid2_3_ )

	.dataa(\u_kirsch|column_valid2_3_ ),
	.datab(vcc),
	.datac(\u_kirsch|column_valid2_5_ ),
	.datad(\u_kirsch|column_valid2_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx26373z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix26373z52927 .lut_mask = 16'h5FFF;
defparam \u_kirsch|ix26373z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N26
cycloneii_lcell_comb \u_kirsch|ix25376z52926 (
// Equation(s):
// \u_kirsch|nx25376z4  = (\u_kirsch|row_valid2_6_  & (!\u_kirsch|nx25376z5  & (\u_kirsch|row_valid2_5_  & \u_kirsch|row_valid2_7_ )))

	.dataa(\u_kirsch|row_valid2_6_ ),
	.datab(\u_kirsch|nx25376z5 ),
	.datac(\u_kirsch|row_valid2_5_ ),
	.datad(\u_kirsch|row_valid2_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52926 .lut_mask = 16'h2000;
defparam \u_kirsch|ix25376z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y24_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_4__dup_6 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_4__dup_103 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_4_ ));

// Location: LCFF_X35_Y24_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_11_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_11_ ));

// Location: LCFF_X35_Y24_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_10__dup_0 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_10__dup_114 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_10_ ));

// Location: LCFF_X35_Y24_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_9__dup_1 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_9__dup_113 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_9_ ));

// Location: LCFF_X35_Y24_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_6__dup_4 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_6__dup_107 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_6_ ));

// Location: LCCOMB_X35_Y24_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z5  = (!\u_uw_uart|i_uarts|TxDiv_10_  & (!\u_uw_uart|i_uarts|TxDiv_11_  & (!\u_uw_uart|i_uarts|TxDiv_6_  & !\u_uw_uart|i_uarts|TxDiv_9_ )))

	.dataa(\u_uw_uart|i_uarts|TxDiv_10_ ),
	.datab(\u_uw_uart|i_uarts|TxDiv_11_ ),
	.datac(\u_uw_uart|i_uarts|TxDiv_6_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_9_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N7
cycloneii_lcell_ff \u_uw_uart|reg_state (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39865z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|state ));

// Location: LCFF_X38_Y24_N17
cycloneii_lcell_ff \u_uw_uart|reg_dsend (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39739z2 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|dsend ));

// Location: LCCOMB_X38_Y24_N20
cycloneii_lcell_comb \u_uw_uart|ix18433z52923 (
// Equation(s):
// \u_uw_uart|nx18433z1  = (!\u_uw_uart|state  & ((\u_uw_uart|dsend ) # (\u_uw_uart|ld_sdout )))

	.dataa(\u_uw_uart|dsend ),
	.datab(vcc),
	.datac(\u_uw_uart|ld_sdout ),
	.datad(\u_uw_uart|state ),
	.cin(gnd),
	.combout(\u_uw_uart|nx18433z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix18433z52923 .lut_mask = 16'h00FA;
defparam \u_uw_uart|ix18433z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y24_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_3_ ));

// Location: LCFF_X37_Y24_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_2_ ));

// Location: LCFF_X37_Y24_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_1_ ));

// Location: LCFF_X37_Y24_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx48926z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxBitCnt_0_ ));

// Location: LCCOMB_X38_Y24_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z3  = (\u_uw_uart|i_uarts|TxBitCnt_2_ ) # (((\u_uw_uart|i_uarts|TxBitCnt_3_ ) # (\u_uw_uart|i_uarts|TxBitCnt_1_ )) # (!\u_uw_uart|i_uarts|TxBitCnt_0_ ))

	.dataa(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52925 .lut_mask = 16'hFFFB;
defparam \u_uw_uart|i_uarts|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y23_N1
cycloneii_lcell_ff \u_uw_uart|reg_sdout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39865z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_0_ ));

// Location: LCFF_X40_Y24_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_1_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_2_ ));

// Location: LCCOMB_X38_Y24_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx35603z1  = (!\u_uw_uart|i_uarts|TxFSM_0_  & ((\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TopTx ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|ld_sdout ))))

	.dataa(\u_uw_uart|ld_sdout ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx35603z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52924 .lut_mask = 16'h0C0A;
defparam \u_uw_uart|i_uarts|ix35603z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N21
cycloneii_lcell_ff \u_kirsch|reg_q_7__dup_11 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_7__dup_237 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_7_ ));

// Location: LCCOMB_X43_Y22_N2
cycloneii_lcell_comb \u_kirsch|ix62927z52925 (
// Equation(s):
// \u_kirsch|nx62927z3  = (\u_kirsch|column_5_  & (\u_kirsch|column_6_  & (\u_kirsch|column_4_  & \u_kirsch|column_7_ )))

	.dataa(\u_kirsch|column_5_ ),
	.datab(\u_kirsch|column_6_ ),
	.datac(\u_kirsch|column_4_ ),
	.datad(\u_kirsch|column_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx62927z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix62927z52925 .lut_mask = 16'h8000;
defparam \u_kirsch|ix62927z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N20
cycloneii_lcell_comb \u_kirsch|ix23902z52925 (
// Equation(s):
// \u_kirsch|nx23902z3  = (\u_kirsch|column_valid2_5_ ) # ((\u_kirsch|column_valid2_4_ ) # ((\u_kirsch|column_valid2_7_ ) # (\u_kirsch|column_valid2_6_ )))

	.dataa(\u_kirsch|column_valid2_5_ ),
	.datab(\u_kirsch|column_valid2_4_ ),
	.datac(\u_kirsch|column_valid2_7_ ),
	.datad(\u_kirsch|column_valid2_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx23902z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23902z52925 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix23902z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N12
cycloneii_lcell_comb \u_kirsch|ix23902z52924 (
// Equation(s):
// \u_kirsch|nx23902z2  = (\u_kirsch|column_valid2_1_ ) # ((\u_kirsch|column_valid2_2_ ) # ((\u_kirsch|column_valid2_3_ ) # (\u_kirsch|nx23902z3 )))

	.dataa(\u_kirsch|column_valid2_1_ ),
	.datab(\u_kirsch|column_valid2_2_ ),
	.datac(\u_kirsch|column_valid2_3_ ),
	.datad(\u_kirsch|nx23902z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx23902z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23902z52924 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix23902z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N5
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid1_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_7_ ));

// Location: LCFF_X43_Y22_N7
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_3_ ));

// Location: LCCOMB_X35_Y24_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_4__dup_103  = (\u_uw_uart|i_uarts|TxDiv_4_  & (\u_uw_uart|i_uarts|nx28532z5  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_4_  & (!\u_uw_uart|i_uarts|nx28532z5  & VCC))
// \u_uw_uart|i_uarts|nx28532z4  = CARRY((\u_uw_uart|i_uarts|TxDiv_4_  & !\u_uw_uart|i_uarts|nx28532z5 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z5 ),
	.combout(\u_uw_uart|i_uarts|inc_d_4__dup_103 ),
	.cout(\u_uw_uart|i_uarts|nx28532z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix28532z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_6__dup_107  = (\u_uw_uart|i_uarts|TxDiv_6_  & (\u_uw_uart|i_uarts|nx28532z3  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_6_  & (!\u_uw_uart|i_uarts|nx28532z3  & VCC))
// \u_uw_uart|i_uarts|nx28532z2  = CARRY((\u_uw_uart|i_uarts|TxDiv_6_  & !\u_uw_uart|i_uarts|nx28532z3 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z3 ),
	.combout(\u_uw_uart|i_uarts|inc_d_6__dup_107 ),
	.cout(\u_uw_uart|i_uarts|nx28532z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52925 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix28532z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_8__dup_111  = (\u_uw_uart|i_uarts|TxDiv_8_  & (\u_uw_uart|i_uarts|nx28532z1  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_8_  & (!\u_uw_uart|i_uarts|nx28532z1  & VCC))
// \u_uw_uart|i_uarts|nx18093z3  = CARRY((\u_uw_uart|i_uarts|TxDiv_8_  & !\u_uw_uart|i_uarts|nx28532z1 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_8__dup_111 ),
	.cout(\u_uw_uart|i_uarts|nx18093z3 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52923 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix28532z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_9__dup_113  = (\u_uw_uart|i_uarts|TxDiv_9_  & (!\u_uw_uart|i_uarts|nx18093z3 )) # (!\u_uw_uart|i_uarts|TxDiv_9_  & ((\u_uw_uart|i_uarts|nx18093z3 ) # (GND)))
// \u_uw_uart|i_uarts|nx18093z2  = CARRY((!\u_uw_uart|i_uarts|nx18093z3 ) # (!\u_uw_uart|i_uarts|TxDiv_9_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z3 ),
	.combout(\u_uw_uart|i_uarts|inc_d_9__dup_113 ),
	.cout(\u_uw_uart|i_uarts|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52925 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_10__dup_114  = (\u_uw_uart|i_uarts|TxDiv_10_  & (\u_uw_uart|i_uarts|nx18093z2  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_10_  & (!\u_uw_uart|i_uarts|nx18093z2  & VCC))
// \u_uw_uart|i_uarts|nx18093z1  = CARRY((\u_uw_uart|i_uarts|TxDiv_10_  & !\u_uw_uart|i_uarts|nx18093z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx18093z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_10__dup_114 ),
	.cout(\u_uw_uart|i_uarts|nx18093z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52924 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|ix18093z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix18093z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_11_  = \u_uw_uart|i_uarts|nx18093z1  $ (\u_uw_uart|i_uarts|TxDiv_11_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|TxDiv_11_ ),
	.cin(\u_uw_uart|i_uarts|nx18093z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_11_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|i_uarts|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N6
cycloneii_lcell_comb \u_uw_uart|ix39865z52923 (
// Equation(s):
// \u_uw_uart|nx39865z1  = (\u_uw_uart|dsend  & !\u_uw_uart|state )

	.dataa(\u_uw_uart|dsend ),
	.datab(vcc),
	.datac(\u_uw_uart|state ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx39865z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39865z52923 .lut_mask = 16'h0A0A;
defparam \u_uw_uart|ix39865z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y23_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxErr ));

// Location: LCFF_X41_Y23_N7
cycloneii_lcell_ff \u_uw_uart|reg_ack (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39480z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ack ));

// Location: LCCOMB_X38_Y23_N8
cycloneii_lcell_comb \u_uw_uart|ix39739z52924 (
// Equation(s):
// \u_uw_uart|nx39739z1  = (\u_uw_uart|ack ) # (\u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39739z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39739z52924 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|ix39739z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N31
cycloneii_lcell_ff \u_uw_uart|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_15_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_15_ ));

// Location: LCFF_X37_Y23_N29
cycloneii_lcell_ff \u_uw_uart|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_14_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_14_ ));

// Location: LCFF_X37_Y23_N27
cycloneii_lcell_ff \u_uw_uart|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_13_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_13_ ));

// Location: LCFF_X37_Y23_N25
cycloneii_lcell_ff \u_uw_uart|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_12_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_12_ ));

// Location: LCCOMB_X38_Y23_N10
cycloneii_lcell_comb \u_uw_uart|ix39480z52926 (
// Equation(s):
// \u_uw_uart|nx39480z4  = (!\u_uw_uart|waitcount_13_  & (!\u_uw_uart|waitcount_14_  & (!\u_uw_uart|waitcount_15_  & !\u_uw_uart|waitcount_12_ )))

	.dataa(\u_uw_uart|waitcount_13_ ),
	.datab(\u_uw_uart|waitcount_14_ ),
	.datac(\u_uw_uart|waitcount_15_ ),
	.datad(\u_uw_uart|waitcount_12_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52926 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N23
cycloneii_lcell_ff \u_uw_uart|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_11_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_11_ ));

// Location: LCFF_X37_Y23_N21
cycloneii_lcell_ff \u_uw_uart|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_10_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_10_ ));

// Location: LCFF_X37_Y23_N19
cycloneii_lcell_ff \u_uw_uart|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_9_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_9_ ));

// Location: LCFF_X37_Y23_N17
cycloneii_lcell_ff \u_uw_uart|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_8_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_8_ ));

// Location: LCCOMB_X38_Y23_N28
cycloneii_lcell_comb \u_uw_uart|ix39480z52927 (
// Equation(s):
// \u_uw_uart|nx39480z5  = (!\u_uw_uart|waitcount_11_  & (!\u_uw_uart|waitcount_8_  & (!\u_uw_uart|waitcount_10_  & !\u_uw_uart|waitcount_9_ )))

	.dataa(\u_uw_uart|waitcount_11_ ),
	.datab(\u_uw_uart|waitcount_8_ ),
	.datac(\u_uw_uart|waitcount_10_ ),
	.datad(\u_uw_uart|waitcount_9_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix39480z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N15
cycloneii_lcell_ff \u_uw_uart|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_7_ ));

// Location: LCFF_X37_Y23_N13
cycloneii_lcell_ff \u_uw_uart|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_6_ ));

// Location: LCFF_X37_Y23_N11
cycloneii_lcell_ff \u_uw_uart|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_5_ ));

// Location: LCFF_X37_Y23_N9
cycloneii_lcell_ff \u_uw_uart|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_4_ ));

// Location: LCCOMB_X38_Y23_N14
cycloneii_lcell_comb \u_uw_uart|ix39480z52928 (
// Equation(s):
// \u_uw_uart|nx39480z6  = (!\u_uw_uart|waitcount_7_  & (\u_uw_uart|waitcount_6_  & (\u_uw_uart|waitcount_5_  & !\u_uw_uart|waitcount_4_ )))

	.dataa(\u_uw_uart|waitcount_7_ ),
	.datab(\u_uw_uart|waitcount_6_ ),
	.datac(\u_uw_uart|waitcount_5_ ),
	.datad(\u_uw_uart|waitcount_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52928 .lut_mask = 16'h0040;
defparam \u_uw_uart|ix39480z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y23_N7
cycloneii_lcell_ff \u_uw_uart|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_3_ ));

// Location: LCFF_X37_Y23_N5
cycloneii_lcell_ff \u_uw_uart|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_2_ ));

// Location: LCFF_X37_Y23_N3
cycloneii_lcell_ff \u_uw_uart|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_1_ ));

// Location: LCFF_X38_Y23_N1
cycloneii_lcell_ff \u_uw_uart|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|inc_d_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx39480z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx21084z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|waitcount_0_ ));

// Location: LCCOMB_X38_Y23_N26
cycloneii_lcell_comb \u_uw_uart|ix39480z52929 (
// Equation(s):
// \u_uw_uart|nx39480z7  = (!\u_uw_uart|waitcount_1_  & (!\u_uw_uart|waitcount_3_  & (\u_uw_uart|waitcount_2_  & !\u_uw_uart|waitcount_0_ )))

	.dataa(\u_uw_uart|waitcount_1_ ),
	.datab(\u_uw_uart|waitcount_3_ ),
	.datac(\u_uw_uart|waitcount_2_ ),
	.datad(\u_uw_uart|waitcount_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52929 .lut_mask = 16'h0010;
defparam \u_uw_uart|ix39480z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N20
cycloneii_lcell_comb \u_uw_uart|ix39480z52925 (
// Equation(s):
// \u_uw_uart|nx39480z3  = (\u_uw_uart|nx39480z4  & (\u_uw_uart|nx39480z5  & (\u_uw_uart|nx39480z6  & \u_uw_uart|nx39480z7 )))

	.dataa(\u_uw_uart|nx39480z4 ),
	.datab(\u_uw_uart|nx39480z5 ),
	.datac(\u_uw_uart|nx39480z6 ),
	.datad(\u_uw_uart|nx39480z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52925 .lut_mask = 16'h8000;
defparam \u_uw_uart|ix39480z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N30
cycloneii_lcell_comb \u_uw_uart|ix39739z52926 (
// Equation(s):
// \u_uw_uart|nx39739z3  = (\u_uw_uart|nx39739z1  & (((\u_uw_uart|nx39480z3 ) # (\u_kirsch|o_valid )))) # (!\u_uw_uart|nx39739z1  & (\u_uw_uart|i_uarts|RxErr ))

	.dataa(\u_uw_uart|i_uarts|RxErr ),
	.datab(\u_uw_uart|nx39739z1 ),
	.datac(\u_uw_uart|nx39480z3 ),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39739z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39739z52926 .lut_mask = 16'hEEE2;
defparam \u_uw_uart|ix39739z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N16
cycloneii_lcell_comb \u_uw_uart|ix39739z52925 (
// Equation(s):
// \u_uw_uart|nx39739z2  = (\nrst~combout  & ((\u_uw_uart|nx39739z3 ) # ((!\u_kirsch|nx25376z9  & !\u_kirsch|o_mode_1_ ))))

	.dataa(\u_kirsch|nx25376z9 ),
	.datab(\u_kirsch|o_mode_1_ ),
	.datac(\u_uw_uart|nx39739z3 ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39739z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39739z52925 .lut_mask = 16'hF100;
defparam \u_uw_uart|ix39739z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z2  = (!\u_uw_uart|i_uarts|TxBitCnt_0_  & (!\u_uw_uart|i_uarts|TxBitCnt_2_  & !\u_uw_uart|i_uarts|TxBitCnt_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52924 .lut_mask = 16'h0003;
defparam \u_uw_uart|i_uarts|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51917z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx51917z1  = (\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TxBitCnt_3_  $ (\u_uw_uart|i_uarts|nx51917z2 )))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & ((\u_uw_uart|i_uarts|TopTx ) # (\u_uw_uart|i_uarts|TxBitCnt_3_  $ 
// (\u_uw_uart|i_uarts|nx51917z2 ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|nx51917z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51917z52923 .lut_mask = 16'h4FF4;
defparam \u_uw_uart|i_uarts|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z2  = (\u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxFSM_0_  $ (\u_uw_uart|i_uarts|TxFSM_1_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52924 .lut_mask = 16'h0CC0;
defparam \u_uw_uart|i_uarts|ix48926z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z2  = (\u_uw_uart|i_uarts|TopTx  & !\u_uw_uart|i_uarts|TxFSM_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52924 .lut_mask = 16'h00CC;
defparam \u_uw_uart|i_uarts|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix50920z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx50920z1  = (!\u_uw_uart|i_uarts|nx50920z2  & (\u_uw_uart|i_uarts|TxBitCnt_2_  $ (((!\u_uw_uart|i_uarts|TxBitCnt_0_  & !\u_uw_uart|i_uarts|TxBitCnt_1_ )))))

	.dataa(\u_uw_uart|i_uarts|nx50920z2 ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix50920z52923 .lut_mask = 16'h5041;
defparam \u_uw_uart|i_uarts|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix49923z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx49923z1  = (\u_uw_uart|i_uarts|TxFSM_1_  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ ((!\u_uw_uart|i_uarts|TxBitCnt_1_ )))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|i_uarts|TopTx  & (\u_uw_uart|i_uarts|TxBitCnt_0_  $ 
// (!\u_uw_uart|i_uarts|TxBitCnt_1_ ))))

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix49923z52923 .lut_mask = 16'h82C3;
defparam \u_uw_uart|i_uarts|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix48926z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx48926z1  = ((!\u_uw_uart|i_uarts|TxFSM_1_  & \u_uw_uart|i_uarts|TopTx )) # (!\u_uw_uart|i_uarts|TxBitCnt_0_ )

	.dataa(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxBitCnt_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix48926z52923 .lut_mask = 16'h4F4F;
defparam \u_uw_uart|i_uarts|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N25
cycloneii_lcell_ff \u_uw_uart|reg_mdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx33757z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39739z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_0_ ));

// Location: LCFF_X40_Y23_N3
cycloneii_lcell_ff \u_uw_uart|reg_sdout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39865z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_1_ ));

// Location: LCFF_X40_Y24_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_2_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_3_ ));

// Location: LCCOMB_X45_Y22_N18
cycloneii_lcell_comb \u_kirsch|ix19921z52924 (
// Equation(s):
// \u_kirsch|inc_d_6__dup_235  = (\u_kirsch|column_6_  & (\u_kirsch|nx19921z2  $ (GND))) # (!\u_kirsch|column_6_  & (!\u_kirsch|nx19921z2  & VCC))
// \u_kirsch|nx19921z1  = CARRY((\u_kirsch|column_6_  & !\u_kirsch|nx19921z2 ))

	.dataa(vcc),
	.datab(\u_kirsch|column_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx19921z2 ),
	.combout(\u_kirsch|inc_d_6__dup_235 ),
	.cout(\u_kirsch|nx19921z1 ));
// synopsys translate_off
defparam \u_kirsch|ix19921z52924 .lut_mask = 16'hC30C;
defparam \u_kirsch|ix19921z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N20
cycloneii_lcell_comb \u_kirsch|ix19921z52923 (
// Equation(s):
// \u_kirsch|inc_d_7__dup_237  = \u_kirsch|column_7_  $ (\u_kirsch|nx19921z1 )

	.dataa(\u_kirsch|column_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx19921z1 ),
	.combout(\u_kirsch|inc_d_7__dup_237 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix19921z52923 .lut_mask = 16'h5A5A;
defparam \u_kirsch|ix19921z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X36_Y24_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopRx ));

// Location: LCCOMB_X41_Y23_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15376z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15376z1  = (\u_uw_uart|i_uarts|RxFSM_5_ ) # ((\u_uw_uart|i_uarts|RxErr  & !\u_uw_uart|i_uarts|RxRDY ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(\u_uw_uart|i_uarts|RxErr ),
	.datad(\u_uw_uart|i_uarts|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15376z52923 .lut_mask = 16'hCCFC;
defparam \u_uw_uart|i_uarts|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N2
cycloneii_lcell_comb \u_uw_uart|ix39480z52924 (
// Equation(s):
// \u_uw_uart|nx39480z2  = ((\u_uw_uart|nx39480z3 ) # (\u_kirsch|o_valid )) # (!\nrst~combout )

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|nx39480z3 ),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52924 .lut_mask = 16'hFFF3;
defparam \u_uw_uart|ix39480z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y23_N6
cycloneii_lcell_comb \u_uw_uart|ix39480z52923 (
// Equation(s):
// \u_uw_uart|nx39480z1  = (!\u_uw_uart|nx39480z2  & ((\u_uw_uart|ack ) # (\u_uw_uart|o_pixavail )))

	.dataa(\u_uw_uart|nx39480z2 ),
	.datab(vcc),
	.datac(\u_uw_uart|ack ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52923 .lut_mask = 16'h5550;
defparam \u_uw_uart|ix39480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N0
cycloneii_lcell_comb \u_uw_uart|ix22081z52939 (
// Equation(s):
// \u_uw_uart|nx22081z15  = CARRY(\u_uw_uart|waitcount_0_ )

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_uw_uart|nx22081z15 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52939 .lut_mask = 16'h00CC;
defparam \u_uw_uart|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N2
cycloneii_lcell_comb \u_uw_uart|ix22081z52938 (
// Equation(s):
// \u_uw_uart|inc_d_1_  = (\u_uw_uart|waitcount_1_  & (!\u_uw_uart|nx22081z15 )) # (!\u_uw_uart|waitcount_1_  & ((\u_uw_uart|nx22081z15 ) # (GND)))
// \u_uw_uart|nx22081z14  = CARRY((!\u_uw_uart|nx22081z15 ) # (!\u_uw_uart|waitcount_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z15 ),
	.combout(\u_uw_uart|inc_d_1_ ),
	.cout(\u_uw_uart|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N4
cycloneii_lcell_comb \u_uw_uart|ix22081z52937 (
// Equation(s):
// \u_uw_uart|inc_d_2_  = (\u_uw_uart|waitcount_2_  & (\u_uw_uart|nx22081z14  $ (GND))) # (!\u_uw_uart|waitcount_2_  & (!\u_uw_uart|nx22081z14  & VCC))
// \u_uw_uart|nx22081z13  = CARRY((\u_uw_uart|waitcount_2_  & !\u_uw_uart|nx22081z14 ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z14 ),
	.combout(\u_uw_uart|inc_d_2_ ),
	.cout(\u_uw_uart|nx22081z13 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N6
cycloneii_lcell_comb \u_uw_uart|ix22081z52936 (
// Equation(s):
// \u_uw_uart|inc_d_3_  = (\u_uw_uart|waitcount_3_  & (!\u_uw_uart|nx22081z13 )) # (!\u_uw_uart|waitcount_3_  & ((\u_uw_uart|nx22081z13 ) # (GND)))
// \u_uw_uart|nx22081z12  = CARRY((!\u_uw_uart|nx22081z13 ) # (!\u_uw_uart|waitcount_3_ ))

	.dataa(\u_uw_uart|waitcount_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z13 ),
	.combout(\u_uw_uart|inc_d_3_ ),
	.cout(\u_uw_uart|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N8
cycloneii_lcell_comb \u_uw_uart|ix22081z52935 (
// Equation(s):
// \u_uw_uart|inc_d_4_  = (\u_uw_uart|waitcount_4_  & (\u_uw_uart|nx22081z12  $ (GND))) # (!\u_uw_uart|waitcount_4_  & (!\u_uw_uart|nx22081z12  & VCC))
// \u_uw_uart|nx22081z11  = CARRY((\u_uw_uart|waitcount_4_  & !\u_uw_uart|nx22081z12 ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z12 ),
	.combout(\u_uw_uart|inc_d_4_ ),
	.cout(\u_uw_uart|nx22081z11 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N10
cycloneii_lcell_comb \u_uw_uart|ix22081z52934 (
// Equation(s):
// \u_uw_uart|inc_d_5_  = (\u_uw_uart|waitcount_5_  & (!\u_uw_uart|nx22081z11 )) # (!\u_uw_uart|waitcount_5_  & ((\u_uw_uart|nx22081z11 ) # (GND)))
// \u_uw_uart|nx22081z10  = CARRY((!\u_uw_uart|nx22081z11 ) # (!\u_uw_uart|waitcount_5_ ))

	.dataa(\u_uw_uart|waitcount_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z11 ),
	.combout(\u_uw_uart|inc_d_5_ ),
	.cout(\u_uw_uart|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N12
cycloneii_lcell_comb \u_uw_uart|ix22081z52933 (
// Equation(s):
// \u_uw_uart|inc_d_6_  = (\u_uw_uart|waitcount_6_  & (\u_uw_uart|nx22081z10  $ (GND))) # (!\u_uw_uart|waitcount_6_  & (!\u_uw_uart|nx22081z10  & VCC))
// \u_uw_uart|nx22081z9  = CARRY((\u_uw_uart|waitcount_6_  & !\u_uw_uart|nx22081z10 ))

	.dataa(\u_uw_uart|waitcount_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z10 ),
	.combout(\u_uw_uart|inc_d_6_ ),
	.cout(\u_uw_uart|nx22081z9 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N14
cycloneii_lcell_comb \u_uw_uart|ix22081z52932 (
// Equation(s):
// \u_uw_uart|inc_d_7_  = (\u_uw_uart|waitcount_7_  & (!\u_uw_uart|nx22081z9 )) # (!\u_uw_uart|waitcount_7_  & ((\u_uw_uart|nx22081z9 ) # (GND)))
// \u_uw_uart|nx22081z8  = CARRY((!\u_uw_uart|nx22081z9 ) # (!\u_uw_uart|waitcount_7_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z9 ),
	.combout(\u_uw_uart|inc_d_7_ ),
	.cout(\u_uw_uart|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N16
cycloneii_lcell_comb \u_uw_uart|ix22081z52931 (
// Equation(s):
// \u_uw_uart|inc_d_8_  = (\u_uw_uart|waitcount_8_  & (\u_uw_uart|nx22081z8  $ (GND))) # (!\u_uw_uart|waitcount_8_  & (!\u_uw_uart|nx22081z8  & VCC))
// \u_uw_uart|nx22081z7  = CARRY((\u_uw_uart|waitcount_8_  & !\u_uw_uart|nx22081z8 ))

	.dataa(\u_uw_uart|waitcount_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z8 ),
	.combout(\u_uw_uart|inc_d_8_ ),
	.cout(\u_uw_uart|nx22081z7 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N18
cycloneii_lcell_comb \u_uw_uart|ix22081z52930 (
// Equation(s):
// \u_uw_uart|inc_d_9_  = (\u_uw_uart|waitcount_9_  & (!\u_uw_uart|nx22081z7 )) # (!\u_uw_uart|waitcount_9_  & ((\u_uw_uart|nx22081z7 ) # (GND)))
// \u_uw_uart|nx22081z6  = CARRY((!\u_uw_uart|nx22081z7 ) # (!\u_uw_uart|waitcount_9_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z7 ),
	.combout(\u_uw_uart|inc_d_9_ ),
	.cout(\u_uw_uart|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N20
cycloneii_lcell_comb \u_uw_uart|ix22081z52929 (
// Equation(s):
// \u_uw_uart|inc_d_10_  = (\u_uw_uart|waitcount_10_  & (\u_uw_uart|nx22081z6  $ (GND))) # (!\u_uw_uart|waitcount_10_  & (!\u_uw_uart|nx22081z6  & VCC))
// \u_uw_uart|nx22081z5  = CARRY((\u_uw_uart|waitcount_10_  & !\u_uw_uart|nx22081z6 ))

	.dataa(\u_uw_uart|waitcount_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z6 ),
	.combout(\u_uw_uart|inc_d_10_ ),
	.cout(\u_uw_uart|nx22081z5 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N22
cycloneii_lcell_comb \u_uw_uart|ix22081z52928 (
// Equation(s):
// \u_uw_uart|inc_d_11_  = (\u_uw_uart|waitcount_11_  & (!\u_uw_uart|nx22081z5 )) # (!\u_uw_uart|waitcount_11_  & ((\u_uw_uart|nx22081z5 ) # (GND)))
// \u_uw_uart|nx22081z4  = CARRY((!\u_uw_uart|nx22081z5 ) # (!\u_uw_uart|waitcount_11_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z5 ),
	.combout(\u_uw_uart|inc_d_11_ ),
	.cout(\u_uw_uart|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N24
cycloneii_lcell_comb \u_uw_uart|ix22081z52927 (
// Equation(s):
// \u_uw_uart|inc_d_12_  = (\u_uw_uart|waitcount_12_  & (\u_uw_uart|nx22081z4  $ (GND))) # (!\u_uw_uart|waitcount_12_  & (!\u_uw_uart|nx22081z4  & VCC))
// \u_uw_uart|nx22081z3  = CARRY((\u_uw_uart|waitcount_12_  & !\u_uw_uart|nx22081z4 ))

	.dataa(\u_uw_uart|waitcount_12_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z4 ),
	.combout(\u_uw_uart|inc_d_12_ ),
	.cout(\u_uw_uart|nx22081z3 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N26
cycloneii_lcell_comb \u_uw_uart|ix22081z52926 (
// Equation(s):
// \u_uw_uart|inc_d_13_  = (\u_uw_uart|waitcount_13_  & (!\u_uw_uart|nx22081z3 )) # (!\u_uw_uart|waitcount_13_  & ((\u_uw_uart|nx22081z3 ) # (GND)))
// \u_uw_uart|nx22081z2  = CARRY((!\u_uw_uart|nx22081z3 ) # (!\u_uw_uart|waitcount_13_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_13_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z3 ),
	.combout(\u_uw_uart|inc_d_13_ ),
	.cout(\u_uw_uart|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N28
cycloneii_lcell_comb \u_uw_uart|ix22081z52925 (
// Equation(s):
// \u_uw_uart|inc_d_14_  = (\u_uw_uart|waitcount_14_  & (\u_uw_uart|nx22081z2  $ (GND))) # (!\u_uw_uart|waitcount_14_  & (!\u_uw_uart|nx22081z2  & VCC))
// \u_uw_uart|nx22081z1  = CARRY((\u_uw_uart|waitcount_14_  & !\u_uw_uart|nx22081z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart|waitcount_14_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|nx22081z2 ),
	.combout(\u_uw_uart|inc_d_14_ ),
	.cout(\u_uw_uart|nx22081z1 ));
// synopsys translate_off
defparam \u_uw_uart|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y23_N30
cycloneii_lcell_comb \u_uw_uart|ix22081z52923 (
// Equation(s):
// \u_uw_uart|inc_d_15_  = \u_uw_uart|nx22081z1  $ (\u_uw_uart|waitcount_15_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|waitcount_15_ ),
	.cin(\u_uw_uart|nx22081z1 ),
	.combout(\u_uw_uart|inc_d_15_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N4
cycloneii_lcell_comb \u_uw_uart|ix21084z52923 (
// Equation(s):
// \u_uw_uart|nx21084z1  = (\u_uw_uart|o_pixavail ) # ((\u_uw_uart|ack ) # (!\nrst~combout ))

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|ack ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx21084z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix21084z52923 .lut_mask = 16'hFBFB;
defparam \u_uw_uart|ix21084z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N0
cycloneii_lcell_comb \u_uw_uart|ix51271z52923 (
// Equation(s):
// \u_uw_uart|inc_d_0_  = !\u_uw_uart|waitcount_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|waitcount_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|inc_d_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix51271z52923 .lut_mask = 16'h0F0F;
defparam \u_uw_uart|ix51271z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_r9 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx61908z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_edge ));

// Location: LCCOMB_X38_Y23_N6
cycloneii_lcell_comb \u_uw_uart|ix36748z52924 (
// Equation(s):
// \u_uw_uart|nx36748z2  = (\u_uw_uart|o_pixavail  & ((\u_kirsch|o_mode_1_ ) # ((\u_kirsch|nx25376z9 )))) # (!\u_uw_uart|o_pixavail  & (\u_uw_uart|ack  & ((\u_kirsch|o_mode_1_ ) # (\u_kirsch|nx25376z9 ))))

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_kirsch|o_mode_1_ ),
	.datac(\u_uw_uart|ack ),
	.datad(\u_kirsch|nx25376z9 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx36748z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix36748z52924 .lut_mask = 16'hFAC8;
defparam \u_uw_uart|ix36748z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N24
cycloneii_lcell_comb \u_uw_uart|ix33757z52923 (
// Equation(s):
// \u_uw_uart|nx33757z1  = (\u_uw_uart|nx36748z2  & ((\u_kirsch|o_edge ) # (!\u_kirsch|o_valid )))

	.dataa(\u_uw_uart|nx36748z2 ),
	.datab(\u_kirsch|o_edge ),
	.datac(vcc),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33757z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33757z52923 .lut_mask = 16'h88AA;
defparam \u_uw_uart|ix33757z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N17
cycloneii_lcell_ff \u_uw_uart|reg_mdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx34754z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39739z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_1_ ));

// Location: LCFF_X40_Y23_N29
cycloneii_lcell_ff \u_uw_uart|reg_sdout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|mdata_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|nx39865z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_2_ ));

// Location: LCFF_X40_Y24_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_3_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_4_ ));

// Location: LCFF_X37_Y24_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_3_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_3_ ));

// Location: LCCOMB_X36_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|a_3_  = \u_uw_uart|i_uarts|RxDivisor_4_  $ (!\u_uw_uart|i_uarts|RxDiv_3_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datac(\u_uw_uart|i_uarts|RxDiv_3_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|a_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52924 .lut_mask = 16'hC3C3;
defparam \u_uw_uart|i_uarts|ix34394z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y24_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_7_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_7_ ));

// Location: LCFF_X37_Y24_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_6_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_6_ ));

// Location: LCFF_X37_Y24_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_4_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_4_ ));

// Location: LCCOMB_X36_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix53265z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx53265z5  = (\u_uw_uart|i_uarts|RxDiv_7_  & (\u_uw_uart|i_uarts|RxDivisor_4_  & (\u_uw_uart|i_uarts|RxDiv_6_  & \u_uw_uart|i_uarts|RxDiv_4_ ))) # (!\u_uw_uart|i_uarts|RxDiv_7_  & (!\u_uw_uart|i_uarts|RxDivisor_4_  & 
// (!\u_uw_uart|i_uarts|RxDiv_6_  & !\u_uw_uart|i_uarts|RxDiv_4_ )))

	.dataa(\u_uw_uart|i_uarts|RxDiv_7_ ),
	.datab(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datac(\u_uw_uart|i_uarts|RxDiv_6_ ),
	.datad(\u_uw_uart|i_uarts|RxDiv_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx53265z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix53265z52926 .lut_mask = 16'h8001;
defparam \u_uw_uart|i_uarts|ix53265z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y24_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_10_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_10_ ));

// Location: LCFF_X37_Y24_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_9_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_9_ ));

// Location: LCFF_X37_Y24_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_8_ ));

// Location: LCFF_X37_Y24_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_5_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_5_ ));

// Location: LCCOMB_X36_Y24_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix53265z52927 (
// Equation(s):
// \u_uw_uart|i_uarts|nx53265z6  = (!\u_uw_uart|i_uarts|RxDiv_9_  & (!\u_uw_uart|i_uarts|RxDiv_8_  & (!\u_uw_uart|i_uarts|RxDiv_5_  & !\u_uw_uart|i_uarts|RxDiv_10_ )))

	.dataa(\u_uw_uart|i_uarts|RxDiv_9_ ),
	.datab(\u_uw_uart|i_uarts|RxDiv_8_ ),
	.datac(\u_uw_uart|i_uarts|RxDiv_5_ ),
	.datad(\u_uw_uart|i_uarts|RxDiv_10_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx53265z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix53265z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix53265z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y24_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_2_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_2_ ));

// Location: LCFF_X37_Y24_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_1_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_1_ ));

// Location: LCFF_X36_Y24_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_0_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx53265z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDiv_0_ ));

// Location: LCCOMB_X36_Y24_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z2  = (!\u_uw_uart|i_uarts|RxDiv_1_  & (!\u_uw_uart|i_uarts|RxDiv_2_  & (!\u_uw_uart|i_uarts|RxDiv_0_  & \u_uw_uart|i_uarts|nx53265z2 )))

	.dataa(\u_uw_uart|i_uarts|RxDiv_1_ ),
	.datab(\u_uw_uart|i_uarts|RxDiv_2_ ),
	.datac(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.datad(\u_uw_uart|i_uarts|nx53265z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52925 .lut_mask = 16'h0100;
defparam \u_uw_uart|i_uarts|ix34394z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix34394z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx34394z1  = (\u_uw_uart|i_uarts|nx34394z2  & (\u_uw_uart|i_uarts|nx53265z5  & (\u_uw_uart|i_uarts|nx53265z6  & \u_uw_uart|i_uarts|a_3_ )))

	.dataa(\u_uw_uart|i_uarts|nx34394z2 ),
	.datab(\u_uw_uart|i_uarts|nx53265z5 ),
	.datac(\u_uw_uart|i_uarts|nx53265z6 ),
	.datad(\u_uw_uart|i_uarts|a_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix34394z52923 .lut_mask = 16'h8000;
defparam \u_uw_uart|i_uarts|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y24_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_3_ ));

// Location: LCFF_X40_Y24_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_2_ ));

// Location: LCCOMB_X40_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z2  = (!\u_uw_uart|i_uarts|RxBitCnt_2_  & \u_uw_uart|i_uarts|RxBitCnt_3_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52924 .lut_mask = 16'h3300;
defparam \u_uw_uart|i_uarts|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y23_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z2  = (\u_uw_uart|rawrx ) # (!\u_uw_uart|i_uarts|RxFSM_5_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(\u_uw_uart|rawrx ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52925 .lut_mask = 16'hF3F3;
defparam \u_uw_uart|i_uarts|ix15541z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_r6_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_12_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_12_ ));

// Location: LCFF_X43_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_r4_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_9_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_9_ ));

// Location: LCFF_X44_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_r6_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_11_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_11_ ));

// Location: LCFF_X42_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_r4_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_8_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_8_ ));

// Location: LCFF_X44_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_r6_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_10_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_10_ ));

// Location: LCFF_X42_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_r4_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_7_ ));

// Location: LCFF_X44_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_r6_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_9_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_9_ ));

// Location: LCFF_X42_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_r4_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_6_ ));

// Location: LCFF_X44_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_r6_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_8_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_8_ ));

// Location: LCFF_X42_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_r4_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_5_ ));

// Location: LCFF_X44_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_r6_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_7_ ));

// Location: LCFF_X42_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_r4_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_4_ ));

// Location: LCFF_X44_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_r6_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_6_ ));

// Location: LCFF_X43_Y23_N23
cycloneii_lcell_ff \u_kirsch|reg_r4_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_3_ ));

// Location: LCFF_X44_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_r6_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_5_ ));

// Location: LCFF_X43_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_r4_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_2_ ));

// Location: LCFF_X44_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_r6_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_4_ ));

// Location: LCFF_X43_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_r4_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_1_ ));

// Location: LCFF_X44_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_r6_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_3_ ));

// Location: LCFF_X42_Y23_N7
cycloneii_lcell_ff \u_kirsch|reg_r4_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_pix_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r4_0_ ));

// Location: LCFF_X44_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_r6_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_2_ ));

// Location: LCFF_X44_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_r6_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_1_ ));

// Location: LCFF_X44_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r6_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|o_add_op12_stage2_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r6_0_ ));

// Location: LCCOMB_X44_Y23_N2
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52936 (
// Equation(s):
// \u_kirsch|nx61908z14  = CARRY((!\u_kirsch|r6_0_  & !\u_kirsch|r6_1_ ))

	.dataa(\u_kirsch|r6_0_ ),
	.datab(\u_kirsch|r6_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|nx61908z14 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52936 .lut_mask = 16'h0011;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N4
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52935 (
// Equation(s):
// \u_kirsch|nx61908z13  = CARRY((\u_kirsch|r6_2_ ) # (!\u_kirsch|nx61908z14 ))

	.dataa(vcc),
	.datab(\u_kirsch|r6_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z14 ),
	.combout(),
	.cout(\u_kirsch|nx61908z13 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52935 .lut_mask = 16'h00CF;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N6
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52934 (
// Equation(s):
// \u_kirsch|nx61908z12  = CARRY((\u_kirsch|r6_3_  & (\u_kirsch|r4_0_  & !\u_kirsch|nx61908z13 )) # (!\u_kirsch|r6_3_  & ((\u_kirsch|r4_0_ ) # (!\u_kirsch|nx61908z13 ))))

	.dataa(\u_kirsch|r6_3_ ),
	.datab(\u_kirsch|r4_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z13 ),
	.combout(),
	.cout(\u_kirsch|nx61908z12 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52934 .lut_mask = 16'h004D;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N8
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52933 (
// Equation(s):
// \u_kirsch|nx61908z11  = CARRY((\u_kirsch|r6_4_  & ((!\u_kirsch|nx61908z12 ) # (!\u_kirsch|r4_1_ ))) # (!\u_kirsch|r6_4_  & (!\u_kirsch|r4_1_  & !\u_kirsch|nx61908z12 )))

	.dataa(\u_kirsch|r6_4_ ),
	.datab(\u_kirsch|r4_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z12 ),
	.combout(),
	.cout(\u_kirsch|nx61908z11 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52933 .lut_mask = 16'h002B;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N10
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52932 (
// Equation(s):
// \u_kirsch|nx61908z10  = CARRY((\u_kirsch|r6_5_  & (\u_kirsch|r4_2_  & !\u_kirsch|nx61908z11 )) # (!\u_kirsch|r6_5_  & ((\u_kirsch|r4_2_ ) # (!\u_kirsch|nx61908z11 ))))

	.dataa(\u_kirsch|r6_5_ ),
	.datab(\u_kirsch|r4_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z11 ),
	.combout(),
	.cout(\u_kirsch|nx61908z10 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N12
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52931 (
// Equation(s):
// \u_kirsch|nx61908z9  = CARRY((\u_kirsch|r6_6_  & ((!\u_kirsch|nx61908z10 ) # (!\u_kirsch|r4_3_ ))) # (!\u_kirsch|r6_6_  & (!\u_kirsch|r4_3_  & !\u_kirsch|nx61908z10 )))

	.dataa(\u_kirsch|r6_6_ ),
	.datab(\u_kirsch|r4_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z10 ),
	.combout(),
	.cout(\u_kirsch|nx61908z9 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52931 .lut_mask = 16'h002B;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N14
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52930 (
// Equation(s):
// \u_kirsch|sub_out_7_  = ((\u_kirsch|r6_7_  $ (\u_kirsch|r4_4_  $ (\u_kirsch|nx61908z9 )))) # (GND)
// \u_kirsch|nx61908z8  = CARRY((\u_kirsch|r6_7_  & (\u_kirsch|r4_4_  & !\u_kirsch|nx61908z9 )) # (!\u_kirsch|r6_7_  & ((\u_kirsch|r4_4_ ) # (!\u_kirsch|nx61908z9 ))))

	.dataa(\u_kirsch|r6_7_ ),
	.datab(\u_kirsch|r4_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z9 ),
	.combout(\u_kirsch|sub_out_7_ ),
	.cout(\u_kirsch|nx61908z8 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52930 .lut_mask = 16'h964D;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N16
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52929 (
// Equation(s):
// \u_kirsch|sub_out_8_  = (\u_kirsch|r6_8_  & ((\u_kirsch|r4_5_  & (!\u_kirsch|nx61908z8 )) # (!\u_kirsch|r4_5_  & ((\u_kirsch|nx61908z8 ) # (GND))))) # (!\u_kirsch|r6_8_  & ((\u_kirsch|r4_5_  & (\u_kirsch|nx61908z8  & VCC)) # (!\u_kirsch|r4_5_  & 
// (!\u_kirsch|nx61908z8 ))))
// \u_kirsch|nx61908z7  = CARRY((\u_kirsch|r6_8_  & ((!\u_kirsch|nx61908z8 ) # (!\u_kirsch|r4_5_ ))) # (!\u_kirsch|r6_8_  & (!\u_kirsch|r4_5_  & !\u_kirsch|nx61908z8 )))

	.dataa(\u_kirsch|r6_8_ ),
	.datab(\u_kirsch|r4_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z8 ),
	.combout(\u_kirsch|sub_out_8_ ),
	.cout(\u_kirsch|nx61908z7 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52929 .lut_mask = 16'h692B;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N18
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52928 (
// Equation(s):
// \u_kirsch|sub_out_9_  = ((\u_kirsch|r4_6_  $ (\u_kirsch|r6_9_  $ (\u_kirsch|nx61908z7 )))) # (GND)
// \u_kirsch|nx61908z6  = CARRY((\u_kirsch|r4_6_  & ((!\u_kirsch|nx61908z7 ) # (!\u_kirsch|r6_9_ ))) # (!\u_kirsch|r4_6_  & (!\u_kirsch|r6_9_  & !\u_kirsch|nx61908z7 )))

	.dataa(\u_kirsch|r4_6_ ),
	.datab(\u_kirsch|r6_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z7 ),
	.combout(\u_kirsch|sub_out_9_ ),
	.cout(\u_kirsch|nx61908z6 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52928 .lut_mask = 16'h962B;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N20
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52927 (
// Equation(s):
// \u_kirsch|sub_out_10_  = (\u_kirsch|r4_7_  & ((\u_kirsch|r6_10_  & (!\u_kirsch|nx61908z6 )) # (!\u_kirsch|r6_10_  & (\u_kirsch|nx61908z6  & VCC)))) # (!\u_kirsch|r4_7_  & ((\u_kirsch|r6_10_  & ((\u_kirsch|nx61908z6 ) # (GND))) # (!\u_kirsch|r6_10_  & 
// (!\u_kirsch|nx61908z6 ))))
// \u_kirsch|nx61908z5  = CARRY((\u_kirsch|r4_7_  & (\u_kirsch|r6_10_  & !\u_kirsch|nx61908z6 )) # (!\u_kirsch|r4_7_  & ((\u_kirsch|r6_10_ ) # (!\u_kirsch|nx61908z6 ))))

	.dataa(\u_kirsch|r4_7_ ),
	.datab(\u_kirsch|r6_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z6 ),
	.combout(\u_kirsch|sub_out_10_ ),
	.cout(\u_kirsch|nx61908z5 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52927 .lut_mask = 16'h694D;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N22
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52926 (
// Equation(s):
// \u_kirsch|sub_out_11_  = ((\u_kirsch|r6_11_  $ (\u_kirsch|r4_8_  $ (\u_kirsch|nx61908z5 )))) # (GND)
// \u_kirsch|nx61908z4  = CARRY((\u_kirsch|r6_11_  & (\u_kirsch|r4_8_  & !\u_kirsch|nx61908z5 )) # (!\u_kirsch|r6_11_  & ((\u_kirsch|r4_8_ ) # (!\u_kirsch|nx61908z5 ))))

	.dataa(\u_kirsch|r6_11_ ),
	.datab(\u_kirsch|r4_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z5 ),
	.combout(\u_kirsch|sub_out_11_ ),
	.cout(\u_kirsch|nx61908z4 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52926 .lut_mask = 16'h964D;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N24
cycloneii_lcell_comb \u_kirsch|sub_out_sub13_0_ix61908z52925 (
// Equation(s):
// \u_kirsch|sub_out_12_  = (\u_kirsch|r4_9_  & ((\u_kirsch|r6_12_  & (!\u_kirsch|nx61908z4 )) # (!\u_kirsch|r6_12_  & (\u_kirsch|nx61908z4  & VCC)))) # (!\u_kirsch|r4_9_  & ((\u_kirsch|r6_12_  & ((\u_kirsch|nx61908z4 ) # (GND))) # (!\u_kirsch|r6_12_  & 
// (!\u_kirsch|nx61908z4 ))))
// \u_kirsch|nx61908z3  = CARRY((\u_kirsch|r4_9_  & (\u_kirsch|r6_12_  & !\u_kirsch|nx61908z4 )) # (!\u_kirsch|r4_9_  & ((\u_kirsch|r6_12_ ) # (!\u_kirsch|nx61908z4 ))))

	.dataa(\u_kirsch|r4_9_ ),
	.datab(\u_kirsch|r6_12_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx61908z4 ),
	.combout(\u_kirsch|sub_out_12_ ),
	.cout(\u_kirsch|nx61908z3 ));
// synopsys translate_off
defparam \u_kirsch|sub_out_sub13_0_ix61908z52925 .lut_mask = 16'h694D;
defparam \u_kirsch|sub_out_sub13_0_ix61908z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix61908z52924 (
// Equation(s):
// \u_kirsch|nx61908z2  = (!\u_kirsch|nx61908z3  & \u_kirsch|valid_6_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|valid_6_ ),
	.cin(\u_kirsch|nx61908z3 ),
	.combout(\u_kirsch|nx61908z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix61908z52924 .lut_mask = 16'h0F00;
defparam \u_kirsch|ix61908z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix61908z52937 (
// Equation(s):
// \u_kirsch|nx61908z15  = (\u_kirsch|sub_out_10_ ) # ((\u_kirsch|sub_out_12_ ) # (\u_kirsch|sub_out_11_ ))

	.dataa(\u_kirsch|sub_out_10_ ),
	.datab(vcc),
	.datac(\u_kirsch|sub_out_12_ ),
	.datad(\u_kirsch|sub_out_11_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx61908z15 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix61908z52937 .lut_mask = 16'hFFFA;
defparam \u_kirsch|ix61908z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix61908z52938 (
// Equation(s):
// \u_kirsch|nx61908z16  = (\u_kirsch|sub_out_9_ ) # ((\u_kirsch|sub_out_7_  & \u_kirsch|sub_out_8_ ))

	.dataa(vcc),
	.datab(\u_kirsch|sub_out_7_ ),
	.datac(\u_kirsch|sub_out_8_ ),
	.datad(\u_kirsch|sub_out_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx61908z16 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix61908z52938 .lut_mask = 16'hFFC0;
defparam \u_kirsch|ix61908z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix61908z52939 (
// Equation(s):
// \u_kirsch|nx61908z17  = (!\u_kirsch|valid_6_  & \u_kirsch|o_edge )

	.dataa(vcc),
	.datab(\u_kirsch|valid_6_ ),
	.datac(vcc),
	.datad(\u_kirsch|o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|nx61908z17 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix61908z52939 .lut_mask = 16'h3300;
defparam \u_kirsch|ix61908z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix61908z52923 (
// Equation(s):
// \u_kirsch|nx61908z1  = (\u_kirsch|nx61908z17 ) # ((\u_kirsch|nx61908z2  & ((\u_kirsch|nx61908z16 ) # (\u_kirsch|nx61908z15 ))))

	.dataa(\u_kirsch|nx61908z16 ),
	.datab(\u_kirsch|nx61908z17 ),
	.datac(\u_kirsch|nx61908z2 ),
	.datad(\u_kirsch|nx61908z15 ),
	.cin(gnd),
	.combout(\u_kirsch|nx61908z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix61908z52923 .lut_mask = 16'hFCEC;
defparam \u_kirsch|ix61908z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_r8_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx24856z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_0_ ));

// Location: LCCOMB_X46_Y23_N12
cycloneii_lcell_comb \u_kirsch|ix63886z52923 (
// Equation(s):
// \u_kirsch|o_dir_0_  = (\u_kirsch|o_edge  & \u_kirsch|r8_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|o_edge ),
	.datad(\u_kirsch|r8_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|o_dir_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix63886z52923 .lut_mask = 16'hF000;
defparam \u_kirsch|ix63886z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N16
cycloneii_lcell_comb \u_uw_uart|ix34754z52923 (
// Equation(s):
// \u_uw_uart|nx34754z1  = (\u_uw_uart|nx36748z2  & ((\u_kirsch|o_dir_0_ ) # (!\u_kirsch|o_valid )))

	.dataa(\u_uw_uart|nx36748z2 ),
	.datab(\u_kirsch|o_dir_0_ ),
	.datac(vcc),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|nx34754z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix34754z52923 .lut_mask = 16'h88AA;
defparam \u_uw_uart|ix34754z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N19
cycloneii_lcell_ff \u_uw_uart|reg_mdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx35751z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39739z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_2_ ));

// Location: LCFF_X40_Y23_N23
cycloneii_lcell_ff \u_uw_uart|reg_sdout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39865z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_3_ ));

// Location: LCFF_X40_Y24_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_4_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_6_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_5_ ));

// Location: LCCOMB_X37_Y24_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix52268z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx52268z1  = CARRY(\u_uw_uart|i_uarts|RxDiv_0_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_uw_uart|i_uarts|nx52268z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix52268z52924 .lut_mask = 16'h00CC;
defparam \u_uw_uart|i_uarts|ix52268z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix52268z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_1_  = (\u_uw_uart|i_uarts|RxDiv_1_  & (!\u_uw_uart|i_uarts|nx52268z1 )) # (!\u_uw_uart|i_uarts|RxDiv_1_  & ((\u_uw_uart|i_uarts|nx52268z1 ) # (GND)))
// \u_uw_uart|i_uarts|nx54262z2  = CARRY((!\u_uw_uart|i_uarts|nx52268z1 ) # (!\u_uw_uart|i_uarts|RxDiv_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx52268z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_1_ ),
	.cout(\u_uw_uart|i_uarts|nx54262z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix52268z52923 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix52268z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix54262z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_2_  = (\u_uw_uart|i_uarts|RxDiv_2_  & (\u_uw_uart|i_uarts|nx54262z2  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_2_  & (!\u_uw_uart|i_uarts|nx54262z2  & VCC))
// \u_uw_uart|i_uarts|nx54262z1  = CARRY((\u_uw_uart|i_uarts|RxDiv_2_  & !\u_uw_uart|i_uarts|nx54262z2 ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx54262z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_2_ ),
	.cout(\u_uw_uart|i_uarts|nx54262z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix54262z52925 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix54262z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix54262z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_3_  = (\u_uw_uart|i_uarts|RxDiv_3_  & (!\u_uw_uart|i_uarts|nx54262z1 )) # (!\u_uw_uart|i_uarts|RxDiv_3_  & ((\u_uw_uart|i_uarts|nx54262z1 ) # (GND)))
// \u_uw_uart|i_uarts|nx58250z4  = CARRY((!\u_uw_uart|i_uarts|nx54262z1 ) # (!\u_uw_uart|i_uarts|RxDiv_3_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx54262z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_3_ ),
	.cout(\u_uw_uart|i_uarts|nx58250z4 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix54262z52923 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix54262z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix53265z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx53265z4  = (!\u_uw_uart|i_uarts|RxDiv_1_  & !\u_uw_uart|i_uarts|RxDiv_2_ )

	.dataa(\u_uw_uart|i_uarts|RxDiv_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxDiv_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx53265z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix53265z52925 .lut_mask = 16'h0055;
defparam \u_uw_uart|i_uarts|ix53265z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix53265z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx53265z3  = (!\u_uw_uart|i_uarts|RxDiv_0_  & (\u_uw_uart|i_uarts|nx53265z4  & (\u_uw_uart|i_uarts|RxDivisor_4_  $ (!\u_uw_uart|i_uarts|RxDiv_3_ ))))

	.dataa(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.datab(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datac(\u_uw_uart|i_uarts|RxDiv_3_ ),
	.datad(\u_uw_uart|i_uarts|nx53265z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx53265z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix53265z52924 .lut_mask = 16'h4100;
defparam \u_uw_uart|i_uarts|ix53265z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix53265z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx53265z1  = ((\u_uw_uart|i_uarts|nx53265z5  & (\u_uw_uart|i_uarts|nx53265z6  & \u_uw_uart|i_uarts|nx53265z3 ))) # (!\u_uw_uart|i_uarts|nx53265z2 )

	.dataa(\u_uw_uart|i_uarts|nx53265z2 ),
	.datab(\u_uw_uart|i_uarts|nx53265z5 ),
	.datac(\u_uw_uart|i_uarts|nx53265z6 ),
	.datad(\u_uw_uart|i_uarts|nx53265z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx53265z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix53265z52923 .lut_mask = 16'hD555;
defparam \u_uw_uart|i_uarts|ix53265z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix58250z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_4_  = (\u_uw_uart|i_uarts|RxDiv_4_  & (\u_uw_uart|i_uarts|nx58250z4  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_4_  & (!\u_uw_uart|i_uarts|nx58250z4  & VCC))
// \u_uw_uart|i_uarts|nx58250z3  = CARRY((\u_uw_uart|i_uarts|RxDiv_4_  & !\u_uw_uart|i_uarts|nx58250z4 ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx58250z4 ),
	.combout(\u_uw_uart|i_uarts|inc_d_4_ ),
	.cout(\u_uw_uart|i_uarts|nx58250z3 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix58250z52926 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix58250z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_5_  = (\u_uw_uart|i_uarts|RxDiv_5_  & (!\u_uw_uart|i_uarts|nx58250z3 )) # (!\u_uw_uart|i_uarts|RxDiv_5_  & ((\u_uw_uart|i_uarts|nx58250z3 ) # (GND)))
// \u_uw_uart|i_uarts|nx58250z2  = CARRY((!\u_uw_uart|i_uarts|nx58250z3 ) # (!\u_uw_uart|i_uarts|RxDiv_5_ ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx58250z3 ),
	.combout(\u_uw_uart|i_uarts|inc_d_5_ ),
	.cout(\u_uw_uart|i_uarts|nx58250z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix58250z52925 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix58250z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_6_  = (\u_uw_uart|i_uarts|RxDiv_6_  & (\u_uw_uart|i_uarts|nx58250z2  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_6_  & (!\u_uw_uart|i_uarts|nx58250z2  & VCC))
// \u_uw_uart|i_uarts|nx58250z1  = CARRY((\u_uw_uart|i_uarts|RxDiv_6_  & !\u_uw_uart|i_uarts|nx58250z2 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx58250z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_6_ ),
	.cout(\u_uw_uart|i_uarts|nx58250z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix58250z52924 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|ix58250z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix58250z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_7_  = (\u_uw_uart|i_uarts|RxDiv_7_  & (!\u_uw_uart|i_uarts|nx58250z1 )) # (!\u_uw_uart|i_uarts|RxDiv_7_  & ((\u_uw_uart|i_uarts|nx58250z1 ) # (GND)))
// \u_uw_uart|i_uarts|nx17096z3  = CARRY((!\u_uw_uart|i_uarts|nx58250z1 ) # (!\u_uw_uart|i_uarts|RxDiv_7_ ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx58250z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_7_ ),
	.cout(\u_uw_uart|i_uarts|nx17096z3 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix58250z52923 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix17096z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_8_  = (\u_uw_uart|i_uarts|RxDiv_8_  & (\u_uw_uart|i_uarts|nx17096z3  $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_8_  & (!\u_uw_uart|i_uarts|nx17096z3  & VCC))
// \u_uw_uart|i_uarts|nx17096z2  = CARRY((\u_uw_uart|i_uarts|RxDiv_8_  & !\u_uw_uart|i_uarts|nx17096z3 ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxDiv_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx17096z3 ),
	.combout(\u_uw_uart|i_uarts|inc_d_8_ ),
	.cout(\u_uw_uart|i_uarts|nx17096z2 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix17096z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|i_uarts|ix17096z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N20
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix17096z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_9_  = (\u_uw_uart|i_uarts|RxDiv_9_  & (!\u_uw_uart|i_uarts|nx17096z2 )) # (!\u_uw_uart|i_uarts|RxDiv_9_  & ((\u_uw_uart|i_uarts|nx17096z2 ) # (GND)))
// \u_uw_uart|i_uarts|nx17096z1  = CARRY((!\u_uw_uart|i_uarts|nx17096z2 ) # (!\u_uw_uart|i_uarts|RxDiv_9_ ))

	.dataa(\u_uw_uart|i_uarts|RxDiv_9_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx17096z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_9_ ),
	.cout(\u_uw_uart|i_uarts|nx17096z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix17096z52924 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix17096z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix17096z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_10_  = \u_uw_uart|i_uarts|nx17096z1  $ (!\u_uw_uart|i_uarts|RxDiv_10_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|RxDiv_10_ ),
	.cin(\u_uw_uart|i_uarts|nx17096z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_10_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix17096z52923 .lut_mask = 16'hF00F;
defparam \u_uw_uart|i_uarts|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix51271z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_0_  = !\u_uw_uart|i_uarts|RxDiv_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxDiv_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|inc_d_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix51271z52923 .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|ix51271z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z2  = (!\u_uw_uart|i_uarts|RxBitCnt_1_ ) # (!\u_uw_uart|i_uarts|RxBitCnt_0_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52924 .lut_mask = 16'h3F3F;
defparam \u_uw_uart|i_uarts|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix8373z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx8373z1  = (\u_uw_uart|i_uarts|nx53265z2  & (\u_uw_uart|i_uarts|RxBitCnt_3_  $ (((!\u_uw_uart|i_uarts|nx8373z2  & \u_uw_uart|i_uarts|RxBitCnt_2_ )))))

	.dataa(\u_uw_uart|i_uarts|nx8373z2 ),
	.datab(\u_uw_uart|i_uarts|nx53265z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_3_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix8373z52923 .lut_mask = 16'h84C0;
defparam \u_uw_uart|i_uarts|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix9370z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx9370z1  = (\u_uw_uart|i_uarts|nx53265z2  & (\u_uw_uart|i_uarts|RxBitCnt_2_  $ (((\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxBitCnt_1_ )))))

	.dataa(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datab(\u_uw_uart|i_uarts|nx53265z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_2_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix9370z52923 .lut_mask = 16'h48C0;
defparam \u_uw_uart|i_uarts|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix28678z52949 (
// Equation(s):
// \u_kirsch|i_add4_12_  = (!\u_kirsch|valid_2_  & \u_kirsch|r6_12_ )

	.dataa(\u_kirsch|valid_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r6_12_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_12_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52949 .lut_mask = 16'h5500;
defparam \u_kirsch|ix28678z52949 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix28678z52936 (
// Equation(s):
// \u_kirsch|i_add3_12_  = (\u_kirsch|r6_11_  & \u_kirsch|valid_5_ )

	.dataa(vcc),
	.datab(\u_kirsch|r6_11_ ),
	.datac(\u_kirsch|valid_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_12_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52936 .lut_mask = 16'hC0C0;
defparam \u_kirsch|ix28678z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix28678z52950 (
// Equation(s):
// \u_kirsch|i_add4_11_  = (!\u_kirsch|valid_2_  & \u_kirsch|r6_11_ )

	.dataa(\u_kirsch|valid_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r6_11_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_11_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52950 .lut_mask = 16'h5500;
defparam \u_kirsch|ix28678z52950 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix28678z52937 (
// Equation(s):
// \u_kirsch|i_add3_11_  = (\u_kirsch|r6_10_  & \u_kirsch|valid_5_ )

	.dataa(vcc),
	.datab(\u_kirsch|r6_10_ ),
	.datac(\u_kirsch|valid_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_11_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52937 .lut_mask = 16'hC0C0;
defparam \u_kirsch|ix28678z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix28678z52951 (
// Equation(s):
// \u_kirsch|i_add4_10_  = (!\u_kirsch|valid_2_  & \u_kirsch|r6_10_ )

	.dataa(\u_kirsch|valid_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r6_10_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_10_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52951 .lut_mask = 16'h5500;
defparam \u_kirsch|ix28678z52951 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix28678z52938 (
// Equation(s):
// \u_kirsch|i_add3_10_  = (\u_kirsch|r6_9_  & \u_kirsch|valid_5_ )

	.dataa(vcc),
	.datab(\u_kirsch|r6_9_ ),
	.datac(\u_kirsch|valid_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_10_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52938 .lut_mask = 16'hC0C0;
defparam \u_kirsch|ix28678z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix28678z52952 (
// Equation(s):
// \u_kirsch|i_add4_9_  = (!\u_kirsch|valid_2_  & \u_kirsch|r6_9_ )

	.dataa(\u_kirsch|valid_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r6_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_9_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52952 .lut_mask = 16'h5500;
defparam \u_kirsch|ix28678z52952 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix28678z52939 (
// Equation(s):
// \u_kirsch|i_add3_9_  = (\u_kirsch|valid_5_  & \u_kirsch|r6_8_ )

	.dataa(\u_kirsch|valid_5_ ),
	.datab(vcc),
	.datac(\u_kirsch|r6_8_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_9_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52939 .lut_mask = 16'hA0A0;
defparam \u_kirsch|ix28678z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_temp_add_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_8_ ));

// Location: LCCOMB_X43_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix28678z52953 (
// Equation(s):
// \u_kirsch|i_add4_8_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_add_8_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r6_8_ ))

	.dataa(\u_kirsch|r6_8_ ),
	.datab(vcc),
	.datac(\u_kirsch|temp_add_8_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_8_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52953 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix28678z52953 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_r2_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|nx45057z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_8_ ));

// Location: LCCOMB_X43_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix28678z52940 (
// Equation(s):
// \u_kirsch|i_add3_8_  = (\u_kirsch|valid_5_  & ((\u_kirsch|r6_7_ ))) # (!\u_kirsch|valid_5_  & (\u_kirsch|r2_8_ ))

	.dataa(\u_kirsch|valid_5_ ),
	.datab(\u_kirsch|r2_8_ ),
	.datac(\u_kirsch|r6_7_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_8_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52940 .lut_mask = 16'hE4E4;
defparam \u_kirsch|ix28678z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_temp_add_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_7_ ));

// Location: LCCOMB_X43_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix28678z52954 (
// Equation(s):
// \u_kirsch|i_add4_7_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_add_7_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r6_7_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r6_7_ ),
	.datac(\u_kirsch|temp_add_7_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52954 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix28678z52954 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_r2_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_7_ ));

// Location: LCCOMB_X43_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28678z52941 (
// Equation(s):
// \u_kirsch|i_add3_7_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_6_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_7_ )))

	.dataa(\u_kirsch|r6_6_ ),
	.datab(vcc),
	.datac(\u_kirsch|valid_5_ ),
	.datad(\u_kirsch|r2_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52941 .lut_mask = 16'hAFA0;
defparam \u_kirsch|ix28678z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_temp_add_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_6_ ));

// Location: LCCOMB_X43_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix28678z52955 (
// Equation(s):
// \u_kirsch|i_add4_6_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_add_6_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r6_6_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|temp_add_6_ ),
	.datad(\u_kirsch|r6_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52955 .lut_mask = 16'hF5A0;
defparam \u_kirsch|ix28678z52955 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_r2_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_6_ ));

// Location: LCCOMB_X43_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix28678z52942 (
// Equation(s):
// \u_kirsch|i_add3_6_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_5_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_6_ )))

	.dataa(\u_kirsch|valid_5_ ),
	.datab(vcc),
	.datac(\u_kirsch|r6_5_ ),
	.datad(\u_kirsch|r2_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52942 .lut_mask = 16'hF5A0;
defparam \u_kirsch|ix28678z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_temp_add_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_5_ ));

// Location: LCCOMB_X44_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28678z52956 (
// Equation(s):
// \u_kirsch|i_add4_5_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_add_5_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r6_5_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_add_5_ ),
	.datad(\u_kirsch|r6_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52956 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52956 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_r2_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_5_ ));

// Location: LCCOMB_X45_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix28678z52943 (
// Equation(s):
// \u_kirsch|i_add3_5_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_4_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_5_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_5_ ),
	.datac(\u_kirsch|r6_4_ ),
	.datad(\u_kirsch|r2_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52943 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N17
cycloneii_lcell_ff \u_kirsch|reg_temp_add_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_4_ ));

// Location: LCCOMB_X45_Y23_N16
cycloneii_lcell_comb \u_kirsch|ix28678z52957 (
// Equation(s):
// \u_kirsch|i_add4_4_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_add_4_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r6_4_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_add_4_ ),
	.datad(\u_kirsch|r6_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52957 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52957 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_r2_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_4_ ));

// Location: LCCOMB_X45_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix28678z52944 (
// Equation(s):
// \u_kirsch|i_add3_4_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_3_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_4_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_5_ ),
	.datac(\u_kirsch|r6_3_ ),
	.datad(\u_kirsch|r2_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52944 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_temp_add_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_3_ ));

// Location: LCCOMB_X45_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix28678z52958 (
// Equation(s):
// \u_kirsch|i_add4_3_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_add_3_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r6_3_ ))

	.dataa(\u_kirsch|r6_3_ ),
	.datab(vcc),
	.datac(\u_kirsch|temp_add_3_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52958 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix28678z52958 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_r2_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_3_ ));

// Location: LCCOMB_X45_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix28678z52945 (
// Equation(s):
// \u_kirsch|i_add3_3_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_2_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_3_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_5_ ),
	.datac(\u_kirsch|r6_2_ ),
	.datad(\u_kirsch|r2_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52945 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52945 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_temp_add_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_2_ ));

// Location: LCCOMB_X45_Y23_N4
cycloneii_lcell_comb \u_kirsch|ix28678z52959 (
// Equation(s):
// \u_kirsch|i_add4_2_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_add_2_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r6_2_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_add_2_ ),
	.datad(\u_kirsch|r6_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52959 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52959 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_r2_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_2_ ));

// Location: LCCOMB_X45_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix28678z52946 (
// Equation(s):
// \u_kirsch|i_add3_2_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_1_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_2_ )))

	.dataa(\u_kirsch|r6_1_ ),
	.datab(\u_kirsch|valid_5_ ),
	.datac(\u_kirsch|r2_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52946 .lut_mask = 16'hB8B8;
defparam \u_kirsch|ix28678z52946 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N23
cycloneii_lcell_ff \u_kirsch|reg_temp_add_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_1_ ));

// Location: LCCOMB_X45_Y23_N22
cycloneii_lcell_comb \u_kirsch|ix28678z52960 (
// Equation(s):
// \u_kirsch|i_add4_1_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_add_1_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r6_1_ ))

	.dataa(\u_kirsch|r6_1_ ),
	.datab(vcc),
	.datac(\u_kirsch|temp_add_1_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52960 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix28678z52960 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_r2_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_1_ ));

// Location: LCCOMB_X45_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix28678z52947 (
// Equation(s):
// \u_kirsch|i_add3_1_  = (\u_kirsch|valid_5_  & (\u_kirsch|r6_0_ )) # (!\u_kirsch|valid_5_  & ((\u_kirsch|r2_1_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_5_ ),
	.datac(\u_kirsch|r6_0_ ),
	.datad(\u_kirsch|r2_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52947 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52947 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r2_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_add_op12_stage1_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r2_0_ ));

// Location: LCCOMB_X45_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28678z52948 (
// Equation(s):
// \u_kirsch|i_add3_0_  = (!\u_kirsch|valid_5_  & \u_kirsch|r2_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|valid_5_ ),
	.datad(\u_kirsch|r2_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add3_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52948 .lut_mask = 16'h0F00;
defparam \u_kirsch|ix28678z52948 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N9
cycloneii_lcell_ff \u_kirsch|reg_temp_add_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r2_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_add_0_ ));

// Location: LCCOMB_X45_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix28678z52961 (
// Equation(s):
// \u_kirsch|i_add4_0_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_add_0_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r6_0_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_add_0_ ),
	.datad(\u_kirsch|r6_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add4_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52961 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52961 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N0
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52936 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_0_  = (\u_kirsch|i_add4_0_  & (\u_kirsch|i_add3_0_  $ (VCC))) # (!\u_kirsch|i_add4_0_  & (\u_kirsch|i_add3_0_  & VCC))
// \u_kirsch|stage2|nx22301z12  = CARRY((\u_kirsch|i_add4_0_  & \u_kirsch|i_add3_0_ ))

	.dataa(\u_kirsch|i_add4_0_ ),
	.datab(\u_kirsch|i_add3_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_0_ ),
	.cout(\u_kirsch|stage2|nx22301z12 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52936 .lut_mask = 16'h6688;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N2
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52935 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_1_  = (\u_kirsch|i_add4_1_  & ((\u_kirsch|i_add3_1_  & (\u_kirsch|stage2|nx22301z12  & VCC)) # (!\u_kirsch|i_add3_1_  & (!\u_kirsch|stage2|nx22301z12 )))) # (!\u_kirsch|i_add4_1_  & ((\u_kirsch|i_add3_1_  & 
// (!\u_kirsch|stage2|nx22301z12 )) # (!\u_kirsch|i_add3_1_  & ((\u_kirsch|stage2|nx22301z12 ) # (GND)))))
// \u_kirsch|stage2|nx22301z11  = CARRY((\u_kirsch|i_add4_1_  & (!\u_kirsch|i_add3_1_  & !\u_kirsch|stage2|nx22301z12 )) # (!\u_kirsch|i_add4_1_  & ((!\u_kirsch|stage2|nx22301z12 ) # (!\u_kirsch|i_add3_1_ ))))

	.dataa(\u_kirsch|i_add4_1_ ),
	.datab(\u_kirsch|i_add3_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z12 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_1_ ),
	.cout(\u_kirsch|stage2|nx22301z11 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52935 .lut_mask = 16'h9617;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N4
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52934 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_2_  = ((\u_kirsch|i_add3_2_  $ (\u_kirsch|i_add4_2_  $ (!\u_kirsch|stage2|nx22301z11 )))) # (GND)
// \u_kirsch|stage2|nx22301z10  = CARRY((\u_kirsch|i_add3_2_  & ((\u_kirsch|i_add4_2_ ) # (!\u_kirsch|stage2|nx22301z11 ))) # (!\u_kirsch|i_add3_2_  & (\u_kirsch|i_add4_2_  & !\u_kirsch|stage2|nx22301z11 )))

	.dataa(\u_kirsch|i_add3_2_ ),
	.datab(\u_kirsch|i_add4_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z11 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_2_ ),
	.cout(\u_kirsch|stage2|nx22301z10 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52934 .lut_mask = 16'h698E;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N6
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52933 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_3_  = (\u_kirsch|i_add3_3_  & ((\u_kirsch|i_add4_3_  & (\u_kirsch|stage2|nx22301z10  & VCC)) # (!\u_kirsch|i_add4_3_  & (!\u_kirsch|stage2|nx22301z10 )))) # (!\u_kirsch|i_add3_3_  & ((\u_kirsch|i_add4_3_  & 
// (!\u_kirsch|stage2|nx22301z10 )) # (!\u_kirsch|i_add4_3_  & ((\u_kirsch|stage2|nx22301z10 ) # (GND)))))
// \u_kirsch|stage2|nx22301z9  = CARRY((\u_kirsch|i_add3_3_  & (!\u_kirsch|i_add4_3_  & !\u_kirsch|stage2|nx22301z10 )) # (!\u_kirsch|i_add3_3_  & ((!\u_kirsch|stage2|nx22301z10 ) # (!\u_kirsch|i_add4_3_ ))))

	.dataa(\u_kirsch|i_add3_3_ ),
	.datab(\u_kirsch|i_add4_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z10 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_3_ ),
	.cout(\u_kirsch|stage2|nx22301z9 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52933 .lut_mask = 16'h9617;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N8
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52932 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_4_  = ((\u_kirsch|i_add4_4_  $ (\u_kirsch|i_add3_4_  $ (!\u_kirsch|stage2|nx22301z9 )))) # (GND)
// \u_kirsch|stage2|nx22301z8  = CARRY((\u_kirsch|i_add4_4_  & ((\u_kirsch|i_add3_4_ ) # (!\u_kirsch|stage2|nx22301z9 ))) # (!\u_kirsch|i_add4_4_  & (\u_kirsch|i_add3_4_  & !\u_kirsch|stage2|nx22301z9 )))

	.dataa(\u_kirsch|i_add4_4_ ),
	.datab(\u_kirsch|i_add3_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z9 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_4_ ),
	.cout(\u_kirsch|stage2|nx22301z8 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52932 .lut_mask = 16'h698E;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N10
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52931 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_5_  = (\u_kirsch|i_add3_5_  & ((\u_kirsch|i_add4_5_  & (\u_kirsch|stage2|nx22301z8  & VCC)) # (!\u_kirsch|i_add4_5_  & (!\u_kirsch|stage2|nx22301z8 )))) # (!\u_kirsch|i_add3_5_  & ((\u_kirsch|i_add4_5_  & 
// (!\u_kirsch|stage2|nx22301z8 )) # (!\u_kirsch|i_add4_5_  & ((\u_kirsch|stage2|nx22301z8 ) # (GND)))))
// \u_kirsch|stage2|nx22301z7  = CARRY((\u_kirsch|i_add3_5_  & (!\u_kirsch|i_add4_5_  & !\u_kirsch|stage2|nx22301z8 )) # (!\u_kirsch|i_add3_5_  & ((!\u_kirsch|stage2|nx22301z8 ) # (!\u_kirsch|i_add4_5_ ))))

	.dataa(\u_kirsch|i_add3_5_ ),
	.datab(\u_kirsch|i_add4_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z8 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_5_ ),
	.cout(\u_kirsch|stage2|nx22301z7 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N12
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52930 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_6_  = ((\u_kirsch|i_add4_6_  $ (\u_kirsch|i_add3_6_  $ (!\u_kirsch|stage2|nx22301z7 )))) # (GND)
// \u_kirsch|stage2|nx22301z6  = CARRY((\u_kirsch|i_add4_6_  & ((\u_kirsch|i_add3_6_ ) # (!\u_kirsch|stage2|nx22301z7 ))) # (!\u_kirsch|i_add4_6_  & (\u_kirsch|i_add3_6_  & !\u_kirsch|stage2|nx22301z7 )))

	.dataa(\u_kirsch|i_add4_6_ ),
	.datab(\u_kirsch|i_add3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z7 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_6_ ),
	.cout(\u_kirsch|stage2|nx22301z6 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N14
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52929 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_7_  = (\u_kirsch|i_add4_7_  & ((\u_kirsch|i_add3_7_  & (\u_kirsch|stage2|nx22301z6  & VCC)) # (!\u_kirsch|i_add3_7_  & (!\u_kirsch|stage2|nx22301z6 )))) # (!\u_kirsch|i_add4_7_  & ((\u_kirsch|i_add3_7_  & 
// (!\u_kirsch|stage2|nx22301z6 )) # (!\u_kirsch|i_add3_7_  & ((\u_kirsch|stage2|nx22301z6 ) # (GND)))))
// \u_kirsch|stage2|nx22301z5  = CARRY((\u_kirsch|i_add4_7_  & (!\u_kirsch|i_add3_7_  & !\u_kirsch|stage2|nx22301z6 )) # (!\u_kirsch|i_add4_7_  & ((!\u_kirsch|stage2|nx22301z6 ) # (!\u_kirsch|i_add3_7_ ))))

	.dataa(\u_kirsch|i_add4_7_ ),
	.datab(\u_kirsch|i_add3_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z6 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_7_ ),
	.cout(\u_kirsch|stage2|nx22301z5 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N16
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52928 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_8_  = ((\u_kirsch|i_add4_8_  $ (\u_kirsch|i_add3_8_  $ (!\u_kirsch|stage2|nx22301z5 )))) # (GND)
// \u_kirsch|stage2|nx22301z4  = CARRY((\u_kirsch|i_add4_8_  & ((\u_kirsch|i_add3_8_ ) # (!\u_kirsch|stage2|nx22301z5 ))) # (!\u_kirsch|i_add4_8_  & (\u_kirsch|i_add3_8_  & !\u_kirsch|stage2|nx22301z5 )))

	.dataa(\u_kirsch|i_add4_8_ ),
	.datab(\u_kirsch|i_add3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z5 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_8_ ),
	.cout(\u_kirsch|stage2|nx22301z4 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N18
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52927 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_9_  = (\u_kirsch|i_add4_9_  & ((\u_kirsch|i_add3_9_  & (\u_kirsch|stage2|nx22301z4  & VCC)) # (!\u_kirsch|i_add3_9_  & (!\u_kirsch|stage2|nx22301z4 )))) # (!\u_kirsch|i_add4_9_  & ((\u_kirsch|i_add3_9_  & 
// (!\u_kirsch|stage2|nx22301z4 )) # (!\u_kirsch|i_add3_9_  & ((\u_kirsch|stage2|nx22301z4 ) # (GND)))))
// \u_kirsch|stage2|nx22301z3  = CARRY((\u_kirsch|i_add4_9_  & (!\u_kirsch|i_add3_9_  & !\u_kirsch|stage2|nx22301z4 )) # (!\u_kirsch|i_add4_9_  & ((!\u_kirsch|stage2|nx22301z4 ) # (!\u_kirsch|i_add3_9_ ))))

	.dataa(\u_kirsch|i_add4_9_ ),
	.datab(\u_kirsch|i_add3_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z4 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_9_ ),
	.cout(\u_kirsch|stage2|nx22301z3 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N20
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52926 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_10_  = ((\u_kirsch|i_add3_10_  $ (\u_kirsch|i_add4_10_  $ (!\u_kirsch|stage2|nx22301z3 )))) # (GND)
// \u_kirsch|stage2|nx22301z2  = CARRY((\u_kirsch|i_add3_10_  & ((\u_kirsch|i_add4_10_ ) # (!\u_kirsch|stage2|nx22301z3 ))) # (!\u_kirsch|i_add3_10_  & (\u_kirsch|i_add4_10_  & !\u_kirsch|stage2|nx22301z3 )))

	.dataa(\u_kirsch|i_add3_10_ ),
	.datab(\u_kirsch|i_add4_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z3 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_10_ ),
	.cout(\u_kirsch|stage2|nx22301z2 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N22
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52925 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_11_  = (\u_kirsch|i_add4_11_  & ((\u_kirsch|i_add3_11_  & (\u_kirsch|stage2|nx22301z2  & VCC)) # (!\u_kirsch|i_add3_11_  & (!\u_kirsch|stage2|nx22301z2 )))) # (!\u_kirsch|i_add4_11_  & ((\u_kirsch|i_add3_11_  & 
// (!\u_kirsch|stage2|nx22301z2 )) # (!\u_kirsch|i_add3_11_  & ((\u_kirsch|stage2|nx22301z2 ) # (GND)))))
// \u_kirsch|stage2|nx22301z1  = CARRY((\u_kirsch|i_add4_11_  & (!\u_kirsch|i_add3_11_  & !\u_kirsch|stage2|nx22301z2 )) # (!\u_kirsch|i_add4_11_  & ((!\u_kirsch|stage2|nx22301z2 ) # (!\u_kirsch|i_add3_11_ ))))

	.dataa(\u_kirsch|i_add4_11_ ),
	.datab(\u_kirsch|i_add3_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|nx22301z2 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_11_ ),
	.cout(\u_kirsch|stage2|nx22301z1 ));
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y24_N24
cycloneii_lcell_comb \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52923 (
// Equation(s):
// \u_kirsch|stage2|o_add_op12_stage2_12_  = \u_kirsch|i_add3_12_  $ (\u_kirsch|stage2|nx22301z1  $ (!\u_kirsch|i_add4_12_ ))

	.dataa(vcc),
	.datab(\u_kirsch|i_add3_12_ ),
	.datac(vcc),
	.datad(\u_kirsch|i_add4_12_ ),
	.cin(\u_kirsch|stage2|nx22301z1 ),
	.combout(\u_kirsch|stage2|o_add_op12_stage2_12_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52923 .lut_mask = 16'h3CC3;
defparam \u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y23_N19
cycloneii_lcell_ff \u_kirsch|reg_temp_max_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_9_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_9_ ));

// Location: LCCOMB_X45_Y23_N18
cycloneii_lcell_comb \u_kirsch|ix28678z52926 (
// Equation(s):
// \u_kirsch|i_max3_9_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_max_9_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r4_9_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_max_9_ ),
	.datad(\u_kirsch|r4_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_9_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52926 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_r3_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|nx15254z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_9_ ));

// Location: LCFF_X47_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_r3_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_8_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_8_ ));

// Location: LCFF_X45_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_temp_max_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_8_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_8_ ));

// Location: LCCOMB_X45_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix28678z52927 (
// Equation(s):
// \u_kirsch|i_max3_8_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_max_8_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r4_8_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_max_8_ ),
	.datad(\u_kirsch|r4_8_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_8_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52927 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N15
cycloneii_lcell_ff \u_kirsch|reg_r3_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_7_ ));

// Location: LCFF_X45_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_temp_max_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_7_ ));

// Location: LCCOMB_X45_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix28678z52928 (
// Equation(s):
// \u_kirsch|i_max3_7_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_max_7_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r4_7_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_max_7_ ),
	.datad(\u_kirsch|r4_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52928 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N13
cycloneii_lcell_ff \u_kirsch|reg_r3_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_6_ ));

// Location: LCFF_X45_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_temp_max_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_6_ ));

// Location: LCCOMB_X45_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix28678z52929 (
// Equation(s):
// \u_kirsch|i_max3_6_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_max_6_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r4_6_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r4_6_ ),
	.datac(\u_kirsch|temp_max_6_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52929 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix28678z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N11
cycloneii_lcell_ff \u_kirsch|reg_r3_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_5_ ));

// Location: LCFF_X45_Y23_N11
cycloneii_lcell_ff \u_kirsch|reg_temp_max_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_5_ ));

// Location: LCCOMB_X45_Y23_N10
cycloneii_lcell_comb \u_kirsch|ix28678z52930 (
// Equation(s):
// \u_kirsch|i_max3_5_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_max_5_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r4_5_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_max_5_ ),
	.datad(\u_kirsch|r4_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52930 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N9
cycloneii_lcell_ff \u_kirsch|reg_r3_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_4_ ));

// Location: LCFF_X45_Y23_N21
cycloneii_lcell_ff \u_kirsch|reg_temp_max_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_4_ ));

// Location: LCCOMB_X45_Y23_N20
cycloneii_lcell_comb \u_kirsch|ix28678z52931 (
// Equation(s):
// \u_kirsch|i_max3_4_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_max_4_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r4_4_ ))

	.dataa(\u_kirsch|r4_4_ ),
	.datab(vcc),
	.datac(\u_kirsch|temp_max_4_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52931 .lut_mask = 16'hF0AA;
defparam \u_kirsch|ix28678z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N7
cycloneii_lcell_ff \u_kirsch|reg_r3_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_3_ ));

// Location: LCFF_X43_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_temp_max_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_3_ ));

// Location: LCCOMB_X43_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix28678z52932 (
// Equation(s):
// \u_kirsch|i_max3_3_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_max_3_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r4_3_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r4_3_ ),
	.datac(\u_kirsch|temp_max_3_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52932 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix28678z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_r3_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_2_ ));

// Location: LCFF_X45_Y23_N7
cycloneii_lcell_ff \u_kirsch|reg_temp_max_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_2_ ));

// Location: LCCOMB_X45_Y23_N6
cycloneii_lcell_comb \u_kirsch|ix28678z52933 (
// Equation(s):
// \u_kirsch|i_max3_2_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_max_2_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r4_2_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r4_2_ ),
	.datac(\u_kirsch|temp_max_2_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52933 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix28678z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_r3_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_1_ ));

// Location: LCFF_X44_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_temp_max_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_1_ ));

// Location: LCCOMB_X44_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix28678z52934 (
// Equation(s):
// \u_kirsch|i_max3_1_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_max_1_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r4_1_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_max_1_ ),
	.datad(\u_kirsch|r4_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52934 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_temp_max_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r3_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_max_0_ ));

// Location: LCCOMB_X43_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix28678z52935 (
// Equation(s):
// \u_kirsch|i_max3_0_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_max_0_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r4_0_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r4_0_ ),
	.datac(\u_kirsch|temp_max_0_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max3_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52935 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix28678z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_r3_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|o_max_add_stage1_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r3_0_ ));

// Location: LCCOMB_X43_Y23_N2
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52933 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z10  = CARRY((!\u_kirsch|r3_0_  & \u_kirsch|i_max3_0_ ))

	.dataa(\u_kirsch|r3_0_ ),
	.datab(\u_kirsch|i_max3_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z10 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52933 .lut_mask = 16'h0044;
defparam \u_kirsch|stage2|u_max2|ix52134z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N4
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52932 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z9  = CARRY((\u_kirsch|i_max3_1_  & (\u_kirsch|r3_1_  & !\u_kirsch|stage2|u_max2|nx52134z10 )) # (!\u_kirsch|i_max3_1_  & ((\u_kirsch|r3_1_ ) # (!\u_kirsch|stage2|u_max2|nx52134z10 ))))

	.dataa(\u_kirsch|i_max3_1_ ),
	.datab(\u_kirsch|r3_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z10 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z9 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52932 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N6
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52931 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z8  = CARRY((\u_kirsch|r3_2_  & (\u_kirsch|i_max3_2_  & !\u_kirsch|stage2|u_max2|nx52134z9 )) # (!\u_kirsch|r3_2_  & ((\u_kirsch|i_max3_2_ ) # (!\u_kirsch|stage2|u_max2|nx52134z9 ))))

	.dataa(\u_kirsch|r3_2_ ),
	.datab(\u_kirsch|i_max3_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z9 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z8 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52931 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N8
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52930 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z7  = CARRY((\u_kirsch|r3_3_  & ((!\u_kirsch|stage2|u_max2|nx52134z8 ) # (!\u_kirsch|i_max3_3_ ))) # (!\u_kirsch|r3_3_  & (!\u_kirsch|i_max3_3_  & !\u_kirsch|stage2|u_max2|nx52134z8 )))

	.dataa(\u_kirsch|r3_3_ ),
	.datab(\u_kirsch|i_max3_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z8 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z7 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|stage2|u_max2|ix52134z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N10
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52929 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z6  = CARRY((\u_kirsch|r3_4_  & (\u_kirsch|i_max3_4_  & !\u_kirsch|stage2|u_max2|nx52134z7 )) # (!\u_kirsch|r3_4_  & ((\u_kirsch|i_max3_4_ ) # (!\u_kirsch|stage2|u_max2|nx52134z7 ))))

	.dataa(\u_kirsch|r3_4_ ),
	.datab(\u_kirsch|i_max3_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z7 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z6 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52929 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N12
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52928 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z5  = CARRY((\u_kirsch|i_max3_5_  & (\u_kirsch|r3_5_  & !\u_kirsch|stage2|u_max2|nx52134z6 )) # (!\u_kirsch|i_max3_5_  & ((\u_kirsch|r3_5_ ) # (!\u_kirsch|stage2|u_max2|nx52134z6 ))))

	.dataa(\u_kirsch|i_max3_5_ ),
	.datab(\u_kirsch|r3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z6 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z5 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N14
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52927 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z4  = CARRY((\u_kirsch|r3_6_  & (\u_kirsch|i_max3_6_  & !\u_kirsch|stage2|u_max2|nx52134z5 )) # (!\u_kirsch|r3_6_  & ((\u_kirsch|i_max3_6_ ) # (!\u_kirsch|stage2|u_max2|nx52134z5 ))))

	.dataa(\u_kirsch|r3_6_ ),
	.datab(\u_kirsch|i_max3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z5 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z4 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N16
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52926 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z3  = CARRY((\u_kirsch|i_max3_7_  & (\u_kirsch|r3_7_  & !\u_kirsch|stage2|u_max2|nx52134z4 )) # (!\u_kirsch|i_max3_7_  & ((\u_kirsch|r3_7_ ) # (!\u_kirsch|stage2|u_max2|nx52134z4 ))))

	.dataa(\u_kirsch|i_max3_7_ ),
	.datab(\u_kirsch|r3_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z4 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z3 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52926 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N18
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52925 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z2  = CARRY((\u_kirsch|r3_8_  & (\u_kirsch|i_max3_8_  & !\u_kirsch|stage2|u_max2|nx52134z3 )) # (!\u_kirsch|r3_8_  & ((\u_kirsch|i_max3_8_ ) # (!\u_kirsch|stage2|u_max2|nx52134z3 ))))

	.dataa(\u_kirsch|r3_8_ ),
	.datab(\u_kirsch|i_max3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx52134z3 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx52134z2 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix52134z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N20
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52924 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx52134z1  = (\u_kirsch|i_max3_9_  & ((\u_kirsch|stage2|u_max2|nx52134z2 ) # (!\u_kirsch|r3_9_ ))) # (!\u_kirsch|i_max3_9_  & (\u_kirsch|stage2|u_max2|nx52134z2  & !\u_kirsch|r3_9_ ))

	.dataa(\u_kirsch|i_max3_9_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|r3_9_ ),
	.cin(\u_kirsch|stage2|u_max2|nx52134z2 ),
	.combout(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52924 .lut_mask = 16'hA0FA;
defparam \u_kirsch|stage2|u_max2|ix52134z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N24
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix52134z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_9_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_9_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_9_ )))

	.dataa(\u_kirsch|i_max3_9_ ),
	.datab(vcc),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(\u_kirsch|r3_9_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_9_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix52134z52923 .lut_mask = 16'hAFA0;
defparam \u_kirsch|stage2|u_max2|ix52134z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N0
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix53131z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_8_  = (\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|i_max3_8_ ))) # (!\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|r3_8_ ))

	.dataa(\u_kirsch|r3_8_ ),
	.datab(\u_kirsch|i_max3_8_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_8_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix53131z52923 .lut_mask = 16'hCACA;
defparam \u_kirsch|stage2|u_max2|ix53131z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N2
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix54128z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_7_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_7_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_7_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max3_7_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(\u_kirsch|r3_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix54128z52923 .lut_mask = 16'hCFC0;
defparam \u_kirsch|stage2|u_max2|ix54128z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N28
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix55125z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_6_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_6_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_6_ )))

	.dataa(\u_kirsch|i_max3_6_ ),
	.datab(\u_kirsch|r3_6_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix55125z52923 .lut_mask = 16'hACAC;
defparam \u_kirsch|stage2|u_max2|ix55125z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N30
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix56122z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_5_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_5_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_5_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max3_5_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(\u_kirsch|r3_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix56122z52923 .lut_mask = 16'hCFC0;
defparam \u_kirsch|stage2|u_max2|ix56122z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N4
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix57119z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_4_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_4_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_4_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max3_4_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(\u_kirsch|r3_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix57119z52923 .lut_mask = 16'hCFC0;
defparam \u_kirsch|stage2|u_max2|ix57119z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N22
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix58116z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_3_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_3_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_3_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max3_3_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(\u_kirsch|r3_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix58116z52923 .lut_mask = 16'hCFC0;
defparam \u_kirsch|stage2|u_max2|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N0
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix59113z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_2_  = (\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|i_max3_2_ ))) # (!\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|r3_2_ ))

	.dataa(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datab(vcc),
	.datac(\u_kirsch|r3_2_ ),
	.datad(\u_kirsch|i_max3_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix59113z52923 .lut_mask = 16'hFA50;
defparam \u_kirsch|stage2|u_max2|ix59113z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y23_N26
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix60110z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_1_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_1_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_1_ )))

	.dataa(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datab(\u_kirsch|i_max3_1_ ),
	.datac(\u_kirsch|r3_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix60110z52923 .lut_mask = 16'hD8D8;
defparam \u_kirsch|stage2|u_max2|ix60110z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N6
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix61107z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_pix_0_  = (\u_kirsch|stage2|u_max2|nx52134z1  & (\u_kirsch|i_max3_0_ )) # (!\u_kirsch|stage2|u_max2|nx52134z1  & ((\u_kirsch|r3_0_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max3_0_ ),
	.datac(\u_kirsch|stage2|u_max2|nx52134z1 ),
	.datad(\u_kirsch|r3_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_pix_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix61107z52923 .lut_mask = 16'hCFC0;
defparam \u_kirsch|stage2|u_max2|ix61107z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_r5_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_dir_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_0_ ));

// Location: LCCOMB_X46_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix24856z52923 (
// Equation(s):
// \u_kirsch|nx24856z1  = (\u_kirsch|valid_6_  & ((\u_kirsch|r5_0_ ))) # (!\u_kirsch|valid_6_  & (\u_kirsch|r8_0_ ))

	.dataa(vcc),
	.datab(\u_kirsch|valid_6_ ),
	.datac(\u_kirsch|r8_0_ ),
	.datad(\u_kirsch|r5_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx24856z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix24856z52923 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix24856z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_r8_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx23859z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_1_ ));

// Location: LCCOMB_X45_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix62889z52923 (
// Equation(s):
// \u_kirsch|o_dir_1_  = (\u_kirsch|r8_1_  & \u_kirsch|o_edge )

	.dataa(vcc),
	.datab(\u_kirsch|r8_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|o_dir_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix62889z52923 .lut_mask = 16'hCC00;
defparam \u_kirsch|ix62889z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N18
cycloneii_lcell_comb \u_uw_uart|ix35751z52923 (
// Equation(s):
// \u_uw_uart|nx35751z1  = (\u_uw_uart|nx36748z2  & ((\u_kirsch|o_dir_1_ ) # (!\u_kirsch|o_valid )))

	.dataa(\u_uw_uart|nx36748z2 ),
	.datab(\u_kirsch|o_dir_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|nx35751z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix35751z52923 .lut_mask = 16'h88AA;
defparam \u_uw_uart|ix35751z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N15
cycloneii_lcell_ff \u_uw_uart|reg_mdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx36748z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39739z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_3_ ));

// Location: LCFF_X40_Y23_N9
cycloneii_lcell_ff \u_uw_uart|reg_sdout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39865z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_4_ ));

// Location: LCFF_X40_Y24_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_6_ ));

// Location: LCFF_X46_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_e_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_7_ ));

// Location: LCCOMB_X49_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix28679z52926 (
// Equation(s):
// \u_kirsch|nx28679z3  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & \u_kirsch|valid_2_ ))

	.dataa(vcc),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52926 .lut_mask = 16'h0300;
defparam \u_kirsch|ix28679z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_g_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_7_ ));

// Location: LCCOMB_X50_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix28679z52999 (
// Equation(s):
// \u_kirsch|nx28679z52  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & (\u_kirsch|g_7_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|g_7_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z52 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52999 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52999 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_c_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_7_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_7_ ));

// Location: LCFF_X46_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_h_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_7_ ));

// Location: LCCOMB_X46_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix28679z53000 (
// Equation(s):
// \u_kirsch|nx28679z53  = (\u_kirsch|valid_0_  & (\u_kirsch|h_7_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|c_7_  & \u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|h_7_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|c_7_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z53 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53000 .lut_mask = 16'hB888;
defparam \u_kirsch|ix28679z53000 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52998 (
// Equation(s):
// \u_kirsch|i_add2_7_  = (\u_kirsch|nx28679z52 ) # ((\u_kirsch|nx28679z53 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|e_7_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|nx28679z52 ),
	.datac(\u_kirsch|e_7_ ),
	.datad(\u_kirsch|nx28679z53 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52998 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52998 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_d_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_7_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_7_ ));

// Location: LCFF_X46_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_f_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_7_ ));

// Location: LCCOMB_X50_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix28679z52975 (
// Equation(s):
// \u_kirsch|nx28679z36  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_0_  & \u_kirsch|f_7_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|f_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z36 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52975 .lut_mask = 16'h0100;
defparam \u_kirsch|ix28679z52975 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_a_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_7_ ));

// Location: LCFF_X46_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_b_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_7_ ));

// Location: LCCOMB_X50_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix28679z52976 (
// Equation(s):
// \u_kirsch|nx28679z37  = (\u_kirsch|valid_0_  & (\u_kirsch|a_7_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|b_7_  & \u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|a_7_ ),
	.datab(\u_kirsch|b_7_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z37 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52976 .lut_mask = 16'hACA0;
defparam \u_kirsch|ix28679z52976 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix28679z52974 (
// Equation(s):
// \u_kirsch|i_add1_7_  = (\u_kirsch|nx28679z36 ) # ((\u_kirsch|nx28679z37 ) # ((\u_kirsch|d_7_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|d_7_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z36 ),
	.datad(\u_kirsch|nx28679z37 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52974 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52974 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_e_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_6_ ));

// Location: LCFF_X49_Y23_N17
cycloneii_lcell_ff \u_kirsch|reg_g_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_6_ ));

// Location: LCCOMB_X49_Y23_N16
cycloneii_lcell_comb \u_kirsch|ix28679z53002 (
// Equation(s):
// \u_kirsch|nx28679z54  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_1_  & (\u_kirsch|g_6_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|g_6_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z54 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53002 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z53002 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_c_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_6_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_6_ ));

// Location: LCFF_X50_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_h_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_6_ ));

// Location: LCCOMB_X48_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix28679z53003 (
// Equation(s):
// \u_kirsch|nx28679z55  = (\u_kirsch|valid_0_  & (((\u_kirsch|h_6_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & (\u_kirsch|c_6_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|c_6_ ),
	.datad(\u_kirsch|h_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z55 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53003 .lut_mask = 16'hEA40;
defparam \u_kirsch|ix28679z53003 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix28679z53001 (
// Equation(s):
// \u_kirsch|i_add2_6_  = (\u_kirsch|nx28679z55 ) # ((\u_kirsch|nx28679z54 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|e_6_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|e_6_ ),
	.datac(\u_kirsch|nx28679z55 ),
	.datad(\u_kirsch|nx28679z54 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53001 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z53001 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_d_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_6_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_6_ ));

// Location: LCFF_X50_Y23_N21
cycloneii_lcell_ff \u_kirsch|reg_f_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_6_ ));

// Location: LCCOMB_X50_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52978 (
// Equation(s):
// \u_kirsch|nx28679z38  = (!\u_kirsch|valid_2_  & (\u_kirsch|f_6_  & (!\u_kirsch|valid_0_  & !\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|f_6_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z38 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52978 .lut_mask = 16'h0004;
defparam \u_kirsch|ix28679z52978 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_a_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_6_ ));

// Location: LCFF_X50_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_b_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_6_ ));

// Location: LCCOMB_X50_Y23_N22
cycloneii_lcell_comb \u_kirsch|ix28679z52979 (
// Equation(s):
// \u_kirsch|nx28679z39  = (\u_kirsch|valid_0_  & (((\u_kirsch|a_6_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|b_6_  & (\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|b_6_ ),
	.datac(\u_kirsch|valid_1_ ),
	.datad(\u_kirsch|a_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z39 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52979 .lut_mask = 16'hEA40;
defparam \u_kirsch|ix28679z52979 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix28679z52977 (
// Equation(s):
// \u_kirsch|i_add1_6_  = (\u_kirsch|nx28679z39 ) # ((\u_kirsch|nx28679z38 ) # ((\u_kirsch|d_6_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|d_6_ ),
	.datab(\u_kirsch|nx28679z39 ),
	.datac(\u_kirsch|nx28679z38 ),
	.datad(\u_kirsch|nx28679z3 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52977 .lut_mask = 16'hFEFC;
defparam \u_kirsch|ix28679z52977 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y24_N5
cycloneii_lcell_ff \u_kirsch|reg_e_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_5_ ));

// Location: LCFF_X47_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_g_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_5_ ));

// Location: LCCOMB_X47_Y24_N0
cycloneii_lcell_comb \u_kirsch|ix28679z53005 (
// Equation(s):
// \u_kirsch|nx28679z56  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_2_  & (\u_kirsch|g_5_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|g_5_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z56 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53005 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z53005 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_c_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_5_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_5_ ));

// Location: LCFF_X47_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_h_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_5_ ));

// Location: LCCOMB_X47_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix28679z53006 (
// Equation(s):
// \u_kirsch|nx28679z57  = (\u_kirsch|valid_0_  & (\u_kirsch|h_5_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|valid_1_  & \u_kirsch|c_5_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|h_5_ ),
	.datac(\u_kirsch|valid_1_ ),
	.datad(\u_kirsch|c_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z57 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53006 .lut_mask = 16'hD888;
defparam \u_kirsch|ix28679z53006 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix28679z53004 (
// Equation(s):
// \u_kirsch|i_add2_5_  = (\u_kirsch|nx28679z56 ) # ((\u_kirsch|nx28679z57 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|e_5_ )))

	.dataa(\u_kirsch|nx28679z56 ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|e_5_ ),
	.datad(\u_kirsch|nx28679z57 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53004 .lut_mask = 16'hFFEA;
defparam \u_kirsch|ix28679z53004 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_d_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_5_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_5_ ));

// Location: LCFF_X47_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_f_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_5_ ));

// Location: LCCOMB_X47_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix28679z52981 (
// Equation(s):
// \u_kirsch|nx28679z40  = (\u_kirsch|f_5_  & (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|f_5_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|valid_1_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z40 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52981 .lut_mask = 16'h0002;
defparam \u_kirsch|ix28679z52981 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_a_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_5_ ));

// Location: LCFF_X47_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_b_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_5_ ));

// Location: LCCOMB_X47_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix28679z52982 (
// Equation(s):
// \u_kirsch|nx28679z41  = (\u_kirsch|valid_0_  & (\u_kirsch|a_5_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|valid_1_  & \u_kirsch|b_5_ ))))

	.dataa(\u_kirsch|a_5_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|b_5_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z41 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52982 .lut_mask = 16'hAAC0;
defparam \u_kirsch|ix28679z52982 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix28679z52980 (
// Equation(s):
// \u_kirsch|i_add1_5_  = (\u_kirsch|nx28679z41 ) # ((\u_kirsch|nx28679z40 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|d_5_ )))

	.dataa(\u_kirsch|nx28679z41 ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|d_5_ ),
	.datad(\u_kirsch|nx28679z40 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52980 .lut_mask = 16'hFFEA;
defparam \u_kirsch|ix28679z52980 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_e_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_4_ ));

// Location: LCFF_X50_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_g_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_4_ ));

// Location: LCCOMB_X50_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix28679z53008 (
// Equation(s):
// \u_kirsch|nx28679z58  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_2_  & (\u_kirsch|g_4_  & !\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|g_4_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z58 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53008 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z53008 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_c_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_4_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_4_ ));

// Location: LCFF_X50_Y23_N13
cycloneii_lcell_ff \u_kirsch|reg_h_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_4_ ));

// Location: LCCOMB_X50_Y23_N14
cycloneii_lcell_comb \u_kirsch|ix28679z53009 (
// Equation(s):
// \u_kirsch|nx28679z59  = (\u_kirsch|valid_0_  & (((\u_kirsch|h_4_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|c_4_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|c_4_ ),
	.datab(\u_kirsch|h_4_ ),
	.datac(\u_kirsch|valid_1_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z59 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53009 .lut_mask = 16'hCCA0;
defparam \u_kirsch|ix28679z53009 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N10
cycloneii_lcell_comb \u_kirsch|ix28679z53007 (
// Equation(s):
// \u_kirsch|i_add2_4_  = (\u_kirsch|nx28679z58 ) # ((\u_kirsch|nx28679z59 ) # ((\u_kirsch|e_4_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|e_4_ ),
	.datab(\u_kirsch|nx28679z58 ),
	.datac(\u_kirsch|nx28679z59 ),
	.datad(\u_kirsch|nx28679z3 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53007 .lut_mask = 16'hFEFC;
defparam \u_kirsch|ix28679z53007 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_d_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_4_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_4_ ));

// Location: LCFF_X50_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_f_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_4_ ));

// Location: LCCOMB_X50_Y23_N16
cycloneii_lcell_comb \u_kirsch|ix28679z52984 (
// Equation(s):
// \u_kirsch|nx28679z42  = (!\u_kirsch|valid_2_  & (\u_kirsch|f_4_  & (!\u_kirsch|valid_0_  & !\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|f_4_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z42 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52984 .lut_mask = 16'h0004;
defparam \u_kirsch|ix28679z52984 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N19
cycloneii_lcell_ff \u_kirsch|reg_a_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_4_ ));

// Location: LCFF_X50_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_b_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_4_ ));

// Location: LCCOMB_X50_Y23_N18
cycloneii_lcell_comb \u_kirsch|ix28679z52985 (
// Equation(s):
// \u_kirsch|nx28679z43  = (\u_kirsch|valid_0_  & (((\u_kirsch|a_4_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|b_4_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|b_4_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|a_4_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z43 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52985 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52985 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N6
cycloneii_lcell_comb \u_kirsch|ix28679z52983 (
// Equation(s):
// \u_kirsch|i_add1_4_  = (\u_kirsch|nx28679z42 ) # ((\u_kirsch|nx28679z43 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|d_4_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|d_4_ ),
	.datac(\u_kirsch|nx28679z42 ),
	.datad(\u_kirsch|nx28679z43 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52983 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52983 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_e_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_3_ ));

// Location: LCFF_X49_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_g_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_3_ ));

// Location: LCCOMB_X49_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix28679z53011 (
// Equation(s):
// \u_kirsch|nx28679z60  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_1_  & (\u_kirsch|g_3_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|g_3_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z60 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53011 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z53011 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_c_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_3_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_3_ ));

// Location: LCFF_X49_Y23_N7
cycloneii_lcell_ff \u_kirsch|reg_h_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_3_ ));

// Location: LCCOMB_X49_Y23_N22
cycloneii_lcell_comb \u_kirsch|ix28679z53012 (
// Equation(s):
// \u_kirsch|nx28679z61  = (\u_kirsch|valid_0_  & (((\u_kirsch|h_3_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|c_3_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|c_3_ ),
	.datab(\u_kirsch|h_3_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z61 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53012 .lut_mask = 16'hCAC0;
defparam \u_kirsch|ix28679z53012 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix28679z53010 (
// Equation(s):
// \u_kirsch|i_add2_3_  = (\u_kirsch|nx28679z60 ) # ((\u_kirsch|nx28679z61 ) # ((\u_kirsch|e_3_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|e_3_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z60 ),
	.datad(\u_kirsch|nx28679z61 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53010 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z53010 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_d_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_3_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_3_ ));

// Location: LCFF_X49_Y23_N25
cycloneii_lcell_ff \u_kirsch|reg_f_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_3_ ));

// Location: LCCOMB_X49_Y23_N10
cycloneii_lcell_comb \u_kirsch|ix28679z52987 (
// Equation(s):
// \u_kirsch|nx28679z44  = (\u_kirsch|f_3_  & (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|f_3_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z44 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52987 .lut_mask = 16'h0002;
defparam \u_kirsch|ix28679z52987 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N15
cycloneii_lcell_ff \u_kirsch|reg_a_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_3_ ));

// Location: LCFF_X49_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_b_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_3_ ));

// Location: LCCOMB_X49_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix28679z52988 (
// Equation(s):
// \u_kirsch|nx28679z45  = (\u_kirsch|valid_0_  & (\u_kirsch|a_3_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|b_3_  & \u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|a_3_ ),
	.datab(\u_kirsch|b_3_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z45 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52988 .lut_mask = 16'hACA0;
defparam \u_kirsch|ix28679z52988 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N12
cycloneii_lcell_comb \u_kirsch|ix28679z52986 (
// Equation(s):
// \u_kirsch|i_add1_3_  = (\u_kirsch|nx28679z44 ) # ((\u_kirsch|nx28679z45 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|d_3_ )))

	.dataa(\u_kirsch|nx28679z44 ),
	.datab(\u_kirsch|nx28679z45 ),
	.datac(\u_kirsch|nx28679z3 ),
	.datad(\u_kirsch|d_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52986 .lut_mask = 16'hFEEE;
defparam \u_kirsch|ix28679z52986 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_e_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_2_ ));

// Location: LCFF_X50_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_g_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_2_ ));

// Location: LCCOMB_X50_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28679z53014 (
// Equation(s):
// \u_kirsch|nx28679z62  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & \u_kirsch|g_2_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|g_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z62 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53014 .lut_mask = 16'h0100;
defparam \u_kirsch|ix28679z53014 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_c_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_2_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_2_ ));

// Location: LCFF_X50_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_h_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_2_ ));

// Location: LCCOMB_X50_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix28679z53015 (
// Equation(s):
// \u_kirsch|nx28679z63  = (\u_kirsch|valid_0_  & (((\u_kirsch|h_2_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|c_2_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|h_2_ ),
	.datac(\u_kirsch|c_2_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z63 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53015 .lut_mask = 16'hCCA0;
defparam \u_kirsch|ix28679z53015 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix28679z53013 (
// Equation(s):
// \u_kirsch|i_add2_2_  = (\u_kirsch|nx28679z62 ) # ((\u_kirsch|nx28679z63 ) # ((\u_kirsch|e_2_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|nx28679z62 ),
	.datab(\u_kirsch|nx28679z63 ),
	.datac(\u_kirsch|e_2_ ),
	.datad(\u_kirsch|nx28679z3 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53013 .lut_mask = 16'hFEEE;
defparam \u_kirsch|ix28679z53013 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_d_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_2_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_2_ ));

// Location: LCFF_X50_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_f_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_2_ ));

// Location: LCCOMB_X50_Y24_N0
cycloneii_lcell_comb \u_kirsch|ix28679z52990 (
// Equation(s):
// \u_kirsch|nx28679z46  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (\u_kirsch|f_2_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|f_2_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z46 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52990 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52990 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_a_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_2_ ));

// Location: LCFF_X50_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_b_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_2_ ));

// Location: LCCOMB_X50_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix28679z52991 (
// Equation(s):
// \u_kirsch|nx28679z47  = (\u_kirsch|valid_0_  & (((\u_kirsch|a_2_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & (\u_kirsch|b_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|b_2_ ),
	.datac(\u_kirsch|a_2_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z47 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52991 .lut_mask = 16'hF088;
defparam \u_kirsch|ix28679z52991 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix28679z52989 (
// Equation(s):
// \u_kirsch|i_add1_2_  = (\u_kirsch|nx28679z47 ) # ((\u_kirsch|nx28679z46 ) # ((\u_kirsch|d_2_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|d_2_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z47 ),
	.datad(\u_kirsch|nx28679z46 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52989 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52989 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_e_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_1_ ));

// Location: LCFF_X49_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_g_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_1_ ));

// Location: LCCOMB_X47_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix28679z53017 (
// Equation(s):
// \u_kirsch|nx28679z64  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_0_  & (\u_kirsch|g_1_  & !\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|g_1_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z64 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53017 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z53017 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_c_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_1_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_1_ ));

// Location: LCFF_X49_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_h_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_1_ ));

// Location: LCCOMB_X47_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix28679z53018 (
// Equation(s):
// \u_kirsch|nx28679z65  = (\u_kirsch|valid_0_  & (((\u_kirsch|h_1_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & (\u_kirsch|c_1_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|c_1_ ),
	.datad(\u_kirsch|h_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z65 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53018 .lut_mask = 16'hEC20;
defparam \u_kirsch|ix28679z53018 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix28679z53016 (
// Equation(s):
// \u_kirsch|i_add2_1_  = (\u_kirsch|nx28679z64 ) # ((\u_kirsch|nx28679z65 ) # ((\u_kirsch|e_1_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|e_1_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z64 ),
	.datad(\u_kirsch|nx28679z65 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53016 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z53016 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_d_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_1_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_1_ ));

// Location: LCFF_X48_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_f_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_1_ ));

// Location: LCCOMB_X48_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52993 (
// Equation(s):
// \u_kirsch|nx28679z48  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & \u_kirsch|f_1_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|f_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z48 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52993 .lut_mask = 16'h0100;
defparam \u_kirsch|ix28679z52993 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N11
cycloneii_lcell_ff \u_kirsch|reg_a_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_1_ ));

// Location: LCFF_X49_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_b_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_1_ ));

// Location: LCCOMB_X49_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix28679z52994 (
// Equation(s):
// \u_kirsch|nx28679z49  = (\u_kirsch|valid_0_  & (((\u_kirsch|a_1_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|b_1_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|a_1_ ),
	.datad(\u_kirsch|b_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z49 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52994 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52994 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix28679z52992 (
// Equation(s):
// \u_kirsch|i_add1_1_  = (\u_kirsch|nx28679z49 ) # ((\u_kirsch|nx28679z48 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|d_1_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|nx28679z49 ),
	.datac(\u_kirsch|nx28679z48 ),
	.datad(\u_kirsch|d_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52992 .lut_mask = 16'hFEFC;
defparam \u_kirsch|ix28679z52992 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_d_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|d_0_~feeder_combout ),
	.sdata(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|d_0_ ));

// Location: LCFF_X48_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_f_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|e_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|f_0_ ));

// Location: LCCOMB_X48_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix28679z52996 (
// Equation(s):
// \u_kirsch|nx28679z50  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & \u_kirsch|f_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\u_kirsch|f_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z50 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52996 .lut_mask = 16'h0100;
defparam \u_kirsch|ix28679z52996 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N31
cycloneii_lcell_ff \u_kirsch|reg_a_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|b_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|a_0_ ));

// Location: LCFF_X48_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_b_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|c_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|b_0_ ));

// Location: LCCOMB_X49_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix28679z52997 (
// Equation(s):
// \u_kirsch|nx28679z51  = (\u_kirsch|valid_0_  & (((\u_kirsch|a_0_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|b_0_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|b_0_ ),
	.datac(\u_kirsch|a_0_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z51 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52997 .lut_mask = 16'hE4A0;
defparam \u_kirsch|ix28679z52997 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix28679z52995 (
// Equation(s):
// \u_kirsch|i_add1_0_  = (\u_kirsch|nx28679z50 ) # ((\u_kirsch|nx28679z51 ) # ((\u_kirsch|d_0_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|d_0_ ),
	.datab(\u_kirsch|nx28679z50 ),
	.datac(\u_kirsch|nx28679z3 ),
	.datad(\u_kirsch|nx28679z51 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52995 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52995 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_e_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|datain_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|e_0_ ));

// Location: LCFF_X49_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_g_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|f_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|g_0_ ));

// Location: LCCOMB_X49_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix28679z53020 (
// Equation(s):
// \u_kirsch|nx28679z66  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_2_  & \u_kirsch|g_0_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|valid_2_ ),
	.datad(\u_kirsch|g_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z66 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53020 .lut_mask = 16'h0100;
defparam \u_kirsch|ix28679z53020 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_c_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|c_0_~feeder_combout ),
	.sdata(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_kirsch|o_row_0_ ),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|c_0_ ));

// Location: LCFF_X49_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_h_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|i_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|h_0_ ));

// Location: LCCOMB_X46_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix28679z53021 (
// Equation(s):
// \u_kirsch|nx28679z67  = (\u_kirsch|valid_0_  & (((\u_kirsch|h_0_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|c_0_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|h_0_ ),
	.datad(\u_kirsch|c_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z67 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53021 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z53021 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix28679z53019 (
// Equation(s):
// \u_kirsch|i_add2_0_  = (\u_kirsch|nx28679z67 ) # ((\u_kirsch|nx28679z66 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|e_0_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|e_0_ ),
	.datac(\u_kirsch|nx28679z67 ),
	.datad(\u_kirsch|nx28679z66 ),
	.cin(gnd),
	.combout(\u_kirsch|i_add2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z53019 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z53019 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N0
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52932 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_0_  = (\u_kirsch|i_add2_0_  & (\u_kirsch|i_add1_0_  $ (VCC))) # (!\u_kirsch|i_add2_0_  & (\u_kirsch|i_add1_0_  & VCC))
// \u_kirsch|stage1|nx45057z8  = CARRY((\u_kirsch|i_add2_0_  & \u_kirsch|i_add1_0_ ))

	.dataa(\u_kirsch|i_add2_0_ ),
	.datab(\u_kirsch|i_add1_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_0_ ),
	.cout(\u_kirsch|stage1|nx45057z8 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52932 .lut_mask = 16'h6688;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N2
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52931 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_1_  = (\u_kirsch|i_add1_1_  & ((\u_kirsch|i_add2_1_  & (\u_kirsch|stage1|nx45057z8  & VCC)) # (!\u_kirsch|i_add2_1_  & (!\u_kirsch|stage1|nx45057z8 )))) # (!\u_kirsch|i_add1_1_  & ((\u_kirsch|i_add2_1_  & 
// (!\u_kirsch|stage1|nx45057z8 )) # (!\u_kirsch|i_add2_1_  & ((\u_kirsch|stage1|nx45057z8 ) # (GND)))))
// \u_kirsch|stage1|nx45057z7  = CARRY((\u_kirsch|i_add1_1_  & (!\u_kirsch|i_add2_1_  & !\u_kirsch|stage1|nx45057z8 )) # (!\u_kirsch|i_add1_1_  & ((!\u_kirsch|stage1|nx45057z8 ) # (!\u_kirsch|i_add2_1_ ))))

	.dataa(\u_kirsch|i_add1_1_ ),
	.datab(\u_kirsch|i_add2_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z8 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_1_ ),
	.cout(\u_kirsch|stage1|nx45057z7 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52931 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N4
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52930 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_2_  = ((\u_kirsch|i_add2_2_  $ (\u_kirsch|i_add1_2_  $ (!\u_kirsch|stage1|nx45057z7 )))) # (GND)
// \u_kirsch|stage1|nx45057z6  = CARRY((\u_kirsch|i_add2_2_  & ((\u_kirsch|i_add1_2_ ) # (!\u_kirsch|stage1|nx45057z7 ))) # (!\u_kirsch|i_add2_2_  & (\u_kirsch|i_add1_2_  & !\u_kirsch|stage1|nx45057z7 )))

	.dataa(\u_kirsch|i_add2_2_ ),
	.datab(\u_kirsch|i_add1_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z7 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_2_ ),
	.cout(\u_kirsch|stage1|nx45057z6 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52930 .lut_mask = 16'h698E;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N6
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52929 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_3_  = (\u_kirsch|i_add2_3_  & ((\u_kirsch|i_add1_3_  & (\u_kirsch|stage1|nx45057z6  & VCC)) # (!\u_kirsch|i_add1_3_  & (!\u_kirsch|stage1|nx45057z6 )))) # (!\u_kirsch|i_add2_3_  & ((\u_kirsch|i_add1_3_  & 
// (!\u_kirsch|stage1|nx45057z6 )) # (!\u_kirsch|i_add1_3_  & ((\u_kirsch|stage1|nx45057z6 ) # (GND)))))
// \u_kirsch|stage1|nx45057z5  = CARRY((\u_kirsch|i_add2_3_  & (!\u_kirsch|i_add1_3_  & !\u_kirsch|stage1|nx45057z6 )) # (!\u_kirsch|i_add2_3_  & ((!\u_kirsch|stage1|nx45057z6 ) # (!\u_kirsch|i_add1_3_ ))))

	.dataa(\u_kirsch|i_add2_3_ ),
	.datab(\u_kirsch|i_add1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z6 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_3_ ),
	.cout(\u_kirsch|stage1|nx45057z5 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52929 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N8
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52928 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_4_  = ((\u_kirsch|i_add1_4_  $ (\u_kirsch|i_add2_4_  $ (!\u_kirsch|stage1|nx45057z5 )))) # (GND)
// \u_kirsch|stage1|nx45057z4  = CARRY((\u_kirsch|i_add1_4_  & ((\u_kirsch|i_add2_4_ ) # (!\u_kirsch|stage1|nx45057z5 ))) # (!\u_kirsch|i_add1_4_  & (\u_kirsch|i_add2_4_  & !\u_kirsch|stage1|nx45057z5 )))

	.dataa(\u_kirsch|i_add1_4_ ),
	.datab(\u_kirsch|i_add2_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z5 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_4_ ),
	.cout(\u_kirsch|stage1|nx45057z4 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52928 .lut_mask = 16'h698E;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N10
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52927 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_5_  = (\u_kirsch|i_add1_5_  & ((\u_kirsch|i_add2_5_  & (\u_kirsch|stage1|nx45057z4  & VCC)) # (!\u_kirsch|i_add2_5_  & (!\u_kirsch|stage1|nx45057z4 )))) # (!\u_kirsch|i_add1_5_  & ((\u_kirsch|i_add2_5_  & 
// (!\u_kirsch|stage1|nx45057z4 )) # (!\u_kirsch|i_add2_5_  & ((\u_kirsch|stage1|nx45057z4 ) # (GND)))))
// \u_kirsch|stage1|nx45057z3  = CARRY((\u_kirsch|i_add1_5_  & (!\u_kirsch|i_add2_5_  & !\u_kirsch|stage1|nx45057z4 )) # (!\u_kirsch|i_add1_5_  & ((!\u_kirsch|stage1|nx45057z4 ) # (!\u_kirsch|i_add2_5_ ))))

	.dataa(\u_kirsch|i_add1_5_ ),
	.datab(\u_kirsch|i_add2_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z4 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_5_ ),
	.cout(\u_kirsch|stage1|nx45057z3 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52927 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N12
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52926 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_6_  = ((\u_kirsch|i_add1_6_  $ (\u_kirsch|i_add2_6_  $ (!\u_kirsch|stage1|nx45057z3 )))) # (GND)
// \u_kirsch|stage1|nx45057z2  = CARRY((\u_kirsch|i_add1_6_  & ((\u_kirsch|i_add2_6_ ) # (!\u_kirsch|stage1|nx45057z3 ))) # (!\u_kirsch|i_add1_6_  & (\u_kirsch|i_add2_6_  & !\u_kirsch|stage1|nx45057z3 )))

	.dataa(\u_kirsch|i_add1_6_ ),
	.datab(\u_kirsch|i_add2_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z3 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_6_ ),
	.cout(\u_kirsch|stage1|nx45057z2 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52926 .lut_mask = 16'h698E;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N14
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52925 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_7_  = (\u_kirsch|i_add1_7_  & ((\u_kirsch|i_add2_7_  & (\u_kirsch|stage1|nx45057z2  & VCC)) # (!\u_kirsch|i_add2_7_  & (!\u_kirsch|stage1|nx45057z2 )))) # (!\u_kirsch|i_add1_7_  & ((\u_kirsch|i_add2_7_  & 
// (!\u_kirsch|stage1|nx45057z2 )) # (!\u_kirsch|i_add2_7_  & ((\u_kirsch|stage1|nx45057z2 ) # (GND)))))
// \u_kirsch|stage1|o_add_op12_stage1_8_  = CARRY((\u_kirsch|i_add1_7_  & (!\u_kirsch|i_add2_7_  & !\u_kirsch|stage1|nx45057z2 )) # (!\u_kirsch|i_add1_7_  & ((!\u_kirsch|stage1|nx45057z2 ) # (!\u_kirsch|i_add2_7_ ))))

	.dataa(\u_kirsch|i_add1_7_ ),
	.datab(\u_kirsch|i_add2_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx45057z2 ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_7_ ),
	.cout(\u_kirsch|stage1|o_add_op12_stage1_8_ ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52925 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N16
cycloneii_lcell_comb \u_kirsch|stage1|o_add_op12_stage1_8_~0 (
// Equation(s):
// \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout  = !\u_kirsch|stage1|o_add_op12_stage1_8_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|o_add_op12_stage1_8_ ),
	.combout(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|o_add_op12_stage1_8_~0 .lut_mask = 16'h0F0F;
defparam \u_kirsch|stage1|o_add_op12_stage1_8_~0 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N0
cycloneii_lcell_comb \u_kirsch|stage1|ix45057z52923~1 (
// Equation(s):
// \u_kirsch|stage1|ix45057z52923~1_cout  = CARRY(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout )

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|stage1|ix45057z52923~1_cout ));
// synopsys translate_off
defparam \u_kirsch|stage1|ix45057z52923~1 .lut_mask = 16'h00AA;
defparam \u_kirsch|stage1|ix45057z52923~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y24_N2
cycloneii_lcell_comb \u_kirsch|stage1|ix45057z52923 (
// Equation(s):
// \u_kirsch|stage1|nx45057z1  = \u_kirsch|stage1|ix45057z52923~1_cout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|ix45057z52923~1_cout ),
	.combout(\u_kirsch|stage1|nx45057z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|ix45057z52923 .lut_mask = 16'hF0F0;
defparam \u_kirsch|stage1|ix45057z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix28679z52927 (
// Equation(s):
// \u_kirsch|nx28679z4  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & (\u_kirsch|e_7_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|e_7_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52927 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52928 (
// Equation(s):
// \u_kirsch|nx28679z5  = (\u_kirsch|valid_0_  & (((\u_kirsch|g_7_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|a_7_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|g_7_ ),
	.datac(\u_kirsch|a_7_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52928 .lut_mask = 16'hCCA0;
defparam \u_kirsch|ix28679z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix28679z52925 (
// Equation(s):
// \u_kirsch|i_max1_7_  = (\u_kirsch|nx28679z5 ) # ((\u_kirsch|nx28679z4 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|c_7_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|c_7_ ),
	.datac(\u_kirsch|nx28679z5 ),
	.datad(\u_kirsch|nx28679z4 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52925 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52951 (
// Equation(s):
// \u_kirsch|nx28679z20  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & (\u_kirsch|h_7_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|h_7_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z20 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52951 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52951 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N0
cycloneii_lcell_comb \u_kirsch|ix28679z52952 (
// Equation(s):
// \u_kirsch|nx28679z21  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_7_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|d_7_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|b_7_ ),
	.datad(\u_kirsch|d_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z21 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52952 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52952 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix28679z52950 (
// Equation(s):
// \u_kirsch|i_max2_7_  = (\u_kirsch|nx28679z20 ) # ((\u_kirsch|nx28679z21 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_7_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|nx28679z20 ),
	.datac(\u_kirsch|f_7_ ),
	.datad(\u_kirsch|nx28679z21 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52950 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52950 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix28679z52954 (
// Equation(s):
// \u_kirsch|nx28679z22  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & (\u_kirsch|h_6_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|h_6_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z22 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52954 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52954 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52955 (
// Equation(s):
// \u_kirsch|nx28679z23  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_6_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|d_6_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|d_6_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|b_6_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z23 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52955 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52955 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N20
cycloneii_lcell_comb \u_kirsch|ix28679z52953 (
// Equation(s):
// \u_kirsch|i_max2_6_  = (\u_kirsch|nx28679z22 ) # ((\u_kirsch|nx28679z23 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_6_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|nx28679z22 ),
	.datac(\u_kirsch|f_6_ ),
	.datad(\u_kirsch|nx28679z23 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52953 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52953 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52930 (
// Equation(s):
// \u_kirsch|nx28679z6  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (\u_kirsch|e_6_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|e_6_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52930 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix28679z52931 (
// Equation(s):
// \u_kirsch|nx28679z7  = (\u_kirsch|valid_0_  & (\u_kirsch|g_6_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|valid_1_  & \u_kirsch|a_6_ ))))

	.dataa(\u_kirsch|g_6_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|a_6_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z7 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52931 .lut_mask = 16'hAAC0;
defparam \u_kirsch|ix28679z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N20
cycloneii_lcell_comb \u_kirsch|ix28679z52929 (
// Equation(s):
// \u_kirsch|i_max1_6_  = (\u_kirsch|nx28679z6 ) # ((\u_kirsch|nx28679z7 ) # ((\u_kirsch|c_6_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|c_6_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z6 ),
	.datad(\u_kirsch|nx28679z7 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52929 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52957 (
// Equation(s):
// \u_kirsch|nx28679z24  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (\u_kirsch|h_5_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|h_5_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z24 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52957 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52957 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix28679z52958 (
// Equation(s):
// \u_kirsch|nx28679z25  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_5_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|d_5_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|d_5_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|b_5_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z25 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52958 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52958 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52956 (
// Equation(s):
// \u_kirsch|i_max2_5_  = (\u_kirsch|nx28679z24 ) # ((\u_kirsch|nx28679z25 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_5_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|nx28679z24 ),
	.datac(\u_kirsch|f_5_ ),
	.datad(\u_kirsch|nx28679z25 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52956 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52956 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix28679z52933 (
// Equation(s):
// \u_kirsch|nx28679z8  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (\u_kirsch|e_5_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|e_5_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z8 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52933 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix28679z52934 (
// Equation(s):
// \u_kirsch|nx28679z9  = (\u_kirsch|valid_0_  & (\u_kirsch|g_5_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|a_5_  & \u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|g_5_ ),
	.datac(\u_kirsch|a_5_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z9 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52934 .lut_mask = 16'hD888;
defparam \u_kirsch|ix28679z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix28679z52932 (
// Equation(s):
// \u_kirsch|i_max1_5_  = (\u_kirsch|nx28679z9 ) # ((\u_kirsch|nx28679z8 ) # ((\u_kirsch|c_5_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|nx28679z9 ),
	.datab(\u_kirsch|c_5_ ),
	.datac(\u_kirsch|nx28679z8 ),
	.datad(\u_kirsch|nx28679z3 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52932 .lut_mask = 16'hFEFA;
defparam \u_kirsch|ix28679z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N12
cycloneii_lcell_comb \u_kirsch|ix28679z52960 (
// Equation(s):
// \u_kirsch|nx28679z26  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (\u_kirsch|h_4_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|h_4_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z26 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52960 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52960 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix28679z52961 (
// Equation(s):
// \u_kirsch|nx28679z27  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_4_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & (\u_kirsch|d_4_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|d_4_ ),
	.datac(\u_kirsch|b_4_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z27 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52961 .lut_mask = 16'hF088;
defparam \u_kirsch|ix28679z52961 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y23_N4
cycloneii_lcell_comb \u_kirsch|ix28679z52959 (
// Equation(s):
// \u_kirsch|i_max2_4_  = (\u_kirsch|nx28679z26 ) # ((\u_kirsch|nx28679z27 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_4_ )))

	.dataa(\u_kirsch|nx28679z26 ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|f_4_ ),
	.datad(\u_kirsch|nx28679z27 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52959 .lut_mask = 16'hFFEA;
defparam \u_kirsch|ix28679z52959 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N12
cycloneii_lcell_comb \u_kirsch|ix28679z52936 (
// Equation(s):
// \u_kirsch|nx28679z10  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & (\u_kirsch|e_4_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|e_4_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z10 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52936 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N20
cycloneii_lcell_comb \u_kirsch|ix28679z52937 (
// Equation(s):
// \u_kirsch|nx28679z11  = (\u_kirsch|valid_0_  & (\u_kirsch|g_4_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|valid_1_  & \u_kirsch|a_4_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|g_4_ ),
	.datac(\u_kirsch|valid_1_ ),
	.datad(\u_kirsch|a_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z11 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52937 .lut_mask = 16'hD888;
defparam \u_kirsch|ix28679z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N18
cycloneii_lcell_comb \u_kirsch|ix28679z52935 (
// Equation(s):
// \u_kirsch|i_max1_4_  = (\u_kirsch|nx28679z11 ) # ((\u_kirsch|nx28679z10 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|c_4_ )))

	.dataa(\u_kirsch|nx28679z11 ),
	.datab(\u_kirsch|nx28679z10 ),
	.datac(\u_kirsch|nx28679z3 ),
	.datad(\u_kirsch|c_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52935 .lut_mask = 16'hFEEE;
defparam \u_kirsch|ix28679z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N6
cycloneii_lcell_comb \u_kirsch|ix28679z52963 (
// Equation(s):
// \u_kirsch|nx28679z28  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_2_  & (\u_kirsch|h_3_  & !\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|h_3_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z28 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52963 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52963 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52964 (
// Equation(s):
// \u_kirsch|nx28679z29  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_3_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|d_3_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|b_3_ ),
	.datad(\u_kirsch|d_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z29 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52964 .lut_mask = 16'hE4A0;
defparam \u_kirsch|ix28679z52964 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52962 (
// Equation(s):
// \u_kirsch|i_max2_3_  = (\u_kirsch|nx28679z28 ) # ((\u_kirsch|nx28679z29 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_3_ )))

	.dataa(\u_kirsch|nx28679z28 ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|f_3_ ),
	.datad(\u_kirsch|nx28679z29 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52962 .lut_mask = 16'hFFEA;
defparam \u_kirsch|ix28679z52962 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix28679z52939 (
// Equation(s):
// \u_kirsch|nx28679z12  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_1_  & (\u_kirsch|e_3_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|e_3_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z12 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52939 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N14
cycloneii_lcell_comb \u_kirsch|ix28679z52940 (
// Equation(s):
// \u_kirsch|nx28679z13  = (\u_kirsch|valid_0_  & (\u_kirsch|g_3_ )) # (!\u_kirsch|valid_0_  & (((\u_kirsch|a_3_  & \u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|g_3_ ),
	.datac(\u_kirsch|a_3_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z13 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52940 .lut_mask = 16'hD888;
defparam \u_kirsch|ix28679z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y23_N18
cycloneii_lcell_comb \u_kirsch|ix28679z52938 (
// Equation(s):
// \u_kirsch|i_max1_3_  = (\u_kirsch|nx28679z13 ) # ((\u_kirsch|nx28679z12 ) # ((\u_kirsch|c_3_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|c_3_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z13 ),
	.datad(\u_kirsch|nx28679z12 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52938 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N10
cycloneii_lcell_comb \u_kirsch|ix28679z52966 (
// Equation(s):
// \u_kirsch|nx28679z30  = (!\u_kirsch|valid_2_  & (!\u_kirsch|valid_1_  & (\u_kirsch|h_2_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|h_2_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z30 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52966 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52966 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N2
cycloneii_lcell_comb \u_kirsch|ix28679z52967 (
// Equation(s):
// \u_kirsch|nx28679z31  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_2_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|d_2_  & ((\u_kirsch|valid_1_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|d_2_ ),
	.datac(\u_kirsch|b_2_ ),
	.datad(\u_kirsch|valid_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z31 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52967 .lut_mask = 16'hE4A0;
defparam \u_kirsch|ix28679z52967 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix28679z52965 (
// Equation(s):
// \u_kirsch|i_max2_2_  = (\u_kirsch|nx28679z30 ) # ((\u_kirsch|nx28679z31 ) # ((\u_kirsch|f_2_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|nx28679z30 ),
	.datab(\u_kirsch|nx28679z31 ),
	.datac(\u_kirsch|f_2_ ),
	.datad(\u_kirsch|nx28679z3 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52965 .lut_mask = 16'hFEEE;
defparam \u_kirsch|ix28679z52965 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N6
cycloneii_lcell_comb \u_kirsch|ix28679z52942 (
// Equation(s):
// \u_kirsch|nx28679z14  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_2_  & (\u_kirsch|e_2_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|e_2_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z14 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52942 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix28679z52943 (
// Equation(s):
// \u_kirsch|nx28679z15  = (\u_kirsch|valid_0_  & (((\u_kirsch|g_2_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|a_2_  & (\u_kirsch|valid_1_ )))

	.dataa(\u_kirsch|a_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|g_2_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z15 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52943 .lut_mask = 16'hF088;
defparam \u_kirsch|ix28679z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix28679z52941 (
// Equation(s):
// \u_kirsch|i_max1_2_  = (\u_kirsch|nx28679z14 ) # ((\u_kirsch|nx28679z15 ) # ((\u_kirsch|c_2_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|c_2_ ),
	.datab(\u_kirsch|nx28679z14 ),
	.datac(\u_kirsch|nx28679z3 ),
	.datad(\u_kirsch|nx28679z15 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52941 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52969 (
// Equation(s):
// \u_kirsch|nx28679z32  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_2_  & (\u_kirsch|h_1_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|h_1_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z32 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52969 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52969 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N0
cycloneii_lcell_comb \u_kirsch|ix28679z52970 (
// Equation(s):
// \u_kirsch|nx28679z33  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_1_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|d_1_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|b_1_ ),
	.datad(\u_kirsch|d_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z33 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52970 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52970 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix28679z52968 (
// Equation(s):
// \u_kirsch|i_max2_1_  = (\u_kirsch|nx28679z32 ) # ((\u_kirsch|nx28679z33 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_1_ )))

	.dataa(\u_kirsch|nx28679z32 ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|f_1_ ),
	.datad(\u_kirsch|nx28679z33 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52968 .lut_mask = 16'hFFEA;
defparam \u_kirsch|ix28679z52968 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix28679z52945 (
// Equation(s):
// \u_kirsch|nx28679z16  = (!\u_kirsch|valid_0_  & (!\u_kirsch|valid_1_  & (\u_kirsch|e_1_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|e_1_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z16 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52945 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52945 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix28679z52946 (
// Equation(s):
// \u_kirsch|nx28679z17  = (\u_kirsch|valid_0_  & (((\u_kirsch|g_1_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|a_1_ ))))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|g_1_ ),
	.datad(\u_kirsch|a_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z17 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52946 .lut_mask = 16'hE2C0;
defparam \u_kirsch|ix28679z52946 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N30
cycloneii_lcell_comb \u_kirsch|ix28679z52944 (
// Equation(s):
// \u_kirsch|i_max1_1_  = (\u_kirsch|nx28679z17 ) # ((\u_kirsch|nx28679z16 ) # ((\u_kirsch|c_1_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|nx28679z17 ),
	.datab(\u_kirsch|c_1_ ),
	.datac(\u_kirsch|nx28679z3 ),
	.datad(\u_kirsch|nx28679z16 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52944 .lut_mask = 16'hFFEA;
defparam \u_kirsch|ix28679z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N22
cycloneii_lcell_comb \u_kirsch|ix28679z52948 (
// Equation(s):
// \u_kirsch|nx28679z18  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_2_  & (\u_kirsch|e_0_  & !\u_kirsch|valid_0_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|e_0_ ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z18 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52948 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52948 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52949 (
// Equation(s):
// \u_kirsch|nx28679z19  = (\u_kirsch|valid_0_  & (((\u_kirsch|g_0_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|a_0_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|g_0_ ),
	.datad(\u_kirsch|a_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z19 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52949 .lut_mask = 16'hE4A0;
defparam \u_kirsch|ix28679z52949 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N24
cycloneii_lcell_comb \u_kirsch|ix28679z52947 (
// Equation(s):
// \u_kirsch|i_max1_0_  = (\u_kirsch|nx28679z19 ) # ((\u_kirsch|nx28679z18 ) # ((\u_kirsch|c_0_  & \u_kirsch|nx28679z3 )))

	.dataa(\u_kirsch|c_0_ ),
	.datab(\u_kirsch|nx28679z3 ),
	.datac(\u_kirsch|nx28679z19 ),
	.datad(\u_kirsch|nx28679z18 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52947 .lut_mask = 16'hFFF8;
defparam \u_kirsch|ix28679z52947 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix28679z52972 (
// Equation(s):
// \u_kirsch|nx28679z34  = (!\u_kirsch|valid_1_  & (!\u_kirsch|valid_0_  & (\u_kirsch|h_0_  & !\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_1_ ),
	.datab(\u_kirsch|valid_0_ ),
	.datac(\u_kirsch|h_0_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z34 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52972 .lut_mask = 16'h0010;
defparam \u_kirsch|ix28679z52972 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N28
cycloneii_lcell_comb \u_kirsch|ix28679z52973 (
// Equation(s):
// \u_kirsch|nx28679z35  = (\u_kirsch|valid_0_  & (((\u_kirsch|b_0_ )))) # (!\u_kirsch|valid_0_  & (\u_kirsch|valid_1_  & ((\u_kirsch|d_0_ ))))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(\u_kirsch|b_0_ ),
	.datad(\u_kirsch|d_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z35 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52973 .lut_mask = 16'hE4A0;
defparam \u_kirsch|ix28679z52973 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N26
cycloneii_lcell_comb \u_kirsch|ix28679z52971 (
// Equation(s):
// \u_kirsch|i_max2_0_  = (\u_kirsch|nx28679z34 ) # ((\u_kirsch|nx28679z35 ) # ((\u_kirsch|nx28679z3  & \u_kirsch|f_0_ )))

	.dataa(\u_kirsch|nx28679z3 ),
	.datab(\u_kirsch|nx28679z34 ),
	.datac(\u_kirsch|f_0_ ),
	.datad(\u_kirsch|nx28679z35 ),
	.cin(gnd),
	.combout(\u_kirsch|i_max2_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52971 .lut_mask = 16'hFFEC;
defparam \u_kirsch|ix28679z52971 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N2
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52931 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z8  = CARRY((\u_kirsch|i_max1_0_  & !\u_kirsch|i_max2_0_ ))

	.dataa(\u_kirsch|i_max1_0_ ),
	.datab(\u_kirsch|i_max2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z8 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52931 .lut_mask = 16'h0022;
defparam \u_kirsch|stage1|u_max1|ix54128z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N4
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52930 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z7  = CARRY((\u_kirsch|i_max1_1_  & (\u_kirsch|i_max2_1_  & !\u_kirsch|stage1|u_max1|nx54128z8 )) # (!\u_kirsch|i_max1_1_  & ((\u_kirsch|i_max2_1_ ) # (!\u_kirsch|stage1|u_max1|nx54128z8 ))))

	.dataa(\u_kirsch|i_max1_1_ ),
	.datab(\u_kirsch|i_max2_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx54128z8 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z7 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|stage1|u_max1|ix54128z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N6
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52929 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z6  = CARRY((\u_kirsch|i_max1_2_  & ((!\u_kirsch|stage1|u_max1|nx54128z7 ) # (!\u_kirsch|i_max2_2_ ))) # (!\u_kirsch|i_max1_2_  & (!\u_kirsch|i_max2_2_  & !\u_kirsch|stage1|u_max1|nx54128z7 )))

	.dataa(\u_kirsch|i_max1_2_ ),
	.datab(\u_kirsch|i_max2_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx54128z7 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z6 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix54128z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N8
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52928 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z5  = CARRY((\u_kirsch|i_max2_3_  & ((!\u_kirsch|stage1|u_max1|nx54128z6 ) # (!\u_kirsch|i_max1_3_ ))) # (!\u_kirsch|i_max2_3_  & (!\u_kirsch|i_max1_3_  & !\u_kirsch|stage1|u_max1|nx54128z6 )))

	.dataa(\u_kirsch|i_max2_3_ ),
	.datab(\u_kirsch|i_max1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx54128z6 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z5 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52928 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix54128z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N10
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52927 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z4  = CARRY((\u_kirsch|i_max1_4_  & ((!\u_kirsch|stage1|u_max1|nx54128z5 ) # (!\u_kirsch|i_max2_4_ ))) # (!\u_kirsch|i_max1_4_  & (!\u_kirsch|i_max2_4_  & !\u_kirsch|stage1|u_max1|nx54128z5 )))

	.dataa(\u_kirsch|i_max1_4_ ),
	.datab(\u_kirsch|i_max2_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx54128z5 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z4 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix54128z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N12
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52926 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z3  = CARRY((\u_kirsch|i_max2_5_  & ((!\u_kirsch|stage1|u_max1|nx54128z4 ) # (!\u_kirsch|i_max1_5_ ))) # (!\u_kirsch|i_max2_5_  & (!\u_kirsch|i_max1_5_  & !\u_kirsch|stage1|u_max1|nx54128z4 )))

	.dataa(\u_kirsch|i_max2_5_ ),
	.datab(\u_kirsch|i_max1_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx54128z4 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z3 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix54128z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N14
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52925 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z2  = CARRY((\u_kirsch|i_max2_6_  & (\u_kirsch|i_max1_6_  & !\u_kirsch|stage1|u_max1|nx54128z3 )) # (!\u_kirsch|i_max2_6_  & ((\u_kirsch|i_max1_6_ ) # (!\u_kirsch|stage1|u_max1|nx54128z3 ))))

	.dataa(\u_kirsch|i_max2_6_ ),
	.datab(\u_kirsch|i_max1_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx54128z3 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx54128z2 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52925 .lut_mask = 16'h004D;
defparam \u_kirsch|stage1|u_max1|ix54128z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N16
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52924 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx54128z1  = (\u_kirsch|i_max1_7_  & ((\u_kirsch|stage1|u_max1|nx54128z2 ) # (!\u_kirsch|i_max2_7_ ))) # (!\u_kirsch|i_max1_7_  & (\u_kirsch|stage1|u_max1|nx54128z2  & !\u_kirsch|i_max2_7_ ))

	.dataa(\u_kirsch|i_max1_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|i_max2_7_ ),
	.cin(\u_kirsch|stage1|u_max1|nx54128z2 ),
	.combout(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52924 .lut_mask = 16'hA0FA;
defparam \u_kirsch|stage1|u_max1|ix54128z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N6
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix54128z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_7_  = (\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max1_7_ ))) # (!\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max2_7_ ))

	.dataa(\u_kirsch|i_max2_7_ ),
	.datab(\u_kirsch|i_max1_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix54128z52923 .lut_mask = 16'hCCAA;
defparam \u_kirsch|stage1|u_max1|ix54128z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N18
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix55125z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_6_  = (\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max1_6_ ))) # (!\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max2_6_ ))

	.dataa(\u_kirsch|i_max2_6_ ),
	.datab(vcc),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max1_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_6_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix55125z52923 .lut_mask = 16'hFA0A;
defparam \u_kirsch|stage1|u_max1|ix55125z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N20
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix56122z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_5_  = (\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max1_5_ ))) # (!\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max2_5_ ))

	.dataa(\u_kirsch|i_max2_5_ ),
	.datab(vcc),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max1_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_5_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix56122z52923 .lut_mask = 16'hFA0A;
defparam \u_kirsch|stage1|u_max1|ix56122z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y23_N22
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix57119z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_4_  = (\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max1_4_ ))) # (!\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max2_4_ ))

	.dataa(vcc),
	.datab(\u_kirsch|i_max2_4_ ),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max1_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_4_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix57119z52923 .lut_mask = 16'hFC0C;
defparam \u_kirsch|stage1|u_max1|ix57119z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N18
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix58116z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_3_  = (\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max1_3_ )) # (!\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max2_3_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max1_3_ ),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max2_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_3_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix58116z52923 .lut_mask = 16'hCFC0;
defparam \u_kirsch|stage1|u_max1|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N20
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix59113z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_2_  = (\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max1_2_ )) # (!\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max2_2_ )))

	.dataa(\u_kirsch|i_max1_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max2_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix59113z52923 .lut_mask = 16'hAFA0;
defparam \u_kirsch|stage1|u_max1|ix59113z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N28
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix60110z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_1_  = (\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max1_1_ ))) # (!\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max2_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|i_max2_1_ ),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max1_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix60110z52923 .lut_mask = 16'hFC0C;
defparam \u_kirsch|stage1|u_max1|ix60110z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N30
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix61107z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_pix_0_  = (\u_kirsch|stage1|u_max1|nx54128z1  & ((\u_kirsch|i_max1_0_ ))) # (!\u_kirsch|stage1|u_max1|nx54128z1  & (\u_kirsch|i_max2_0_ ))

	.dataa(\u_kirsch|i_max2_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|stage1|u_max1|nx54128z1 ),
	.datad(\u_kirsch|i_max1_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_pix_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix61107z52923 .lut_mask = 16'hFA0A;
defparam \u_kirsch|stage1|u_max1|ix61107z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N0
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52933 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_0_  = (\u_kirsch|stage1|o_add_op12_stage1_0_  & (\u_kirsch|stage1|u_max1|o_max_pix_0_  $ (VCC))) # (!\u_kirsch|stage1|o_add_op12_stage1_0_  & (\u_kirsch|stage1|u_max1|o_max_pix_0_  & VCC))
// \u_kirsch|stage1|nx15254z10  = CARRY((\u_kirsch|stage1|o_add_op12_stage1_0_  & \u_kirsch|stage1|u_max1|o_max_pix_0_ ))

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_0_ ),
	.datab(\u_kirsch|stage1|u_max1|o_max_pix_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|stage1|o_max_add_stage1_0_ ),
	.cout(\u_kirsch|stage1|nx15254z10 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52933 .lut_mask = 16'h6688;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N2
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52932 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_1_  = (\u_kirsch|stage1|o_add_op12_stage1_1_  & ((\u_kirsch|stage1|u_max1|o_max_pix_1_  & (\u_kirsch|stage1|nx15254z10  & VCC)) # (!\u_kirsch|stage1|u_max1|o_max_pix_1_  & (!\u_kirsch|stage1|nx15254z10 )))) # 
// (!\u_kirsch|stage1|o_add_op12_stage1_1_  & ((\u_kirsch|stage1|u_max1|o_max_pix_1_  & (!\u_kirsch|stage1|nx15254z10 )) # (!\u_kirsch|stage1|u_max1|o_max_pix_1_  & ((\u_kirsch|stage1|nx15254z10 ) # (GND)))))
// \u_kirsch|stage1|nx15254z9  = CARRY((\u_kirsch|stage1|o_add_op12_stage1_1_  & (!\u_kirsch|stage1|u_max1|o_max_pix_1_  & !\u_kirsch|stage1|nx15254z10 )) # (!\u_kirsch|stage1|o_add_op12_stage1_1_  & ((!\u_kirsch|stage1|nx15254z10 ) # 
// (!\u_kirsch|stage1|u_max1|o_max_pix_1_ ))))

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_1_ ),
	.datab(\u_kirsch|stage1|u_max1|o_max_pix_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z10 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_1_ ),
	.cout(\u_kirsch|stage1|nx15254z9 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52932 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N4
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52931 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_2_  = ((\u_kirsch|stage1|u_max1|o_max_pix_2_  $ (\u_kirsch|stage1|o_add_op12_stage1_2_  $ (!\u_kirsch|stage1|nx15254z9 )))) # (GND)
// \u_kirsch|stage1|nx15254z8  = CARRY((\u_kirsch|stage1|u_max1|o_max_pix_2_  & ((\u_kirsch|stage1|o_add_op12_stage1_2_ ) # (!\u_kirsch|stage1|nx15254z9 ))) # (!\u_kirsch|stage1|u_max1|o_max_pix_2_  & (\u_kirsch|stage1|o_add_op12_stage1_2_  & 
// !\u_kirsch|stage1|nx15254z9 )))

	.dataa(\u_kirsch|stage1|u_max1|o_max_pix_2_ ),
	.datab(\u_kirsch|stage1|o_add_op12_stage1_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z9 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_2_ ),
	.cout(\u_kirsch|stage1|nx15254z8 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52931 .lut_mask = 16'h698E;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N6
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52930 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_3_  = (\u_kirsch|stage1|u_max1|o_max_pix_3_  & ((\u_kirsch|stage1|o_add_op12_stage1_3_  & (\u_kirsch|stage1|nx15254z8  & VCC)) # (!\u_kirsch|stage1|o_add_op12_stage1_3_  & (!\u_kirsch|stage1|nx15254z8 )))) # 
// (!\u_kirsch|stage1|u_max1|o_max_pix_3_  & ((\u_kirsch|stage1|o_add_op12_stage1_3_  & (!\u_kirsch|stage1|nx15254z8 )) # (!\u_kirsch|stage1|o_add_op12_stage1_3_  & ((\u_kirsch|stage1|nx15254z8 ) # (GND)))))
// \u_kirsch|stage1|nx15254z7  = CARRY((\u_kirsch|stage1|u_max1|o_max_pix_3_  & (!\u_kirsch|stage1|o_add_op12_stage1_3_  & !\u_kirsch|stage1|nx15254z8 )) # (!\u_kirsch|stage1|u_max1|o_max_pix_3_  & ((!\u_kirsch|stage1|nx15254z8 ) # 
// (!\u_kirsch|stage1|o_add_op12_stage1_3_ ))))

	.dataa(\u_kirsch|stage1|u_max1|o_max_pix_3_ ),
	.datab(\u_kirsch|stage1|o_add_op12_stage1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z8 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_3_ ),
	.cout(\u_kirsch|stage1|nx15254z7 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52930 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N8
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52929 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_4_  = ((\u_kirsch|stage1|o_add_op12_stage1_4_  $ (\u_kirsch|stage1|u_max1|o_max_pix_4_  $ (!\u_kirsch|stage1|nx15254z7 )))) # (GND)
// \u_kirsch|stage1|nx15254z6  = CARRY((\u_kirsch|stage1|o_add_op12_stage1_4_  & ((\u_kirsch|stage1|u_max1|o_max_pix_4_ ) # (!\u_kirsch|stage1|nx15254z7 ))) # (!\u_kirsch|stage1|o_add_op12_stage1_4_  & (\u_kirsch|stage1|u_max1|o_max_pix_4_  & 
// !\u_kirsch|stage1|nx15254z7 )))

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_4_ ),
	.datab(\u_kirsch|stage1|u_max1|o_max_pix_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z7 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_4_ ),
	.cout(\u_kirsch|stage1|nx15254z6 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52929 .lut_mask = 16'h698E;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N10
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52928 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_5_  = (\u_kirsch|stage1|o_add_op12_stage1_5_  & ((\u_kirsch|stage1|u_max1|o_max_pix_5_  & (\u_kirsch|stage1|nx15254z6  & VCC)) # (!\u_kirsch|stage1|u_max1|o_max_pix_5_  & (!\u_kirsch|stage1|nx15254z6 )))) # 
// (!\u_kirsch|stage1|o_add_op12_stage1_5_  & ((\u_kirsch|stage1|u_max1|o_max_pix_5_  & (!\u_kirsch|stage1|nx15254z6 )) # (!\u_kirsch|stage1|u_max1|o_max_pix_5_  & ((\u_kirsch|stage1|nx15254z6 ) # (GND)))))
// \u_kirsch|stage1|nx15254z5  = CARRY((\u_kirsch|stage1|o_add_op12_stage1_5_  & (!\u_kirsch|stage1|u_max1|o_max_pix_5_  & !\u_kirsch|stage1|nx15254z6 )) # (!\u_kirsch|stage1|o_add_op12_stage1_5_  & ((!\u_kirsch|stage1|nx15254z6 ) # 
// (!\u_kirsch|stage1|u_max1|o_max_pix_5_ ))))

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_5_ ),
	.datab(\u_kirsch|stage1|u_max1|o_max_pix_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z6 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_5_ ),
	.cout(\u_kirsch|stage1|nx15254z5 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52928 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N12
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52927 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_6_  = ((\u_kirsch|stage1|o_add_op12_stage1_6_  $ (\u_kirsch|stage1|u_max1|o_max_pix_6_  $ (!\u_kirsch|stage1|nx15254z5 )))) # (GND)
// \u_kirsch|stage1|nx15254z4  = CARRY((\u_kirsch|stage1|o_add_op12_stage1_6_  & ((\u_kirsch|stage1|u_max1|o_max_pix_6_ ) # (!\u_kirsch|stage1|nx15254z5 ))) # (!\u_kirsch|stage1|o_add_op12_stage1_6_  & (\u_kirsch|stage1|u_max1|o_max_pix_6_  & 
// !\u_kirsch|stage1|nx15254z5 )))

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_6_ ),
	.datab(\u_kirsch|stage1|u_max1|o_max_pix_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z5 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_6_ ),
	.cout(\u_kirsch|stage1|nx15254z4 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52927 .lut_mask = 16'h698E;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N14
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52926 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_7_  = (\u_kirsch|stage1|o_add_op12_stage1_7_  & ((\u_kirsch|stage1|u_max1|o_max_pix_7_  & (\u_kirsch|stage1|nx15254z4  & VCC)) # (!\u_kirsch|stage1|u_max1|o_max_pix_7_  & (!\u_kirsch|stage1|nx15254z4 )))) # 
// (!\u_kirsch|stage1|o_add_op12_stage1_7_  & ((\u_kirsch|stage1|u_max1|o_max_pix_7_  & (!\u_kirsch|stage1|nx15254z4 )) # (!\u_kirsch|stage1|u_max1|o_max_pix_7_  & ((\u_kirsch|stage1|nx15254z4 ) # (GND)))))
// \u_kirsch|stage1|nx15254z3  = CARRY((\u_kirsch|stage1|o_add_op12_stage1_7_  & (!\u_kirsch|stage1|u_max1|o_max_pix_7_  & !\u_kirsch|stage1|nx15254z4 )) # (!\u_kirsch|stage1|o_add_op12_stage1_7_  & ((!\u_kirsch|stage1|nx15254z4 ) # 
// (!\u_kirsch|stage1|u_max1|o_max_pix_7_ ))))

	.dataa(\u_kirsch|stage1|o_add_op12_stage1_7_ ),
	.datab(\u_kirsch|stage1|u_max1|o_max_pix_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z4 ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_7_ ),
	.cout(\u_kirsch|stage1|nx15254z3 ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52926 .lut_mask = 16'h9617;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N16
cycloneii_lcell_comb \u_kirsch|stage1|ix15254z52925 (
// Equation(s):
// \u_kirsch|stage1|nx15254z2  = !\u_kirsch|stage1|nx15254z3 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|nx15254z3 ),
	.combout(\u_kirsch|stage1|nx15254z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|ix15254z52925 .lut_mask = 16'h0F0F;
defparam \u_kirsch|stage1|ix15254z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N22
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout  = CARRY(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout )

	.dataa(vcc),
	.datab(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1 .lut_mask = 16'h00CC;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N24
cycloneii_lcell_comb \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924 (
// Equation(s):
// \u_kirsch|stage1|o_max_add_stage1_8_  = (\u_kirsch|stage1|nx15254z2  & (!\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout )) # (!\u_kirsch|stage1|nx15254z2  & ((\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout ) # (GND)))
// \u_kirsch|stage1|o_max_add_stage1_9_  = CARRY((!\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout ) # (!\u_kirsch|stage1|nx15254z2 ))

	.dataa(\u_kirsch|stage1|nx15254z2 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout ),
	.combout(\u_kirsch|stage1|o_max_add_stage1_8_ ),
	.cout(\u_kirsch|stage1|o_max_add_stage1_9_ ));
// synopsys translate_off
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924 .lut_mask = 16'h5A5F;
defparam \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y23_N26
cycloneii_lcell_comb \u_kirsch|stage1|ix15254z52923 (
// Equation(s):
// \u_kirsch|stage1|nx15254z1  = !\u_kirsch|stage1|o_max_add_stage1_9_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|o_max_add_stage1_9_ ),
	.combout(\u_kirsch|stage1|nx15254z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|ix15254z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|stage1|ix15254z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X46_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_temp_dir_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r1_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_dir_0_ ));

// Location: LCCOMB_X46_Y23_N4
cycloneii_lcell_comb \u_kirsch|ix28678z52925 (
// Equation(s):
// \u_kirsch|i_dir3_0_  = (\u_kirsch|valid_2_  & ((\u_kirsch|temp_dir_0_ ))) # (!\u_kirsch|valid_2_  & (\u_kirsch|r5_0_ ))

	.dataa(vcc),
	.datab(\u_kirsch|r5_0_ ),
	.datac(\u_kirsch|temp_dir_0_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_dir3_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52925 .lut_mask = 16'hF0CC;
defparam \u_kirsch|ix28678z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_r1_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|u_max1|o_max_dir_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_0_ ));

// Location: LCCOMB_X42_Y23_N8
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52934 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z10  = CARRY((\u_kirsch|r3_0_  & !\u_kirsch|i_max3_0_ ))

	.dataa(\u_kirsch|r3_0_ ),
	.datab(\u_kirsch|i_max3_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z10 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52934 .lut_mask = 16'h0022;
defparam \u_kirsch|stage2|u_max2|ix19309z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N10
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52933 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z9  = CARRY((\u_kirsch|i_max3_1_  & ((!\u_kirsch|stage2|u_max2|nx19309z10 ) # (!\u_kirsch|r3_1_ ))) # (!\u_kirsch|i_max3_1_  & (!\u_kirsch|r3_1_  & !\u_kirsch|stage2|u_max2|nx19309z10 )))

	.dataa(\u_kirsch|i_max3_1_ ),
	.datab(\u_kirsch|r3_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z10 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z9 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52933 .lut_mask = 16'h002B;
defparam \u_kirsch|stage2|u_max2|ix19309z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N12
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52932 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z8  = CARRY((\u_kirsch|r3_2_  & ((!\u_kirsch|stage2|u_max2|nx19309z9 ) # (!\u_kirsch|i_max3_2_ ))) # (!\u_kirsch|r3_2_  & (!\u_kirsch|i_max3_2_  & !\u_kirsch|stage2|u_max2|nx19309z9 )))

	.dataa(\u_kirsch|r3_2_ ),
	.datab(\u_kirsch|i_max3_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z9 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z8 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52932 .lut_mask = 16'h002B;
defparam \u_kirsch|stage2|u_max2|ix19309z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N14
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52931 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z7  = CARRY((\u_kirsch|r3_3_  & (\u_kirsch|i_max3_3_  & !\u_kirsch|stage2|u_max2|nx19309z8 )) # (!\u_kirsch|r3_3_  & ((\u_kirsch|i_max3_3_ ) # (!\u_kirsch|stage2|u_max2|nx19309z8 ))))

	.dataa(\u_kirsch|r3_3_ ),
	.datab(\u_kirsch|i_max3_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z8 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z7 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52931 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix19309z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N16
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52930 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z6  = CARRY((\u_kirsch|r3_4_  & ((!\u_kirsch|stage2|u_max2|nx19309z7 ) # (!\u_kirsch|i_max3_4_ ))) # (!\u_kirsch|r3_4_  & (!\u_kirsch|i_max3_4_  & !\u_kirsch|stage2|u_max2|nx19309z7 )))

	.dataa(\u_kirsch|r3_4_ ),
	.datab(\u_kirsch|i_max3_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z7 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z6 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52930 .lut_mask = 16'h002B;
defparam \u_kirsch|stage2|u_max2|ix19309z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N18
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52929 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z5  = CARRY((\u_kirsch|r3_5_  & (\u_kirsch|i_max3_5_  & !\u_kirsch|stage2|u_max2|nx19309z6 )) # (!\u_kirsch|r3_5_  & ((\u_kirsch|i_max3_5_ ) # (!\u_kirsch|stage2|u_max2|nx19309z6 ))))

	.dataa(\u_kirsch|r3_5_ ),
	.datab(\u_kirsch|i_max3_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z6 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z5 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52929 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix19309z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N20
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52928 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z4  = CARRY((\u_kirsch|i_max3_6_  & (\u_kirsch|r3_6_  & !\u_kirsch|stage2|u_max2|nx19309z5 )) # (!\u_kirsch|i_max3_6_  & ((\u_kirsch|r3_6_ ) # (!\u_kirsch|stage2|u_max2|nx19309z5 ))))

	.dataa(\u_kirsch|i_max3_6_ ),
	.datab(\u_kirsch|r3_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z5 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z4 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix19309z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N22
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52927 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z3  = CARRY((\u_kirsch|r3_7_  & (\u_kirsch|i_max3_7_  & !\u_kirsch|stage2|u_max2|nx19309z4 )) # (!\u_kirsch|r3_7_  & ((\u_kirsch|i_max3_7_ ) # (!\u_kirsch|stage2|u_max2|nx19309z4 ))))

	.dataa(\u_kirsch|r3_7_ ),
	.datab(\u_kirsch|i_max3_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z4 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z3 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52927 .lut_mask = 16'h004D;
defparam \u_kirsch|stage2|u_max2|ix19309z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N24
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52926 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z2  = CARRY((\u_kirsch|r3_8_  & ((!\u_kirsch|stage2|u_max2|nx19309z3 ) # (!\u_kirsch|i_max3_8_ ))) # (!\u_kirsch|r3_8_  & (!\u_kirsch|i_max3_8_  & !\u_kirsch|stage2|u_max2|nx19309z3 )))

	.dataa(\u_kirsch|r3_8_ ),
	.datab(\u_kirsch|i_max3_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z3 ),
	.combout(),
	.cout(\u_kirsch|stage2|u_max2|nx19309z2 ));
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|stage2|u_max2|ix19309z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y23_N26
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52924 (
// Equation(s):
// \u_kirsch|stage2|u_max2|nx19309z1  = (\u_kirsch|r3_9_  & ((\u_kirsch|stage2|u_max2|nx19309z2 ) # (!\u_kirsch|i_max3_9_ ))) # (!\u_kirsch|r3_9_  & (!\u_kirsch|i_max3_9_  & \u_kirsch|stage2|u_max2|nx19309z2 ))

	.dataa(\u_kirsch|r3_9_ ),
	.datab(\u_kirsch|i_max3_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage2|u_max2|nx19309z2 ),
	.combout(\u_kirsch|stage2|u_max2|nx19309z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52924 .lut_mask = 16'hB2B2;
defparam \u_kirsch|stage2|u_max2|ix19309z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N24
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix17315z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_dir_0_  = (\u_kirsch|stage2|u_max2|nx19309z1  & (\u_kirsch|r1_0_ )) # (!\u_kirsch|stage2|u_max2|nx19309z1  & ((\u_kirsch|i_dir3_0_ )))

	.dataa(\u_kirsch|r1_0_ ),
	.datab(\u_kirsch|i_dir3_0_ ),
	.datac(vcc),
	.datad(\u_kirsch|stage2|u_max2|nx19309z1 ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_dir_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix17315z52923 .lut_mask = 16'hAACC;
defparam \u_kirsch|stage2|u_max2|ix17315z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N13
cycloneii_lcell_ff \u_kirsch|reg_r5_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_dir_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_1_ ));

// Location: LCCOMB_X45_Y24_N30
cycloneii_lcell_comb \u_kirsch|ix23859z52923 (
// Equation(s):
// \u_kirsch|nx23859z1  = (\u_kirsch|valid_6_  & ((\u_kirsch|r5_1_ ))) # (!\u_kirsch|valid_6_  & (\u_kirsch|r8_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|valid_6_ ),
	.datac(\u_kirsch|r8_1_ ),
	.datad(\u_kirsch|r5_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx23859z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23859z52923 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix23859z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N29
cycloneii_lcell_ff \u_kirsch|reg_r8_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx22862z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r8_2_ ));

// Location: LCCOMB_X45_Y24_N4
cycloneii_lcell_comb \u_kirsch|ix61892z52923 (
// Equation(s):
// \u_kirsch|o_dir_2_  = (\u_kirsch|r8_2_  & \u_kirsch|o_edge )

	.dataa(vcc),
	.datab(\u_kirsch|r8_2_ ),
	.datac(vcc),
	.datad(\u_kirsch|o_edge ),
	.cin(gnd),
	.combout(\u_kirsch|o_dir_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix61892z52923 .lut_mask = 16'hCC00;
defparam \u_kirsch|ix61892z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N14
cycloneii_lcell_comb \u_uw_uart|ix36748z52923 (
// Equation(s):
// \u_uw_uart|nx36748z1  = (\u_uw_uart|nx36748z2  & ((\u_kirsch|o_dir_2_ ) # (!\u_kirsch|o_valid )))

	.dataa(vcc),
	.datab(\u_kirsch|o_dir_2_ ),
	.datac(\u_kirsch|o_valid ),
	.datad(\u_uw_uart|nx36748z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx36748z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix36748z52923 .lut_mask = 16'hCF00;
defparam \u_uw_uart|ix36748z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N13
cycloneii_lcell_ff \u_uw_uart|reg_mdata_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39739z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_5_ ));

// Location: LCFF_X40_Y24_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_6_~_wirecell_combout ),
	.sdata(\u_uw_uart|i_uarts|NOT_Tx_Reg_8_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_7_ ));

// Location: LCFF_X41_Y23_N1
cycloneii_lcell_ff \u_uw_uart|reg_rdata_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_7_ ));

// Location: LCCOMB_X41_Y23_N0
cycloneii_lcell_comb \u_uw_uart|ix47405z52923 (
// Equation(s):
// \u_uw_uart|datain_7_  = (\u_uw_uart|rdata_7_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_7_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix47405z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix47405z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix20492z52923 (
// Equation(s):
// \u_kirsch|nx20492z1  = (\u_uw_uart|o_pixavail ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(vcc),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx20492z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix20492z52923 .lut_mask = 16'hCCFF;
defparam \u_kirsch|ix20492z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_i_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_7_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_7_ ));

// Location: LCFF_X41_Y23_N3
cycloneii_lcell_ff \u_uw_uart|reg_rdata_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_6_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_6_ ));

// Location: LCCOMB_X41_Y23_N2
cycloneii_lcell_comb \u_uw_uart|ix46408z52923 (
// Equation(s):
// \u_uw_uart|datain_6_  = (\u_uw_uart|rdata_6_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_6_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46408z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix46408z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N23
cycloneii_lcell_ff \u_kirsch|reg_i_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_6_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_6_ ));

// Location: LCFF_X41_Y23_N21
cycloneii_lcell_ff \u_uw_uart|reg_rdata_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_5_ ));

// Location: LCCOMB_X41_Y23_N20
cycloneii_lcell_comb \u_uw_uart|ix45411z52923 (
// Equation(s):
// \u_uw_uart|datain_5_  = (\u_uw_uart|rdata_5_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_5_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix45411z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix45411z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_i_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_5_ ));

// Location: LCFF_X41_Y23_N15
cycloneii_lcell_ff \u_uw_uart|reg_rdata_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_4_ ));

// Location: LCCOMB_X41_Y23_N14
cycloneii_lcell_comb \u_uw_uart|ix44414z52923 (
// Equation(s):
// \u_uw_uart|datain_4_  = (\u_uw_uart|rdata_4_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_4_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix44414z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix44414z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y23_N31
cycloneii_lcell_ff \u_kirsch|reg_i_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_4_ ));

// Location: LCFF_X41_Y23_N17
cycloneii_lcell_ff \u_uw_uart|reg_rdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_3_ ));

// Location: LCCOMB_X41_Y23_N16
cycloneii_lcell_comb \u_uw_uart|ix43417z52923 (
// Equation(s):
// \u_uw_uart|datain_3_  = (\u_uw_uart|rdata_3_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_3_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix43417z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix43417z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y23_N5
cycloneii_lcell_ff \u_kirsch|reg_i_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_3_ ));

// Location: LCFF_X41_Y23_N11
cycloneii_lcell_ff \u_uw_uart|reg_rdata_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_2_ ));

// Location: LCCOMB_X41_Y23_N10
cycloneii_lcell_comb \u_uw_uart|ix42420z52923 (
// Equation(s):
// \u_uw_uart|datain_2_  = (\u_uw_uart|rdata_2_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_2_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42420z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix42420z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y24_N9
cycloneii_lcell_ff \u_kirsch|reg_i_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_2_ ));

// Location: LCFF_X41_Y23_N29
cycloneii_lcell_ff \u_uw_uart|reg_rdata_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_1_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_1_ ));

// Location: LCCOMB_X41_Y23_N28
cycloneii_lcell_comb \u_uw_uart|ix41423z52923 (
// Equation(s):
// \u_uw_uart|datain_1_  = (\u_uw_uart|rdata_1_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_1_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix41423z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix41423z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N19
cycloneii_lcell_ff \u_kirsch|reg_i_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_1_ ));

// Location: M4K_X52_Y23
cycloneii_ram_block \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|mem_wren_1_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_kirsch|column_7_ ,\u_kirsch|column_6_ ,\u_kirsch|column_5_ ,\u_kirsch|column_4_ ,\u_kirsch|column_3_ ,\u_kirsch|column_2_ ,\u_kirsch|column_1_ ,\u_kirsch|column_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .logical_ram_name = "kirsch_8_8:u_kirsch|ram_dq_8_1:mem_0|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: M4K_X52_Y24
cycloneii_ram_block \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 (
	.portawe(\u_kirsch|mem_wren_0_ ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_kirsch|column_7_ ,\u_kirsch|column_6_ ,\u_kirsch|column_5_ ,\u_kirsch|column_4_ ,\u_kirsch|column_3_ ,\u_kirsch|column_2_ ,\u_kirsch|column_1_ ,\u_kirsch|column_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .logical_ram_name = "kirsch_8_8:u_kirsch|ram_dq_8_0:mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .operation_mode = "single_port";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_address_width = 8;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_last_address = 255;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 256;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_b_address_width = 8;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCFF_X41_Y23_N31
cycloneii_lcell_ff \u_uw_uart|reg_rdata_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Dout_0_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|rdata_0_ ));

// Location: LCCOMB_X41_Y23_N30
cycloneii_lcell_comb \u_uw_uart|ix40426z52923 (
// Equation(s):
// \u_uw_uart|datain_0_  = (\u_uw_uart|rdata_0_  & \u_uw_uart|o_pixavail )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rdata_0_ ),
	.datad(\u_uw_uart|o_pixavail ),
	.cin(gnd),
	.combout(\u_uw_uart|datain_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40426z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix40426z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N7
cycloneii_lcell_ff \u_kirsch|reg_i_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|d_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(\u_kirsch|nx20492z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|i_0_ ));

// Location: LCCOMB_X46_Y23_N10
cycloneii_lcell_comb \u_kirsch|ix28679z52923 (
// Equation(s):
// \u_kirsch|nx28679z1  = (\u_kirsch|valid_0_ ) # ((!\u_kirsch|valid_2_  & !\u_kirsch|valid_1_ ))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(\u_kirsch|valid_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52923 .lut_mask = 16'hFF11;
defparam \u_kirsch|ix28679z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N8
cycloneii_lcell_comb \u_kirsch|ix28679z52924 (
// Equation(s):
// \u_kirsch|nx28679z2  = (!\u_kirsch|valid_1_  & !\u_kirsch|valid_0_ )

	.dataa(vcc),
	.datab(\u_kirsch|valid_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx28679z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28679z52924 .lut_mask = 16'h0033;
defparam \u_kirsch|ix28679z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N14
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52931 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z7  = CARRY((!\u_kirsch|i_max1_0_  & \u_kirsch|i_max2_0_ ))

	.dataa(\u_kirsch|i_max1_0_ ),
	.datab(\u_kirsch|i_max2_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z7 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52931 .lut_mask = 16'h0044;
defparam \u_kirsch|stage1|u_max1|ix19309z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N16
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52930 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z6  = CARRY((\u_kirsch|i_max2_1_  & (\u_kirsch|i_max1_1_  & !\u_kirsch|stage1|u_max1|nx19309z7 )) # (!\u_kirsch|i_max2_1_  & ((\u_kirsch|i_max1_1_ ) # (!\u_kirsch|stage1|u_max1|nx19309z7 ))))

	.dataa(\u_kirsch|i_max2_1_ ),
	.datab(\u_kirsch|i_max1_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx19309z7 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z6 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52930 .lut_mask = 16'h004D;
defparam \u_kirsch|stage1|u_max1|ix19309z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N18
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52929 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z5  = CARRY((\u_kirsch|i_max2_2_  & ((!\u_kirsch|stage1|u_max1|nx19309z6 ) # (!\u_kirsch|i_max1_2_ ))) # (!\u_kirsch|i_max2_2_  & (!\u_kirsch|i_max1_2_  & !\u_kirsch|stage1|u_max1|nx19309z6 )))

	.dataa(\u_kirsch|i_max2_2_ ),
	.datab(\u_kirsch|i_max1_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx19309z6 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z5 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52929 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix19309z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N20
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52928 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z4  = CARRY((\u_kirsch|i_max2_3_  & (\u_kirsch|i_max1_3_  & !\u_kirsch|stage1|u_max1|nx19309z5 )) # (!\u_kirsch|i_max2_3_  & ((\u_kirsch|i_max1_3_ ) # (!\u_kirsch|stage1|u_max1|nx19309z5 ))))

	.dataa(\u_kirsch|i_max2_3_ ),
	.datab(\u_kirsch|i_max1_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx19309z5 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z4 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52928 .lut_mask = 16'h004D;
defparam \u_kirsch|stage1|u_max1|ix19309z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N22
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52927 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z3  = CARRY((\u_kirsch|i_max2_4_  & ((!\u_kirsch|stage1|u_max1|nx19309z4 ) # (!\u_kirsch|i_max1_4_ ))) # (!\u_kirsch|i_max2_4_  & (!\u_kirsch|i_max1_4_  & !\u_kirsch|stage1|u_max1|nx19309z4 )))

	.dataa(\u_kirsch|i_max2_4_ ),
	.datab(\u_kirsch|i_max1_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx19309z4 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z3 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52927 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix19309z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N24
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52926 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z2  = CARRY((\u_kirsch|i_max1_5_  & ((!\u_kirsch|stage1|u_max1|nx19309z3 ) # (!\u_kirsch|i_max2_5_ ))) # (!\u_kirsch|i_max1_5_  & (!\u_kirsch|i_max2_5_  & !\u_kirsch|stage1|u_max1|nx19309z3 )))

	.dataa(\u_kirsch|i_max1_5_ ),
	.datab(\u_kirsch|i_max2_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx19309z3 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z2 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52926 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix19309z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N26
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52925 (
// Equation(s):
// \u_kirsch|stage1|u_max1|nx19309z1  = CARRY((\u_kirsch|i_max2_6_  & ((!\u_kirsch|stage1|u_max1|nx19309z2 ) # (!\u_kirsch|i_max1_6_ ))) # (!\u_kirsch|i_max2_6_  & (!\u_kirsch|i_max1_6_  & !\u_kirsch|stage1|u_max1|nx19309z2 )))

	.dataa(\u_kirsch|i_max2_6_ ),
	.datab(\u_kirsch|i_max1_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|stage1|u_max1|nx19309z2 ),
	.combout(),
	.cout(\u_kirsch|stage1|u_max1|nx19309z1 ));
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52925 .lut_mask = 16'h002B;
defparam \u_kirsch|stage1|u_max1|ix19309z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N28
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix19309z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_dir_2_  = (\u_kirsch|i_max1_7_  & (\u_kirsch|stage1|u_max1|nx19309z1  & \u_kirsch|i_max2_7_ )) # (!\u_kirsch|i_max1_7_  & ((\u_kirsch|stage1|u_max1|nx19309z1 ) # (\u_kirsch|i_max2_7_ )))

	.dataa(vcc),
	.datab(\u_kirsch|i_max1_7_ ),
	.datac(vcc),
	.datad(\u_kirsch|i_max2_7_ ),
	.cin(\u_kirsch|stage1|u_max1|nx19309z1 ),
	.combout(\u_kirsch|stage1|u_max1|o_max_dir_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix19309z52923 .lut_mask = 16'hF330;
defparam \u_kirsch|stage1|u_max1|ix19309z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y23_N30
cycloneii_lcell_comb \u_kirsch|stage1|u_max1|ix17315z52923 (
// Equation(s):
// \u_kirsch|stage1|u_max1|o_max_dir_0_  = (\u_kirsch|stage1|u_max1|o_max_dir_2_  & (\u_kirsch|nx28679z2 )) # (!\u_kirsch|stage1|u_max1|o_max_dir_2_  & ((\u_kirsch|nx28679z1 )))

	.dataa(vcc),
	.datab(\u_kirsch|stage1|u_max1|o_max_dir_2_ ),
	.datac(\u_kirsch|nx28679z2 ),
	.datad(\u_kirsch|nx28679z1 ),
	.cin(gnd),
	.combout(\u_kirsch|stage1|u_max1|o_max_dir_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage1|u_max1|ix17315z52923 .lut_mask = 16'hF3C0;
defparam \u_kirsch|stage1|u_max1|ix17315z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y23_N1
cycloneii_lcell_ff \u_kirsch|reg_temp_dir_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r1_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_dir_1_ ));

// Location: LCCOMB_X45_Y23_N0
cycloneii_lcell_comb \u_kirsch|ix28678z52924 (
// Equation(s):
// \u_kirsch|i_dir3_1_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_dir_1_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r5_1_ )))

	.dataa(vcc),
	.datab(\u_kirsch|valid_2_ ),
	.datac(\u_kirsch|temp_dir_1_ ),
	.datad(\u_kirsch|r5_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_dir3_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52924 .lut_mask = 16'hF3C0;
defparam \u_kirsch|ix28678z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y24_N15
cycloneii_lcell_ff \u_kirsch|reg_r1_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx35074z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_1_ ));

// Location: LCCOMB_X45_Y24_N12
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix18312z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_dir_1_  = (\u_kirsch|stage2|u_max2|nx19309z1  & ((\u_kirsch|r1_1_ ))) # (!\u_kirsch|stage2|u_max2|nx19309z1  & (\u_kirsch|i_dir3_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|i_dir3_1_ ),
	.datac(\u_kirsch|r1_1_ ),
	.datad(\u_kirsch|stage2|u_max2|nx19309z1 ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_dir_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix18312z52923 .lut_mask = 16'hF0CC;
defparam \u_kirsch|stage2|u_max2|ix18312z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N1
cycloneii_lcell_ff \u_kirsch|reg_r5_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage2|u_max2|o_max_dir_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!\u_kirsch|valid_5_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r5_2_ ));

// Location: LCCOMB_X45_Y24_N28
cycloneii_lcell_comb \u_kirsch|ix22862z52923 (
// Equation(s):
// \u_kirsch|nx22862z1  = (\u_kirsch|valid_6_  & ((\u_kirsch|r5_2_ ))) # (!\u_kirsch|valid_6_  & (\u_kirsch|r8_2_ ))

	.dataa(vcc),
	.datab(\u_kirsch|valid_6_ ),
	.datac(\u_kirsch|r8_2_ ),
	.datad(\u_kirsch|r5_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx22862z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix22862z52923 .lut_mask = 16'hFC30;
defparam \u_kirsch|ix22862z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y23_N12
cycloneii_lcell_comb \u_uw_uart|ix37745z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_4_  = (((!\u_kirsch|nx25376z9  & !\u_kirsch|o_mode_1_ )) # (!\u_kirsch|o_valid )) # (!\u_uw_uart|nx39739z1 )

	.dataa(\u_kirsch|nx25376z9 ),
	.datab(\u_kirsch|o_mode_1_ ),
	.datac(\u_uw_uart|nx39739z1 ),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix37745z52923 .lut_mask = 16'h1FFF;
defparam \u_uw_uart|ix37745z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y23_N27
cycloneii_lcell_ff \u_uw_uart|reg_sdout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|sdout_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39865z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_6_ ));

// Location: LCFF_X40_Y24_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx35603z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|NOT_Tx_Reg_8_ ));

// Location: LCFF_X40_Y23_N21
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_7_ ));

// Location: LCCOMB_X42_Y22_N4
cycloneii_lcell_comb \u_kirsch|ix51243z52923 (
// Equation(s):
// \u_kirsch|mem_wren_0_  = (\u_uw_uart|o_pixavail  & !\u_kirsch|o_row_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|o_row_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|mem_wren_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51243z52923 .lut_mask = 16'h00F0;
defparam \u_kirsch|ix51243z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N30
cycloneii_lcell_comb \u_kirsch|ix54114z52923 (
// Equation(s):
// \u_kirsch|mem_wren_1_  = (\u_uw_uart|o_pixavail  & \u_kirsch|o_row_0_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|o_row_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|mem_wren_1_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix54114z52923 .lut_mask = 16'hF000;
defparam \u_kirsch|ix54114z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y23_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_6_ ));

// Location: LCFF_X40_Y23_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_5_ ));

// Location: LCFF_X40_Y23_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_4_ ));

// Location: LCFF_X40_Y23_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_3_ ));

// Location: LCFF_X40_Y23_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_2_ ));

// Location: LCFF_X40_Y23_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_1_ ));

// Location: LCFF_X40_Y23_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Dout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Dout_0_ ));

// Location: LCCOMB_X46_Y24_N14
cycloneii_lcell_comb \u_kirsch|ix35074z52923 (
// Equation(s):
// \u_kirsch|nx35074z1  = (!\u_kirsch|valid_0_  & ((\u_kirsch|valid_1_ ) # (!\u_kirsch|valid_2_ )))

	.dataa(\u_kirsch|valid_0_ ),
	.datab(vcc),
	.datac(\u_kirsch|valid_1_ ),
	.datad(\u_kirsch|valid_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx35074z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix35074z52923 .lut_mask = 16'h5055;
defparam \u_kirsch|ix35074z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N3
cycloneii_lcell_ff \u_kirsch|reg_temp_dir_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|r1_2_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_1_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|temp_dir_2_ ));

// Location: LCCOMB_X46_Y23_N2
cycloneii_lcell_comb \u_kirsch|ix28678z52923 (
// Equation(s):
// \u_kirsch|i_dir3_2_  = (\u_kirsch|valid_2_  & (\u_kirsch|temp_dir_2_ )) # (!\u_kirsch|valid_2_  & ((\u_kirsch|r5_2_ )))

	.dataa(\u_kirsch|valid_2_ ),
	.datab(vcc),
	.datac(\u_kirsch|temp_dir_2_ ),
	.datad(\u_kirsch|r5_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|i_dir3_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix28678z52923 .lut_mask = 16'hF5A0;
defparam \u_kirsch|ix28678z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y23_N29
cycloneii_lcell_ff \u_kirsch|reg_r1_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|stage1|u_max1|o_max_dir_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|r1_2_ ));

// Location: LCCOMB_X45_Y24_N0
cycloneii_lcell_comb \u_kirsch|stage2|u_max2|ix19309z52923 (
// Equation(s):
// \u_kirsch|stage2|u_max2|o_max_dir_2_  = (\u_kirsch|stage2|u_max2|nx19309z1  & ((\u_kirsch|r1_2_ ))) # (!\u_kirsch|stage2|u_max2|nx19309z1  & (\u_kirsch|i_dir3_2_ ))

	.dataa(vcc),
	.datab(\u_kirsch|i_dir3_2_ ),
	.datac(\u_kirsch|r1_2_ ),
	.datad(\u_kirsch|stage2|u_max2|nx19309z1 ),
	.cin(gnd),
	.combout(\u_kirsch|stage2|u_max2|o_max_dir_2_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|stage2|u_max2|ix19309z52923 .lut_mask = 16'hF0CC;
defparam \u_kirsch|stage2|u_max2|ix19309z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y23_N23
cycloneii_lcell_ff \u_uw_uart|reg_mdata_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|mdata_7n5ss1_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|nx39739z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_7_ ));

// Location: LCCOMB_X40_Y24_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix35603z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_  = (!\u_uw_uart|i_uarts|TxFSM_1_  & !\u_uw_uart|sdout_6_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix35603z52923 .lut_mask = 16'h0033;
defparam \u_uw_uart|i_uarts|ix35603z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx54636z1~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_7_ ));

// Location: LCFF_X41_Y24_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_6_ ));

// Location: LCFF_X41_Y24_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_5_ ));

// Location: LCFF_X41_Y24_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_4_ ));

// Location: LCFF_X41_Y24_N7
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_3_ ));

// Location: LCFF_X41_Y24_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_2_ ));

// Location: LCFF_X41_Y24_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_1_ ));

// Location: LCFF_X41_Y24_N29
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx54636z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|Rx_Reg_0_ ));

// Location: LCCOMB_X38_Y23_N22
cycloneii_lcell_comb \u_uw_uart|ix39739z52923 (
// Equation(s):
// \u_uw_uart|mdata_7n5ss1_6_  = (\u_kirsch|nx25376z9  & (((!\u_kirsch|o_valid ) # (!\u_uw_uart|nx39739z1 )))) # (!\u_kirsch|nx25376z9  & (\u_kirsch|o_mode_1_  & ((!\u_kirsch|o_valid ) # (!\u_uw_uart|nx39739z1 ))))

	.dataa(\u_kirsch|nx25376z9 ),
	.datab(\u_kirsch|o_mode_1_ ),
	.datac(\u_uw_uart|nx39739z1 ),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_uw_uart|mdata_7n5ss1_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39739z52923 .lut_mask = 16'h0EEE;
defparam \u_uw_uart|ix39739z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix54636z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx54636z2  = (\u_uw_uart|i_uarts|RxFSM_3_  & \u_uw_uart|i_uarts|TopRx )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datad(\u_uw_uart|i_uarts|TopRx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx54636z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix54636z52924 .lut_mask = 16'hF000;
defparam \u_uw_uart|i_uarts|ix54636z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx54636z1~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|nx54636z1~_wirecell_combout  = !\u_uw_uart|i_uarts|nx54636z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx54636z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx54636z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx54636z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|i_uarts|nx54636z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N6
cycloneii_lcell_comb \u_uw_uart|sdout_0_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_0_~_wirecell_combout  = !\u_uw_uart|sdout_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_0_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_0_~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|sdout_0_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N16
cycloneii_lcell_comb \u_uw_uart|sdout_1_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_1_~_wirecell_combout  = !\u_uw_uart|sdout_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_1_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_1_~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|sdout_1_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N14
cycloneii_lcell_comb \u_uw_uart|sdout_2_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_2_~_wirecell_combout  = !\u_uw_uart|sdout_2_ 

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_2_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_2_~_wirecell .lut_mask = 16'h3333;
defparam \u_uw_uart|sdout_2_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N20
cycloneii_lcell_comb \u_uw_uart|sdout_3_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_3_~_wirecell_combout  = !\u_uw_uart|sdout_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_3_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_3_~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|sdout_3_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N22
cycloneii_lcell_comb \u_uw_uart|sdout_4_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_4_~_wirecell_combout  = !\u_uw_uart|sdout_4_ 

	.dataa(vcc),
	.datab(\u_uw_uart|sdout_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_4_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_4_~_wirecell .lut_mask = 16'h3333;
defparam \u_uw_uart|sdout_4_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N4
cycloneii_lcell_comb \u_uw_uart|sdout_6_~_wirecell (
// Equation(s):
// \u_uw_uart|sdout_6_~_wirecell_combout  = !\u_uw_uart|sdout_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_6_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_6_~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|sdout_6_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N4
cycloneii_lcell_comb \u_kirsch|column_valid1_7_~feeder (
// Equation(s):
// \u_kirsch|column_valid1_7_~feeder_combout  = \u_kirsch|column_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|column_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|column_valid1_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid1_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|column_valid1_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N0
cycloneii_lcell_comb \u_uw_uart|sdout_0_~feeder (
// Equation(s):
// \u_uw_uart|sdout_0_~feeder_combout  = \u_uw_uart|mdata_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N2
cycloneii_lcell_comb \u_uw_uart|sdout_1_~feeder (
// Equation(s):
// \u_uw_uart|sdout_1_~feeder_combout  = \u_uw_uart|mdata_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N22
cycloneii_lcell_comb \u_uw_uart|sdout_3_~feeder (
// Equation(s):
// \u_uw_uart|sdout_3_~feeder_combout  = \u_uw_uart|mdata_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N8
cycloneii_lcell_comb \u_uw_uart|sdout_4_~feeder (
// Equation(s):
// \u_uw_uart|sdout_4_~feeder_combout  = \u_uw_uart|mdata_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N8
cycloneii_lcell_comb \u_kirsch|c_7_~feeder (
// Equation(s):
// \u_kirsch|c_7_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [7]

	.dataa(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [7]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|c_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_7_~feeder .lut_mask = 16'hAAAA;
defparam \u_kirsch|c_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N2
cycloneii_lcell_comb \u_kirsch|d_7_~feeder (
// Equation(s):
// \u_kirsch|d_7_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [7]),
	.cin(gnd),
	.combout(\u_kirsch|d_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|d_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N4
cycloneii_lcell_comb \u_kirsch|c_6_~feeder (
// Equation(s):
// \u_kirsch|c_6_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [6]

	.dataa(vcc),
	.datab(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [6]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|c_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_6_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|c_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N22
cycloneii_lcell_comb \u_kirsch|d_6_~feeder (
// Equation(s):
// \u_kirsch|d_6_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [6]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [6]),
	.cin(gnd),
	.combout(\u_kirsch|d_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|d_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N24
cycloneii_lcell_comb \u_kirsch|c_5_~feeder (
// Equation(s):
// \u_kirsch|c_5_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\u_kirsch|c_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|c_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N26
cycloneii_lcell_comb \u_kirsch|d_5_~feeder (
// Equation(s):
// \u_kirsch|d_5_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\u_kirsch|d_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|d_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N20
cycloneii_lcell_comb \u_kirsch|c_4_~feeder (
// Equation(s):
// \u_kirsch|c_4_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [4]

	.dataa(vcc),
	.datab(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [4]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|c_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|c_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N6
cycloneii_lcell_comb \u_kirsch|d_4_~feeder (
// Equation(s):
// \u_kirsch|d_4_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [4]

	.dataa(vcc),
	.datab(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [4]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|d_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_4_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|d_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N16
cycloneii_lcell_comb \u_kirsch|c_3_~feeder (
// Equation(s):
// \u_kirsch|c_3_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [3]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\u_kirsch|c_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|c_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N10
cycloneii_lcell_comb \u_kirsch|d_3_~feeder (
// Equation(s):
// \u_kirsch|d_3_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [3]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [3]),
	.cin(gnd),
	.combout(\u_kirsch|d_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|d_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N12
cycloneii_lcell_comb \u_kirsch|c_2_~feeder (
// Equation(s):
// \u_kirsch|c_2_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [2]

	.dataa(vcc),
	.datab(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [2]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|c_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_2_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|c_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N30
cycloneii_lcell_comb \u_kirsch|d_2_~feeder (
// Equation(s):
// \u_kirsch|d_2_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [2]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(\u_kirsch|d_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|d_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N0
cycloneii_lcell_comb \u_kirsch|c_1_~feeder (
// Equation(s):
// \u_kirsch|c_1_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [1]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(\u_kirsch|c_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|c_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N18
cycloneii_lcell_comb \u_kirsch|d_1_~feeder (
// Equation(s):
// \u_kirsch|d_1_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [1]

	.dataa(vcc),
	.datab(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [1]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|d_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_1_~feeder .lut_mask = 16'hCCCC;
defparam \u_kirsch|d_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N28
cycloneii_lcell_comb \u_kirsch|d_0_~feeder (
// Equation(s):
// \u_kirsch|d_0_~feeder_combout  = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(\u_kirsch|d_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|d_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|d_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y24_N14
cycloneii_lcell_comb \u_kirsch|c_0_~feeder (
// Equation(s):
// \u_kirsch|c_0_~feeder_combout  = \u_kirsch|mem|ix64056z29481|auto_generated|q_a [0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|mem|ix64056z29481|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(\u_kirsch|c_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|c_0_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|c_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N26
cycloneii_lcell_comb \u_uw_uart|sdout_6_~feeder (
// Equation(s):
// \u_uw_uart|sdout_6_~feeder_combout  = \u_uw_uart|mdata_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|mdata_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|sdout_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|sdout_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|sdout_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_6_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_4_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_3_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_3_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N6
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_2_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_2_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|Rx_Reg_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Rx_Reg_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Rx_Reg_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_1_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_1_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y23_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|Dout_0_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|Dout_0_~feeder_combout  = \u_uw_uart|i_uarts|Rx_Reg_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|Rx_Reg_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|Dout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|Dout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X40_Y24_N24
cycloneii_lcell_comb \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout  = \u_uw_uart|sdout_4_~_wirecell_combout 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|sdout_4_~_wirecell_combout ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \clk~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam \clk~I .input_async_reset = "none";
defparam \clk~I .input_power_up = "low";
defparam \clk~I .input_register_mode = "none";
defparam \clk~I .input_sync_reset = "none";
defparam \clk~I .oe_async_reset = "none";
defparam \clk~I .oe_power_up = "low";
defparam \clk~I .oe_register_mode = "none";
defparam \clk~I .oe_sync_reset = "none";
defparam \clk~I .operation_mode = "input";
defparam \clk~I .output_async_reset = "none";
defparam \clk~I .output_power_up = "low";
defparam \clk~I .output_register_mode = "none";
defparam \clk~I .output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix17415z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_0__dup_95  = !\u_uw_uart|i_uarts|TxDiv_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|TxDiv_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|inc_d_0__dup_95 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix17415z52923 .lut_mask = 16'h0F0F;
defparam \u_uw_uart|i_uarts|ix17415z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \nrst~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\nrst~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nrst));
// synopsys translate_off
defparam \nrst~I .input_async_reset = "none";
defparam \nrst~I .input_power_up = "low";
defparam \nrst~I .input_register_mode = "none";
defparam \nrst~I .input_sync_reset = "none";
defparam \nrst~I .oe_async_reset = "none";
defparam \nrst~I .oe_power_up = "low";
defparam \nrst~I .oe_register_mode = "none";
defparam \nrst~I .oe_sync_reset = "none";
defparam \nrst~I .operation_mode = "input";
defparam \nrst~I .output_async_reset = "none";
defparam \nrst~I .output_power_up = "low";
defparam \nrst~I .output_register_mode = "none";
defparam \nrst~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X35_Y24_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_0__dup_10 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_0__dup_95 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_0_ ));

// Location: LCCOMB_X35_Y24_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix12704z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx12704z1  = CARRY(\u_uw_uart|i_uarts|TxDiv_0_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_uw_uart|i_uarts|nx12704z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix12704z52924 .lut_mask = 16'h00CC;
defparam \u_uw_uart|i_uarts|ix12704z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix12704z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_1__dup_97  = (\u_uw_uart|i_uarts|TxDiv_1_  & (!\u_uw_uart|i_uarts|nx12704z1 )) # (!\u_uw_uart|i_uarts|TxDiv_1_  & ((\u_uw_uart|i_uarts|nx12704z1 ) # (GND)))
// \u_uw_uart|i_uarts|nx28532z7  = CARRY((!\u_uw_uart|i_uarts|nx12704z1 ) # (!\u_uw_uart|i_uarts|TxDiv_1_ ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx12704z1 ),
	.combout(\u_uw_uart|i_uarts|inc_d_1__dup_97 ),
	.cout(\u_uw_uart|i_uarts|nx28532z7 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix12704z52923 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|i_uarts|ix12704z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X35_Y24_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_1__dup_9 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_1__dup_97 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_1_ ));

// Location: LCCOMB_X35_Y24_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52929 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_2__dup_99  = (\u_uw_uart|i_uarts|TxDiv_2_  & (\u_uw_uart|i_uarts|nx28532z7  $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_2_  & (!\u_uw_uart|i_uarts|nx28532z7  & VCC))
// \u_uw_uart|i_uarts|nx28532z6  = CARRY((\u_uw_uart|i_uarts|TxDiv_2_  & !\u_uw_uart|i_uarts|nx28532z7 ))

	.dataa(\u_uw_uart|i_uarts|TxDiv_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z7 ),
	.combout(\u_uw_uart|i_uarts|inc_d_2__dup_99 ),
	.cout(\u_uw_uart|i_uarts|nx28532z6 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|i_uarts|ix28532z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N14
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_3__dup_101  = (\u_uw_uart|i_uarts|TxDiv_3_  & (!\u_uw_uart|i_uarts|nx28532z6 )) # (!\u_uw_uart|i_uarts|TxDiv_3_  & ((\u_uw_uart|i_uarts|nx28532z6 ) # (GND)))
// \u_uw_uart|i_uarts|nx28532z5  = CARRY((!\u_uw_uart|i_uarts|nx28532z6 ) # (!\u_uw_uart|i_uarts|TxDiv_3_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z6 ),
	.combout(\u_uw_uart|i_uarts|inc_d_3__dup_101 ),
	.cout(\u_uw_uart|i_uarts|nx28532z5 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix28532z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X35_Y24_N15
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_3__dup_7 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_3__dup_101 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_3_ ));

// Location: LCFF_X35_Y24_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_2__dup_8 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_2__dup_99 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_2_ ));

// Location: LCCOMB_X34_Y24_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52928 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z6  = (!\u_uw_uart|i_uarts|TxDiv_3_  & !\u_uw_uart|i_uarts|TxDiv_2_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_3_ ),
	.datac(\u_uw_uart|i_uarts|TxDiv_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52928 .lut_mask = 16'h0303;
defparam \u_uw_uart|i_uarts|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|RxDivisor_4_~feeder (
// Equation(s):
// \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|RxDivisor_4_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart|i_uarts|RxDivisor_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y24_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxDivisor_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxDivisor_4_ ));

// Location: LCCOMB_X35_Y24_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_5__dup_105  = (\u_uw_uart|i_uarts|TxDiv_5_  & (!\u_uw_uart|i_uarts|nx28532z4 )) # (!\u_uw_uart|i_uarts|TxDiv_5_  & ((\u_uw_uart|i_uarts|nx28532z4 ) # (GND)))
// \u_uw_uart|i_uarts|nx28532z3  = CARRY((!\u_uw_uart|i_uarts|nx28532z4 ) # (!\u_uw_uart|i_uarts|TxDiv_5_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z4 ),
	.combout(\u_uw_uart|i_uarts|inc_d_5__dup_105 ),
	.cout(\u_uw_uart|i_uarts|nx28532z3 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix28532z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X35_Y24_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_5__dup_5 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_5__dup_105 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_5_ ));

// Location: LCCOMB_X35_Y24_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix28532z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|inc_d_7__dup_109  = (\u_uw_uart|i_uarts|TxDiv_7_  & (!\u_uw_uart|i_uarts|nx28532z2 )) # (!\u_uw_uart|i_uarts|TxDiv_7_  & ((\u_uw_uart|i_uarts|nx28532z2 ) # (GND)))
// \u_uw_uart|i_uarts|nx28532z1  = CARRY((!\u_uw_uart|i_uarts|nx28532z2 ) # (!\u_uw_uart|i_uarts|TxDiv_7_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxDiv_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|i_uarts|nx28532z2 ),
	.combout(\u_uw_uart|i_uarts|inc_d_7__dup_109 ),
	.cout(\u_uw_uart|i_uarts|nx28532z1 ));
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix28532z52924 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|i_uarts|ix28532z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X35_Y24_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_7__dup_3 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_7__dup_109 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_7_ ));

// Location: LCFF_X35_Y24_N25
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_q_8__dup_2 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|inc_d_8__dup_111 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|i_uarts|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxDiv_8_ ));

// Location: LCCOMB_X35_Y24_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z4  = (!\u_uw_uart|i_uarts|TxDiv_4_  & (!\u_uw_uart|i_uarts|TxDiv_7_  & (!\u_uw_uart|i_uarts|TxDiv_8_  & !\u_uw_uart|i_uarts|TxDiv_5_ )))

	.dataa(\u_uw_uart|i_uarts|TxDiv_4_ ),
	.datab(\u_uw_uart|i_uarts|TxDiv_7_ ),
	.datac(\u_uw_uart|i_uarts|TxDiv_8_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52926 .lut_mask = 16'h0001;
defparam \u_uw_uart|i_uarts|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y24_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z3  = (\u_uw_uart|i_uarts|TxDiv_4_  & (\u_uw_uart|i_uarts|TxDiv_7_  & (\u_uw_uart|i_uarts|TxDiv_8_  & \u_uw_uart|i_uarts|TxDiv_5_ )))

	.dataa(\u_uw_uart|i_uarts|TxDiv_4_ ),
	.datab(\u_uw_uart|i_uarts|TxDiv_7_ ),
	.datac(\u_uw_uart|i_uarts|TxDiv_8_ ),
	.datad(\u_uw_uart|i_uarts|TxDiv_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52925 .lut_mask = 16'h8000;
defparam \u_uw_uart|i_uarts|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y24_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z2  = (\u_uw_uart|i_uarts|TxDiv_0_  & (\u_uw_uart|i_uarts|RxDivisor_4_  & ((\u_uw_uart|i_uarts|nx32400z3 )))) # (!\u_uw_uart|i_uarts|TxDiv_0_  & (!\u_uw_uart|i_uarts|RxDivisor_4_  & (\u_uw_uart|i_uarts|nx32400z4 )))

	.dataa(\u_uw_uart|i_uarts|TxDiv_0_ ),
	.datab(\u_uw_uart|i_uarts|RxDivisor_4_ ),
	.datac(\u_uw_uart|i_uarts|nx32400z4 ),
	.datad(\u_uw_uart|i_uarts|nx32400z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52924 .lut_mask = 16'h9810;
defparam \u_uw_uart|i_uarts|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix32400z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx32400z1  = (\u_uw_uart|i_uarts|nx32400z5  & (!\u_uw_uart|i_uarts|TxDiv_1_  & (\u_uw_uart|i_uarts|nx32400z6  & \u_uw_uart|i_uarts|nx32400z2 )))

	.dataa(\u_uw_uart|i_uarts|nx32400z5 ),
	.datab(\u_uw_uart|i_uarts|TxDiv_1_ ),
	.datac(\u_uw_uart|i_uarts|nx32400z6 ),
	.datad(\u_uw_uart|i_uarts|nx32400z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix32400z52923 .lut_mask = 16'h2000;
defparam \u_uw_uart|i_uarts|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TopTx ));

// Location: LCCOMB_X38_Y24_N30
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix5605z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx5605z1  = \u_uw_uart|i_uarts|TxFSM_1_  $ (((\u_uw_uart|i_uarts|TxFSM_0_  & \u_uw_uart|i_uarts|TopTx )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datac(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix5605z52923 .lut_mask = 16'h3CF0;
defparam \u_uw_uart|i_uarts|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_1_ ));

// Location: LCCOMB_X38_Y24_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z2  = (\u_uw_uart|i_uarts|TxFSM_0_  & (((!\u_uw_uart|i_uarts|TopTx )))) # (!\u_uw_uart|i_uarts|TxFSM_0_  & ((\u_uw_uart|i_uarts|TxFSM_1_  & ((!\u_uw_uart|i_uarts|TopTx ))) # (!\u_uw_uart|i_uarts|TxFSM_1_  & (!\u_uw_uart|ld_sdout 
// ))))

	.dataa(\u_uw_uart|ld_sdout ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52924 .lut_mask = 16'h3335;
defparam \u_uw_uart|i_uarts|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N8
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix4608z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx4608z1  = (\u_uw_uart|i_uarts|nx4608z2  & (((\u_uw_uart|i_uarts|TxFSM_0_ )))) # (!\u_uw_uart|i_uarts|nx4608z2  & (!\u_uw_uart|i_uarts|TxFSM_0_  & ((!\u_uw_uart|i_uarts|TxFSM_1_ ) # (!\u_uw_uart|i_uarts|nx4608z3 ))))

	.dataa(\u_uw_uart|i_uarts|nx4608z3 ),
	.datab(\u_uw_uart|i_uarts|nx4608z2 ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix4608z52923 .lut_mask = 16'hC1C3;
defparam \u_uw_uart|i_uarts|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N9
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|TxFSM_0_ ));

// Location: LCCOMB_X38_Y24_N28
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52925 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z3  = (!\u_uw_uart|i_uarts|nx27627z4  & (\u_uw_uart|i_uarts|TopTx  & (!\u_uw_uart|i_uarts|TxFSM_0_  & \u_uw_uart|i_uarts|TxFSM_1_ )))

	.dataa(\u_uw_uart|i_uarts|nx27627z4 ),
	.datab(\u_uw_uart|i_uarts|TopTx ),
	.datac(\u_uw_uart|i_uarts|TxFSM_0_ ),
	.datad(\u_uw_uart|i_uarts|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52925 .lut_mask = 16'h0400;
defparam \u_uw_uart|i_uarts|ix27627z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X38_Y24_N0
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix27627z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx27627z1  = (!\u_uw_uart|i_uarts|nx27627z2  & (!\u_uw_uart|i_uarts|nx27627z3  & ((\u_uw_uart|i_uarts|nx18332z1 ) # (\u_uw_uart|i_uarts|TopTx ))))

	.dataa(\u_uw_uart|i_uarts|nx27627z2 ),
	.datab(\u_uw_uart|i_uarts|nx27627z3 ),
	.datac(\u_uw_uart|i_uarts|nx18332z1 ),
	.datad(\u_uw_uart|i_uarts|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx27627z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix27627z52923 .lut_mask = 16'h1110;
defparam \u_uw_uart|i_uarts|ix27627z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X38_Y24_N1
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Tx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx27627z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx18332z1 ));

// Location: LCCOMB_X42_Y22_N8
cycloneii_lcell_comb \u_kirsch|ix54262z52926 (
// Equation(s):
// \u_kirsch|nx54262z3  = CARRY(\u_kirsch|o_row_0_ )

	.dataa(\u_kirsch|o_row_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|nx54262z3 ));
// synopsys translate_off
defparam \u_kirsch|ix54262z52926 .lut_mask = 16'h00AA;
defparam \u_kirsch|ix54262z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N10
cycloneii_lcell_comb \u_kirsch|ix54262z52925 (
// Equation(s):
// \u_kirsch|inc_d_1_  = (\u_kirsch|o_row_1_  & (!\u_kirsch|nx54262z3 )) # (!\u_kirsch|o_row_1_  & ((\u_kirsch|nx54262z3 ) # (GND)))
// \u_kirsch|nx54262z2  = CARRY((!\u_kirsch|nx54262z3 ) # (!\u_kirsch|o_row_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx54262z3 ),
	.combout(\u_kirsch|inc_d_1_ ),
	.cout(\u_kirsch|nx54262z2 ));
// synopsys translate_off
defparam \u_kirsch|ix54262z52925 .lut_mask = 16'h3C3F;
defparam \u_kirsch|ix54262z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N0
cycloneii_lcell_comb \u_kirsch|ix17423z52923 (
// Equation(s):
// \u_kirsch|inc_d_0__dup_223  = !\u_kirsch|column_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|column_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|inc_d_0__dup_223 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix17423z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|ix17423z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \rxflex~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam \rxflex~I .input_async_reset = "none";
defparam \rxflex~I .input_power_up = "low";
defparam \rxflex~I .input_register_mode = "none";
defparam \rxflex~I .input_sync_reset = "none";
defparam \rxflex~I .oe_async_reset = "none";
defparam \rxflex~I .oe_power_up = "low";
defparam \rxflex~I .oe_register_mode = "none";
defparam \rxflex~I .oe_sync_reset = "none";
defparam \rxflex~I .operation_mode = "input";
defparam \rxflex~I .output_async_reset = "none";
defparam \rxflex~I .output_power_up = "low";
defparam \rxflex~I .output_register_mode = "none";
defparam \rxflex~I .output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N24
cycloneii_lcell_comb \u_uw_uart|ix15671z52923 (
// Equation(s):
// \u_uw_uart|rawrx  = (\rxflex~combout  & \nrst~combout )

	.dataa(vcc),
	.datab(vcc),
	.datac(\rxflex~combout ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix15671z52923 .lut_mask = 16'hF000;
defparam \u_uw_uart|ix15671z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y24_N30
cycloneii_lcell_comb \u_uw_uart|rawrx~_wirecell (
// Equation(s):
// \u_uw_uart|rawrx~_wirecell_combout  = !\u_uw_uart|rawrx 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|rawrx ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|rawrx~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|rawrx~_wirecell .lut_mask = 16'h0F0F;
defparam \u_uw_uart|rawrx~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y24_N31
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|rawrx~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx54636z1 ));

// Location: LCCOMB_X36_Y24_N16
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11553z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11553z1  = (\u_uw_uart|i_uarts|nx54636z1  & ((\u_uw_uart|i_uarts|RxFSM_4_ ))) # (!\u_uw_uart|i_uarts|nx54636z1  & (\u_uw_uart|i_uarts|RxFSM_1_ ))

	.dataa(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.datab(\u_uw_uart|i_uarts|RxFSM_4_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx54636z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11553z52923 .lut_mask = 16'hCCAA;
defparam \u_uw_uart|i_uarts|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y23_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52926 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z3  = (\u_uw_uart|i_uarts|nx53265z2  & ((\u_uw_uart|i_uarts|RxFSM_5_  & ((\u_uw_uart|rawrx ))) # (!\u_uw_uart|i_uarts|RxFSM_5_  & (\u_uw_uart|i_uarts|TopRx ))))

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datac(\u_uw_uart|rawrx ),
	.datad(\u_uw_uart|i_uarts|nx53265z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52926 .lut_mask = 16'hE200;
defparam \u_uw_uart|i_uarts|ix15541z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y23_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix15541z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx15541z1  = (\u_uw_uart|i_uarts|nx15541z3 ) # ((\u_uw_uart|i_uarts|nx15541z2  & (!\u_uw_uart|i_uarts|nx53265z2  & \u_uw_uart|i_uarts|nx54636z1 )))

	.dataa(\u_uw_uart|i_uarts|nx15541z2 ),
	.datab(\u_uw_uart|i_uarts|nx53265z2 ),
	.datac(\u_uw_uart|i_uarts|nx54636z1 ),
	.datad(\u_uw_uart|i_uarts|nx15541z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx15541z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix15541z52924 .lut_mask = 16'hFF20;
defparam \u_uw_uart|i_uarts|ix15541z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y24_N17
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_5_ ));

// Location: LCCOMB_X36_Y24_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix16538z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx16538z1  = (!\u_uw_uart|i_uarts|RxFSM_5_  & ((\u_uw_uart|i_uarts|nx54636z1 ) # (!\u_uw_uart|i_uarts|RxFSM_4_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|RxFSM_4_ ),
	.datac(\u_uw_uart|i_uarts|RxFSM_5_ ),
	.datad(\u_uw_uart|i_uarts|nx54636z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix16538z52923 .lut_mask = 16'h0F03;
defparam \u_uw_uart|i_uarts|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y24_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|nx53265z2 ));

// Location: LCCOMB_X40_Y24_N10
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z1  = (\u_uw_uart|i_uarts|nx53265z2  & !\u_uw_uart|i_uarts|RxBitCnt_0_ )

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx53265z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52923 .lut_mask = 16'h0C0C;
defparam \u_uw_uart|i_uarts|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X41_Y24_N12
cycloneii_lcell_comb \u_uw_uart|i_uarts|nx53265z2~_wirecell (
// Equation(s):
// \u_uw_uart|i_uarts|nx53265z2~_wirecell_combout  = !\u_uw_uart|i_uarts|nx53265z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx53265z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx53265z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|nx53265z2~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|i_uarts|nx53265z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N13
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx53265z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_1_ ));

// Location: LCCOMB_X41_Y24_N26
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix14544z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx14544z1  = (\u_uw_uart|i_uarts|RxFSM_3_ ) # ((\u_uw_uart|i_uarts|nx54636z1  & \u_uw_uart|i_uarts|RxFSM_1_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx54636z1 ),
	.datac(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix14544z52923 .lut_mask = 16'hFCF0;
defparam \u_uw_uart|i_uarts|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y24_N27
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_2_ ));

// Location: LCCOMB_X36_Y24_N4
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix13547z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx13547z1  = (\u_uw_uart|i_uarts|RxFSM_2_  & (((\u_uw_uart|i_uarts|RxBitCnt_1_ ) # (\u_uw_uart|i_uarts|RxBitCnt_0_ )) # (!\u_uw_uart|i_uarts|nx13547z2 )))

	.dataa(\u_uw_uart|i_uarts|nx13547z2 ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix13547z52923 .lut_mask = 16'hFD00;
defparam \u_uw_uart|i_uarts|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y24_N5
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_3_ ));

// Location: LCCOMB_X41_Y23_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix11364z52924 (
// Equation(s):
// \u_uw_uart|i_uarts|nx11364z2  = (\u_uw_uart|i_uarts|RxFSM_3_  & (\u_uw_uart|i_uarts|TopRx )) # (!\u_uw_uart|i_uarts|RxFSM_3_  & ((!\u_uw_uart|i_uarts|nx53265z2 )))

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(\u_uw_uart|i_uarts|RxFSM_3_ ),
	.datac(vcc),
	.datad(\u_uw_uart|i_uarts|nx53265z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx11364z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix11364z52924 .lut_mask = 16'h88BB;
defparam \u_uw_uart|i_uarts|ix11364z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y24_N11
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_0_ ));

// Location: LCCOMB_X40_Y24_N2
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix10367z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx10367z1  = (\u_uw_uart|i_uarts|nx53265z2  & (\u_uw_uart|i_uarts|RxBitCnt_1_  $ (\u_uw_uart|i_uarts|RxBitCnt_0_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|i_uarts|nx53265z2 ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datad(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix10367z52923 .lut_mask = 16'h0CC0;
defparam \u_uw_uart|i_uarts|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X40_Y24_N3
cycloneii_lcell_ff \u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx11364z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxBitCnt_1_ ));

// Location: LCCOMB_X36_Y24_N22
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix12550z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx12550z1  = (\u_uw_uart|i_uarts|nx13547z2  & (!\u_uw_uart|i_uarts|RxBitCnt_1_  & (!\u_uw_uart|i_uarts|RxBitCnt_0_  & \u_uw_uart|i_uarts|RxFSM_2_ )))

	.dataa(\u_uw_uart|i_uarts|nx13547z2 ),
	.datab(\u_uw_uart|i_uarts|RxBitCnt_1_ ),
	.datac(\u_uw_uart|i_uarts|RxBitCnt_0_ ),
	.datad(\u_uw_uart|i_uarts|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx12550z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix12550z52923 .lut_mask = 16'h0200;
defparam \u_uw_uart|i_uarts|ix12550z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y24_N23
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxFSM_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx12550z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|i_uarts|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxFSM_4_ ));

// Location: LCCOMB_X41_Y23_N18
cycloneii_lcell_comb \u_uw_uart|i_uarts|ix30017z52923 (
// Equation(s):
// \u_uw_uart|i_uarts|nx30017z1  = (\u_uw_uart|i_uarts|TopRx  & (!\u_uw_uart|i_uarts|nx54636z1  & \u_uw_uart|i_uarts|RxFSM_4_ ))

	.dataa(\u_uw_uart|i_uarts|TopRx ),
	.datab(vcc),
	.datac(\u_uw_uart|i_uarts|nx54636z1 ),
	.datad(\u_uw_uart|i_uarts|RxFSM_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|i_uarts|nx30017z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|i_uarts|ix30017z52923 .lut_mask = 16'h0A00;
defparam \u_uw_uart|i_uarts|ix30017z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y23_N19
cycloneii_lcell_ff \u_uw_uart|i_uarts|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|i_uarts|nx30017z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|i_uarts|RxRDY ));

// Location: LCCOMB_X41_Y23_N8
cycloneii_lcell_comb \u_uw_uart|ix58116z52923 (
// Equation(s):
// \u_uw_uart|nx58116z1  = (!\u_uw_uart|o_pixavail  & \u_uw_uart|i_uarts|RxRDY )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|i_uarts|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|nx58116z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix58116z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix58116z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X41_Y23_N9
cycloneii_lcell_ff \u_uw_uart|reg_charavail (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx58116z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|o_pixavail ));

// Location: LCFF_X49_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_valid_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|o_pixavail ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_0_ ));

// Location: LCCOMB_X45_Y22_N24
cycloneii_lcell_comb \u_kirsch|ix62927z52923 (
// Equation(s):
// \u_kirsch|nx62927z1  = (\u_kirsch|valid_0_ ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|valid_0_ ),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_kirsch|nx62927z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix62927z52923 .lut_mask = 16'hF0FF;
defparam \u_kirsch|ix62927z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N1
cycloneii_lcell_ff \u_kirsch|reg_q_0__dup_18 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_0__dup_223 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_0_ ));

// Location: LCCOMB_X45_Y22_N6
cycloneii_lcell_comb \u_kirsch|ix25361z52924 (
// Equation(s):
// \u_kirsch|nx25361z1  = CARRY(\u_kirsch|column_0_ )

	.dataa(vcc),
	.datab(\u_kirsch|column_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_kirsch|nx25361z1 ));
// synopsys translate_off
defparam \u_kirsch|ix25361z52924 .lut_mask = 16'h00CC;
defparam \u_kirsch|ix25361z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N8
cycloneii_lcell_comb \u_kirsch|ix25361z52923 (
// Equation(s):
// \u_kirsch|inc_d_1__dup_225  = (\u_kirsch|column_1_  & (!\u_kirsch|nx25361z1 )) # (!\u_kirsch|column_1_  & ((\u_kirsch|nx25361z1 ) # (GND)))
// \u_kirsch|nx45393z2  = CARRY((!\u_kirsch|nx25361z1 ) # (!\u_kirsch|column_1_ ))

	.dataa(\u_kirsch|column_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx25361z1 ),
	.combout(\u_kirsch|inc_d_1__dup_225 ),
	.cout(\u_kirsch|nx45393z2 ));
// synopsys translate_off
defparam \u_kirsch|ix25361z52923 .lut_mask = 16'h5A5F;
defparam \u_kirsch|ix25361z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N10
cycloneii_lcell_comb \u_kirsch|ix45393z52925 (
// Equation(s):
// \u_kirsch|inc_d_2__dup_227  = (\u_kirsch|column_2_  & (\u_kirsch|nx45393z2  $ (GND))) # (!\u_kirsch|column_2_  & (!\u_kirsch|nx45393z2  & VCC))
// \u_kirsch|nx45393z1  = CARRY((\u_kirsch|column_2_  & !\u_kirsch|nx45393z2 ))

	.dataa(\u_kirsch|column_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx45393z2 ),
	.combout(\u_kirsch|inc_d_2__dup_227 ),
	.cout(\u_kirsch|nx45393z1 ));
// synopsys translate_off
defparam \u_kirsch|ix45393z52925 .lut_mask = 16'hA50A;
defparam \u_kirsch|ix45393z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N12
cycloneii_lcell_comb \u_kirsch|ix45393z52923 (
// Equation(s):
// \u_kirsch|inc_d_3__dup_229  = (\u_kirsch|column_3_  & (!\u_kirsch|nx45393z1 )) # (!\u_kirsch|column_3_  & ((\u_kirsch|nx45393z1 ) # (GND)))
// \u_kirsch|nx19921z4  = CARRY((!\u_kirsch|nx45393z1 ) # (!\u_kirsch|column_3_ ))

	.dataa(\u_kirsch|column_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx45393z1 ),
	.combout(\u_kirsch|inc_d_3__dup_229 ),
	.cout(\u_kirsch|nx19921z4 ));
// synopsys translate_off
defparam \u_kirsch|ix45393z52923 .lut_mask = 16'h5A5F;
defparam \u_kirsch|ix45393z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N13
cycloneii_lcell_ff \u_kirsch|reg_q_3__dup_15 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_3__dup_229 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_3_ ));

// Location: LCFF_X45_Y22_N11
cycloneii_lcell_ff \u_kirsch|reg_q_2__dup_16 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_2__dup_227 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_2_ ));

// Location: LCCOMB_X43_Y22_N28
cycloneii_lcell_comb \u_kirsch|ix62927z52926 (
// Equation(s):
// \u_kirsch|nx62927z4  = (\u_kirsch|column_1_  & (\u_kirsch|column_0_  & (\u_kirsch|column_3_  & \u_kirsch|column_2_ )))

	.dataa(\u_kirsch|column_1_ ),
	.datab(\u_kirsch|column_0_ ),
	.datac(\u_kirsch|column_3_ ),
	.datad(\u_kirsch|column_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx62927z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix62927z52926 .lut_mask = 16'h8000;
defparam \u_kirsch|ix62927z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y24_N8
cycloneii_lcell_comb \u_kirsch|ix62927z52924 (
// Equation(s):
// \u_kirsch|nx62927z2  = ((\u_kirsch|nx62927z3  & (\u_kirsch|nx62927z4  & \u_kirsch|valid_0_ ))) # (!\nrst~combout )

	.dataa(\u_kirsch|nx62927z3 ),
	.datab(\nrst~combout ),
	.datac(\u_kirsch|nx62927z4 ),
	.datad(\u_kirsch|valid_0_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx62927z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix62927z52924 .lut_mask = 16'hB333;
defparam \u_kirsch|ix62927z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y22_N11
cycloneii_lcell_ff \u_kirsch|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_1_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_1_ ));

// Location: LCCOMB_X42_Y22_N6
cycloneii_lcell_comb \u_kirsch|ix51271z52923 (
// Equation(s):
// \u_kirsch|inc_d_0_  = !\u_kirsch|o_row_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|inc_d_0_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix51271z52923 .lut_mask = 16'h0F0F;
defparam \u_kirsch|ix51271z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y22_N7
cycloneii_lcell_ff \u_kirsch|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_0_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_0_ ));

// Location: LCCOMB_X42_Y22_N12
cycloneii_lcell_comb \u_kirsch|ix54262z52924 (
// Equation(s):
// \u_kirsch|inc_d_2_  = (\u_kirsch|o_row_2_  & (\u_kirsch|nx54262z2  $ (GND))) # (!\u_kirsch|o_row_2_  & (!\u_kirsch|nx54262z2  & VCC))
// \u_kirsch|nx54262z1  = CARRY((\u_kirsch|o_row_2_  & !\u_kirsch|nx54262z2 ))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx54262z2 ),
	.combout(\u_kirsch|inc_d_2_ ),
	.cout(\u_kirsch|nx54262z1 ));
// synopsys translate_off
defparam \u_kirsch|ix54262z52924 .lut_mask = 16'hA50A;
defparam \u_kirsch|ix54262z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N14
cycloneii_lcell_comb \u_kirsch|ix54262z52923 (
// Equation(s):
// \u_kirsch|inc_d_3_  = (\u_kirsch|o_row_3_  & (!\u_kirsch|nx54262z1 )) # (!\u_kirsch|o_row_3_  & ((\u_kirsch|nx54262z1 ) # (GND)))
// \u_kirsch|nx58250z4  = CARRY((!\u_kirsch|nx54262z1 ) # (!\u_kirsch|o_row_3_ ))

	.dataa(vcc),
	.datab(\u_kirsch|o_row_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx54262z1 ),
	.combout(\u_kirsch|inc_d_3_ ),
	.cout(\u_kirsch|nx58250z4 ));
// synopsys translate_off
defparam \u_kirsch|ix54262z52923 .lut_mask = 16'h3C3F;
defparam \u_kirsch|ix54262z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y22_N15
cycloneii_lcell_ff \u_kirsch|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_3_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_3_ ));

// Location: LCCOMB_X11_Y22_N0
cycloneii_lcell_comb ix58136z52923(
// Equation(s):
// nx58136z1 = (\u_kirsch|o_row_0_  & (!\u_kirsch|o_row_3_  & (\u_kirsch|o_row_2_  $ (!\u_kirsch|o_row_1_ )))) # (!\u_kirsch|o_row_0_  & (!\u_kirsch|o_row_1_  & (\u_kirsch|o_row_2_  $ (!\u_kirsch|o_row_3_ ))))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx58136z1),
	.cout());
// synopsys translate_off
defparam ix58136z52923.lut_mask = 16'h0291;
defparam ix58136z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N1
cycloneii_lcell_ff reg_o_sevenseg_0_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx58136z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_0_));

// Location: LCCOMB_X11_Y22_N2
cycloneii_lcell_comb ix59133z52923(
// Equation(s):
// nx59133z1 = (\u_kirsch|o_row_2_  & (\u_kirsch|o_row_0_  & (\u_kirsch|o_row_1_  $ (\u_kirsch|o_row_3_ )))) # (!\u_kirsch|o_row_2_  & (!\u_kirsch|o_row_3_  & ((\u_kirsch|o_row_1_ ) # (\u_kirsch|o_row_0_ ))))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx59133z1),
	.cout());
// synopsys translate_off
defparam ix59133z52923.lut_mask = 16'h20D4;
defparam ix59133z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N3
cycloneii_lcell_ff reg_o_sevenseg_1_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx59133z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_1_));

// Location: LCCOMB_X11_Y22_N12
cycloneii_lcell_comb ix60130z52923(
// Equation(s):
// nx60130z1 = (\u_kirsch|o_row_1_  & (((\u_kirsch|o_row_0_  & !\u_kirsch|o_row_3_ )))) # (!\u_kirsch|o_row_1_  & ((\u_kirsch|o_row_2_  & ((!\u_kirsch|o_row_3_ ))) # (!\u_kirsch|o_row_2_  & (\u_kirsch|o_row_0_ ))))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx60130z1),
	.cout());
// synopsys translate_off
defparam ix60130z52923.lut_mask = 16'h10F2;
defparam ix60130z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N13
cycloneii_lcell_ff reg_o_sevenseg_2_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx60130z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_2_));

// Location: LCCOMB_X11_Y22_N6
cycloneii_lcell_comb ix61127z52923(
// Equation(s):
// nx61127z1 = (\u_kirsch|o_row_0_  & (\u_kirsch|o_row_2_  $ ((!\u_kirsch|o_row_1_ )))) # (!\u_kirsch|o_row_0_  & ((\u_kirsch|o_row_2_  & (!\u_kirsch|o_row_1_  & !\u_kirsch|o_row_3_ )) # (!\u_kirsch|o_row_2_  & (\u_kirsch|o_row_1_  & \u_kirsch|o_row_3_ ))))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx61127z1),
	.cout());
// synopsys translate_off
defparam ix61127z52923.lut_mask = 16'h9492;
defparam ix61127z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N7
cycloneii_lcell_ff reg_o_sevenseg_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx61127z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_3_));

// Location: LCCOMB_X11_Y22_N16
cycloneii_lcell_comb ix62124z52923(
// Equation(s):
// nx62124z1 = (\u_kirsch|o_row_2_  & (\u_kirsch|o_row_3_  & ((\u_kirsch|o_row_1_ ) # (!\u_kirsch|o_row_0_ )))) # (!\u_kirsch|o_row_2_  & (\u_kirsch|o_row_1_  & (!\u_kirsch|o_row_0_  & !\u_kirsch|o_row_3_ )))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx62124z1),
	.cout());
// synopsys translate_off
defparam ix62124z52923.lut_mask = 16'h8A04;
defparam ix62124z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N17
cycloneii_lcell_ff reg_o_sevenseg_4_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx62124z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_4_));

// Location: LCCOMB_X11_Y22_N26
cycloneii_lcell_comb ix63121z52923(
// Equation(s):
// nx63121z1 = (\u_kirsch|o_row_1_  & ((\u_kirsch|o_row_0_  & ((\u_kirsch|o_row_3_ ))) # (!\u_kirsch|o_row_0_  & (\u_kirsch|o_row_2_ )))) # (!\u_kirsch|o_row_1_  & (\u_kirsch|o_row_2_  & (\u_kirsch|o_row_0_  $ (\u_kirsch|o_row_3_ ))))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx63121z1),
	.cout());
// synopsys translate_off
defparam ix63121z52923.lut_mask = 16'hCA28;
defparam ix63121z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N27
cycloneii_lcell_ff reg_o_sevenseg_5_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx63121z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_5_));

// Location: LCCOMB_X11_Y22_N28
cycloneii_lcell_comb ix64118z52923(
// Equation(s):
// nx64118z1 = (\u_kirsch|o_row_2_  & (!\u_kirsch|o_row_1_  & (\u_kirsch|o_row_0_  $ (!\u_kirsch|o_row_3_ )))) # (!\u_kirsch|o_row_2_  & (\u_kirsch|o_row_0_  & (\u_kirsch|o_row_1_  $ (!\u_kirsch|o_row_3_ ))))

	.dataa(\u_kirsch|o_row_2_ ),
	.datab(\u_kirsch|o_row_1_ ),
	.datac(\u_kirsch|o_row_0_ ),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(nx64118z1),
	.cout());
// synopsys translate_off
defparam ix64118z52923.lut_mask = 16'h6012;
defparam ix64118z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X11_Y22_N29
cycloneii_lcell_ff reg_o_sevenseg_6_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx64118z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_6_));

// Location: LCCOMB_X42_Y22_N16
cycloneii_lcell_comb \u_kirsch|ix58250z52926 (
// Equation(s):
// \u_kirsch|inc_d_4_  = (\u_kirsch|o_row_4_  & (\u_kirsch|nx58250z4  $ (GND))) # (!\u_kirsch|o_row_4_  & (!\u_kirsch|nx58250z4  & VCC))
// \u_kirsch|nx58250z3  = CARRY((\u_kirsch|o_row_4_  & !\u_kirsch|nx58250z4 ))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx58250z4 ),
	.combout(\u_kirsch|inc_d_4_ ),
	.cout(\u_kirsch|nx58250z3 ));
// synopsys translate_off
defparam \u_kirsch|ix58250z52926 .lut_mask = 16'hA50A;
defparam \u_kirsch|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N18
cycloneii_lcell_comb \u_kirsch|ix58250z52925 (
// Equation(s):
// \u_kirsch|inc_d_5_  = (\u_kirsch|o_row_5_  & (!\u_kirsch|nx58250z3 )) # (!\u_kirsch|o_row_5_  & ((\u_kirsch|nx58250z3 ) # (GND)))
// \u_kirsch|nx58250z2  = CARRY((!\u_kirsch|nx58250z3 ) # (!\u_kirsch|o_row_5_ ))

	.dataa(vcc),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx58250z3 ),
	.combout(\u_kirsch|inc_d_5_ ),
	.cout(\u_kirsch|nx58250z2 ));
// synopsys translate_off
defparam \u_kirsch|ix58250z52925 .lut_mask = 16'h3C3F;
defparam \u_kirsch|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y22_N19
cycloneii_lcell_ff \u_kirsch|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_5_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_5_ ));

// Location: LCFF_X42_Y22_N17
cycloneii_lcell_ff \u_kirsch|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_4_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_4_ ));

// Location: LCCOMB_X42_Y22_N20
cycloneii_lcell_comb \u_kirsch|ix58250z52924 (
// Equation(s):
// \u_kirsch|inc_d_6_  = (\u_kirsch|o_row_6_  & (\u_kirsch|nx58250z2  $ (GND))) # (!\u_kirsch|o_row_6_  & (!\u_kirsch|nx58250z2  & VCC))
// \u_kirsch|nx58250z1  = CARRY((\u_kirsch|o_row_6_  & !\u_kirsch|nx58250z2 ))

	.dataa(\u_kirsch|o_row_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx58250z2 ),
	.combout(\u_kirsch|inc_d_6_ ),
	.cout(\u_kirsch|nx58250z1 ));
// synopsys translate_off
defparam \u_kirsch|ix58250z52924 .lut_mask = 16'hA50A;
defparam \u_kirsch|ix58250z52924 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N22
cycloneii_lcell_comb \u_kirsch|ix58250z52923 (
// Equation(s):
// \u_kirsch|inc_d_7_  = \u_kirsch|nx58250z1  $ (\u_kirsch|o_row_7_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(\u_kirsch|nx58250z1 ),
	.combout(\u_kirsch|inc_d_7_ ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix58250z52923 .lut_mask = 16'h0FF0;
defparam \u_kirsch|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X42_Y22_N23
cycloneii_lcell_ff \u_kirsch|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_7_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_7_ ));

// Location: LCCOMB_X42_Y22_N24
cycloneii_lcell_comb ix576z52923(
// Equation(s):
// nx576z1 = (\u_kirsch|o_row_4_  & (!\u_kirsch|o_row_7_  & (\u_kirsch|o_row_6_  $ (!\u_kirsch|o_row_5_ )))) # (!\u_kirsch|o_row_4_  & (!\u_kirsch|o_row_5_  & (\u_kirsch|o_row_6_  $ (!\u_kirsch|o_row_7_ ))))

	.dataa(\u_kirsch|o_row_6_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_4_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx576z1),
	.cout());
// synopsys translate_off
defparam ix576z52923.lut_mask = 16'h0291;
defparam ix576z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y22_N25
cycloneii_lcell_ff reg_o_sevenseg_8_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx576z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_8_));

// Location: LCFF_X42_Y22_N21
cycloneii_lcell_ff \u_kirsch|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_6_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_6_ ));

// Location: LCCOMB_X8_Y22_N8
cycloneii_lcell_comb ix1573z52923(
// Equation(s):
// nx1573z1 = (\u_kirsch|o_row_4_  & (\u_kirsch|o_row_7_  $ (((\u_kirsch|o_row_5_ ) # (!\u_kirsch|o_row_6_ ))))) # (!\u_kirsch|o_row_4_  & (\u_kirsch|o_row_5_  & (!\u_kirsch|o_row_6_  & !\u_kirsch|o_row_7_ )))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_6_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx1573z1),
	.cout());
// synopsys translate_off
defparam ix1573z52923.lut_mask = 16'h208E;
defparam ix1573z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X8_Y22_N9
cycloneii_lcell_ff reg_o_sevenseg_9_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx1573z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_9_));

// Location: LCCOMB_X8_Y22_N2
cycloneii_lcell_comb ix19779z52923(
// Equation(s):
// nx19779z1 = (\u_kirsch|o_row_5_  & (\u_kirsch|o_row_4_  & ((!\u_kirsch|o_row_7_ )))) # (!\u_kirsch|o_row_5_  & ((\u_kirsch|o_row_6_  & ((!\u_kirsch|o_row_7_ ))) # (!\u_kirsch|o_row_6_  & (\u_kirsch|o_row_4_ ))))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_6_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx19779z1),
	.cout());
// synopsys translate_off
defparam ix19779z52923.lut_mask = 16'h02BA;
defparam ix19779z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X8_Y22_N3
cycloneii_lcell_ff reg_o_sevenseg_10_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx19779z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_10_));

// Location: LCCOMB_X8_Y22_N12
cycloneii_lcell_comb ix18782z52923(
// Equation(s):
// nx18782z1 = (\u_kirsch|o_row_4_  & (\u_kirsch|o_row_5_  $ ((!\u_kirsch|o_row_6_ )))) # (!\u_kirsch|o_row_4_  & ((\u_kirsch|o_row_5_  & (!\u_kirsch|o_row_6_  & \u_kirsch|o_row_7_ )) # (!\u_kirsch|o_row_5_  & (\u_kirsch|o_row_6_  & !\u_kirsch|o_row_7_ ))))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_6_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx18782z1),
	.cout());
// synopsys translate_off
defparam ix18782z52923.lut_mask = 16'h8692;
defparam ix18782z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X8_Y22_N13
cycloneii_lcell_ff reg_o_sevenseg_11_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx18782z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_11_));

// Location: LCCOMB_X8_Y22_N6
cycloneii_lcell_comb ix17785z52923(
// Equation(s):
// nx17785z1 = (\u_kirsch|o_row_6_  & (\u_kirsch|o_row_7_  & ((\u_kirsch|o_row_5_ ) # (!\u_kirsch|o_row_4_ )))) # (!\u_kirsch|o_row_6_  & (!\u_kirsch|o_row_4_  & (\u_kirsch|o_row_5_  & !\u_kirsch|o_row_7_ )))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_6_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx17785z1),
	.cout());
// synopsys translate_off
defparam ix17785z52923.lut_mask = 16'hD004;
defparam ix17785z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X8_Y22_N7
cycloneii_lcell_ff reg_o_sevenseg_12_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx17785z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_12_));

// Location: LCCOMB_X8_Y22_N0
cycloneii_lcell_comb ix16788z52923(
// Equation(s):
// nx16788z1 = (\u_kirsch|o_row_5_  & ((\u_kirsch|o_row_4_  & ((\u_kirsch|o_row_7_ ))) # (!\u_kirsch|o_row_4_  & (\u_kirsch|o_row_6_ )))) # (!\u_kirsch|o_row_5_  & (\u_kirsch|o_row_6_  & (\u_kirsch|o_row_4_  $ (\u_kirsch|o_row_7_ ))))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_6_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx16788z1),
	.cout());
// synopsys translate_off
defparam ix16788z52923.lut_mask = 16'hD860;
defparam ix16788z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X8_Y22_N1
cycloneii_lcell_ff reg_o_sevenseg_13_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx16788z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_13_));

// Location: LCCOMB_X8_Y22_N18
cycloneii_lcell_comb ix15791z52923(
// Equation(s):
// nx15791z1 = (\u_kirsch|o_row_6_  & (!\u_kirsch|o_row_5_  & (\u_kirsch|o_row_4_  $ (!\u_kirsch|o_row_7_ )))) # (!\u_kirsch|o_row_6_  & (\u_kirsch|o_row_4_  & (\u_kirsch|o_row_5_  $ (!\u_kirsch|o_row_7_ ))))

	.dataa(\u_kirsch|o_row_4_ ),
	.datab(\u_kirsch|o_row_5_ ),
	.datac(\u_kirsch|o_row_6_ ),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(nx15791z1),
	.cout());
// synopsys translate_off
defparam ix15791z52923.lut_mask = 16'h2812;
defparam ix15791z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X8_Y22_N19
cycloneii_lcell_ff reg_o_sevenseg_14_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx15791z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_sevenseg_14_));

// Location: LCCOMB_X42_Y22_N26
cycloneii_lcell_comb \u_kirsch|ix25376z52930 (
// Equation(s):
// \u_kirsch|nx25376z8  = (\u_kirsch|o_mode_1_ ) # ((\u_uw_uart|o_pixavail ) # (!\u_kirsch|nx25376z9 ))

	.dataa(vcc),
	.datab(\u_kirsch|o_mode_1_ ),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_kirsch|nx25376z9 ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z8 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52930 .lut_mask = 16'hFCFF;
defparam \u_kirsch|ix25376z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N14
cycloneii_lcell_comb \u_kirsch|row_valid1_1_~feeder (
// Equation(s):
// \u_kirsch|row_valid1_1_~feeder_combout  = \u_kirsch|o_row_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid1_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid1_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid1_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N15
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid1_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_1_ ));

// Location: LCCOMB_X44_Y22_N0
cycloneii_lcell_comb \u_kirsch|row_valid2_1_~feeder (
// Equation(s):
// \u_kirsch|row_valid2_1_~feeder_combout  = \u_kirsch|row_valid1_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|row_valid1_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid2_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid2_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid2_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_valid_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|valid_0_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_1_ ));

// Location: LCFF_X49_Y24_N3
cycloneii_lcell_ff \u_kirsch|reg_valid_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|valid_1_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_2_ ));

// Location: LCFF_X42_Y24_N25
cycloneii_lcell_ff \u_kirsch|reg_valid_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|valid_2_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_3_ ));

// Location: LCFF_X45_Y24_N21
cycloneii_lcell_ff \u_kirsch|reg_valid_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|valid_3_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_4_ ));

// Location: LCFF_X44_Y22_N1
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid2_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_1_ ));

// Location: LCFF_X43_Y22_N17
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|o_row_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_0_ ));

// Location: LCFF_X43_Y22_N11
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|row_valid1_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_0_ ));

// Location: LCCOMB_X43_Y22_N10
cycloneii_lcell_comb \u_kirsch|ix25376z52928 (
// Equation(s):
// \u_kirsch|nx25376z6  = (!\u_kirsch|nx25376z7  & (\u_kirsch|row_valid2_1_  & \u_kirsch|row_valid2_0_ ))

	.dataa(\u_kirsch|nx25376z7 ),
	.datab(\u_kirsch|row_valid2_1_ ),
	.datac(\u_kirsch|row_valid2_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z6 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52928 .lut_mask = 16'h4040;
defparam \u_kirsch|ix25376z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N14
cycloneii_lcell_comb \u_kirsch|ix19921z52926 (
// Equation(s):
// \u_kirsch|inc_d_4__dup_231  = (\u_kirsch|column_4_  & (\u_kirsch|nx19921z4  $ (GND))) # (!\u_kirsch|column_4_  & (!\u_kirsch|nx19921z4  & VCC))
// \u_kirsch|nx19921z3  = CARRY((\u_kirsch|column_4_  & !\u_kirsch|nx19921z4 ))

	.dataa(vcc),
	.datab(\u_kirsch|column_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx19921z4 ),
	.combout(\u_kirsch|inc_d_4__dup_231 ),
	.cout(\u_kirsch|nx19921z3 ));
// synopsys translate_off
defparam \u_kirsch|ix19921z52926 .lut_mask = 16'hC30C;
defparam \u_kirsch|ix19921z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N15
cycloneii_lcell_ff \u_kirsch|reg_q_4__dup_14 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_4__dup_231 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_4_ ));

// Location: LCCOMB_X45_Y22_N16
cycloneii_lcell_comb \u_kirsch|ix19921z52925 (
// Equation(s):
// \u_kirsch|inc_d_5__dup_233  = (\u_kirsch|column_5_  & (!\u_kirsch|nx19921z3 )) # (!\u_kirsch|column_5_  & ((\u_kirsch|nx19921z3 ) # (GND)))
// \u_kirsch|nx19921z2  = CARRY((!\u_kirsch|nx19921z3 ) # (!\u_kirsch|column_5_ ))

	.dataa(\u_kirsch|column_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_kirsch|nx19921z3 ),
	.combout(\u_kirsch|inc_d_5__dup_233 ),
	.cout(\u_kirsch|nx19921z2 ));
// synopsys translate_off
defparam \u_kirsch|ix19921z52925 .lut_mask = 16'h5A5F;
defparam \u_kirsch|ix19921z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y22_N19
cycloneii_lcell_ff \u_kirsch|reg_q_6__dup_12 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_6__dup_235 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_6_ ));

// Location: LCCOMB_X45_Y22_N26
cycloneii_lcell_comb \u_kirsch|column_valid1_6_~feeder (
// Equation(s):
// \u_kirsch|column_valid1_6_~feeder_combout  = \u_kirsch|column_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|column_6_ ),
	.cin(gnd),
	.combout(\u_kirsch|column_valid1_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid1_6_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|column_valid1_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N27
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid1_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_6_ ));

// Location: LCFF_X44_Y22_N31
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_valid1_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_6_ ));

// Location: LCFF_X45_Y24_N27
cycloneii_lcell_ff \u_kirsch|reg_valid_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|valid_4_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_5_ ));

// Location: LCFF_X44_Y23_N27
cycloneii_lcell_ff \u_kirsch|reg_valid_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|valid_5_ ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|valid_6_ ));

// Location: LCCOMB_X43_Y22_N0
cycloneii_lcell_comb \u_kirsch|row_valid1_4_~feeder (
// Equation(s):
// \u_kirsch|row_valid1_4_~feeder_combout  = \u_kirsch|o_row_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_4_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid1_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid1_4_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid1_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N1
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid1_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_4_ ));

// Location: LCFF_X44_Y22_N3
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|row_valid1_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_4_ ));

// Location: LCFF_X43_Y22_N25
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|o_row_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_6_ ));

// Location: LCFF_X44_Y22_N17
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|row_valid1_6_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_6_ ));

// Location: LCCOMB_X43_Y22_N20
cycloneii_lcell_comb \u_kirsch|row_valid1_5_~feeder (
// Equation(s):
// \u_kirsch|row_valid1_5_~feeder_combout  = \u_kirsch|o_row_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid1_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid1_5_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid1_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N21
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid1_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_5_ ));

// Location: LCFF_X44_Y22_N27
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|row_valid1_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_5_ ));

// Location: LCCOMB_X44_Y22_N16
cycloneii_lcell_comb \u_kirsch|ix23902z52927 (
// Equation(s):
// \u_kirsch|nx23902z5  = (\u_kirsch|row_valid2_7_ ) # ((\u_kirsch|row_valid2_4_ ) # ((\u_kirsch|row_valid2_6_ ) # (\u_kirsch|row_valid2_5_ )))

	.dataa(\u_kirsch|row_valid2_7_ ),
	.datab(\u_kirsch|row_valid2_4_ ),
	.datac(\u_kirsch|row_valid2_6_ ),
	.datad(\u_kirsch|row_valid2_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx23902z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23902z52927 .lut_mask = 16'hFFFE;
defparam \u_kirsch|ix23902z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y22_N13
cycloneii_lcell_ff \u_kirsch|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_2_ ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_row_2_ ));

// Location: LCCOMB_X43_Y22_N26
cycloneii_lcell_comb \u_kirsch|row_valid1_2_~feeder (
// Equation(s):
// \u_kirsch|row_valid1_2_~feeder_combout  = \u_kirsch|o_row_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid1_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid1_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid1_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N27
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid1_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_2_ ));

// Location: LCCOMB_X44_Y22_N22
cycloneii_lcell_comb \u_kirsch|row_valid2_2_~feeder (
// Equation(s):
// \u_kirsch|row_valid2_2_~feeder_combout  = \u_kirsch|row_valid1_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|row_valid1_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid2_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid2_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid2_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N23
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid2_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_2_ ));

// Location: LCCOMB_X43_Y22_N30
cycloneii_lcell_comb \u_kirsch|row_valid1_3_~feeder (
// Equation(s):
// \u_kirsch|row_valid1_3_~feeder_combout  = \u_kirsch|o_row_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_3_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid1_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid1_3_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid1_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N31
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid1_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_3_ ));

// Location: LCFF_X44_Y22_N29
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|row_valid1_3_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_3_ ));

// Location: LCCOMB_X44_Y22_N28
cycloneii_lcell_comb \u_kirsch|ix23902z52926 (
// Equation(s):
// \u_kirsch|nx23902z4  = (\u_kirsch|row_valid2_2_ ) # ((\u_kirsch|row_valid2_3_ ) # (\u_kirsch|row_valid2_1_ ))

	.dataa(vcc),
	.datab(\u_kirsch|row_valid2_2_ ),
	.datac(\u_kirsch|row_valid2_3_ ),
	.datad(\u_kirsch|row_valid2_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx23902z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23902z52926 .lut_mask = 16'hFFFC;
defparam \u_kirsch|ix23902z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y24_N16
cycloneii_lcell_comb \u_kirsch|ix23902z52923 (
// Equation(s):
// \u_kirsch|nx23902z1  = (\u_kirsch|nx23902z2  & (\u_kirsch|valid_6_  & ((\u_kirsch|nx23902z5 ) # (\u_kirsch|nx23902z4 ))))

	.dataa(\u_kirsch|nx23902z2 ),
	.datab(\u_kirsch|valid_6_ ),
	.datac(\u_kirsch|nx23902z5 ),
	.datad(\u_kirsch|nx23902z4 ),
	.cin(gnd),
	.combout(\u_kirsch|nx23902z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix23902z52923 .lut_mask = 16'h8880;
defparam \u_kirsch|ix23902z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y24_N17
cycloneii_lcell_ff \u_kirsch|reg_output_valid_reg (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx23902z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_valid ));

// Location: LCCOMB_X44_Y22_N30
cycloneii_lcell_comb \u_kirsch|ix25376z52925 (
// Equation(s):
// \u_kirsch|nx25376z3  = ((!\u_kirsch|o_valid ) # (!\u_kirsch|column_valid2_6_ )) # (!\u_kirsch|column_valid2_7_ )

	.dataa(\u_kirsch|column_valid2_7_ ),
	.datab(vcc),
	.datac(\u_kirsch|column_valid2_6_ ),
	.datad(\u_kirsch|o_valid ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52925 .lut_mask = 16'h5FFF;
defparam \u_kirsch|ix25376z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y22_N22
cycloneii_lcell_comb \u_kirsch|column_valid1_4_~feeder (
// Equation(s):
// \u_kirsch|column_valid1_4_~feeder_combout  = \u_kirsch|column_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|column_4_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|column_valid1_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid1_4_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|column_valid1_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N23
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid1_4_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_4_ ));

// Location: LCFF_X44_Y22_N19
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_valid1_4_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_4_ ));

// Location: LCFF_X45_Y22_N17
cycloneii_lcell_ff \u_kirsch|reg_q_5__dup_13 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_5__dup_233 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_5_ ));

// Location: LCCOMB_X45_Y22_N28
cycloneii_lcell_comb \u_kirsch|column_valid1_5_~feeder (
// Equation(s):
// \u_kirsch|column_valid1_5_~feeder_combout  = \u_kirsch|column_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_kirsch|column_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_kirsch|column_valid1_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid1_5_~feeder .lut_mask = 16'hF0F0;
defparam \u_kirsch|column_valid1_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y22_N29
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid1_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_5_ ));

// Location: LCFF_X44_Y22_N25
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_valid1_5_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_5_ ));

// Location: LCCOMB_X44_Y22_N18
cycloneii_lcell_comb \u_kirsch|ix25376z52924 (
// Equation(s):
// \u_kirsch|nx25376z2  = (\u_kirsch|column_valid2_3_  & (!\u_kirsch|nx25376z3  & (\u_kirsch|column_valid2_4_  & \u_kirsch|column_valid2_5_ )))

	.dataa(\u_kirsch|column_valid2_3_ ),
	.datab(\u_kirsch|nx25376z3 ),
	.datac(\u_kirsch|column_valid2_4_ ),
	.datad(\u_kirsch|column_valid2_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52924 .lut_mask = 16'h2000;
defparam \u_kirsch|ix25376z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N28
cycloneii_lcell_comb \u_kirsch|ix25376z52923 (
// Equation(s):
// \u_kirsch|nx25376z1  = (\u_kirsch|nx25376z8 ) # ((\u_kirsch|nx25376z4  & (\u_kirsch|nx25376z6  & \u_kirsch|nx25376z2 )))

	.dataa(\u_kirsch|nx25376z4 ),
	.datab(\u_kirsch|nx25376z8 ),
	.datac(\u_kirsch|nx25376z6 ),
	.datad(\u_kirsch|nx25376z2 ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52923 .lut_mask = 16'hECCC;
defparam \u_kirsch|ix25376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y22_N29
cycloneii_lcell_ff \u_kirsch|reg_mode_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx25376z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|o_mode_1_ ));

// Location: LCCOMB_X42_Y22_N0
cycloneii_lcell_comb \u_kirsch|ix26373z52924 (
// Equation(s):
// \u_kirsch|nx26373z2  = (\u_kirsch|o_mode_1_  & !\u_kirsch|nx25376z9 )

	.dataa(vcc),
	.datab(\u_kirsch|o_mode_1_ ),
	.datac(vcc),
	.datad(\u_kirsch|nx25376z9 ),
	.cin(gnd),
	.combout(\u_kirsch|nx26373z2 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix26373z52924 .lut_mask = 16'h00CC;
defparam \u_kirsch|ix26373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N8
cycloneii_lcell_comb \u_kirsch|row_valid1_7_~feeder (
// Equation(s):
// \u_kirsch|row_valid1_7_~feeder_combout  = \u_kirsch|o_row_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|o_row_7_ ),
	.cin(gnd),
	.combout(\u_kirsch|row_valid1_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|row_valid1_7_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|row_valid1_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N9
cycloneii_lcell_ff \u_kirsch|reg_row_valid1_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|row_valid1_7_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid1_7_ ));

// Location: LCFF_X44_Y22_N15
cycloneii_lcell_ff \u_kirsch|reg_row_valid2_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|row_valid1_7_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|row_valid2_7_ ));

// Location: LCCOMB_X44_Y22_N14
cycloneii_lcell_comb \u_kirsch|ix26373z52926 (
// Equation(s):
// \u_kirsch|nx26373z4  = ((!\u_kirsch|row_valid2_5_ ) # (!\u_kirsch|row_valid2_7_ )) # (!\u_kirsch|row_valid2_6_ )

	.dataa(\u_kirsch|row_valid2_6_ ),
	.datab(vcc),
	.datac(\u_kirsch|row_valid2_7_ ),
	.datad(\u_kirsch|row_valid2_5_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx26373z4 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix26373z52926 .lut_mask = 16'h5FFF;
defparam \u_kirsch|ix26373z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X43_Y22_N22
cycloneii_lcell_comb \u_kirsch|column_valid1_2_~feeder (
// Equation(s):
// \u_kirsch|column_valid1_2_~feeder_combout  = \u_kirsch|column_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|column_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|column_valid1_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid1_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|column_valid1_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X43_Y22_N23
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid1_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_2_ ));

// Location: LCCOMB_X44_Y22_N8
cycloneii_lcell_comb \u_kirsch|column_valid2_2_~feeder (
// Equation(s):
// \u_kirsch|column_valid2_2_~feeder_combout  = \u_kirsch|column_valid1_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|column_valid1_2_ ),
	.cin(gnd),
	.combout(\u_kirsch|column_valid2_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid2_2_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|column_valid2_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N9
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid2_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_2_ ));

// Location: LCFF_X43_Y22_N13
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_0_ ));

// Location: LCFF_X44_Y22_N5
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_valid1_0_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_0_ ));

// Location: LCFF_X45_Y22_N9
cycloneii_lcell_ff \u_kirsch|reg_q_1__dup_17 (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|inc_d_1__dup_225 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_kirsch|nx62927z2 ),
	.sload(gnd),
	.ena(\u_kirsch|nx62927z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_1_ ));

// Location: LCFF_X43_Y22_N19
cycloneii_lcell_ff \u_kirsch|reg_column_valid1_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_kirsch|column_1_ ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_kirsch|valid_0_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid1_1_ ));

// Location: LCCOMB_X44_Y22_N10
cycloneii_lcell_comb \u_kirsch|column_valid2_1_~feeder (
// Equation(s):
// \u_kirsch|column_valid2_1_~feeder_combout  = \u_kirsch|column_valid1_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_kirsch|column_valid1_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|column_valid2_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|column_valid2_1_~feeder .lut_mask = 16'hFF00;
defparam \u_kirsch|column_valid2_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y22_N11
cycloneii_lcell_ff \u_kirsch|reg_column_valid2_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|column_valid2_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_kirsch|valid_4_ ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|column_valid2_1_ ));

// Location: LCCOMB_X44_Y22_N4
cycloneii_lcell_comb \u_kirsch|ix25376z52927 (
// Equation(s):
// \u_kirsch|nx25376z5  = ((!\u_kirsch|column_valid2_1_ ) # (!\u_kirsch|column_valid2_0_ )) # (!\u_kirsch|column_valid2_2_ )

	.dataa(vcc),
	.datab(\u_kirsch|column_valid2_2_ ),
	.datac(\u_kirsch|column_valid2_0_ ),
	.datad(\u_kirsch|column_valid2_1_ ),
	.cin(gnd),
	.combout(\u_kirsch|nx25376z5 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix25376z52927 .lut_mask = 16'h3FFF;
defparam \u_kirsch|ix25376z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y22_N6
cycloneii_lcell_comb \u_kirsch|ix26373z52925 (
// Equation(s):
// \u_kirsch|nx26373z3  = (!\u_kirsch|nx26373z5  & (!\u_kirsch|nx25376z3  & (!\u_kirsch|nx26373z4  & !\u_kirsch|nx25376z5 )))

	.dataa(\u_kirsch|nx26373z5 ),
	.datab(\u_kirsch|nx25376z3 ),
	.datac(\u_kirsch|nx26373z4 ),
	.datad(\u_kirsch|nx25376z5 ),
	.cin(gnd),
	.combout(\u_kirsch|nx26373z3 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix26373z52925 .lut_mask = 16'h0001;
defparam \u_kirsch|ix26373z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X42_Y22_N2
cycloneii_lcell_comb \u_kirsch|ix26373z52923 (
// Equation(s):
// \u_kirsch|nx26373z1  = (!\u_uw_uart|o_pixavail  & (((\u_kirsch|nx25376z6  & \u_kirsch|nx26373z3 )) # (!\u_kirsch|nx26373z2 )))

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_kirsch|nx26373z2 ),
	.datac(\u_kirsch|nx25376z6 ),
	.datad(\u_kirsch|nx26373z3 ),
	.cin(gnd),
	.combout(\u_kirsch|nx26373z1 ),
	.cout());
// synopsys translate_off
defparam \u_kirsch|ix26373z52923 .lut_mask = 16'h5111;
defparam \u_kirsch|ix26373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X42_Y22_N3
cycloneii_lcell_ff \u_kirsch|reg_mode_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_kirsch|nx26373z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_kirsch|nx25376z9 ));

// Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \txflex~I (
	.datain(!\u_uw_uart|i_uarts|nx18332z1 ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(txflex));
// synopsys translate_off
defparam \txflex~I .input_async_reset = "none";
defparam \txflex~I .input_power_up = "low";
defparam \txflex~I .input_register_mode = "none";
defparam \txflex~I .input_sync_reset = "none";
defparam \txflex~I .oe_async_reset = "none";
defparam \txflex~I .oe_power_up = "low";
defparam \txflex~I .oe_register_mode = "none";
defparam \txflex~I .oe_sync_reset = "none";
defparam \txflex~I .operation_mode = "output";
defparam \txflex~I .output_async_reset = "none";
defparam \txflex~I .output_power_up = "low";
defparam \txflex~I .output_register_mode = "none";
defparam \txflex~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[0]~I (
	.datain(o_sevenseg_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam \o_sevenseg[0]~I .input_async_reset = "none";
defparam \o_sevenseg[0]~I .input_power_up = "low";
defparam \o_sevenseg[0]~I .input_register_mode = "none";
defparam \o_sevenseg[0]~I .input_sync_reset = "none";
defparam \o_sevenseg[0]~I .oe_async_reset = "none";
defparam \o_sevenseg[0]~I .oe_power_up = "low";
defparam \o_sevenseg[0]~I .oe_register_mode = "none";
defparam \o_sevenseg[0]~I .oe_sync_reset = "none";
defparam \o_sevenseg[0]~I .operation_mode = "output";
defparam \o_sevenseg[0]~I .output_async_reset = "none";
defparam \o_sevenseg[0]~I .output_power_up = "low";
defparam \o_sevenseg[0]~I .output_register_mode = "none";
defparam \o_sevenseg[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[1]~I (
	.datain(o_sevenseg_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam \o_sevenseg[1]~I .input_async_reset = "none";
defparam \o_sevenseg[1]~I .input_power_up = "low";
defparam \o_sevenseg[1]~I .input_register_mode = "none";
defparam \o_sevenseg[1]~I .input_sync_reset = "none";
defparam \o_sevenseg[1]~I .oe_async_reset = "none";
defparam \o_sevenseg[1]~I .oe_power_up = "low";
defparam \o_sevenseg[1]~I .oe_register_mode = "none";
defparam \o_sevenseg[1]~I .oe_sync_reset = "none";
defparam \o_sevenseg[1]~I .operation_mode = "output";
defparam \o_sevenseg[1]~I .output_async_reset = "none";
defparam \o_sevenseg[1]~I .output_power_up = "low";
defparam \o_sevenseg[1]~I .output_register_mode = "none";
defparam \o_sevenseg[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[2]~I (
	.datain(o_sevenseg_2_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam \o_sevenseg[2]~I .input_async_reset = "none";
defparam \o_sevenseg[2]~I .input_power_up = "low";
defparam \o_sevenseg[2]~I .input_register_mode = "none";
defparam \o_sevenseg[2]~I .input_sync_reset = "none";
defparam \o_sevenseg[2]~I .oe_async_reset = "none";
defparam \o_sevenseg[2]~I .oe_power_up = "low";
defparam \o_sevenseg[2]~I .oe_register_mode = "none";
defparam \o_sevenseg[2]~I .oe_sync_reset = "none";
defparam \o_sevenseg[2]~I .operation_mode = "output";
defparam \o_sevenseg[2]~I .output_async_reset = "none";
defparam \o_sevenseg[2]~I .output_power_up = "low";
defparam \o_sevenseg[2]~I .output_register_mode = "none";
defparam \o_sevenseg[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[3]~I (
	.datain(o_sevenseg_3_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam \o_sevenseg[3]~I .input_async_reset = "none";
defparam \o_sevenseg[3]~I .input_power_up = "low";
defparam \o_sevenseg[3]~I .input_register_mode = "none";
defparam \o_sevenseg[3]~I .input_sync_reset = "none";
defparam \o_sevenseg[3]~I .oe_async_reset = "none";
defparam \o_sevenseg[3]~I .oe_power_up = "low";
defparam \o_sevenseg[3]~I .oe_register_mode = "none";
defparam \o_sevenseg[3]~I .oe_sync_reset = "none";
defparam \o_sevenseg[3]~I .operation_mode = "output";
defparam \o_sevenseg[3]~I .output_async_reset = "none";
defparam \o_sevenseg[3]~I .output_power_up = "low";
defparam \o_sevenseg[3]~I .output_register_mode = "none";
defparam \o_sevenseg[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[4]~I (
	.datain(o_sevenseg_4_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam \o_sevenseg[4]~I .input_async_reset = "none";
defparam \o_sevenseg[4]~I .input_power_up = "low";
defparam \o_sevenseg[4]~I .input_register_mode = "none";
defparam \o_sevenseg[4]~I .input_sync_reset = "none";
defparam \o_sevenseg[4]~I .oe_async_reset = "none";
defparam \o_sevenseg[4]~I .oe_power_up = "low";
defparam \o_sevenseg[4]~I .oe_register_mode = "none";
defparam \o_sevenseg[4]~I .oe_sync_reset = "none";
defparam \o_sevenseg[4]~I .operation_mode = "output";
defparam \o_sevenseg[4]~I .output_async_reset = "none";
defparam \o_sevenseg[4]~I .output_power_up = "low";
defparam \o_sevenseg[4]~I .output_register_mode = "none";
defparam \o_sevenseg[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[5]~I (
	.datain(o_sevenseg_5_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam \o_sevenseg[5]~I .input_async_reset = "none";
defparam \o_sevenseg[5]~I .input_power_up = "low";
defparam \o_sevenseg[5]~I .input_register_mode = "none";
defparam \o_sevenseg[5]~I .input_sync_reset = "none";
defparam \o_sevenseg[5]~I .oe_async_reset = "none";
defparam \o_sevenseg[5]~I .oe_power_up = "low";
defparam \o_sevenseg[5]~I .oe_register_mode = "none";
defparam \o_sevenseg[5]~I .oe_sync_reset = "none";
defparam \o_sevenseg[5]~I .operation_mode = "output";
defparam \o_sevenseg[5]~I .output_async_reset = "none";
defparam \o_sevenseg[5]~I .output_power_up = "low";
defparam \o_sevenseg[5]~I .output_register_mode = "none";
defparam \o_sevenseg[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[6]~I (
	.datain(o_sevenseg_6_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam \o_sevenseg[6]~I .input_async_reset = "none";
defparam \o_sevenseg[6]~I .input_power_up = "low";
defparam \o_sevenseg[6]~I .input_register_mode = "none";
defparam \o_sevenseg[6]~I .input_sync_reset = "none";
defparam \o_sevenseg[6]~I .oe_async_reset = "none";
defparam \o_sevenseg[6]~I .oe_power_up = "low";
defparam \o_sevenseg[6]~I .oe_register_mode = "none";
defparam \o_sevenseg[6]~I .oe_sync_reset = "none";
defparam \o_sevenseg[6]~I .operation_mode = "output";
defparam \o_sevenseg[6]~I .output_async_reset = "none";
defparam \o_sevenseg[6]~I .output_power_up = "low";
defparam \o_sevenseg[6]~I .output_register_mode = "none";
defparam \o_sevenseg[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam \o_sevenseg[7]~I .input_async_reset = "none";
defparam \o_sevenseg[7]~I .input_power_up = "low";
defparam \o_sevenseg[7]~I .input_register_mode = "none";
defparam \o_sevenseg[7]~I .input_sync_reset = "none";
defparam \o_sevenseg[7]~I .oe_async_reset = "none";
defparam \o_sevenseg[7]~I .oe_power_up = "low";
defparam \o_sevenseg[7]~I .oe_register_mode = "none";
defparam \o_sevenseg[7]~I .oe_sync_reset = "none";
defparam \o_sevenseg[7]~I .operation_mode = "output";
defparam \o_sevenseg[7]~I .output_async_reset = "none";
defparam \o_sevenseg[7]~I .output_power_up = "low";
defparam \o_sevenseg[7]~I .output_register_mode = "none";
defparam \o_sevenseg[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[8]~I (
	.datain(o_sevenseg_8_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam \o_sevenseg[8]~I .input_async_reset = "none";
defparam \o_sevenseg[8]~I .input_power_up = "low";
defparam \o_sevenseg[8]~I .input_register_mode = "none";
defparam \o_sevenseg[8]~I .input_sync_reset = "none";
defparam \o_sevenseg[8]~I .oe_async_reset = "none";
defparam \o_sevenseg[8]~I .oe_power_up = "low";
defparam \o_sevenseg[8]~I .oe_register_mode = "none";
defparam \o_sevenseg[8]~I .oe_sync_reset = "none";
defparam \o_sevenseg[8]~I .operation_mode = "output";
defparam \o_sevenseg[8]~I .output_async_reset = "none";
defparam \o_sevenseg[8]~I .output_power_up = "low";
defparam \o_sevenseg[8]~I .output_register_mode = "none";
defparam \o_sevenseg[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[9]~I (
	.datain(o_sevenseg_9_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam \o_sevenseg[9]~I .input_async_reset = "none";
defparam \o_sevenseg[9]~I .input_power_up = "low";
defparam \o_sevenseg[9]~I .input_register_mode = "none";
defparam \o_sevenseg[9]~I .input_sync_reset = "none";
defparam \o_sevenseg[9]~I .oe_async_reset = "none";
defparam \o_sevenseg[9]~I .oe_power_up = "low";
defparam \o_sevenseg[9]~I .oe_register_mode = "none";
defparam \o_sevenseg[9]~I .oe_sync_reset = "none";
defparam \o_sevenseg[9]~I .operation_mode = "output";
defparam \o_sevenseg[9]~I .output_async_reset = "none";
defparam \o_sevenseg[9]~I .output_power_up = "low";
defparam \o_sevenseg[9]~I .output_register_mode = "none";
defparam \o_sevenseg[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[10]~I (
	.datain(o_sevenseg_10_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam \o_sevenseg[10]~I .input_async_reset = "none";
defparam \o_sevenseg[10]~I .input_power_up = "low";
defparam \o_sevenseg[10]~I .input_register_mode = "none";
defparam \o_sevenseg[10]~I .input_sync_reset = "none";
defparam \o_sevenseg[10]~I .oe_async_reset = "none";
defparam \o_sevenseg[10]~I .oe_power_up = "low";
defparam \o_sevenseg[10]~I .oe_register_mode = "none";
defparam \o_sevenseg[10]~I .oe_sync_reset = "none";
defparam \o_sevenseg[10]~I .operation_mode = "output";
defparam \o_sevenseg[10]~I .output_async_reset = "none";
defparam \o_sevenseg[10]~I .output_power_up = "low";
defparam \o_sevenseg[10]~I .output_register_mode = "none";
defparam \o_sevenseg[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[11]~I (
	.datain(o_sevenseg_11_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam \o_sevenseg[11]~I .input_async_reset = "none";
defparam \o_sevenseg[11]~I .input_power_up = "low";
defparam \o_sevenseg[11]~I .input_register_mode = "none";
defparam \o_sevenseg[11]~I .input_sync_reset = "none";
defparam \o_sevenseg[11]~I .oe_async_reset = "none";
defparam \o_sevenseg[11]~I .oe_power_up = "low";
defparam \o_sevenseg[11]~I .oe_register_mode = "none";
defparam \o_sevenseg[11]~I .oe_sync_reset = "none";
defparam \o_sevenseg[11]~I .operation_mode = "output";
defparam \o_sevenseg[11]~I .output_async_reset = "none";
defparam \o_sevenseg[11]~I .output_power_up = "low";
defparam \o_sevenseg[11]~I .output_register_mode = "none";
defparam \o_sevenseg[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[12]~I (
	.datain(o_sevenseg_12_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam \o_sevenseg[12]~I .input_async_reset = "none";
defparam \o_sevenseg[12]~I .input_power_up = "low";
defparam \o_sevenseg[12]~I .input_register_mode = "none";
defparam \o_sevenseg[12]~I .input_sync_reset = "none";
defparam \o_sevenseg[12]~I .oe_async_reset = "none";
defparam \o_sevenseg[12]~I .oe_power_up = "low";
defparam \o_sevenseg[12]~I .oe_register_mode = "none";
defparam \o_sevenseg[12]~I .oe_sync_reset = "none";
defparam \o_sevenseg[12]~I .operation_mode = "output";
defparam \o_sevenseg[12]~I .output_async_reset = "none";
defparam \o_sevenseg[12]~I .output_power_up = "low";
defparam \o_sevenseg[12]~I .output_register_mode = "none";
defparam \o_sevenseg[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[13]~I (
	.datain(o_sevenseg_13_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam \o_sevenseg[13]~I .input_async_reset = "none";
defparam \o_sevenseg[13]~I .input_power_up = "low";
defparam \o_sevenseg[13]~I .input_register_mode = "none";
defparam \o_sevenseg[13]~I .input_sync_reset = "none";
defparam \o_sevenseg[13]~I .oe_async_reset = "none";
defparam \o_sevenseg[13]~I .oe_power_up = "low";
defparam \o_sevenseg[13]~I .oe_register_mode = "none";
defparam \o_sevenseg[13]~I .oe_sync_reset = "none";
defparam \o_sevenseg[13]~I .operation_mode = "output";
defparam \o_sevenseg[13]~I .output_async_reset = "none";
defparam \o_sevenseg[13]~I .output_power_up = "low";
defparam \o_sevenseg[13]~I .output_register_mode = "none";
defparam \o_sevenseg[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[14]~I (
	.datain(o_sevenseg_14_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam \o_sevenseg[14]~I .input_async_reset = "none";
defparam \o_sevenseg[14]~I .input_power_up = "low";
defparam \o_sevenseg[14]~I .input_register_mode = "none";
defparam \o_sevenseg[14]~I .input_sync_reset = "none";
defparam \o_sevenseg[14]~I .oe_async_reset = "none";
defparam \o_sevenseg[14]~I .oe_power_up = "low";
defparam \o_sevenseg[14]~I .oe_register_mode = "none";
defparam \o_sevenseg[14]~I .oe_sync_reset = "none";
defparam \o_sevenseg[14]~I .operation_mode = "output";
defparam \o_sevenseg[14]~I .output_async_reset = "none";
defparam \o_sevenseg[14]~I .output_power_up = "low";
defparam \o_sevenseg[14]~I .output_register_mode = "none";
defparam \o_sevenseg[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_sevenseg[15]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam \o_sevenseg[15]~I .input_async_reset = "none";
defparam \o_sevenseg[15]~I .input_power_up = "low";
defparam \o_sevenseg[15]~I .input_register_mode = "none";
defparam \o_sevenseg[15]~I .input_sync_reset = "none";
defparam \o_sevenseg[15]~I .oe_async_reset = "none";
defparam \o_sevenseg[15]~I .oe_power_up = "low";
defparam \o_sevenseg[15]~I .oe_register_mode = "none";
defparam \o_sevenseg[15]~I .oe_sync_reset = "none";
defparam \o_sevenseg[15]~I .operation_mode = "output";
defparam \o_sevenseg[15]~I .output_async_reset = "none";
defparam \o_sevenseg[15]~I .output_power_up = "low";
defparam \o_sevenseg[15]~I .output_register_mode = "none";
defparam \o_sevenseg[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_mode[0]~I (
	.datain(!\u_kirsch|nx25376z9 ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[0]));
// synopsys translate_off
defparam \o_mode[0]~I .input_async_reset = "none";
defparam \o_mode[0]~I .input_power_up = "low";
defparam \o_mode[0]~I .input_register_mode = "none";
defparam \o_mode[0]~I .input_sync_reset = "none";
defparam \o_mode[0]~I .oe_async_reset = "none";
defparam \o_mode[0]~I .oe_power_up = "low";
defparam \o_mode[0]~I .oe_register_mode = "none";
defparam \o_mode[0]~I .oe_sync_reset = "none";
defparam \o_mode[0]~I .operation_mode = "output";
defparam \o_mode[0]~I .output_async_reset = "none";
defparam \o_mode[0]~I .output_power_up = "low";
defparam \o_mode[0]~I .output_register_mode = "none";
defparam \o_mode[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_mode[1]~I (
	.datain(\u_kirsch|o_mode_1_ ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_mode[1]));
// synopsys translate_off
defparam \o_mode[1]~I .input_async_reset = "none";
defparam \o_mode[1]~I .input_power_up = "low";
defparam \o_mode[1]~I .input_register_mode = "none";
defparam \o_mode[1]~I .input_sync_reset = "none";
defparam \o_mode[1]~I .oe_async_reset = "none";
defparam \o_mode[1]~I .oe_power_up = "low";
defparam \o_mode[1]~I .oe_register_mode = "none";
defparam \o_mode[1]~I .oe_sync_reset = "none";
defparam \o_mode[1]~I .operation_mode = "output";
defparam \o_mode[1]~I .output_async_reset = "none";
defparam \o_mode[1]~I .output_power_up = "low";
defparam \o_mode[1]~I .output_register_mode = "none";
defparam \o_mode[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \o_nrst~I (
	.datain(!\nrst~combout ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_nrst));
// synopsys translate_off
defparam \o_nrst~I .input_async_reset = "none";
defparam \o_nrst~I .input_power_up = "low";
defparam \o_nrst~I .input_register_mode = "none";
defparam \o_nrst~I .input_sync_reset = "none";
defparam \o_nrst~I .oe_async_reset = "none";
defparam \o_nrst~I .oe_power_up = "low";
defparam \o_nrst~I .oe_register_mode = "none";
defparam \o_nrst~I .oe_sync_reset = "none";
defparam \o_nrst~I .operation_mode = "output";
defparam \o_nrst~I .output_async_reset = "none";
defparam \o_nrst~I .output_power_up = "low";
defparam \o_nrst~I .output_register_mode = "none";
defparam \o_nrst~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[1]));
// synopsys translate_off
defparam \debug_key[1]~I .input_async_reset = "none";
defparam \debug_key[1]~I .input_power_up = "low";
defparam \debug_key[1]~I .input_register_mode = "none";
defparam \debug_key[1]~I .input_sync_reset = "none";
defparam \debug_key[1]~I .oe_async_reset = "none";
defparam \debug_key[1]~I .oe_power_up = "low";
defparam \debug_key[1]~I .oe_register_mode = "none";
defparam \debug_key[1]~I .oe_sync_reset = "none";
defparam \debug_key[1]~I .operation_mode = "input";
defparam \debug_key[1]~I .output_async_reset = "none";
defparam \debug_key[1]~I .output_power_up = "low";
defparam \debug_key[1]~I .output_register_mode = "none";
defparam \debug_key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[2]));
// synopsys translate_off
defparam \debug_key[2]~I .input_async_reset = "none";
defparam \debug_key[2]~I .input_power_up = "low";
defparam \debug_key[2]~I .input_register_mode = "none";
defparam \debug_key[2]~I .input_sync_reset = "none";
defparam \debug_key[2]~I .oe_async_reset = "none";
defparam \debug_key[2]~I .oe_power_up = "low";
defparam \debug_key[2]~I .oe_register_mode = "none";
defparam \debug_key[2]~I .oe_sync_reset = "none";
defparam \debug_key[2]~I .operation_mode = "input";
defparam \debug_key[2]~I .output_async_reset = "none";
defparam \debug_key[2]~I .output_power_up = "low";
defparam \debug_key[2]~I .output_register_mode = "none";
defparam \debug_key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_key[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_key[3]));
// synopsys translate_off
defparam \debug_key[3]~I .input_async_reset = "none";
defparam \debug_key[3]~I .input_power_up = "low";
defparam \debug_key[3]~I .input_register_mode = "none";
defparam \debug_key[3]~I .input_sync_reset = "none";
defparam \debug_key[3]~I .oe_async_reset = "none";
defparam \debug_key[3]~I .oe_power_up = "low";
defparam \debug_key[3]~I .oe_register_mode = "none";
defparam \debug_key[3]~I .oe_sync_reset = "none";
defparam \debug_key[3]~I .operation_mode = "input";
defparam \debug_key[3]~I .output_async_reset = "none";
defparam \debug_key[3]~I .output_power_up = "low";
defparam \debug_key[3]~I .output_register_mode = "none";
defparam \debug_key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[0]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[0]));
// synopsys translate_off
defparam \debug_switch[0]~I .input_async_reset = "none";
defparam \debug_switch[0]~I .input_power_up = "low";
defparam \debug_switch[0]~I .input_register_mode = "none";
defparam \debug_switch[0]~I .input_sync_reset = "none";
defparam \debug_switch[0]~I .oe_async_reset = "none";
defparam \debug_switch[0]~I .oe_power_up = "low";
defparam \debug_switch[0]~I .oe_register_mode = "none";
defparam \debug_switch[0]~I .oe_sync_reset = "none";
defparam \debug_switch[0]~I .operation_mode = "input";
defparam \debug_switch[0]~I .output_async_reset = "none";
defparam \debug_switch[0]~I .output_power_up = "low";
defparam \debug_switch[0]~I .output_register_mode = "none";
defparam \debug_switch[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[1]));
// synopsys translate_off
defparam \debug_switch[1]~I .input_async_reset = "none";
defparam \debug_switch[1]~I .input_power_up = "low";
defparam \debug_switch[1]~I .input_register_mode = "none";
defparam \debug_switch[1]~I .input_sync_reset = "none";
defparam \debug_switch[1]~I .oe_async_reset = "none";
defparam \debug_switch[1]~I .oe_power_up = "low";
defparam \debug_switch[1]~I .oe_register_mode = "none";
defparam \debug_switch[1]~I .oe_sync_reset = "none";
defparam \debug_switch[1]~I .operation_mode = "input";
defparam \debug_switch[1]~I .output_async_reset = "none";
defparam \debug_switch[1]~I .output_power_up = "low";
defparam \debug_switch[1]~I .output_register_mode = "none";
defparam \debug_switch[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[2]));
// synopsys translate_off
defparam \debug_switch[2]~I .input_async_reset = "none";
defparam \debug_switch[2]~I .input_power_up = "low";
defparam \debug_switch[2]~I .input_register_mode = "none";
defparam \debug_switch[2]~I .input_sync_reset = "none";
defparam \debug_switch[2]~I .oe_async_reset = "none";
defparam \debug_switch[2]~I .oe_power_up = "low";
defparam \debug_switch[2]~I .oe_register_mode = "none";
defparam \debug_switch[2]~I .oe_sync_reset = "none";
defparam \debug_switch[2]~I .operation_mode = "input";
defparam \debug_switch[2]~I .output_async_reset = "none";
defparam \debug_switch[2]~I .output_power_up = "low";
defparam \debug_switch[2]~I .output_register_mode = "none";
defparam \debug_switch[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[3]));
// synopsys translate_off
defparam \debug_switch[3]~I .input_async_reset = "none";
defparam \debug_switch[3]~I .input_power_up = "low";
defparam \debug_switch[3]~I .input_register_mode = "none";
defparam \debug_switch[3]~I .input_sync_reset = "none";
defparam \debug_switch[3]~I .oe_async_reset = "none";
defparam \debug_switch[3]~I .oe_power_up = "low";
defparam \debug_switch[3]~I .oe_register_mode = "none";
defparam \debug_switch[3]~I .oe_sync_reset = "none";
defparam \debug_switch[3]~I .operation_mode = "input";
defparam \debug_switch[3]~I .output_async_reset = "none";
defparam \debug_switch[3]~I .output_power_up = "low";
defparam \debug_switch[3]~I .output_register_mode = "none";
defparam \debug_switch[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[4]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[4]));
// synopsys translate_off
defparam \debug_switch[4]~I .input_async_reset = "none";
defparam \debug_switch[4]~I .input_power_up = "low";
defparam \debug_switch[4]~I .input_register_mode = "none";
defparam \debug_switch[4]~I .input_sync_reset = "none";
defparam \debug_switch[4]~I .oe_async_reset = "none";
defparam \debug_switch[4]~I .oe_power_up = "low";
defparam \debug_switch[4]~I .oe_register_mode = "none";
defparam \debug_switch[4]~I .oe_sync_reset = "none";
defparam \debug_switch[4]~I .operation_mode = "input";
defparam \debug_switch[4]~I .output_async_reset = "none";
defparam \debug_switch[4]~I .output_power_up = "low";
defparam \debug_switch[4]~I .output_register_mode = "none";
defparam \debug_switch[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[5]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[5]));
// synopsys translate_off
defparam \debug_switch[5]~I .input_async_reset = "none";
defparam \debug_switch[5]~I .input_power_up = "low";
defparam \debug_switch[5]~I .input_register_mode = "none";
defparam \debug_switch[5]~I .input_sync_reset = "none";
defparam \debug_switch[5]~I .oe_async_reset = "none";
defparam \debug_switch[5]~I .oe_power_up = "low";
defparam \debug_switch[5]~I .oe_register_mode = "none";
defparam \debug_switch[5]~I .oe_sync_reset = "none";
defparam \debug_switch[5]~I .operation_mode = "input";
defparam \debug_switch[5]~I .output_async_reset = "none";
defparam \debug_switch[5]~I .output_power_up = "low";
defparam \debug_switch[5]~I .output_register_mode = "none";
defparam \debug_switch[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[6]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[6]));
// synopsys translate_off
defparam \debug_switch[6]~I .input_async_reset = "none";
defparam \debug_switch[6]~I .input_power_up = "low";
defparam \debug_switch[6]~I .input_register_mode = "none";
defparam \debug_switch[6]~I .input_sync_reset = "none";
defparam \debug_switch[6]~I .oe_async_reset = "none";
defparam \debug_switch[6]~I .oe_power_up = "low";
defparam \debug_switch[6]~I .oe_register_mode = "none";
defparam \debug_switch[6]~I .oe_sync_reset = "none";
defparam \debug_switch[6]~I .operation_mode = "input";
defparam \debug_switch[6]~I .output_async_reset = "none";
defparam \debug_switch[6]~I .output_power_up = "low";
defparam \debug_switch[6]~I .output_register_mode = "none";
defparam \debug_switch[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[7]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[7]));
// synopsys translate_off
defparam \debug_switch[7]~I .input_async_reset = "none";
defparam \debug_switch[7]~I .input_power_up = "low";
defparam \debug_switch[7]~I .input_register_mode = "none";
defparam \debug_switch[7]~I .input_sync_reset = "none";
defparam \debug_switch[7]~I .oe_async_reset = "none";
defparam \debug_switch[7]~I .oe_power_up = "low";
defparam \debug_switch[7]~I .oe_register_mode = "none";
defparam \debug_switch[7]~I .oe_sync_reset = "none";
defparam \debug_switch[7]~I .operation_mode = "input";
defparam \debug_switch[7]~I .output_async_reset = "none";
defparam \debug_switch[7]~I .output_power_up = "low";
defparam \debug_switch[7]~I .output_register_mode = "none";
defparam \debug_switch[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[8]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[8]));
// synopsys translate_off
defparam \debug_switch[8]~I .input_async_reset = "none";
defparam \debug_switch[8]~I .input_power_up = "low";
defparam \debug_switch[8]~I .input_register_mode = "none";
defparam \debug_switch[8]~I .input_sync_reset = "none";
defparam \debug_switch[8]~I .oe_async_reset = "none";
defparam \debug_switch[8]~I .oe_power_up = "low";
defparam \debug_switch[8]~I .oe_register_mode = "none";
defparam \debug_switch[8]~I .oe_sync_reset = "none";
defparam \debug_switch[8]~I .operation_mode = "input";
defparam \debug_switch[8]~I .output_async_reset = "none";
defparam \debug_switch[8]~I .output_power_up = "low";
defparam \debug_switch[8]~I .output_register_mode = "none";
defparam \debug_switch[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[9]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[9]));
// synopsys translate_off
defparam \debug_switch[9]~I .input_async_reset = "none";
defparam \debug_switch[9]~I .input_power_up = "low";
defparam \debug_switch[9]~I .input_register_mode = "none";
defparam \debug_switch[9]~I .input_sync_reset = "none";
defparam \debug_switch[9]~I .oe_async_reset = "none";
defparam \debug_switch[9]~I .oe_power_up = "low";
defparam \debug_switch[9]~I .oe_register_mode = "none";
defparam \debug_switch[9]~I .oe_sync_reset = "none";
defparam \debug_switch[9]~I .operation_mode = "input";
defparam \debug_switch[9]~I .output_async_reset = "none";
defparam \debug_switch[9]~I .output_power_up = "low";
defparam \debug_switch[9]~I .output_register_mode = "none";
defparam \debug_switch[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[10]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[10]));
// synopsys translate_off
defparam \debug_switch[10]~I .input_async_reset = "none";
defparam \debug_switch[10]~I .input_power_up = "low";
defparam \debug_switch[10]~I .input_register_mode = "none";
defparam \debug_switch[10]~I .input_sync_reset = "none";
defparam \debug_switch[10]~I .oe_async_reset = "none";
defparam \debug_switch[10]~I .oe_power_up = "low";
defparam \debug_switch[10]~I .oe_register_mode = "none";
defparam \debug_switch[10]~I .oe_sync_reset = "none";
defparam \debug_switch[10]~I .operation_mode = "input";
defparam \debug_switch[10]~I .output_async_reset = "none";
defparam \debug_switch[10]~I .output_power_up = "low";
defparam \debug_switch[10]~I .output_register_mode = "none";
defparam \debug_switch[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[11]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[11]));
// synopsys translate_off
defparam \debug_switch[11]~I .input_async_reset = "none";
defparam \debug_switch[11]~I .input_power_up = "low";
defparam \debug_switch[11]~I .input_register_mode = "none";
defparam \debug_switch[11]~I .input_sync_reset = "none";
defparam \debug_switch[11]~I .oe_async_reset = "none";
defparam \debug_switch[11]~I .oe_power_up = "low";
defparam \debug_switch[11]~I .oe_register_mode = "none";
defparam \debug_switch[11]~I .oe_sync_reset = "none";
defparam \debug_switch[11]~I .operation_mode = "input";
defparam \debug_switch[11]~I .output_async_reset = "none";
defparam \debug_switch[11]~I .output_power_up = "low";
defparam \debug_switch[11]~I .output_register_mode = "none";
defparam \debug_switch[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[12]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[12]));
// synopsys translate_off
defparam \debug_switch[12]~I .input_async_reset = "none";
defparam \debug_switch[12]~I .input_power_up = "low";
defparam \debug_switch[12]~I .input_register_mode = "none";
defparam \debug_switch[12]~I .input_sync_reset = "none";
defparam \debug_switch[12]~I .oe_async_reset = "none";
defparam \debug_switch[12]~I .oe_power_up = "low";
defparam \debug_switch[12]~I .oe_register_mode = "none";
defparam \debug_switch[12]~I .oe_sync_reset = "none";
defparam \debug_switch[12]~I .operation_mode = "input";
defparam \debug_switch[12]~I .output_async_reset = "none";
defparam \debug_switch[12]~I .output_power_up = "low";
defparam \debug_switch[12]~I .output_register_mode = "none";
defparam \debug_switch[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[13]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[13]));
// synopsys translate_off
defparam \debug_switch[13]~I .input_async_reset = "none";
defparam \debug_switch[13]~I .input_power_up = "low";
defparam \debug_switch[13]~I .input_register_mode = "none";
defparam \debug_switch[13]~I .input_sync_reset = "none";
defparam \debug_switch[13]~I .oe_async_reset = "none";
defparam \debug_switch[13]~I .oe_power_up = "low";
defparam \debug_switch[13]~I .oe_register_mode = "none";
defparam \debug_switch[13]~I .oe_sync_reset = "none";
defparam \debug_switch[13]~I .operation_mode = "input";
defparam \debug_switch[13]~I .output_async_reset = "none";
defparam \debug_switch[13]~I .output_power_up = "low";
defparam \debug_switch[13]~I .output_register_mode = "none";
defparam \debug_switch[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[14]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[14]));
// synopsys translate_off
defparam \debug_switch[14]~I .input_async_reset = "none";
defparam \debug_switch[14]~I .input_power_up = "low";
defparam \debug_switch[14]~I .input_register_mode = "none";
defparam \debug_switch[14]~I .input_sync_reset = "none";
defparam \debug_switch[14]~I .oe_async_reset = "none";
defparam \debug_switch[14]~I .oe_power_up = "low";
defparam \debug_switch[14]~I .oe_register_mode = "none";
defparam \debug_switch[14]~I .oe_sync_reset = "none";
defparam \debug_switch[14]~I .operation_mode = "input";
defparam \debug_switch[14]~I .output_async_reset = "none";
defparam \debug_switch[14]~I .output_power_up = "low";
defparam \debug_switch[14]~I .output_register_mode = "none";
defparam \debug_switch[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[15]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[15]));
// synopsys translate_off
defparam \debug_switch[15]~I .input_async_reset = "none";
defparam \debug_switch[15]~I .input_power_up = "low";
defparam \debug_switch[15]~I .input_register_mode = "none";
defparam \debug_switch[15]~I .input_sync_reset = "none";
defparam \debug_switch[15]~I .oe_async_reset = "none";
defparam \debug_switch[15]~I .oe_power_up = "low";
defparam \debug_switch[15]~I .oe_register_mode = "none";
defparam \debug_switch[15]~I .oe_sync_reset = "none";
defparam \debug_switch[15]~I .operation_mode = "input";
defparam \debug_switch[15]~I .output_async_reset = "none";
defparam \debug_switch[15]~I .output_power_up = "low";
defparam \debug_switch[15]~I .output_register_mode = "none";
defparam \debug_switch[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[16]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[16]));
// synopsys translate_off
defparam \debug_switch[16]~I .input_async_reset = "none";
defparam \debug_switch[16]~I .input_power_up = "low";
defparam \debug_switch[16]~I .input_register_mode = "none";
defparam \debug_switch[16]~I .input_sync_reset = "none";
defparam \debug_switch[16]~I .oe_async_reset = "none";
defparam \debug_switch[16]~I .oe_power_up = "low";
defparam \debug_switch[16]~I .oe_register_mode = "none";
defparam \debug_switch[16]~I .oe_sync_reset = "none";
defparam \debug_switch[16]~I .operation_mode = "input";
defparam \debug_switch[16]~I .output_async_reset = "none";
defparam \debug_switch[16]~I .output_power_up = "low";
defparam \debug_switch[16]~I .output_register_mode = "none";
defparam \debug_switch[16]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \debug_switch[17]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_switch[17]));
// synopsys translate_off
defparam \debug_switch[17]~I .input_async_reset = "none";
defparam \debug_switch[17]~I .input_power_up = "low";
defparam \debug_switch[17]~I .input_register_mode = "none";
defparam \debug_switch[17]~I .input_sync_reset = "none";
defparam \debug_switch[17]~I .oe_async_reset = "none";
defparam \debug_switch[17]~I .oe_power_up = "low";
defparam \debug_switch[17]~I .oe_register_mode = "none";
defparam \debug_switch[17]~I .oe_sync_reset = "none";
defparam \debug_switch[17]~I .operation_mode = "input";
defparam \debug_switch[17]~I .output_async_reset = "none";
defparam \debug_switch[17]~I .output_power_up = "low";
defparam \debug_switch[17]~I .output_register_mode = "none";
defparam \debug_switch[17]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[0]));
// synopsys translate_off
defparam \debug_led_red[0]~I .input_async_reset = "none";
defparam \debug_led_red[0]~I .input_power_up = "low";
defparam \debug_led_red[0]~I .input_register_mode = "none";
defparam \debug_led_red[0]~I .input_sync_reset = "none";
defparam \debug_led_red[0]~I .oe_async_reset = "none";
defparam \debug_led_red[0]~I .oe_power_up = "low";
defparam \debug_led_red[0]~I .oe_register_mode = "none";
defparam \debug_led_red[0]~I .oe_sync_reset = "none";
defparam \debug_led_red[0]~I .operation_mode = "output";
defparam \debug_led_red[0]~I .output_async_reset = "none";
defparam \debug_led_red[0]~I .output_power_up = "low";
defparam \debug_led_red[0]~I .output_register_mode = "none";
defparam \debug_led_red[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[1]));
// synopsys translate_off
defparam \debug_led_red[1]~I .input_async_reset = "none";
defparam \debug_led_red[1]~I .input_power_up = "low";
defparam \debug_led_red[1]~I .input_register_mode = "none";
defparam \debug_led_red[1]~I .input_sync_reset = "none";
defparam \debug_led_red[1]~I .oe_async_reset = "none";
defparam \debug_led_red[1]~I .oe_power_up = "low";
defparam \debug_led_red[1]~I .oe_register_mode = "none";
defparam \debug_led_red[1]~I .oe_sync_reset = "none";
defparam \debug_led_red[1]~I .operation_mode = "output";
defparam \debug_led_red[1]~I .output_async_reset = "none";
defparam \debug_led_red[1]~I .output_power_up = "low";
defparam \debug_led_red[1]~I .output_register_mode = "none";
defparam \debug_led_red[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[2]));
// synopsys translate_off
defparam \debug_led_red[2]~I .input_async_reset = "none";
defparam \debug_led_red[2]~I .input_power_up = "low";
defparam \debug_led_red[2]~I .input_register_mode = "none";
defparam \debug_led_red[2]~I .input_sync_reset = "none";
defparam \debug_led_red[2]~I .oe_async_reset = "none";
defparam \debug_led_red[2]~I .oe_power_up = "low";
defparam \debug_led_red[2]~I .oe_register_mode = "none";
defparam \debug_led_red[2]~I .oe_sync_reset = "none";
defparam \debug_led_red[2]~I .operation_mode = "output";
defparam \debug_led_red[2]~I .output_async_reset = "none";
defparam \debug_led_red[2]~I .output_power_up = "low";
defparam \debug_led_red[2]~I .output_register_mode = "none";
defparam \debug_led_red[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[3]));
// synopsys translate_off
defparam \debug_led_red[3]~I .input_async_reset = "none";
defparam \debug_led_red[3]~I .input_power_up = "low";
defparam \debug_led_red[3]~I .input_register_mode = "none";
defparam \debug_led_red[3]~I .input_sync_reset = "none";
defparam \debug_led_red[3]~I .oe_async_reset = "none";
defparam \debug_led_red[3]~I .oe_power_up = "low";
defparam \debug_led_red[3]~I .oe_register_mode = "none";
defparam \debug_led_red[3]~I .oe_sync_reset = "none";
defparam \debug_led_red[3]~I .operation_mode = "output";
defparam \debug_led_red[3]~I .output_async_reset = "none";
defparam \debug_led_red[3]~I .output_power_up = "low";
defparam \debug_led_red[3]~I .output_register_mode = "none";
defparam \debug_led_red[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[4]));
// synopsys translate_off
defparam \debug_led_red[4]~I .input_async_reset = "none";
defparam \debug_led_red[4]~I .input_power_up = "low";
defparam \debug_led_red[4]~I .input_register_mode = "none";
defparam \debug_led_red[4]~I .input_sync_reset = "none";
defparam \debug_led_red[4]~I .oe_async_reset = "none";
defparam \debug_led_red[4]~I .oe_power_up = "low";
defparam \debug_led_red[4]~I .oe_register_mode = "none";
defparam \debug_led_red[4]~I .oe_sync_reset = "none";
defparam \debug_led_red[4]~I .operation_mode = "output";
defparam \debug_led_red[4]~I .output_async_reset = "none";
defparam \debug_led_red[4]~I .output_power_up = "low";
defparam \debug_led_red[4]~I .output_register_mode = "none";
defparam \debug_led_red[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[5]));
// synopsys translate_off
defparam \debug_led_red[5]~I .input_async_reset = "none";
defparam \debug_led_red[5]~I .input_power_up = "low";
defparam \debug_led_red[5]~I .input_register_mode = "none";
defparam \debug_led_red[5]~I .input_sync_reset = "none";
defparam \debug_led_red[5]~I .oe_async_reset = "none";
defparam \debug_led_red[5]~I .oe_power_up = "low";
defparam \debug_led_red[5]~I .oe_register_mode = "none";
defparam \debug_led_red[5]~I .oe_sync_reset = "none";
defparam \debug_led_red[5]~I .operation_mode = "output";
defparam \debug_led_red[5]~I .output_async_reset = "none";
defparam \debug_led_red[5]~I .output_power_up = "low";
defparam \debug_led_red[5]~I .output_register_mode = "none";
defparam \debug_led_red[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[6]));
// synopsys translate_off
defparam \debug_led_red[6]~I .input_async_reset = "none";
defparam \debug_led_red[6]~I .input_power_up = "low";
defparam \debug_led_red[6]~I .input_register_mode = "none";
defparam \debug_led_red[6]~I .input_sync_reset = "none";
defparam \debug_led_red[6]~I .oe_async_reset = "none";
defparam \debug_led_red[6]~I .oe_power_up = "low";
defparam \debug_led_red[6]~I .oe_register_mode = "none";
defparam \debug_led_red[6]~I .oe_sync_reset = "none";
defparam \debug_led_red[6]~I .operation_mode = "output";
defparam \debug_led_red[6]~I .output_async_reset = "none";
defparam \debug_led_red[6]~I .output_power_up = "low";
defparam \debug_led_red[6]~I .output_register_mode = "none";
defparam \debug_led_red[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[7]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[7]));
// synopsys translate_off
defparam \debug_led_red[7]~I .input_async_reset = "none";
defparam \debug_led_red[7]~I .input_power_up = "low";
defparam \debug_led_red[7]~I .input_register_mode = "none";
defparam \debug_led_red[7]~I .input_sync_reset = "none";
defparam \debug_led_red[7]~I .oe_async_reset = "none";
defparam \debug_led_red[7]~I .oe_power_up = "low";
defparam \debug_led_red[7]~I .oe_register_mode = "none";
defparam \debug_led_red[7]~I .oe_sync_reset = "none";
defparam \debug_led_red[7]~I .operation_mode = "output";
defparam \debug_led_red[7]~I .output_async_reset = "none";
defparam \debug_led_red[7]~I .output_power_up = "low";
defparam \debug_led_red[7]~I .output_register_mode = "none";
defparam \debug_led_red[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[8]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[8]));
// synopsys translate_off
defparam \debug_led_red[8]~I .input_async_reset = "none";
defparam \debug_led_red[8]~I .input_power_up = "low";
defparam \debug_led_red[8]~I .input_register_mode = "none";
defparam \debug_led_red[8]~I .input_sync_reset = "none";
defparam \debug_led_red[8]~I .oe_async_reset = "none";
defparam \debug_led_red[8]~I .oe_power_up = "low";
defparam \debug_led_red[8]~I .oe_register_mode = "none";
defparam \debug_led_red[8]~I .oe_sync_reset = "none";
defparam \debug_led_red[8]~I .operation_mode = "output";
defparam \debug_led_red[8]~I .output_async_reset = "none";
defparam \debug_led_red[8]~I .output_power_up = "low";
defparam \debug_led_red[8]~I .output_register_mode = "none";
defparam \debug_led_red[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[9]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[9]));
// synopsys translate_off
defparam \debug_led_red[9]~I .input_async_reset = "none";
defparam \debug_led_red[9]~I .input_power_up = "low";
defparam \debug_led_red[9]~I .input_register_mode = "none";
defparam \debug_led_red[9]~I .input_sync_reset = "none";
defparam \debug_led_red[9]~I .oe_async_reset = "none";
defparam \debug_led_red[9]~I .oe_power_up = "low";
defparam \debug_led_red[9]~I .oe_register_mode = "none";
defparam \debug_led_red[9]~I .oe_sync_reset = "none";
defparam \debug_led_red[9]~I .operation_mode = "output";
defparam \debug_led_red[9]~I .output_async_reset = "none";
defparam \debug_led_red[9]~I .output_power_up = "low";
defparam \debug_led_red[9]~I .output_register_mode = "none";
defparam \debug_led_red[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[10]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[10]));
// synopsys translate_off
defparam \debug_led_red[10]~I .input_async_reset = "none";
defparam \debug_led_red[10]~I .input_power_up = "low";
defparam \debug_led_red[10]~I .input_register_mode = "none";
defparam \debug_led_red[10]~I .input_sync_reset = "none";
defparam \debug_led_red[10]~I .oe_async_reset = "none";
defparam \debug_led_red[10]~I .oe_power_up = "low";
defparam \debug_led_red[10]~I .oe_register_mode = "none";
defparam \debug_led_red[10]~I .oe_sync_reset = "none";
defparam \debug_led_red[10]~I .operation_mode = "output";
defparam \debug_led_red[10]~I .output_async_reset = "none";
defparam \debug_led_red[10]~I .output_power_up = "low";
defparam \debug_led_red[10]~I .output_register_mode = "none";
defparam \debug_led_red[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[11]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[11]));
// synopsys translate_off
defparam \debug_led_red[11]~I .input_async_reset = "none";
defparam \debug_led_red[11]~I .input_power_up = "low";
defparam \debug_led_red[11]~I .input_register_mode = "none";
defparam \debug_led_red[11]~I .input_sync_reset = "none";
defparam \debug_led_red[11]~I .oe_async_reset = "none";
defparam \debug_led_red[11]~I .oe_power_up = "low";
defparam \debug_led_red[11]~I .oe_register_mode = "none";
defparam \debug_led_red[11]~I .oe_sync_reset = "none";
defparam \debug_led_red[11]~I .operation_mode = "output";
defparam \debug_led_red[11]~I .output_async_reset = "none";
defparam \debug_led_red[11]~I .output_power_up = "low";
defparam \debug_led_red[11]~I .output_register_mode = "none";
defparam \debug_led_red[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[12]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[12]));
// synopsys translate_off
defparam \debug_led_red[12]~I .input_async_reset = "none";
defparam \debug_led_red[12]~I .input_power_up = "low";
defparam \debug_led_red[12]~I .input_register_mode = "none";
defparam \debug_led_red[12]~I .input_sync_reset = "none";
defparam \debug_led_red[12]~I .oe_async_reset = "none";
defparam \debug_led_red[12]~I .oe_power_up = "low";
defparam \debug_led_red[12]~I .oe_register_mode = "none";
defparam \debug_led_red[12]~I .oe_sync_reset = "none";
defparam \debug_led_red[12]~I .operation_mode = "output";
defparam \debug_led_red[12]~I .output_async_reset = "none";
defparam \debug_led_red[12]~I .output_power_up = "low";
defparam \debug_led_red[12]~I .output_register_mode = "none";
defparam \debug_led_red[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[13]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[13]));
// synopsys translate_off
defparam \debug_led_red[13]~I .input_async_reset = "none";
defparam \debug_led_red[13]~I .input_power_up = "low";
defparam \debug_led_red[13]~I .input_register_mode = "none";
defparam \debug_led_red[13]~I .input_sync_reset = "none";
defparam \debug_led_red[13]~I .oe_async_reset = "none";
defparam \debug_led_red[13]~I .oe_power_up = "low";
defparam \debug_led_red[13]~I .oe_register_mode = "none";
defparam \debug_led_red[13]~I .oe_sync_reset = "none";
defparam \debug_led_red[13]~I .operation_mode = "output";
defparam \debug_led_red[13]~I .output_async_reset = "none";
defparam \debug_led_red[13]~I .output_power_up = "low";
defparam \debug_led_red[13]~I .output_register_mode = "none";
defparam \debug_led_red[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[14]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[14]));
// synopsys translate_off
defparam \debug_led_red[14]~I .input_async_reset = "none";
defparam \debug_led_red[14]~I .input_power_up = "low";
defparam \debug_led_red[14]~I .input_register_mode = "none";
defparam \debug_led_red[14]~I .input_sync_reset = "none";
defparam \debug_led_red[14]~I .oe_async_reset = "none";
defparam \debug_led_red[14]~I .oe_power_up = "low";
defparam \debug_led_red[14]~I .oe_register_mode = "none";
defparam \debug_led_red[14]~I .oe_sync_reset = "none";
defparam \debug_led_red[14]~I .operation_mode = "output";
defparam \debug_led_red[14]~I .output_async_reset = "none";
defparam \debug_led_red[14]~I .output_power_up = "low";
defparam \debug_led_red[14]~I .output_register_mode = "none";
defparam \debug_led_red[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[15]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[15]));
// synopsys translate_off
defparam \debug_led_red[15]~I .input_async_reset = "none";
defparam \debug_led_red[15]~I .input_power_up = "low";
defparam \debug_led_red[15]~I .input_register_mode = "none";
defparam \debug_led_red[15]~I .input_sync_reset = "none";
defparam \debug_led_red[15]~I .oe_async_reset = "none";
defparam \debug_led_red[15]~I .oe_power_up = "low";
defparam \debug_led_red[15]~I .oe_register_mode = "none";
defparam \debug_led_red[15]~I .oe_sync_reset = "none";
defparam \debug_led_red[15]~I .operation_mode = "output";
defparam \debug_led_red[15]~I .output_async_reset = "none";
defparam \debug_led_red[15]~I .output_power_up = "low";
defparam \debug_led_red[15]~I .output_register_mode = "none";
defparam \debug_led_red[15]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_red[16]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_red[16]));
// synopsys translate_off
defparam \debug_led_red[16]~I .input_async_reset = "none";
defparam \debug_led_red[16]~I .input_power_up = "low";
defparam \debug_led_red[16]~I .input_register_mode = "none";
defparam \debug_led_red[16]~I .input_sync_reset = "none";
defparam \debug_led_red[16]~I .oe_async_reset = "none";
defparam \debug_led_red[16]~I .oe_power_up = "low";
defparam \debug_led_red[16]~I .oe_register_mode = "none";
defparam \debug_led_red[16]~I .oe_sync_reset = "none";
defparam \debug_led_red[16]~I .operation_mode = "output";
defparam \debug_led_red[16]~I .output_async_reset = "none";
defparam \debug_led_red[16]~I .output_power_up = "low";
defparam \debug_led_red[16]~I .output_register_mode = "none";
defparam \debug_led_red[16]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[0]));
// synopsys translate_off
defparam \debug_led_grn[0]~I .input_async_reset = "none";
defparam \debug_led_grn[0]~I .input_power_up = "low";
defparam \debug_led_grn[0]~I .input_register_mode = "none";
defparam \debug_led_grn[0]~I .input_sync_reset = "none";
defparam \debug_led_grn[0]~I .oe_async_reset = "none";
defparam \debug_led_grn[0]~I .oe_power_up = "low";
defparam \debug_led_grn[0]~I .oe_register_mode = "none";
defparam \debug_led_grn[0]~I .oe_sync_reset = "none";
defparam \debug_led_grn[0]~I .operation_mode = "output";
defparam \debug_led_grn[0]~I .output_async_reset = "none";
defparam \debug_led_grn[0]~I .output_power_up = "low";
defparam \debug_led_grn[0]~I .output_register_mode = "none";
defparam \debug_led_grn[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[1]));
// synopsys translate_off
defparam \debug_led_grn[1]~I .input_async_reset = "none";
defparam \debug_led_grn[1]~I .input_power_up = "low";
defparam \debug_led_grn[1]~I .input_register_mode = "none";
defparam \debug_led_grn[1]~I .input_sync_reset = "none";
defparam \debug_led_grn[1]~I .oe_async_reset = "none";
defparam \debug_led_grn[1]~I .oe_power_up = "low";
defparam \debug_led_grn[1]~I .oe_register_mode = "none";
defparam \debug_led_grn[1]~I .oe_sync_reset = "none";
defparam \debug_led_grn[1]~I .operation_mode = "output";
defparam \debug_led_grn[1]~I .output_async_reset = "none";
defparam \debug_led_grn[1]~I .output_power_up = "low";
defparam \debug_led_grn[1]~I .output_register_mode = "none";
defparam \debug_led_grn[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[2]));
// synopsys translate_off
defparam \debug_led_grn[2]~I .input_async_reset = "none";
defparam \debug_led_grn[2]~I .input_power_up = "low";
defparam \debug_led_grn[2]~I .input_register_mode = "none";
defparam \debug_led_grn[2]~I .input_sync_reset = "none";
defparam \debug_led_grn[2]~I .oe_async_reset = "none";
defparam \debug_led_grn[2]~I .oe_power_up = "low";
defparam \debug_led_grn[2]~I .oe_register_mode = "none";
defparam \debug_led_grn[2]~I .oe_sync_reset = "none";
defparam \debug_led_grn[2]~I .operation_mode = "output";
defparam \debug_led_grn[2]~I .output_async_reset = "none";
defparam \debug_led_grn[2]~I .output_power_up = "low";
defparam \debug_led_grn[2]~I .output_register_mode = "none";
defparam \debug_led_grn[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[3]));
// synopsys translate_off
defparam \debug_led_grn[3]~I .input_async_reset = "none";
defparam \debug_led_grn[3]~I .input_power_up = "low";
defparam \debug_led_grn[3]~I .input_register_mode = "none";
defparam \debug_led_grn[3]~I .input_sync_reset = "none";
defparam \debug_led_grn[3]~I .oe_async_reset = "none";
defparam \debug_led_grn[3]~I .oe_power_up = "low";
defparam \debug_led_grn[3]~I .oe_register_mode = "none";
defparam \debug_led_grn[3]~I .oe_sync_reset = "none";
defparam \debug_led_grn[3]~I .operation_mode = "output";
defparam \debug_led_grn[3]~I .output_async_reset = "none";
defparam \debug_led_grn[3]~I .output_power_up = "low";
defparam \debug_led_grn[3]~I .output_register_mode = "none";
defparam \debug_led_grn[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[4]));
// synopsys translate_off
defparam \debug_led_grn[4]~I .input_async_reset = "none";
defparam \debug_led_grn[4]~I .input_power_up = "low";
defparam \debug_led_grn[4]~I .input_register_mode = "none";
defparam \debug_led_grn[4]~I .input_sync_reset = "none";
defparam \debug_led_grn[4]~I .oe_async_reset = "none";
defparam \debug_led_grn[4]~I .oe_power_up = "low";
defparam \debug_led_grn[4]~I .oe_register_mode = "none";
defparam \debug_led_grn[4]~I .oe_sync_reset = "none";
defparam \debug_led_grn[4]~I .operation_mode = "output";
defparam \debug_led_grn[4]~I .output_async_reset = "none";
defparam \debug_led_grn[4]~I .output_power_up = "low";
defparam \debug_led_grn[4]~I .output_register_mode = "none";
defparam \debug_led_grn[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_led_grn[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_led_grn[5]));
// synopsys translate_off
defparam \debug_led_grn[5]~I .input_async_reset = "none";
defparam \debug_led_grn[5]~I .input_power_up = "low";
defparam \debug_led_grn[5]~I .input_register_mode = "none";
defparam \debug_led_grn[5]~I .input_sync_reset = "none";
defparam \debug_led_grn[5]~I .oe_async_reset = "none";
defparam \debug_led_grn[5]~I .oe_power_up = "low";
defparam \debug_led_grn[5]~I .oe_register_mode = "none";
defparam \debug_led_grn[5]~I .oe_sync_reset = "none";
defparam \debug_led_grn[5]~I .operation_mode = "output";
defparam \debug_led_grn[5]~I .output_async_reset = "none";
defparam \debug_led_grn[5]~I .output_power_up = "low";
defparam \debug_led_grn[5]~I .output_register_mode = "none";
defparam \debug_led_grn[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[0]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[0]));
// synopsys translate_off
defparam \debug_sevenseg_0[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[0]~I .input_power_up = "low";
defparam \debug_sevenseg_0[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[0]~I .operation_mode = "output";
defparam \debug_sevenseg_0[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[0]~I .output_power_up = "low";
defparam \debug_sevenseg_0[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[1]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[1]));
// synopsys translate_off
defparam \debug_sevenseg_0[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[1]~I .input_power_up = "low";
defparam \debug_sevenseg_0[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[1]~I .operation_mode = "output";
defparam \debug_sevenseg_0[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[1]~I .output_power_up = "low";
defparam \debug_sevenseg_0[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[2]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[2]));
// synopsys translate_off
defparam \debug_sevenseg_0[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[2]~I .input_power_up = "low";
defparam \debug_sevenseg_0[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[2]~I .operation_mode = "output";
defparam \debug_sevenseg_0[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[2]~I .output_power_up = "low";
defparam \debug_sevenseg_0[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[3]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[3]));
// synopsys translate_off
defparam \debug_sevenseg_0[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[3]~I .input_power_up = "low";
defparam \debug_sevenseg_0[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[3]~I .operation_mode = "output";
defparam \debug_sevenseg_0[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[3]~I .output_power_up = "low";
defparam \debug_sevenseg_0[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[4]));
// synopsys translate_off
defparam \debug_sevenseg_0[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[4]~I .input_power_up = "low";
defparam \debug_sevenseg_0[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[4]~I .operation_mode = "output";
defparam \debug_sevenseg_0[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[4]~I .output_power_up = "low";
defparam \debug_sevenseg_0[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[5]));
// synopsys translate_off
defparam \debug_sevenseg_0[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[5]~I .input_power_up = "low";
defparam \debug_sevenseg_0[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[5]~I .operation_mode = "output";
defparam \debug_sevenseg_0[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[5]~I .output_power_up = "low";
defparam \debug_sevenseg_0[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[6]));
// synopsys translate_off
defparam \debug_sevenseg_0[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[6]~I .input_power_up = "low";
defparam \debug_sevenseg_0[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[6]~I .operation_mode = "output";
defparam \debug_sevenseg_0[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[6]~I .output_power_up = "low";
defparam \debug_sevenseg_0[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_0[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_0[7]));
// synopsys translate_off
defparam \debug_sevenseg_0[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_0[7]~I .input_power_up = "low";
defparam \debug_sevenseg_0[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_0[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_0[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_0[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_0[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_0[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_0[7]~I .operation_mode = "output";
defparam \debug_sevenseg_0[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_0[7]~I .output_power_up = "low";
defparam \debug_sevenseg_0[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_0[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[0]));
// synopsys translate_off
defparam \debug_sevenseg_1[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[0]~I .input_power_up = "low";
defparam \debug_sevenseg_1[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[0]~I .operation_mode = "output";
defparam \debug_sevenseg_1[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[0]~I .output_power_up = "low";
defparam \debug_sevenseg_1[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[1]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[1]));
// synopsys translate_off
defparam \debug_sevenseg_1[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[1]~I .input_power_up = "low";
defparam \debug_sevenseg_1[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[1]~I .operation_mode = "output";
defparam \debug_sevenseg_1[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[1]~I .output_power_up = "low";
defparam \debug_sevenseg_1[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[2]));
// synopsys translate_off
defparam \debug_sevenseg_1[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[2]~I .input_power_up = "low";
defparam \debug_sevenseg_1[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[2]~I .operation_mode = "output";
defparam \debug_sevenseg_1[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[2]~I .output_power_up = "low";
defparam \debug_sevenseg_1[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[3]));
// synopsys translate_off
defparam \debug_sevenseg_1[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[3]~I .input_power_up = "low";
defparam \debug_sevenseg_1[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[3]~I .operation_mode = "output";
defparam \debug_sevenseg_1[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[3]~I .output_power_up = "low";
defparam \debug_sevenseg_1[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[4]));
// synopsys translate_off
defparam \debug_sevenseg_1[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[4]~I .input_power_up = "low";
defparam \debug_sevenseg_1[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[4]~I .operation_mode = "output";
defparam \debug_sevenseg_1[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[4]~I .output_power_up = "low";
defparam \debug_sevenseg_1[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[5]));
// synopsys translate_off
defparam \debug_sevenseg_1[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[5]~I .input_power_up = "low";
defparam \debug_sevenseg_1[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[5]~I .operation_mode = "output";
defparam \debug_sevenseg_1[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[5]~I .output_power_up = "low";
defparam \debug_sevenseg_1[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[6]));
// synopsys translate_off
defparam \debug_sevenseg_1[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[6]~I .input_power_up = "low";
defparam \debug_sevenseg_1[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[6]~I .operation_mode = "output";
defparam \debug_sevenseg_1[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[6]~I .output_power_up = "low";
defparam \debug_sevenseg_1[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_1[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_1[7]));
// synopsys translate_off
defparam \debug_sevenseg_1[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_1[7]~I .input_power_up = "low";
defparam \debug_sevenseg_1[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_1[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_1[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_1[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_1[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_1[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_1[7]~I .operation_mode = "output";
defparam \debug_sevenseg_1[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_1[7]~I .output_power_up = "low";
defparam \debug_sevenseg_1[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_1[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[0]));
// synopsys translate_off
defparam \debug_sevenseg_2[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[0]~I .input_power_up = "low";
defparam \debug_sevenseg_2[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[0]~I .operation_mode = "output";
defparam \debug_sevenseg_2[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[0]~I .output_power_up = "low";
defparam \debug_sevenseg_2[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[1]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[1]));
// synopsys translate_off
defparam \debug_sevenseg_2[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[1]~I .input_power_up = "low";
defparam \debug_sevenseg_2[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[1]~I .operation_mode = "output";
defparam \debug_sevenseg_2[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[1]~I .output_power_up = "low";
defparam \debug_sevenseg_2[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[2]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[2]));
// synopsys translate_off
defparam \debug_sevenseg_2[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[2]~I .input_power_up = "low";
defparam \debug_sevenseg_2[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[2]~I .operation_mode = "output";
defparam \debug_sevenseg_2[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[2]~I .output_power_up = "low";
defparam \debug_sevenseg_2[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[3]));
// synopsys translate_off
defparam \debug_sevenseg_2[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[3]~I .input_power_up = "low";
defparam \debug_sevenseg_2[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[3]~I .operation_mode = "output";
defparam \debug_sevenseg_2[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[3]~I .output_power_up = "low";
defparam \debug_sevenseg_2[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[4]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[4]));
// synopsys translate_off
defparam \debug_sevenseg_2[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[4]~I .input_power_up = "low";
defparam \debug_sevenseg_2[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[4]~I .operation_mode = "output";
defparam \debug_sevenseg_2[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[4]~I .output_power_up = "low";
defparam \debug_sevenseg_2[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[5]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[5]));
// synopsys translate_off
defparam \debug_sevenseg_2[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[5]~I .input_power_up = "low";
defparam \debug_sevenseg_2[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[5]~I .operation_mode = "output";
defparam \debug_sevenseg_2[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[5]~I .output_power_up = "low";
defparam \debug_sevenseg_2[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[6]));
// synopsys translate_off
defparam \debug_sevenseg_2[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[6]~I .input_power_up = "low";
defparam \debug_sevenseg_2[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[6]~I .operation_mode = "output";
defparam \debug_sevenseg_2[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[6]~I .output_power_up = "low";
defparam \debug_sevenseg_2[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_2[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_2[7]));
// synopsys translate_off
defparam \debug_sevenseg_2[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_2[7]~I .input_power_up = "low";
defparam \debug_sevenseg_2[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_2[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_2[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_2[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_2[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_2[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_2[7]~I .operation_mode = "output";
defparam \debug_sevenseg_2[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_2[7]~I .output_power_up = "low";
defparam \debug_sevenseg_2[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_2[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[0]));
// synopsys translate_off
defparam \debug_sevenseg_3[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[0]~I .input_power_up = "low";
defparam \debug_sevenseg_3[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[0]~I .operation_mode = "output";
defparam \debug_sevenseg_3[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[0]~I .output_power_up = "low";
defparam \debug_sevenseg_3[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[1]));
// synopsys translate_off
defparam \debug_sevenseg_3[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[1]~I .input_power_up = "low";
defparam \debug_sevenseg_3[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[1]~I .operation_mode = "output";
defparam \debug_sevenseg_3[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[1]~I .output_power_up = "low";
defparam \debug_sevenseg_3[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[2]));
// synopsys translate_off
defparam \debug_sevenseg_3[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[2]~I .input_power_up = "low";
defparam \debug_sevenseg_3[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[2]~I .operation_mode = "output";
defparam \debug_sevenseg_3[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[2]~I .output_power_up = "low";
defparam \debug_sevenseg_3[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[3]));
// synopsys translate_off
defparam \debug_sevenseg_3[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[3]~I .input_power_up = "low";
defparam \debug_sevenseg_3[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[3]~I .operation_mode = "output";
defparam \debug_sevenseg_3[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[3]~I .output_power_up = "low";
defparam \debug_sevenseg_3[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[4]));
// synopsys translate_off
defparam \debug_sevenseg_3[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[4]~I .input_power_up = "low";
defparam \debug_sevenseg_3[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[4]~I .operation_mode = "output";
defparam \debug_sevenseg_3[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[4]~I .output_power_up = "low";
defparam \debug_sevenseg_3[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[5]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[5]));
// synopsys translate_off
defparam \debug_sevenseg_3[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[5]~I .input_power_up = "low";
defparam \debug_sevenseg_3[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[5]~I .operation_mode = "output";
defparam \debug_sevenseg_3[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[5]~I .output_power_up = "low";
defparam \debug_sevenseg_3[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[6]));
// synopsys translate_off
defparam \debug_sevenseg_3[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[6]~I .input_power_up = "low";
defparam \debug_sevenseg_3[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[6]~I .operation_mode = "output";
defparam \debug_sevenseg_3[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[6]~I .output_power_up = "low";
defparam \debug_sevenseg_3[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_3[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_3[7]));
// synopsys translate_off
defparam \debug_sevenseg_3[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_3[7]~I .input_power_up = "low";
defparam \debug_sevenseg_3[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_3[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_3[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_3[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_3[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_3[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_3[7]~I .operation_mode = "output";
defparam \debug_sevenseg_3[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_3[7]~I .output_power_up = "low";
defparam \debug_sevenseg_3[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_3[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[0]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[0]));
// synopsys translate_off
defparam \debug_sevenseg_4[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[0]~I .input_power_up = "low";
defparam \debug_sevenseg_4[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[0]~I .operation_mode = "output";
defparam \debug_sevenseg_4[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[0]~I .output_power_up = "low";
defparam \debug_sevenseg_4[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[1]));
// synopsys translate_off
defparam \debug_sevenseg_4[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[1]~I .input_power_up = "low";
defparam \debug_sevenseg_4[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[1]~I .operation_mode = "output";
defparam \debug_sevenseg_4[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[1]~I .output_power_up = "low";
defparam \debug_sevenseg_4[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[2]));
// synopsys translate_off
defparam \debug_sevenseg_4[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[2]~I .input_power_up = "low";
defparam \debug_sevenseg_4[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[2]~I .operation_mode = "output";
defparam \debug_sevenseg_4[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[2]~I .output_power_up = "low";
defparam \debug_sevenseg_4[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[3]));
// synopsys translate_off
defparam \debug_sevenseg_4[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[3]~I .input_power_up = "low";
defparam \debug_sevenseg_4[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[3]~I .operation_mode = "output";
defparam \debug_sevenseg_4[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[3]~I .output_power_up = "low";
defparam \debug_sevenseg_4[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[4]));
// synopsys translate_off
defparam \debug_sevenseg_4[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[4]~I .input_power_up = "low";
defparam \debug_sevenseg_4[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[4]~I .operation_mode = "output";
defparam \debug_sevenseg_4[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[4]~I .output_power_up = "low";
defparam \debug_sevenseg_4[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[5]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[5]));
// synopsys translate_off
defparam \debug_sevenseg_4[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[5]~I .input_power_up = "low";
defparam \debug_sevenseg_4[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[5]~I .operation_mode = "output";
defparam \debug_sevenseg_4[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[5]~I .output_power_up = "low";
defparam \debug_sevenseg_4[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[6]));
// synopsys translate_off
defparam \debug_sevenseg_4[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[6]~I .input_power_up = "low";
defparam \debug_sevenseg_4[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[6]~I .operation_mode = "output";
defparam \debug_sevenseg_4[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[6]~I .output_power_up = "low";
defparam \debug_sevenseg_4[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_4[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_4[7]));
// synopsys translate_off
defparam \debug_sevenseg_4[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_4[7]~I .input_power_up = "low";
defparam \debug_sevenseg_4[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_4[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_4[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_4[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_4[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_4[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_4[7]~I .operation_mode = "output";
defparam \debug_sevenseg_4[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_4[7]~I .output_power_up = "low";
defparam \debug_sevenseg_4[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_4[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[0]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[0]));
// synopsys translate_off
defparam \debug_sevenseg_5[0]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[0]~I .input_power_up = "low";
defparam \debug_sevenseg_5[0]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[0]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[0]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[0]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[0]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[0]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[0]~I .operation_mode = "output";
defparam \debug_sevenseg_5[0]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[0]~I .output_power_up = "low";
defparam \debug_sevenseg_5[0]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[0]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[1]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[1]));
// synopsys translate_off
defparam \debug_sevenseg_5[1]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[1]~I .input_power_up = "low";
defparam \debug_sevenseg_5[1]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[1]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[1]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[1]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[1]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[1]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[1]~I .operation_mode = "output";
defparam \debug_sevenseg_5[1]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[1]~I .output_power_up = "low";
defparam \debug_sevenseg_5[1]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[2]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[2]));
// synopsys translate_off
defparam \debug_sevenseg_5[2]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[2]~I .input_power_up = "low";
defparam \debug_sevenseg_5[2]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[2]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[2]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[2]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[2]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[2]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[2]~I .operation_mode = "output";
defparam \debug_sevenseg_5[2]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[2]~I .output_power_up = "low";
defparam \debug_sevenseg_5[2]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[3]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[3]));
// synopsys translate_off
defparam \debug_sevenseg_5[3]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[3]~I .input_power_up = "low";
defparam \debug_sevenseg_5[3]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[3]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[3]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[3]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[3]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[3]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[3]~I .operation_mode = "output";
defparam \debug_sevenseg_5[3]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[3]~I .output_power_up = "low";
defparam \debug_sevenseg_5[3]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[4]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[4]));
// synopsys translate_off
defparam \debug_sevenseg_5[4]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[4]~I .input_power_up = "low";
defparam \debug_sevenseg_5[4]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[4]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[4]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[4]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[4]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[4]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[4]~I .operation_mode = "output";
defparam \debug_sevenseg_5[4]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[4]~I .output_power_up = "low";
defparam \debug_sevenseg_5[4]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[4]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[5]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[5]));
// synopsys translate_off
defparam \debug_sevenseg_5[5]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[5]~I .input_power_up = "low";
defparam \debug_sevenseg_5[5]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[5]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[5]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[5]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[5]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[5]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[5]~I .operation_mode = "output";
defparam \debug_sevenseg_5[5]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[5]~I .output_power_up = "low";
defparam \debug_sevenseg_5[5]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[5]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[6]~I (
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[6]));
// synopsys translate_off
defparam \debug_sevenseg_5[6]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[6]~I .input_power_up = "low";
defparam \debug_sevenseg_5[6]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[6]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[6]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[6]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[6]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[6]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[6]~I .operation_mode = "output";
defparam \debug_sevenseg_5[6]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[6]~I .output_power_up = "low";
defparam \debug_sevenseg_5[6]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[6]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \debug_sevenseg_5[7]~I (
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(debug_sevenseg_5[7]));
// synopsys translate_off
defparam \debug_sevenseg_5[7]~I .input_async_reset = "none";
defparam \debug_sevenseg_5[7]~I .input_power_up = "low";
defparam \debug_sevenseg_5[7]~I .input_register_mode = "none";
defparam \debug_sevenseg_5[7]~I .input_sync_reset = "none";
defparam \debug_sevenseg_5[7]~I .oe_async_reset = "none";
defparam \debug_sevenseg_5[7]~I .oe_power_up = "low";
defparam \debug_sevenseg_5[7]~I .oe_register_mode = "none";
defparam \debug_sevenseg_5[7]~I .oe_sync_reset = "none";
defparam \debug_sevenseg_5[7]~I .operation_mode = "output";
defparam \debug_sevenseg_5[7]~I .output_async_reset = "none";
defparam \debug_sevenseg_5[7]~I .output_power_up = "low";
defparam \debug_sevenseg_5[7]~I .output_register_mode = "none";
defparam \debug_sevenseg_5[7]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
