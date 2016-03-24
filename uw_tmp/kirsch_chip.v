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

// DATE "03/24/2016 00:05:23"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module kirsch_chip (	i_clock,
	i_reset,
	i_valid,
	i_pixel,
	o_valid,
	o_edge,
	o_dir,
	o_mode,
	o_row,
	debug_key,
	debug_switch,
	debug_led_red,
	debug_led_grn,
	debug_num_0,
	debug_num_1,
	debug_num_2,
	debug_num_3,
	debug_num_4,
	debug_num_5);
input 	i_clock;
input 	i_reset;
input 	i_valid;
input 	[7:0] i_pixel;
output 	o_valid;
output 	o_edge;
output 	[2:0] o_dir;
output 	[1:0] o_mode;
output 	[7:0] o_row;
input 	[3:1] debug_key;
input 	[17:0] debug_switch;
output 	[17:0] debug_led_red;
output 	[5:0] debug_led_grn;
output 	[3:0] debug_num_0;
output 	[3:0] debug_num_1;
output 	[3:0] debug_num_2;
output 	[3:0] debug_num_3;
output 	[3:0] debug_num_4;
output 	[3:0] debug_num_5;

// Design Ports Information
// o_valid	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_edge	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[1]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_dir[2]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[0]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_mode[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[0]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[6]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_row[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_key[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_key[3]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[0]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[1]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[2]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[3]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[4]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[6]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[7]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[9]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[10]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[11]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[12]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[13]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[14]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[15]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[16]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_switch[17]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// debug_led_red[0]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[1]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[3]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[4]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[5]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[6]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[7]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[8]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[11]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[12]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[13]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[14]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[15]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[16]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_red[17]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[0]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[2]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[3]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[4]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_led_grn[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[0]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[1]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_0[3]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[0]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[1]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[2]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_1[3]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[0]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[1]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_2[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[2]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_3[3]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[1]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[2]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_4[3]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[0]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[2]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// debug_num_5[3]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_valid	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_reset	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[7]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[6]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[5]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[3]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_pixel[0]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
initial $sdf_annotate("kirsch_v.sdo");
// synopsys translate_on

wire column_valid2_7_;
wire nx23902z3;
wire row_valid2_7_;
wire r4_8_;
wire r4_5_;
wire r4_4_;
wire r6_5_;
wire r4_1_;
wire r6_1_;
wire nx61908z3;
wire nx61908z2;
wire nx26373z4;
wire nx25376z2;
wire column_valid1_7_;
wire row_valid1_7_;
wire i_add3_11_;
wire i_add3_10_;
wire i_add3_9_;
wire i_add3_8_;
wire temp_add_7_;
wire i_add4_7_;
wire temp_add_6_;
wire i_add4_6_;
wire temp_add_5_;
wire i_add4_5_;
wire i_add3_4_;
wire i_add3_3_;
wire i_add3_2_;
wire i_add3_1_;
wire temp_add_0_;
wire i_add4_0_;
wire stage2_ao_add_op12_stage2_1_;
wire stage2_ao_add_op12_stage2_5_;
wire temp_max_8_;
wire i_max3_8_;
wire temp_max_5_;
wire i_max3_5_;
wire temp_max_4_;
wire i_max3_4_;
wire stage2_au_max2_ao_max_pix_8_;
wire stage2_au_max2_ao_max_pix_5_;
wire stage2_au_max2_ao_max_pix_4_;
wire stage2_au_max2_ao_max_pix_1_;
wire temp_dir_2_;
wire i_dir3_2_;
wire g_7_;
wire nx28679z52;
wire nx28679z53;
wire i_add2_7_;
wire nx28679z54;
wire h_6_;
wire nx28679z55;
wire i_add2_6_;
wire nx28679z38;
wire g_5_;
wire nx28679z56;
wire nx28679z57;
wire i_add2_5_;
wire nx28679z40;
wire a_5_;
wire nx28679z42;
wire a_4_;
wire b_4_;
wire nx28679z43;
wire i_add1_4_;
wire h_3_;
wire nx28679z61;
wire d_3_;
wire nx28679z44;
wire a_3_;
wire nx28679z45;
wire i_add1_3_;
wire nx28679z46;
wire nx28679z47;
wire i_add1_2_;
wire nx28679z64;
wire h_1_;
wire nx28679z65;
wire i_add2_1_;
wire nx28679z50;
wire nx28679z51;
wire i_add1_0_;
wire nx28679z22;
wire nx28679z8;
wire nx28679z9;
wire i_max1_5_;
wire nx28679z27;
wire nx28679z11;
wire nx28679z28;
wire nx28679z32;
wire nx28679z34;
wire stage1_au_max1_ao_max_pix_7_;
wire stage1_au_max1_ao_max_pix_6_;
wire stage1_au_max1_ao_max_pix_5_;
wire stage1_au_max1_ao_max_pix_1_;
wire stage1_anx15254z3;
wire stage1_anx15254z2;
wire i_6_;
wire i_3_;
wire i_1_;
wire mem_wren_0_;
wire mem_wren_1_;
wire column_valid1_7__afeeder_combout;
wire column_valid2_7__afeeder_combout;
wire d_3__afeeder_combout;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire inc_d_0_;
wire i_reset_acombout;
wire inc_d_0__dup_1231;
wire nx34903z1;
wire column_0_;
wire nx12707z1;
wire inc_d_1__dup_1233;
wire column_1_;
wire nx8437z2;
wire nx8437z1;
wire inc_d_3__dup_1237;
wire column_3_;
wire nx34903z4;
wire nx50725z4;
wire nx50725z3;
wire nx50725z2;
wire inc_d_6__dup_1243;
wire column_6_;
wire nx50725z1;
wire inc_d_7__dup_1245;
wire column_7_;
wire inc_d_5__dup_1241;
wire column_5_;
wire nx34903z3;
wire nx34903z2;
wire o_row_0_;
wire nx54262z3;
wire inc_d_1_;
wire o_row_1_;
wire nx54262z2;
wire nx54262z1;
wire inc_d_3_;
wire o_row_3_;
wire nx58250z4;
wire nx58250z3;
wire inc_d_5_;
wire o_row_5_;
wire nx58250z2;
wire inc_d_6_;
wire o_row_6_;
wire row_valid1_6__afeeder_combout;
wire i_valid_acombout;
wire valid_0_;
wire row_valid1_6_;
wire row_valid2_6__afeeder_combout;
wire valid_1_;
wire valid_2_;
wire valid_3_;
wire valid_4_;
wire row_valid2_6_;
wire inc_d_4_;
wire o_row_4_;
wire row_valid1_4__afeeder_combout;
wire row_valid1_4_;
wire row_valid2_4_;
wire row_valid1_5_;
wire row_valid2_5_;
wire nx23902z5;
wire inc_d_2_;
wire o_row_2_;
wire row_valid1_2__afeeder_combout;
wire row_valid1_2_;
wire row_valid2_2_;
wire row_valid1_3_;
wire row_valid2_3_;
wire row_valid1_1__afeeder_combout;
wire row_valid1_1_;
wire row_valid2_1__afeeder_combout;
wire row_valid2_1_;
wire nx23902z4;
wire column_valid1_3__afeeder_combout;
wire column_valid1_3_;
wire column_valid2_3_;
wire inc_d_2__dup_1235;
wire column_2_;
wire column_valid1_2__afeeder_combout;
wire column_valid1_2_;
wire column_valid2_2_;
wire column_valid1_1__afeeder_combout;
wire column_valid1_1_;
wire column_valid2_1__afeeder_combout;
wire column_valid2_1_;
wire nx23902z2;
wire nx23902z1;
wire reg_output_valid_reg_aregout;
wire valid_5_;
wire valid_6_;
wire nx61908z17;
wire inc_d_4__dup_1239;
wire column_4_;
wire c_6__afeeder_combout;
wire nx20492z1;
wire c_6_;
wire b_6_;
wire a_6_;
wire nx28679z39;
wire nx28679z3;
wire d_6__afeeder_combout;
wire d_6_;
wire i_add1_6_;
wire d_5__afeeder_combout;
wire d_5_;
wire c_5__afeeder_combout;
wire c_5_;
wire b_5_;
wire nx28679z41;
wire i_add1_5_;
wire c_4__afeeder_combout;
wire c_4_;
wire nx28679z59;
wire e_4_;
wire f_4_;
wire g_4_;
wire nx28679z58;
wire i_add2_4_;
wire e_3_;
wire nx28679z60;
wire i_add2_3_;
wire c_2__afeeder_combout;
wire c_2_;
wire nx28679z63;
wire e_2_;
wire f_2_;
wire g_2_;
wire nx28679z62;
wire i_add2_2_;
wire e_1_;
wire f_1_;
wire nx28679z48;
wire c_1__afeeder_combout;
wire c_1_;
wire b_1_;
wire a_1_;
wire nx28679z49;
wire i_add1_1_;
wire e_0_;
wire f_0_;
wire g_0_;
wire nx28679z66;
wire c_0__afeeder_combout;
wire c_0_;
wire d_0__afeeder_combout;
wire d_0_;
wire i_0_;
wire h_0_;
wire nx28679z67;
wire i_add2_0_;
wire stage1_anx45057z8;
wire stage1_anx45057z7;
wire stage1_anx45057z6;
wire stage1_anx45057z5;
wire stage1_anx45057z4;
wire stage1_anx45057z3;
wire stage1_ao_add_op12_stage1_6_;
wire r2_6_;
wire i_add3_6_;
wire stage1_ao_add_op12_stage1_5_;
wire r2_5_;
wire i_add3_5_;
wire stage1_ao_add_op12_stage1_4_;
wire r2_4_;
wire temp_add_4_;
wire stage1_ao_add_op12_stage1_3_;
wire r2_3_;
wire temp_add_3_;
wire stage1_ao_add_op12_stage1_2_;
wire r2_2_;
wire temp_add_2_;
wire stage1_ao_add_op12_stage1_1_;
wire r2_1_;
wire temp_add_1_;
wire i_add4_1_;
wire stage1_ao_add_op12_stage1_0_;
wire r2_0_;
wire i_add3_0_;
wire stage2_anx22301z12;
wire stage2_anx22301z11;
wire stage2_ao_add_op12_stage2_2_;
wire r6_2_;
wire i_add4_2_;
wire stage2_anx22301z10;
wire stage2_ao_add_op12_stage2_3_;
wire r6_3_;
wire i_add4_3_;
wire stage2_anx22301z9;
wire stage2_ao_add_op12_stage2_4_;
wire r6_4_;
wire i_add4_4_;
wire stage2_anx22301z8;
wire stage2_anx22301z7;
wire stage2_ao_add_op12_stage2_6_;
wire r6_6_;
wire nx28679z36;
wire c_7__afeeder_combout;
wire c_7_;
wire b_7_;
wire nx28679z37;
wire i_add1_7_;
wire stage1_anx45057z2;
wire stage1_ao_add_op12_stage1_7_;
wire r2_7_;
wire i_add3_7_;
wire stage2_anx22301z6;
wire stage2_ao_add_op12_stage2_7_;
wire r6_7_;
wire c_3__afeeder_combout;
wire c_3_;
wire b_3_;
wire nx28679z29;
wire f_3_;
wire i_max2_3_;
wire nx28679z12;
wire g_3_;
wire nx28679z13;
wire i_max1_3_;
wire d_7__afeeder_combout;
wire d_7_;
wire nx28679z21;
wire e_7_;
wire f_7_;
wire i_7_;
wire h_7_;
wire nx28679z20;
wire i_max2_7_;
wire e_6_;
wire f_6_;
wire g_6_;
wire nx28679z7;
wire nx28679z6;
wire i_max1_6_;
wire i_5_;
wire h_5_;
wire nx28679z24;
wire e_5_;
wire f_5_;
wire nx28679z25;
wire i_max2_5_;
wire d_4__afeeder_combout;
wire d_4_;
wire i_4_;
wire h_4_;
wire nx28679z26;
wire i_max2_4_;
wire b_2_;
wire a_2_;
wire nx28679z15;
wire nx28679z14;
wire i_max1_2_;
wire d_1__afeeder_combout;
wire d_1_;
wire nx28679z33;
wire i_max2_1_;
wire b_0_;
wire nx28679z35;
wire i_max2_0_;
wire stage1_au_max1_anx54128z8;
wire stage1_au_max1_anx54128z7;
wire stage1_au_max1_anx54128z6;
wire stage1_au_max1_anx54128z5;
wire stage1_au_max1_anx54128z4;
wire stage1_au_max1_anx54128z3;
wire stage1_au_max1_anx54128z2;
wire stage1_au_max1_anx54128z1;
wire stage1_au_max1_ao_max_pix_3_;
wire d_2__afeeder_combout;
wire d_2_;
wire i_2_;
wire h_2_;
wire nx28679z30;
wire nx28679z31;
wire i_max2_2_;
wire stage1_au_max1_ao_max_pix_2_;
wire nx28679z18;
wire a_0_;
wire nx28679z19;
wire i_max1_0_;
wire stage1_au_max1_ao_max_pix_0_;
wire stage1_anx15254z10;
wire stage1_anx15254z9;
wire stage1_anx15254z8;
wire stage1_ao_max_add_stage1_3_;
wire r3_3_;
wire temp_max_3_;
wire i_max3_3_;
wire stage1_ao_add_op12_stage1_8_;
wire stage1_ao_add_op12_stage1_8__a0_combout;
wire stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout;
wire stage1_ao_max_add_stage1_9_;
wire stage1_anx15254z1;
wire r3_9_;
wire temp_max_9_;
wire stage2_au_max2_ao_max_pix_9_;
wire r4_9_;
wire i_max3_9_;
wire stage1_ao_max_add_stage1_8_;
wire r3_8_;
wire nx28679z10;
wire i_max1_4_;
wire stage1_au_max1_ao_max_pix_4_;
wire stage1_anx15254z7;
wire stage1_anx15254z6;
wire stage1_anx15254z5;
wire stage1_anx15254z4;
wire stage1_ao_max_add_stage1_7_;
wire r3_7_;
wire temp_max_7_;
wire stage2_au_max2_ao_max_pix_7_;
wire r4_7_;
wire i_max3_7_;
wire stage1_ao_max_add_stage1_6_;
wire r3_6_;
wire stage1_ao_max_add_stage1_5_;
wire r3_5_;
wire stage1_ao_max_add_stage1_4_;
wire r3_4_;
wire stage1_ao_max_add_stage1_2_;
wire r3_2_;
wire stage2_au_max2_ao_max_pix_2_;
wire r4_2_;
wire temp_max_2_;
wire i_max3_2_;
wire stage1_ao_max_add_stage1_1_;
wire r3_1_;
wire stage1_ao_max_add_stage1_0_;
wire r3_0_;
wire temp_max_0_;
wire stage2_au_max2_ao_max_pix_0_;
wire r4_0_;
wire i_max3_0_;
wire stage2_au_max2_anx52134z10;
wire stage2_au_max2_anx52134z9;
wire stage2_au_max2_anx52134z8;
wire stage2_au_max2_anx52134z7;
wire stage2_au_max2_anx52134z6;
wire stage2_au_max2_anx52134z5;
wire stage2_au_max2_anx52134z4;
wire stage2_au_max2_anx52134z3;
wire stage2_au_max2_anx52134z2;
wire stage2_au_max2_anx52134z1;
wire stage2_au_max2_ao_max_pix_3_;
wire r4_3_;
wire stage2_ao_add_op12_stage2_0_;
wire r6_0_;
wire nx61908z14;
wire nx61908z13;
wire nx61908z12;
wire nx61908z11;
wire nx61908z10;
wire nx61908z9;
wire sub_out_7_;
wire stage1_aix45057z52923_a1_cout;
wire stage1_anx45057z1;
wire r2_8_;
wire temp_add_8_;
wire i_add4_8_;
wire stage2_anx22301z5;
wire stage2_ao_add_op12_stage2_8_;
wire r6_8_;
wire nx61908z8;
wire sub_out_8_;
wire temp_max_6_;
wire i_max3_6_;
wire stage2_au_max2_ao_max_pix_6_;
wire r4_6_;
wire nx61908z7;
wire sub_out_9_;
wire nx61908z16;
wire i_add4_11_;
wire stage2_anx22301z4;
wire stage2_ao_add_op12_stage2_9_;
wire r6_9_;
wire i_add4_9_;
wire stage2_anx22301z3;
wire stage2_ao_add_op12_stage2_10_;
wire r6_10_;
wire i_add4_10_;
wire stage2_anx22301z2;
wire stage2_ao_add_op12_stage2_11_;
wire r6_11_;
wire nx61908z6;
wire nx61908z5;
wire sub_out_11_;
wire sub_out_10_;
wire i_add4_12_;
wire i_add3_12_;
wire stage2_anx22301z1;
wire stage2_ao_add_op12_stage2_12_;
wire r6_12_;
wire nx61908z4;
wire sub_out_12_;
wire nx61908z15;
wire nx61908z1;
wire reg_r9_aregout;
wire nx28679z1;
wire nx28679z2;
wire nx28679z4;
wire a_7_;
wire nx28679z5;
wire i_max1_7_;
wire nx28679z23;
wire i_max2_6_;
wire nx28679z16;
wire g_1_;
wire nx28679z17;
wire i_max1_1_;
wire stage1_au_max1_anx19309z7;
wire stage1_au_max1_anx19309z6;
wire stage1_au_max1_anx19309z5;
wire stage1_au_max1_anx19309z4;
wire stage1_au_max1_anx19309z3;
wire stage1_au_max1_anx19309z2;
wire stage1_au_max1_anx19309z1;
wire stage1_au_max1_ao_max_dir_2_;
wire stage1_au_max1_ao_max_dir_0_;
wire r1_0_;
wire temp_dir_0_;
wire i_dir3_0_;
wire temp_max_1_;
wire i_max3_1_;
wire stage2_au_max2_anx19309z10;
wire stage2_au_max2_anx19309z9;
wire stage2_au_max2_anx19309z8;
wire stage2_au_max2_anx19309z7;
wire stage2_au_max2_anx19309z6;
wire stage2_au_max2_anx19309z5;
wire stage2_au_max2_anx19309z4;
wire stage2_au_max2_anx19309z3;
wire stage2_au_max2_anx19309z2;
wire stage2_au_max2_anx19309z1;
wire stage2_au_max2_ao_max_dir_0_;
wire r5_0_;
wire nx24856z1;
wire r8_0_;
wire o_dir_0_;
wire nx35074z1;
wire r1_1_;
wire temp_dir_1_;
wire i_dir3_1_;
wire stage2_au_max2_ao_max_dir_1_;
wire r5_1_;
wire nx23859z1;
wire r8_1_;
wire o_dir_1_;
wire r1_2_;
wire stage2_au_max2_ao_max_dir_2_;
wire r5_2_;
wire nx22862z1;
wire r8_2_;
wire o_dir_2_;
wire column_valid1_6__afeeder_combout;
wire column_valid1_6_;
wire column_valid2_6_;
wire nx25376z3;
wire column_valid1_0__afeeder_combout;
wire column_valid1_0_;
wire column_valid2_0_;
wire nx25376z5;
wire column_valid1_4__afeeder_combout;
wire column_valid1_4_;
wire column_valid2_4_;
wire column_valid1_5__afeeder_combout;
wire column_valid1_5_;
wire column_valid2_5_;
wire nx26373z5;
wire nx26373z3;
wire nx25376z7;
wire row_valid1_0__afeeder_combout;
wire row_valid1_0_;
wire row_valid2_0_;
wire nx25376z6;
wire nx26373z2;
wire nx26373z1;
wire nx25376z9;
wire nx25376z4;
wire nx25376z8;
wire nx25376z1;
wire o_mode_1_;
wire nx58250z1;
wire inc_d_7_;
wire o_row_7_;
wire [7:0] i_pixel_acombout;
wire [7:0] mem_aix64056z29481_aauto_generated_aq_a;
wire [7:0] mem_0_aix64056z29482_aauto_generated_aq_a;

wire [7:0] mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus;
wire [7:0] mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus;

assign mem_0_aix64056z29482_aauto_generated_aq_a[0] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign mem_0_aix64056z29482_aauto_generated_aq_a[1] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign mem_0_aix64056z29482_aauto_generated_aq_a[2] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign mem_0_aix64056z29482_aauto_generated_aq_a[3] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign mem_0_aix64056z29482_aauto_generated_aq_a[4] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign mem_0_aix64056z29482_aauto_generated_aq_a[5] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign mem_0_aix64056z29482_aauto_generated_aq_a[6] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign mem_0_aix64056z29482_aauto_generated_aq_a[7] = mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

assign mem_aix64056z29481_aauto_generated_aq_a[0] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[0];
assign mem_aix64056z29481_aauto_generated_aq_a[1] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[1];
assign mem_aix64056z29481_aauto_generated_aq_a[2] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[2];
assign mem_aix64056z29481_aauto_generated_aq_a[3] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[3];
assign mem_aix64056z29481_aauto_generated_aq_a[4] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[4];
assign mem_aix64056z29481_aauto_generated_aq_a[5] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[5];
assign mem_aix64056z29481_aauto_generated_aq_a[6] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[6];
assign mem_aix64056z29481_aauto_generated_aq_a[7] = mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus[7];

// Location: LCFF_X45_Y33_N3
cycloneii_lcell_ff reg_column_valid2_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid2_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_7_));

// Location: LCCOMB_X50_Y33_N16
cycloneii_lcell_comb ix23902z52925(
// Equation(s):
// nx23902z3 = (column_valid2_7_) # ((column_valid2_6_) # ((column_valid2_4_) # (column_valid2_5_)))

	.dataa(column_valid2_7_),
	.datab(column_valid2_6_),
	.datac(column_valid2_4_),
	.datad(column_valid2_5_),
	.cin(gnd),
	.combout(nx23902z3),
	.cout());
// synopsys translate_off
defparam ix23902z52925.lut_mask = 16'hFFFE;
defparam ix23902z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y33_N7
cycloneii_lcell_ff reg_row_valid2_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(row_valid1_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_7_));

// Location: LCFF_X46_Y31_N23
cycloneii_lcell_ff reg_r4_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_8_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_8_));

// Location: LCFF_X46_Y31_N5
cycloneii_lcell_ff reg_r4_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_5_));

// Location: LCFF_X46_Y31_N7
cycloneii_lcell_ff reg_r4_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_4_));

// Location: LCFF_X45_Y33_N15
cycloneii_lcell_ff reg_r6_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_5_));

// Location: LCFF_X44_Y31_N1
cycloneii_lcell_ff reg_r4_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_1_));

// Location: LCFF_X45_Y33_N7
cycloneii_lcell_ff reg_r6_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_1_));

// Location: LCCOMB_X45_Y32_N28
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52925(
// Equation(s):
// sub_out_12_ = (r4_9_ & ((r6_12_ & (!nx61908z4)) # (!r6_12_ & (nx61908z4 & VCC)))) # (!r4_9_ & ((r6_12_ & ((nx61908z4) # (GND))) # (!r6_12_ & (!nx61908z4))))
// nx61908z3 = CARRY((r4_9_ & (r6_12_ & !nx61908z4)) # (!r4_9_ & ((r6_12_) # (!nx61908z4))))

	.dataa(r4_9_),
	.datab(r6_12_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z4),
	.combout(sub_out_12_),
	.cout(nx61908z3));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52925.lut_mask = 16'h694D;
defparam sub_out_sub13_0_ix61908z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N30
cycloneii_lcell_comb ix61908z52924(
// Equation(s):
// nx61908z2 = (!nx61908z3 & valid_6_)

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(valid_6_),
	.cin(nx61908z3),
	.combout(nx61908z2),
	.cout());
// synopsys translate_off
defparam ix61908z52924.lut_mask = 16'h0F00;
defparam ix61908z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y33_N6
cycloneii_lcell_comb ix26373z52926(
// Equation(s):
// nx26373z4 = ((!row_valid2_6_) # (!row_valid2_7_)) # (!row_valid2_5_)

	.dataa(vcc),
	.datab(row_valid2_5_),
	.datac(row_valid2_7_),
	.datad(row_valid2_6_),
	.cin(gnd),
	.combout(nx26373z4),
	.cout());
// synopsys translate_off
defparam ix26373z52926.lut_mask = 16'h3FFF;
defparam ix26373z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y33_N12
cycloneii_lcell_comb ix25376z52924(
// Equation(s):
// nx25376z2 = (!nx25376z3 & (column_valid2_3_ & (column_valid2_5_ & column_valid2_4_)))

	.dataa(nx25376z3),
	.datab(column_valid2_3_),
	.datac(column_valid2_5_),
	.datad(column_valid2_4_),
	.cin(gnd),
	.combout(nx25376z2),
	.cout());
// synopsys translate_off
defparam ix25376z52924.lut_mask = 16'h4000;
defparam ix25376z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y33_N19
cycloneii_lcell_ff reg_column_valid1_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_7__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_7_));

// Location: LCFF_X51_Y33_N25
cycloneii_lcell_ff reg_row_valid1_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_row_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_7_));

// Location: LCCOMB_X44_Y33_N20
cycloneii_lcell_comb ix28678z52937(
// Equation(s):
// i_add3_11_ = (r6_10_ & valid_5_)

	.dataa(vcc),
	.datab(r6_10_),
	.datac(vcc),
	.datad(valid_5_),
	.cin(gnd),
	.combout(i_add3_11_),
	.cout());
// synopsys translate_off
defparam ix28678z52937.lut_mask = 16'hCC00;
defparam ix28678z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N12
cycloneii_lcell_comb ix28678z52938(
// Equation(s):
// i_add3_10_ = (r6_9_ & valid_5_)

	.dataa(vcc),
	.datab(r6_9_),
	.datac(vcc),
	.datad(valid_5_),
	.cin(gnd),
	.combout(i_add3_10_),
	.cout());
// synopsys translate_off
defparam ix28678z52938.lut_mask = 16'hCC00;
defparam ix28678z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N10
cycloneii_lcell_comb ix28678z52939(
// Equation(s):
// i_add3_9_ = (r6_8_ & valid_5_)

	.dataa(vcc),
	.datab(r6_8_),
	.datac(vcc),
	.datad(valid_5_),
	.cin(gnd),
	.combout(i_add3_9_),
	.cout());
// synopsys translate_off
defparam ix28678z52939.lut_mask = 16'hCC00;
defparam ix28678z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N2
cycloneii_lcell_comb ix28678z52940(
// Equation(s):
// i_add3_8_ = (valid_5_ & (r6_7_)) # (!valid_5_ & ((r2_8_)))

	.dataa(vcc),
	.datab(r6_7_),
	.datac(r2_8_),
	.datad(valid_5_),
	.cin(gnd),
	.combout(i_add3_8_),
	.cout());
// synopsys translate_off
defparam ix28678z52940.lut_mask = 16'hCCF0;
defparam ix28678z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y33_N9
cycloneii_lcell_ff reg_temp_add_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_7_));

// Location: LCCOMB_X44_Y33_N8
cycloneii_lcell_comb ix28678z52954(
// Equation(s):
// i_add4_7_ = (valid_2_ & (temp_add_7_)) # (!valid_2_ & ((r6_7_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_add_7_),
	.datad(r6_7_),
	.cin(gnd),
	.combout(i_add4_7_),
	.cout());
// synopsys translate_off
defparam ix28678z52954.lut_mask = 16'hF3C0;
defparam ix28678z52954.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y33_N1
cycloneii_lcell_ff reg_temp_add_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_6_));

// Location: LCCOMB_X44_Y33_N0
cycloneii_lcell_comb ix28678z52955(
// Equation(s):
// i_add4_6_ = (valid_2_ & ((temp_add_6_))) # (!valid_2_ & (r6_6_))

	.dataa(r6_6_),
	.datab(valid_2_),
	.datac(temp_add_6_),
	.datad(vcc),
	.cin(gnd),
	.combout(i_add4_6_),
	.cout());
// synopsys translate_off
defparam ix28678z52955.lut_mask = 16'hE2E2;
defparam ix28678z52955.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y33_N17
cycloneii_lcell_ff reg_temp_add_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_5_));

// Location: LCCOMB_X46_Y33_N16
cycloneii_lcell_comb ix28678z52956(
// Equation(s):
// i_add4_5_ = (valid_2_ & (temp_add_5_)) # (!valid_2_ & ((r6_5_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_add_5_),
	.datad(r6_5_),
	.cin(gnd),
	.combout(i_add4_5_),
	.cout());
// synopsys translate_off
defparam ix28678z52956.lut_mask = 16'hF3C0;
defparam ix28678z52956.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y33_N14
cycloneii_lcell_comb ix28678z52944(
// Equation(s):
// i_add3_4_ = (valid_5_ & ((r6_3_))) # (!valid_5_ & (r2_4_))

	.dataa(vcc),
	.datab(r2_4_),
	.datac(valid_5_),
	.datad(r6_3_),
	.cin(gnd),
	.combout(i_add3_4_),
	.cout());
// synopsys translate_off
defparam ix28678z52944.lut_mask = 16'hFC0C;
defparam ix28678z52944.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y33_N18
cycloneii_lcell_comb ix28678z52945(
// Equation(s):
// i_add3_3_ = (valid_5_ & (r6_2_)) # (!valid_5_ & ((r2_3_)))

	.dataa(r6_2_),
	.datab(vcc),
	.datac(valid_5_),
	.datad(r2_3_),
	.cin(gnd),
	.combout(i_add3_3_),
	.cout());
// synopsys translate_off
defparam ix28678z52945.lut_mask = 16'hAFA0;
defparam ix28678z52945.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y33_N30
cycloneii_lcell_comb ix28678z52946(
// Equation(s):
// i_add3_2_ = (valid_5_ & ((r6_1_))) # (!valid_5_ & (r2_2_))

	.dataa(valid_5_),
	.datab(vcc),
	.datac(r2_2_),
	.datad(r6_1_),
	.cin(gnd),
	.combout(i_add3_2_),
	.cout());
// synopsys translate_off
defparam ix28678z52946.lut_mask = 16'hFA50;
defparam ix28678z52946.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y33_N26
cycloneii_lcell_comb ix28678z52947(
// Equation(s):
// i_add3_1_ = (valid_5_ & (r6_0_)) # (!valid_5_ & ((r2_1_)))

	.dataa(valid_5_),
	.datab(vcc),
	.datac(r6_0_),
	.datad(r2_1_),
	.cin(gnd),
	.combout(i_add3_1_),
	.cout());
// synopsys translate_off
defparam ix28678z52947.lut_mask = 16'hF5A0;
defparam ix28678z52947.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y33_N5
cycloneii_lcell_ff reg_temp_add_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_0_));

// Location: LCCOMB_X46_Y33_N4
cycloneii_lcell_comb ix28678z52961(
// Equation(s):
// i_add4_0_ = (valid_2_ & ((temp_add_0_))) # (!valid_2_ & (r6_0_))

	.dataa(r6_0_),
	.datab(vcc),
	.datac(temp_add_0_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(i_add4_0_),
	.cout());
// synopsys translate_off
defparam ix28678z52961.lut_mask = 16'hF0AA;
defparam ix28678z52961.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N6
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52935(
// Equation(s):
// stage2_ao_add_op12_stage2_1_ = (i_add3_1_ & ((i_add4_1_ & (stage2_anx22301z12 & VCC)) # (!i_add4_1_ & (!stage2_anx22301z12)))) # (!i_add3_1_ & ((i_add4_1_ & (!stage2_anx22301z12)) # (!i_add4_1_ & ((stage2_anx22301z12) # (GND)))))
// stage2_anx22301z11 = CARRY((i_add3_1_ & (!i_add4_1_ & !stage2_anx22301z12)) # (!i_add3_1_ & ((!stage2_anx22301z12) # (!i_add4_1_))))

	.dataa(i_add3_1_),
	.datab(i_add4_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z12),
	.combout(stage2_ao_add_op12_stage2_1_),
	.cout(stage2_anx22301z11));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52935.lut_mask = 16'h9617;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52935.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N14
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52931(
// Equation(s):
// stage2_ao_add_op12_stage2_5_ = (i_add4_5_ & ((i_add3_5_ & (stage2_anx22301z8 & VCC)) # (!i_add3_5_ & (!stage2_anx22301z8)))) # (!i_add4_5_ & ((i_add3_5_ & (!stage2_anx22301z8)) # (!i_add3_5_ & ((stage2_anx22301z8) # (GND)))))
// stage2_anx22301z7 = CARRY((i_add4_5_ & (!i_add3_5_ & !stage2_anx22301z8)) # (!i_add4_5_ & ((!stage2_anx22301z8) # (!i_add3_5_))))

	.dataa(i_add4_5_),
	.datab(i_add3_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z8),
	.combout(stage2_ao_add_op12_stage2_5_),
	.cout(stage2_anx22301z7));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52931.lut_mask = 16'h9617;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X46_Y33_N7
cycloneii_lcell_ff reg_temp_max_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_8_));

// Location: LCCOMB_X46_Y33_N6
cycloneii_lcell_comb ix28678z52927(
// Equation(s):
// i_max3_8_ = (valid_2_ & (temp_max_8_)) # (!valid_2_ & ((r4_8_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_max_8_),
	.datad(r4_8_),
	.cin(gnd),
	.combout(i_max3_8_),
	.cout());
// synopsys translate_off
defparam ix28678z52927.lut_mask = 16'hF3C0;
defparam ix28678z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y31_N5
cycloneii_lcell_ff reg_temp_max_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_5_));

// Location: LCCOMB_X45_Y31_N4
cycloneii_lcell_comb ix28678z52930(
// Equation(s):
// i_max3_5_ = (valid_2_ & ((temp_max_5_))) # (!valid_2_ & (r4_5_))

	.dataa(r4_5_),
	.datab(vcc),
	.datac(temp_max_5_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(i_max3_5_),
	.cout());
// synopsys translate_off
defparam ix28678z52930.lut_mask = 16'hF0AA;
defparam ix28678z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y31_N7
cycloneii_lcell_ff reg_temp_max_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_4_));

// Location: LCCOMB_X45_Y31_N6
cycloneii_lcell_comb ix28678z52931(
// Equation(s):
// i_max3_4_ = (valid_2_ & ((temp_max_4_))) # (!valid_2_ & (r4_4_))

	.dataa(r4_4_),
	.datab(vcc),
	.datac(temp_max_4_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(i_max3_4_),
	.cout());
// synopsys translate_off
defparam ix28678z52931.lut_mask = 16'hF0AA;
defparam ix28678z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N22
cycloneii_lcell_comb stage2_au_max2_aix53131z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_8_ = (stage2_au_max2_anx52134z1 & (i_max3_8_)) # (!stage2_au_max2_anx52134z1 & ((r3_8_)))

	.dataa(i_max3_8_),
	.datab(vcc),
	.datac(stage2_au_max2_anx52134z1),
	.datad(r3_8_),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_8_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix53131z52923.lut_mask = 16'hAFA0;
defparam stage2_au_max2_aix53131z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N4
cycloneii_lcell_comb stage2_au_max2_aix56122z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_5_ = (stage2_au_max2_anx52134z1 & (i_max3_5_)) # (!stage2_au_max2_anx52134z1 & ((r3_5_)))

	.dataa(stage2_au_max2_anx52134z1),
	.datab(i_max3_5_),
	.datac(r3_5_),
	.datad(vcc),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_5_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix56122z52923.lut_mask = 16'hD8D8;
defparam stage2_au_max2_aix56122z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N6
cycloneii_lcell_comb stage2_au_max2_aix57119z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_4_ = (stage2_au_max2_anx52134z1 & (i_max3_4_)) # (!stage2_au_max2_anx52134z1 & ((r3_4_)))

	.dataa(vcc),
	.datab(i_max3_4_),
	.datac(stage2_au_max2_anx52134z1),
	.datad(r3_4_),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_4_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix57119z52923.lut_mask = 16'hCFC0;
defparam stage2_au_max2_aix57119z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N0
cycloneii_lcell_comb stage2_au_max2_aix60110z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_1_ = (stage2_au_max2_anx52134z1 & ((i_max3_1_))) # (!stage2_au_max2_anx52134z1 & (r3_1_))

	.dataa(r3_1_),
	.datab(vcc),
	.datac(i_max3_1_),
	.datad(stage2_au_max2_anx52134z1),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_1_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix60110z52923.lut_mask = 16'hF0AA;
defparam stage2_au_max2_aix60110z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y32_N27
cycloneii_lcell_ff reg_temp_dir_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_dir_2_));

// Location: LCCOMB_X46_Y32_N26
cycloneii_lcell_comb ix28678z52923(
// Equation(s):
// i_dir3_2_ = (valid_2_ & (temp_dir_2_)) # (!valid_2_ & ((r5_2_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_dir_2_),
	.datad(r5_2_),
	.cin(gnd),
	.combout(i_dir3_2_),
	.cout());
// synopsys translate_off
defparam ix28678z52923.lut_mask = 16'hF3C0;
defparam ix28678z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N19
cycloneii_lcell_ff reg_g_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_7_));

// Location: LCCOMB_X47_Y33_N18
cycloneii_lcell_comb ix28679z52999(
// Equation(s):
// nx28679z52 = (!valid_2_ & (!valid_0_ & (g_7_ & !valid_1_)))

	.dataa(valid_2_),
	.datab(valid_0_),
	.datac(g_7_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z52),
	.cout());
// synopsys translate_off
defparam ix28679z52999.lut_mask = 16'h0010;
defparam ix28679z52999.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N24
cycloneii_lcell_comb ix28679z53000(
// Equation(s):
// nx28679z53 = (valid_0_ & (h_7_)) # (!valid_0_ & (((c_7_ & valid_1_))))

	.dataa(valid_0_),
	.datab(h_7_),
	.datac(c_7_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z53),
	.cout());
// synopsys translate_off
defparam ix28679z53000.lut_mask = 16'hD888;
defparam ix28679z53000.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N6
cycloneii_lcell_comb ix28679z52998(
// Equation(s):
// i_add2_7_ = (nx28679z53) # ((nx28679z52) # ((nx28679z3 & e_7_)))

	.dataa(nx28679z3),
	.datab(e_7_),
	.datac(nx28679z53),
	.datad(nx28679z52),
	.cin(gnd),
	.combout(i_add2_7_),
	.cout());
// synopsys translate_off
defparam ix28679z52998.lut_mask = 16'hFFF8;
defparam ix28679z52998.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N4
cycloneii_lcell_comb ix28679z53002(
// Equation(s):
// nx28679z54 = (!valid_0_ & (!valid_1_ & (!valid_2_ & g_6_)))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(valid_2_),
	.datad(g_6_),
	.cin(gnd),
	.combout(nx28679z54),
	.cout());
// synopsys translate_off
defparam ix28679z53002.lut_mask = 16'h0100;
defparam ix28679z53002.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N11
cycloneii_lcell_ff reg_h_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_6_));

// Location: LCCOMB_X49_Y32_N4
cycloneii_lcell_comb ix28679z53003(
// Equation(s):
// nx28679z55 = (valid_0_ & (((h_6_)))) # (!valid_0_ & (c_6_ & (valid_1_)))

	.dataa(valid_0_),
	.datab(c_6_),
	.datac(valid_1_),
	.datad(h_6_),
	.cin(gnd),
	.combout(nx28679z55),
	.cout());
// synopsys translate_off
defparam ix28679z53003.lut_mask = 16'hEA40;
defparam ix28679z53003.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N16
cycloneii_lcell_comb ix28679z53001(
// Equation(s):
// i_add2_6_ = (nx28679z54) # ((nx28679z55) # ((nx28679z3 & e_6_)))

	.dataa(nx28679z54),
	.datab(nx28679z3),
	.datac(nx28679z55),
	.datad(e_6_),
	.cin(gnd),
	.combout(i_add2_6_),
	.cout());
// synopsys translate_off
defparam ix28679z53001.lut_mask = 16'hFEFA;
defparam ix28679z53001.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N6
cycloneii_lcell_comb ix28679z52978(
// Equation(s):
// nx28679z38 = (!valid_2_ & (!valid_1_ & (!valid_0_ & f_6_)))

	.dataa(valid_2_),
	.datab(valid_1_),
	.datac(valid_0_),
	.datad(f_6_),
	.cin(gnd),
	.combout(nx28679z38),
	.cout());
// synopsys translate_off
defparam ix28679z52978.lut_mask = 16'h0100;
defparam ix28679z52978.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y32_N13
cycloneii_lcell_ff reg_g_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_5_));

// Location: LCCOMB_X50_Y32_N12
cycloneii_lcell_comb ix28679z53005(
// Equation(s):
// nx28679z56 = (!valid_0_ & (!valid_1_ & (g_5_ & !valid_2_)))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(g_5_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z56),
	.cout());
// synopsys translate_off
defparam ix28679z53005.lut_mask = 16'h0010;
defparam ix28679z53005.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N8
cycloneii_lcell_comb ix28679z53006(
// Equation(s):
// nx28679z57 = (valid_0_ & (h_5_)) # (!valid_0_ & (((valid_1_ & c_5_))))

	.dataa(h_5_),
	.datab(valid_1_),
	.datac(c_5_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z57),
	.cout());
// synopsys translate_off
defparam ix28679z53006.lut_mask = 16'hAAC0;
defparam ix28679z53006.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N10
cycloneii_lcell_comb ix28679z53004(
// Equation(s):
// i_add2_5_ = (nx28679z56) # ((nx28679z57) # ((e_5_ & nx28679z3)))

	.dataa(nx28679z56),
	.datab(e_5_),
	.datac(nx28679z57),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_add2_5_),
	.cout());
// synopsys translate_off
defparam ix28679z53004.lut_mask = 16'hFEFA;
defparam ix28679z53004.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N18
cycloneii_lcell_comb ix28679z52981(
// Equation(s):
// nx28679z40 = (!valid_0_ & (!valid_1_ & (f_5_ & !valid_2_)))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(f_5_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z40),
	.cout());
// synopsys translate_off
defparam ix28679z52981.lut_mask = 16'h0010;
defparam ix28679z52981.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y32_N15
cycloneii_lcell_ff reg_a_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_5_));

// Location: LCCOMB_X47_Y34_N26
cycloneii_lcell_comb ix28679z52984(
// Equation(s):
// nx28679z42 = (!valid_2_ & (!valid_0_ & (f_4_ & !valid_1_)))

	.dataa(valid_2_),
	.datab(valid_0_),
	.datac(f_4_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z42),
	.cout());
// synopsys translate_off
defparam ix28679z52984.lut_mask = 16'h0010;
defparam ix28679z52984.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y34_N25
cycloneii_lcell_ff reg_a_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_4_));

// Location: LCFF_X47_Y34_N3
cycloneii_lcell_ff reg_b_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_4_));

// Location: LCCOMB_X47_Y34_N16
cycloneii_lcell_comb ix28679z52985(
// Equation(s):
// nx28679z43 = (valid_0_ & (a_4_)) # (!valid_0_ & (((b_4_ & valid_1_))))

	.dataa(a_4_),
	.datab(b_4_),
	.datac(valid_0_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z43),
	.cout());
// synopsys translate_off
defparam ix28679z52985.lut_mask = 16'hACA0;
defparam ix28679z52985.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N6
cycloneii_lcell_comb ix28679z52983(
// Equation(s):
// i_add1_4_ = (nx28679z43) # ((nx28679z42) # ((d_4_ & nx28679z3)))

	.dataa(d_4_),
	.datab(nx28679z3),
	.datac(nx28679z43),
	.datad(nx28679z42),
	.cin(gnd),
	.combout(i_add1_4_),
	.cout());
// synopsys translate_off
defparam ix28679z52983.lut_mask = 16'hFFF8;
defparam ix28679z52983.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N11
cycloneii_lcell_ff reg_h_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_3_));

// Location: LCCOMB_X47_Y33_N6
cycloneii_lcell_comb ix28679z53012(
// Equation(s):
// nx28679z61 = (valid_0_ & (h_3_)) # (!valid_0_ & (((c_3_ & valid_1_))))

	.dataa(h_3_),
	.datab(valid_0_),
	.datac(c_3_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z61),
	.cout());
// synopsys translate_off
defparam ix28679z53012.lut_mask = 16'hB888;
defparam ix28679z53012.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N19
cycloneii_lcell_ff reg_d_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_3__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_3_));

// Location: LCCOMB_X47_Y33_N20
cycloneii_lcell_comb ix28679z52987(
// Equation(s):
// nx28679z44 = (!valid_2_ & (!valid_1_ & (f_3_ & !valid_0_)))

	.dataa(valid_2_),
	.datab(valid_1_),
	.datac(f_3_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z44),
	.cout());
// synopsys translate_off
defparam ix28679z52987.lut_mask = 16'h0010;
defparam ix28679z52987.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N25
cycloneii_lcell_ff reg_a_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_3_));

// Location: LCCOMB_X47_Y33_N24
cycloneii_lcell_comb ix28679z52988(
// Equation(s):
// nx28679z45 = (valid_0_ & (((a_3_)))) # (!valid_0_ & (b_3_ & ((valid_1_))))

	.dataa(b_3_),
	.datab(valid_0_),
	.datac(a_3_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z45),
	.cout());
// synopsys translate_off
defparam ix28679z52988.lut_mask = 16'hE2C0;
defparam ix28679z52988.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y33_N26
cycloneii_lcell_comb ix28679z52986(
// Equation(s):
// i_add1_3_ = (nx28679z45) # ((nx28679z44) # ((d_3_ & nx28679z3)))

	.dataa(nx28679z45),
	.datab(d_3_),
	.datac(nx28679z44),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_add1_3_),
	.cout());
// synopsys translate_off
defparam ix28679z52986.lut_mask = 16'hFEFA;
defparam ix28679z52986.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N2
cycloneii_lcell_comb ix28679z52990(
// Equation(s):
// nx28679z46 = (!valid_2_ & (!valid_0_ & (f_2_ & !valid_1_)))

	.dataa(valid_2_),
	.datab(valid_0_),
	.datac(f_2_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z46),
	.cout());
// synopsys translate_off
defparam ix28679z52990.lut_mask = 16'h0010;
defparam ix28679z52990.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N28
cycloneii_lcell_comb ix28679z52991(
// Equation(s):
// nx28679z47 = (valid_0_ & (((a_2_)))) # (!valid_0_ & (valid_1_ & (b_2_)))

	.dataa(valid_1_),
	.datab(b_2_),
	.datac(a_2_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z47),
	.cout());
// synopsys translate_off
defparam ix28679z52991.lut_mask = 16'hF088;
defparam ix28679z52991.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N6
cycloneii_lcell_comb ix28679z52989(
// Equation(s):
// i_add1_2_ = (nx28679z47) # ((nx28679z46) # ((nx28679z3 & d_2_)))

	.dataa(nx28679z3),
	.datab(nx28679z47),
	.datac(d_2_),
	.datad(nx28679z46),
	.cin(gnd),
	.combout(i_add1_2_),
	.cout());
// synopsys translate_off
defparam ix28679z52989.lut_mask = 16'hFFEC;
defparam ix28679z52989.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N20
cycloneii_lcell_comb ix28679z53017(
// Equation(s):
// nx28679z64 = (!valid_1_ & (!valid_2_ & (g_1_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(g_1_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z64),
	.cout());
// synopsys translate_off
defparam ix28679z53017.lut_mask = 16'h0010;
defparam ix28679z53017.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N29
cycloneii_lcell_ff reg_h_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_1_));

// Location: LCCOMB_X49_Y32_N0
cycloneii_lcell_comb ix28679z53018(
// Equation(s):
// nx28679z65 = (valid_0_ & (((h_1_)))) # (!valid_0_ & (valid_1_ & ((c_1_))))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(h_1_),
	.datad(c_1_),
	.cin(gnd),
	.combout(nx28679z65),
	.cout());
// synopsys translate_off
defparam ix28679z53018.lut_mask = 16'hE4A0;
defparam ix28679z53018.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N14
cycloneii_lcell_comb ix28679z53016(
// Equation(s):
// i_add2_1_ = (nx28679z64) # ((nx28679z65) # ((e_1_ & nx28679z3)))

	.dataa(nx28679z64),
	.datab(e_1_),
	.datac(nx28679z3),
	.datad(nx28679z65),
	.cin(gnd),
	.combout(i_add2_1_),
	.cout());
// synopsys translate_off
defparam ix28679z53016.lut_mask = 16'hFFEA;
defparam ix28679z53016.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N0
cycloneii_lcell_comb ix28679z52996(
// Equation(s):
// nx28679z50 = (!valid_1_ & (f_0_ & (!valid_2_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(f_0_),
	.datac(valid_2_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z50),
	.cout());
// synopsys translate_off
defparam ix28679z52996.lut_mask = 16'h0004;
defparam ix28679z52996.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N20
cycloneii_lcell_comb ix28679z52997(
// Equation(s):
// nx28679z51 = (valid_0_ & (a_0_)) # (!valid_0_ & (((valid_1_ & b_0_))))

	.dataa(a_0_),
	.datab(valid_1_),
	.datac(b_0_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z51),
	.cout());
// synopsys translate_off
defparam ix28679z52997.lut_mask = 16'hAAC0;
defparam ix28679z52997.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N18
cycloneii_lcell_comb ix28679z52995(
// Equation(s):
// i_add1_0_ = (nx28679z51) # ((nx28679z50) # ((nx28679z3 & d_0_)))

	.dataa(nx28679z3),
	.datab(d_0_),
	.datac(nx28679z51),
	.datad(nx28679z50),
	.cin(gnd),
	.combout(i_add1_0_),
	.cout());
// synopsys translate_off
defparam ix28679z52995.lut_mask = 16'hFFF8;
defparam ix28679z52995.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N10
cycloneii_lcell_comb ix28679z52954(
// Equation(s):
// nx28679z22 = (!valid_1_ & (!valid_2_ & (h_6_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(h_6_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z22),
	.cout());
// synopsys translate_off
defparam ix28679z52954.lut_mask = 16'h0010;
defparam ix28679z52954.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N26
cycloneii_lcell_comb ix28679z52933(
// Equation(s):
// nx28679z8 = (!valid_1_ & (!valid_2_ & (e_5_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(e_5_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z8),
	.cout());
// synopsys translate_off
defparam ix28679z52933.lut_mask = 16'h0010;
defparam ix28679z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N14
cycloneii_lcell_comb ix28679z52934(
// Equation(s):
// nx28679z9 = (valid_0_ & (g_5_)) # (!valid_0_ & (((valid_1_ & a_5_))))

	.dataa(g_5_),
	.datab(valid_1_),
	.datac(a_5_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z9),
	.cout());
// synopsys translate_off
defparam ix28679z52934.lut_mask = 16'hAAC0;
defparam ix28679z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N6
cycloneii_lcell_comb ix28679z52932(
// Equation(s):
// i_max1_5_ = (nx28679z9) # ((nx28679z8) # ((nx28679z3 & c_5_)))

	.dataa(nx28679z3),
	.datab(c_5_),
	.datac(nx28679z9),
	.datad(nx28679z8),
	.cin(gnd),
	.combout(i_max1_5_),
	.cout());
// synopsys translate_off
defparam ix28679z52932.lut_mask = 16'hFFF8;
defparam ix28679z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N2
cycloneii_lcell_comb ix28679z52961(
// Equation(s):
// nx28679z27 = (valid_0_ & (((b_4_)))) # (!valid_0_ & (d_4_ & ((valid_1_))))

	.dataa(d_4_),
	.datab(valid_0_),
	.datac(b_4_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z27),
	.cout());
// synopsys translate_off
defparam ix28679z52961.lut_mask = 16'hE2C0;
defparam ix28679z52961.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N24
cycloneii_lcell_comb ix28679z52937(
// Equation(s):
// nx28679z11 = (valid_0_ & (g_4_)) # (!valid_0_ & (((a_4_ & valid_1_))))

	.dataa(g_4_),
	.datab(valid_0_),
	.datac(a_4_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z11),
	.cout());
// synopsys translate_off
defparam ix28679z52937.lut_mask = 16'hB888;
defparam ix28679z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y33_N10
cycloneii_lcell_comb ix28679z52963(
// Equation(s):
// nx28679z28 = (!valid_1_ & (!valid_2_ & (h_3_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(h_3_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z28),
	.cout());
// synopsys translate_off
defparam ix28679z52963.lut_mask = 16'h0010;
defparam ix28679z52963.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N28
cycloneii_lcell_comb ix28679z52969(
// Equation(s):
// nx28679z32 = (!valid_1_ & (!valid_0_ & (h_1_ & !valid_2_)))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(h_1_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z32),
	.cout());
// synopsys translate_off
defparam ix28679z52969.lut_mask = 16'h0010;
defparam ix28679z52969.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N12
cycloneii_lcell_comb ix28679z52972(
// Equation(s):
// nx28679z34 = (!valid_1_ & (!valid_0_ & (h_0_ & !valid_2_)))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(h_0_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z34),
	.cout());
// synopsys translate_off
defparam ix28679z52972.lut_mask = 16'h0010;
defparam ix28679z52972.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N20
cycloneii_lcell_comb stage1_au_max1_aix54128z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_7_ = (stage1_au_max1_anx54128z1 & (i_max1_7_)) # (!stage1_au_max1_anx54128z1 & ((i_max2_7_)))

	.dataa(i_max1_7_),
	.datab(vcc),
	.datac(i_max2_7_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_7_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix54128z52923.lut_mask = 16'hAAF0;
defparam stage1_au_max1_aix54128z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N26
cycloneii_lcell_comb stage1_au_max1_aix55125z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_6_ = (stage1_au_max1_anx54128z1 & (i_max1_6_)) # (!stage1_au_max1_anx54128z1 & ((i_max2_6_)))

	.dataa(vcc),
	.datab(i_max1_6_),
	.datac(i_max2_6_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_6_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix55125z52923.lut_mask = 16'hCCF0;
defparam stage1_au_max1_aix55125z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N28
cycloneii_lcell_comb stage1_au_max1_aix56122z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_5_ = (stage1_au_max1_anx54128z1 & ((i_max1_5_))) # (!stage1_au_max1_anx54128z1 & (i_max2_5_))

	.dataa(vcc),
	.datab(i_max2_5_),
	.datac(i_max1_5_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_5_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix56122z52923.lut_mask = 16'hF0CC;
defparam stage1_au_max1_aix56122z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N20
cycloneii_lcell_comb stage1_au_max1_aix60110z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_1_ = (stage1_au_max1_anx54128z1 & ((i_max1_1_))) # (!stage1_au_max1_anx54128z1 & (i_max2_1_))

	.dataa(vcc),
	.datab(i_max2_1_),
	.datac(i_max1_1_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_1_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix60110z52923.lut_mask = 16'hF0CC;
defparam stage1_au_max1_aix60110z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N14
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52926(
// Equation(s):
// stage1_ao_max_add_stage1_7_ = (stage1_au_max1_ao_max_pix_7_ & ((stage1_ao_add_op12_stage1_7_ & (stage1_anx15254z4 & VCC)) # (!stage1_ao_add_op12_stage1_7_ & (!stage1_anx15254z4)))) # (!stage1_au_max1_ao_max_pix_7_ & ((stage1_ao_add_op12_stage1_7_ & 
// (!stage1_anx15254z4)) # (!stage1_ao_add_op12_stage1_7_ & ((stage1_anx15254z4) # (GND)))))
// stage1_anx15254z3 = CARRY((stage1_au_max1_ao_max_pix_7_ & (!stage1_ao_add_op12_stage1_7_ & !stage1_anx15254z4)) # (!stage1_au_max1_ao_max_pix_7_ & ((!stage1_anx15254z4) # (!stage1_ao_add_op12_stage1_7_))))

	.dataa(stage1_au_max1_ao_max_pix_7_),
	.datab(stage1_ao_add_op12_stage1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z4),
	.combout(stage1_ao_max_add_stage1_7_),
	.cout(stage1_anx15254z3));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52926.lut_mask = 16'h9617;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N16
cycloneii_lcell_comb stage1_aix15254z52925(
// Equation(s):
// stage1_anx15254z2 = !stage1_anx15254z3

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z3),
	.combout(stage1_anx15254z2),
	.cout());
// synopsys translate_off
defparam stage1_aix15254z52925.lut_mask = 16'h0F0F;
defparam stage1_aix15254z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y32_N25
cycloneii_lcell_ff reg_i_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_6_));

// Location: LCFF_X47_Y33_N31
cycloneii_lcell_ff reg_i_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_3_));

// Location: LCFF_X48_Y33_N13
cycloneii_lcell_ff reg_i_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_1_));

// Location: M4K_X52_Y34
cycloneii_ram_block mem_aix64056z29481_aauto_generated_aram_block1a0(
	.portawe(mem_wren_0_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({column_7_,column_6_,column_5_,column_4_,column_3_,column_2_,column_1_,column_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_aix64056z29481_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N4
cycloneii_lcell_comb ix51243z52923(
// Equation(s):
// mem_wren_0_ = (!o_row_0_ & i_valid_acombout)

	.dataa(vcc),
	.datab(o_row_0_),
	.datac(vcc),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(mem_wren_0_),
	.cout());
// synopsys translate_off
defparam ix51243z52923.lut_mask = 16'h3300;
defparam ix51243z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N6
cycloneii_lcell_comb ix54114z52923(
// Equation(s):
// mem_wren_1_ = (o_row_0_ & i_valid_acombout)

	.dataa(vcc),
	.datab(o_row_0_),
	.datac(vcc),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(mem_wren_1_),
	.cout());
// synopsys translate_off
defparam ix54114z52923.lut_mask = 16'hCC00;
defparam ix54114z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N18
cycloneii_lcell_comb column_valid1_7__afeeder(
// Equation(s):
// column_valid1_7__afeeder_combout = column_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(column_7_),
	.datad(vcc),
	.cin(gnd),
	.combout(column_valid1_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_7__afeeder.lut_mask = 16'hF0F0;
defparam column_valid1_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N2
cycloneii_lcell_comb column_valid2_7__afeeder(
// Equation(s):
// column_valid2_7__afeeder_combout = column_valid1_7_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(column_valid1_7_),
	.cin(gnd),
	.combout(column_valid2_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid2_7__afeeder.lut_mask = 16'hFF00;
defparam column_valid2_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N18
cycloneii_lcell_comb d_3__afeeder(
// Equation(s):
// d_3__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[3]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(mem_0_aix64056z29482_aauto_generated_aq_a[3]),
	.cin(gnd),
	.combout(d_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_3__afeeder.lut_mask = 16'hFF00;
defparam d_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_clock_aI(
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
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_aI.input_async_reset = "none";
defparam i_clock_aI.input_power_up = "low";
defparam i_clock_aI.input_register_mode = "none";
defparam i_clock_aI.input_sync_reset = "none";
defparam i_clock_aI.oe_async_reset = "none";
defparam i_clock_aI.oe_power_up = "low";
defparam i_clock_aI.oe_register_mode = "none";
defparam i_clock_aI.oe_sync_reset = "none";
defparam i_clock_aI.operation_mode = "input";
defparam i_clock_aI.output_async_reset = "none";
defparam i_clock_aI.output_power_up = "low";
defparam i_clock_aI.output_register_mode = "none";
defparam i_clock_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N28
cycloneii_lcell_comb ix51271z52923(
// Equation(s):
// inc_d_0_ = !o_row_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(o_row_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0_),
	.cout());
// synopsys translate_off
defparam ix51271z52923.lut_mask = 16'h0F0F;
defparam ix51271z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_reset_aI(
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
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_aI.input_async_reset = "none";
defparam i_reset_aI.input_power_up = "low";
defparam i_reset_aI.input_register_mode = "none";
defparam i_reset_aI.input_sync_reset = "none";
defparam i_reset_aI.oe_async_reset = "none";
defparam i_reset_aI.oe_power_up = "low";
defparam i_reset_aI.oe_register_mode = "none";
defparam i_reset_aI.oe_sync_reset = "none";
defparam i_reset_aI.operation_mode = "input";
defparam i_reset_aI.output_async_reset = "none";
defparam i_reset_aI.output_power_up = "low";
defparam i_reset_aI.output_register_mode = "none";
defparam i_reset_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N26
cycloneii_lcell_comb ix9489z52923(
// Equation(s):
// inc_d_0__dup_1231 = !column_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(column_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_1231),
	.cout());
// synopsys translate_off
defparam ix9489z52923.lut_mask = 16'h0F0F;
defparam ix9489z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N22
cycloneii_lcell_comb ix34903z52923(
// Equation(s):
// nx34903z1 = (valid_0_) # (i_reset_acombout)

	.dataa(valid_0_),
	.datab(vcc),
	.datac(vcc),
	.datad(i_reset_acombout),
	.cin(gnd),
	.combout(nx34903z1),
	.cout());
// synopsys translate_off
defparam ix34903z52923.lut_mask = 16'hFFAA;
defparam ix34903z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y33_N27
cycloneii_lcell_ff reg_q_0__dup_7(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_0__dup_1231),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_0_));

// Location: LCCOMB_X49_Y33_N2
cycloneii_lcell_comb ix12707z52924(
// Equation(s):
// nx12707z1 = CARRY(column_0_)

	.dataa(vcc),
	.datab(column_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx12707z1));
// synopsys translate_off
defparam ix12707z52924.lut_mask = 16'h00CC;
defparam ix12707z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N4
cycloneii_lcell_comb ix12707z52923(
// Equation(s):
// inc_d_1__dup_1233 = (column_1_ & (!nx12707z1)) # (!column_1_ & ((nx12707z1) # (GND)))
// nx8437z2 = CARRY((!nx12707z1) # (!column_1_))

	.dataa(vcc),
	.datab(column_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx12707z1),
	.combout(inc_d_1__dup_1233),
	.cout(nx8437z2));
// synopsys translate_off
defparam ix12707z52923.lut_mask = 16'h3C3F;
defparam ix12707z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y33_N5
cycloneii_lcell_ff reg_q_1__dup_6(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_1__dup_1233),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_1_));

// Location: LCCOMB_X49_Y33_N6
cycloneii_lcell_comb ix8437z52925(
// Equation(s):
// inc_d_2__dup_1235 = (column_2_ & (nx8437z2 $ (GND))) # (!column_2_ & (!nx8437z2 & VCC))
// nx8437z1 = CARRY((column_2_ & !nx8437z2))

	.dataa(column_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx8437z2),
	.combout(inc_d_2__dup_1235),
	.cout(nx8437z1));
// synopsys translate_off
defparam ix8437z52925.lut_mask = 16'hA50A;
defparam ix8437z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N8
cycloneii_lcell_comb ix8437z52923(
// Equation(s):
// inc_d_3__dup_1237 = (column_3_ & (!nx8437z1)) # (!column_3_ & ((nx8437z1) # (GND)))
// nx50725z4 = CARRY((!nx8437z1) # (!column_3_))

	.dataa(vcc),
	.datab(column_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx8437z1),
	.combout(inc_d_3__dup_1237),
	.cout(nx50725z4));
// synopsys translate_off
defparam ix8437z52923.lut_mask = 16'h3C3F;
defparam ix8437z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y33_N9
cycloneii_lcell_ff reg_q_3__dup_4(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_3__dup_1237),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_3_));

// Location: LCCOMB_X49_Y33_N28
cycloneii_lcell_comb ix34903z52926(
// Equation(s):
// nx34903z4 = (column_2_ & (column_3_ & (column_1_ & column_0_)))

	.dataa(column_2_),
	.datab(column_3_),
	.datac(column_1_),
	.datad(column_0_),
	.cin(gnd),
	.combout(nx34903z4),
	.cout());
// synopsys translate_off
defparam ix34903z52926.lut_mask = 16'h8000;
defparam ix34903z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N10
cycloneii_lcell_comb ix50725z52926(
// Equation(s):
// inc_d_4__dup_1239 = (column_4_ & (nx50725z4 $ (GND))) # (!column_4_ & (!nx50725z4 & VCC))
// nx50725z3 = CARRY((column_4_ & !nx50725z4))

	.dataa(column_4_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx50725z4),
	.combout(inc_d_4__dup_1239),
	.cout(nx50725z3));
// synopsys translate_off
defparam ix50725z52926.lut_mask = 16'hA50A;
defparam ix50725z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N12
cycloneii_lcell_comb ix50725z52925(
// Equation(s):
// inc_d_5__dup_1241 = (column_5_ & (!nx50725z3)) # (!column_5_ & ((nx50725z3) # (GND)))
// nx50725z2 = CARRY((!nx50725z3) # (!column_5_))

	.dataa(column_5_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx50725z3),
	.combout(inc_d_5__dup_1241),
	.cout(nx50725z2));
// synopsys translate_off
defparam ix50725z52925.lut_mask = 16'h5A5F;
defparam ix50725z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N14
cycloneii_lcell_comb ix50725z52924(
// Equation(s):
// inc_d_6__dup_1243 = (column_6_ & (nx50725z2 $ (GND))) # (!column_6_ & (!nx50725z2 & VCC))
// nx50725z1 = CARRY((column_6_ & !nx50725z2))

	.dataa(vcc),
	.datab(column_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx50725z2),
	.combout(inc_d_6__dup_1243),
	.cout(nx50725z1));
// synopsys translate_off
defparam ix50725z52924.lut_mask = 16'hC30C;
defparam ix50725z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y33_N15
cycloneii_lcell_ff reg_q_6__dup_1(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_6__dup_1243),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_6_));

// Location: LCCOMB_X49_Y33_N16
cycloneii_lcell_comb ix50725z52923(
// Equation(s):
// inc_d_7__dup_1245 = column_7_ $ (nx50725z1)

	.dataa(column_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx50725z1),
	.combout(inc_d_7__dup_1245),
	.cout());
// synopsys translate_off
defparam ix50725z52923.lut_mask = 16'h5A5A;
defparam ix50725z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X49_Y33_N17
cycloneii_lcell_ff reg_q_7__dup_0(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_7__dup_1245),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_7_));

// Location: LCFF_X49_Y33_N13
cycloneii_lcell_ff reg_q_5__dup_2(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_5__dup_1241),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_5_));

// Location: LCCOMB_X49_Y33_N24
cycloneii_lcell_comb ix34903z52925(
// Equation(s):
// nx34903z3 = (column_4_ & (column_6_ & (column_7_ & column_5_)))

	.dataa(column_4_),
	.datab(column_6_),
	.datac(column_7_),
	.datad(column_5_),
	.cin(gnd),
	.combout(nx34903z3),
	.cout());
// synopsys translate_off
defparam ix34903z52925.lut_mask = 16'h8000;
defparam ix34903z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N10
cycloneii_lcell_comb ix34903z52924(
// Equation(s):
// nx34903z2 = (i_reset_acombout) # ((valid_0_ & (nx34903z4 & nx34903z3)))

	.dataa(valid_0_),
	.datab(nx34903z4),
	.datac(i_reset_acombout),
	.datad(nx34903z3),
	.cin(gnd),
	.combout(nx34903z2),
	.cout());
// synopsys translate_off
defparam ix34903z52924.lut_mask = 16'hF8F0;
defparam ix34903z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y33_N29
cycloneii_lcell_ff reg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_0_));

// Location: LCCOMB_X53_Y33_N12
cycloneii_lcell_comb ix54262z52926(
// Equation(s):
// nx54262z3 = CARRY(o_row_0_)

	.dataa(vcc),
	.datab(o_row_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx54262z3));
// synopsys translate_off
defparam ix54262z52926.lut_mask = 16'h00CC;
defparam ix54262z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N14
cycloneii_lcell_comb ix54262z52925(
// Equation(s):
// inc_d_1_ = (o_row_1_ & (!nx54262z3)) # (!o_row_1_ & ((nx54262z3) # (GND)))
// nx54262z2 = CARRY((!nx54262z3) # (!o_row_1_))

	.dataa(vcc),
	.datab(o_row_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx54262z3),
	.combout(inc_d_1_),
	.cout(nx54262z2));
// synopsys translate_off
defparam ix54262z52925.lut_mask = 16'h3C3F;
defparam ix54262z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X53_Y33_N15
cycloneii_lcell_ff reg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_1_));

// Location: LCCOMB_X53_Y33_N16
cycloneii_lcell_comb ix54262z52924(
// Equation(s):
// inc_d_2_ = (o_row_2_ & (nx54262z2 $ (GND))) # (!o_row_2_ & (!nx54262z2 & VCC))
// nx54262z1 = CARRY((o_row_2_ & !nx54262z2))

	.dataa(o_row_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx54262z2),
	.combout(inc_d_2_),
	.cout(nx54262z1));
// synopsys translate_off
defparam ix54262z52924.lut_mask = 16'hA50A;
defparam ix54262z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N18
cycloneii_lcell_comb ix54262z52923(
// Equation(s):
// inc_d_3_ = (o_row_3_ & (!nx54262z1)) # (!o_row_3_ & ((nx54262z1) # (GND)))
// nx58250z4 = CARRY((!nx54262z1) # (!o_row_3_))

	.dataa(vcc),
	.datab(o_row_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx54262z1),
	.combout(inc_d_3_),
	.cout(nx58250z4));
// synopsys translate_off
defparam ix54262z52923.lut_mask = 16'h3C3F;
defparam ix54262z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X53_Y33_N19
cycloneii_lcell_ff reg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_3_));

// Location: LCCOMB_X53_Y33_N20
cycloneii_lcell_comb ix58250z52926(
// Equation(s):
// inc_d_4_ = (o_row_4_ & (nx58250z4 $ (GND))) # (!o_row_4_ & (!nx58250z4 & VCC))
// nx58250z3 = CARRY((o_row_4_ & !nx58250z4))

	.dataa(o_row_4_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx58250z4),
	.combout(inc_d_4_),
	.cout(nx58250z3));
// synopsys translate_off
defparam ix58250z52926.lut_mask = 16'hA50A;
defparam ix58250z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N22
cycloneii_lcell_comb ix58250z52925(
// Equation(s):
// inc_d_5_ = (o_row_5_ & (!nx58250z3)) # (!o_row_5_ & ((nx58250z3) # (GND)))
// nx58250z2 = CARRY((!nx58250z3) # (!o_row_5_))

	.dataa(vcc),
	.datab(o_row_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx58250z3),
	.combout(inc_d_5_),
	.cout(nx58250z2));
// synopsys translate_off
defparam ix58250z52925.lut_mask = 16'h3C3F;
defparam ix58250z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X53_Y33_N23
cycloneii_lcell_ff reg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_5_));

// Location: LCCOMB_X53_Y33_N24
cycloneii_lcell_comb ix58250z52924(
// Equation(s):
// inc_d_6_ = (o_row_6_ & (nx58250z2 $ (GND))) # (!o_row_6_ & (!nx58250z2 & VCC))
// nx58250z1 = CARRY((o_row_6_ & !nx58250z2))

	.dataa(o_row_6_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx58250z2),
	.combout(inc_d_6_),
	.cout(nx58250z1));
// synopsys translate_off
defparam ix58250z52924.lut_mask = 16'hA50A;
defparam ix58250z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X53_Y33_N25
cycloneii_lcell_ff reg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_6_));

// Location: LCCOMB_X51_Y33_N2
cycloneii_lcell_comb row_valid1_6__afeeder(
// Equation(s):
// row_valid1_6__afeeder_combout = o_row_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_row_6_),
	.cin(gnd),
	.combout(row_valid1_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid1_6__afeeder.lut_mask = 16'hFF00;
defparam row_valid1_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_valid_aI(
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
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_aI.input_async_reset = "none";
defparam i_valid_aI.input_power_up = "low";
defparam i_valid_aI.input_register_mode = "none";
defparam i_valid_aI.input_sync_reset = "none";
defparam i_valid_aI.oe_async_reset = "none";
defparam i_valid_aI.oe_power_up = "low";
defparam i_valid_aI.oe_register_mode = "none";
defparam i_valid_aI.oe_sync_reset = "none";
defparam i_valid_aI.operation_mode = "input";
defparam i_valid_aI.output_async_reset = "none";
defparam i_valid_aI.output_power_up = "low";
defparam i_valid_aI.output_register_mode = "none";
defparam i_valid_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X48_Y32_N31
cycloneii_lcell_ff reg_valid_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_valid_acombout),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_0_));

// Location: LCFF_X51_Y33_N3
cycloneii_lcell_ff reg_row_valid1_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid1_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_6_));

// Location: LCCOMB_X50_Y33_N2
cycloneii_lcell_comb row_valid2_6__afeeder(
// Equation(s):
// row_valid2_6__afeeder_combout = row_valid1_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(row_valid1_6_),
	.cin(gnd),
	.combout(row_valid2_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid2_6__afeeder.lut_mask = 16'hFF00;
defparam row_valid2_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N17
cycloneii_lcell_ff reg_valid_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_1_));

// Location: LCFF_X48_Y32_N1
cycloneii_lcell_ff reg_valid_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_2_));

// Location: LCFF_X49_Y31_N3
cycloneii_lcell_ff reg_valid_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_3_));

// Location: LCFF_X49_Y31_N1
cycloneii_lcell_ff reg_valid_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_4_));

// Location: LCFF_X50_Y33_N3
cycloneii_lcell_ff reg_row_valid2_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid2_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_6_));

// Location: LCFF_X53_Y33_N21
cycloneii_lcell_ff reg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_4_));

// Location: LCCOMB_X51_Y33_N14
cycloneii_lcell_comb row_valid1_4__afeeder(
// Equation(s):
// row_valid1_4__afeeder_combout = o_row_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_row_4_),
	.cin(gnd),
	.combout(row_valid1_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid1_4__afeeder.lut_mask = 16'hFF00;
defparam row_valid1_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y33_N15
cycloneii_lcell_ff reg_row_valid1_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid1_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_4_));

// Location: LCFF_X50_Y33_N27
cycloneii_lcell_ff reg_row_valid2_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(row_valid1_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_4_));

// Location: LCFF_X51_Y33_N29
cycloneii_lcell_ff reg_row_valid1_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_row_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_5_));

// Location: LCFF_X50_Y33_N1
cycloneii_lcell_ff reg_row_valid2_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(row_valid1_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_5_));

// Location: LCCOMB_X50_Y33_N26
cycloneii_lcell_comb ix23902z52927(
// Equation(s):
// nx23902z5 = (row_valid2_7_) # ((row_valid2_6_) # ((row_valid2_4_) # (row_valid2_5_)))

	.dataa(row_valid2_7_),
	.datab(row_valid2_6_),
	.datac(row_valid2_4_),
	.datad(row_valid2_5_),
	.cin(gnd),
	.combout(nx23902z5),
	.cout());
// synopsys translate_off
defparam ix23902z52927.lut_mask = 16'hFFFE;
defparam ix23902z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y33_N17
cycloneii_lcell_ff reg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_2_));

// Location: LCCOMB_X51_Y33_N12
cycloneii_lcell_comb row_valid1_2__afeeder(
// Equation(s):
// row_valid1_2__afeeder_combout = o_row_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_row_2_),
	.cin(gnd),
	.combout(row_valid1_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid1_2__afeeder.lut_mask = 16'hFF00;
defparam row_valid1_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y33_N13
cycloneii_lcell_ff reg_row_valid1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid1_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_2_));

// Location: LCFF_X50_Y33_N23
cycloneii_lcell_ff reg_row_valid2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(row_valid1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_2_));

// Location: LCFF_X51_Y33_N11
cycloneii_lcell_ff reg_row_valid1_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(o_row_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_3_));

// Location: LCFF_X50_Y33_N15
cycloneii_lcell_ff reg_row_valid2_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(row_valid1_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_3_));

// Location: LCCOMB_X51_Y33_N30
cycloneii_lcell_comb row_valid1_1__afeeder(
// Equation(s):
// row_valid1_1__afeeder_combout = o_row_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_row_1_),
	.cin(gnd),
	.combout(row_valid1_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid1_1__afeeder.lut_mask = 16'hFF00;
defparam row_valid1_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y33_N31
cycloneii_lcell_ff reg_row_valid1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid1_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_1_));

// Location: LCCOMB_X50_Y33_N28
cycloneii_lcell_comb row_valid2_1__afeeder(
// Equation(s):
// row_valid2_1__afeeder_combout = row_valid1_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(row_valid1_1_),
	.cin(gnd),
	.combout(row_valid2_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid2_1__afeeder.lut_mask = 16'hFF00;
defparam row_valid2_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y33_N29
cycloneii_lcell_ff reg_row_valid2_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid2_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_1_));

// Location: LCCOMB_X50_Y33_N14
cycloneii_lcell_comb ix23902z52926(
// Equation(s):
// nx23902z4 = (row_valid2_2_) # ((row_valid2_3_) # (row_valid2_1_))

	.dataa(vcc),
	.datab(row_valid2_2_),
	.datac(row_valid2_3_),
	.datad(row_valid2_1_),
	.cin(gnd),
	.combout(nx23902z4),
	.cout());
// synopsys translate_off
defparam ix23902z52926.lut_mask = 16'hFFFC;
defparam ix23902z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N30
cycloneii_lcell_comb column_valid1_3__afeeder(
// Equation(s):
// column_valid1_3__afeeder_combout = column_3_

	.dataa(vcc),
	.datab(vcc),
	.datac(column_3_),
	.datad(vcc),
	.cin(gnd),
	.combout(column_valid1_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_3__afeeder.lut_mask = 16'hF0F0;
defparam column_valid1_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y33_N31
cycloneii_lcell_ff reg_column_valid1_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_3__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_3_));

// Location: LCFF_X50_Y33_N31
cycloneii_lcell_ff reg_column_valid2_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(column_valid1_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_3_));

// Location: LCFF_X49_Y33_N7
cycloneii_lcell_ff reg_q_2__dup_5(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_2__dup_1235),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_2_));

// Location: LCCOMB_X51_Y33_N0
cycloneii_lcell_comb column_valid1_2__afeeder(
// Equation(s):
// column_valid1_2__afeeder_combout = column_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(column_2_),
	.cin(gnd),
	.combout(column_valid1_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_2__afeeder.lut_mask = 16'hFF00;
defparam column_valid1_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y33_N1
cycloneii_lcell_ff reg_column_valid1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_2__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_2_));

// Location: LCFF_X50_Y33_N21
cycloneii_lcell_ff reg_column_valid2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(column_valid1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_2_));

// Location: LCCOMB_X49_Y33_N0
cycloneii_lcell_comb column_valid1_1__afeeder(
// Equation(s):
// column_valid1_1__afeeder_combout = column_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(column_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(column_valid1_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_1__afeeder.lut_mask = 16'hF0F0;
defparam column_valid1_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y33_N1
cycloneii_lcell_ff reg_column_valid1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_1_));

// Location: LCCOMB_X45_Y33_N0
cycloneii_lcell_comb column_valid2_1__afeeder(
// Equation(s):
// column_valid2_1__afeeder_combout = column_valid1_1_

	.dataa(vcc),
	.datab(vcc),
	.datac(column_valid1_1_),
	.datad(vcc),
	.cin(gnd),
	.combout(column_valid2_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid2_1__afeeder.lut_mask = 16'hF0F0;
defparam column_valid2_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y33_N1
cycloneii_lcell_ff reg_column_valid2_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid2_1__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_1_));

// Location: LCCOMB_X50_Y33_N20
cycloneii_lcell_comb ix23902z52924(
// Equation(s):
// nx23902z2 = (nx23902z3) # ((column_valid2_3_) # ((column_valid2_2_) # (column_valid2_1_)))

	.dataa(nx23902z3),
	.datab(column_valid2_3_),
	.datac(column_valid2_2_),
	.datad(column_valid2_1_),
	.cin(gnd),
	.combout(nx23902z2),
	.cout());
// synopsys translate_off
defparam ix23902z52924.lut_mask = 16'hFFFE;
defparam ix23902z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N16
cycloneii_lcell_comb ix23902z52923(
// Equation(s):
// nx23902z1 = (valid_6_ & (nx23902z2 & ((nx23902z5) # (nx23902z4))))

	.dataa(valid_6_),
	.datab(nx23902z5),
	.datac(nx23902z4),
	.datad(nx23902z2),
	.cin(gnd),
	.combout(nx23902z1),
	.cout());
// synopsys translate_off
defparam ix23902z52923.lut_mask = 16'hA800;
defparam ix23902z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N17
cycloneii_lcell_ff reg_output_valid_reg(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23902z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(reg_output_valid_reg_aregout));

// Location: LCFF_X45_Y33_N31
cycloneii_lcell_ff reg_valid_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_5_));

// Location: LCFF_X45_Y32_N31
cycloneii_lcell_ff reg_valid_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(valid_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(valid_6_));

// Location: LCCOMB_X45_Y32_N4
cycloneii_lcell_comb ix61908z52939(
// Equation(s):
// nx61908z17 = (!valid_6_ & reg_r9_aregout)

	.dataa(vcc),
	.datab(valid_6_),
	.datac(reg_r9_aregout),
	.datad(vcc),
	.cin(gnd),
	.combout(nx61908z17),
	.cout());
// synopsys translate_off
defparam ix61908z52939.lut_mask = 16'h3030;
defparam ix61908z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a0_a_aI(
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
	.combout(i_pixel_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[0]));
// synopsys translate_off
defparam i_pixel_a0_a_aI.input_async_reset = "none";
defparam i_pixel_a0_a_aI.input_power_up = "low";
defparam i_pixel_a0_a_aI.input_register_mode = "none";
defparam i_pixel_a0_a_aI.input_sync_reset = "none";
defparam i_pixel_a0_a_aI.oe_async_reset = "none";
defparam i_pixel_a0_a_aI.oe_power_up = "low";
defparam i_pixel_a0_a_aI.oe_register_mode = "none";
defparam i_pixel_a0_a_aI.oe_sync_reset = "none";
defparam i_pixel_a0_a_aI.operation_mode = "input";
defparam i_pixel_a0_a_aI.output_async_reset = "none";
defparam i_pixel_a0_a_aI.output_power_up = "low";
defparam i_pixel_a0_a_aI.output_register_mode = "none";
defparam i_pixel_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X49_Y33_N11
cycloneii_lcell_ff reg_q_4__dup_3(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_4__dup_1239),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx34903z2),
	.sload(gnd),
	.ena(nx34903z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_4_));

// Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a1_a_aI(
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
	.combout(i_pixel_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[1]));
// synopsys translate_off
defparam i_pixel_a1_a_aI.input_async_reset = "none";
defparam i_pixel_a1_a_aI.input_power_up = "low";
defparam i_pixel_a1_a_aI.input_register_mode = "none";
defparam i_pixel_a1_a_aI.input_sync_reset = "none";
defparam i_pixel_a1_a_aI.oe_async_reset = "none";
defparam i_pixel_a1_a_aI.oe_power_up = "low";
defparam i_pixel_a1_a_aI.oe_register_mode = "none";
defparam i_pixel_a1_a_aI.oe_sync_reset = "none";
defparam i_pixel_a1_a_aI.operation_mode = "input";
defparam i_pixel_a1_a_aI.output_async_reset = "none";
defparam i_pixel_a1_a_aI.output_power_up = "low";
defparam i_pixel_a1_a_aI.output_register_mode = "none";
defparam i_pixel_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a2_a_aI(
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
	.combout(i_pixel_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[2]));
// synopsys translate_off
defparam i_pixel_a2_a_aI.input_async_reset = "none";
defparam i_pixel_a2_a_aI.input_power_up = "low";
defparam i_pixel_a2_a_aI.input_register_mode = "none";
defparam i_pixel_a2_a_aI.input_sync_reset = "none";
defparam i_pixel_a2_a_aI.oe_async_reset = "none";
defparam i_pixel_a2_a_aI.oe_power_up = "low";
defparam i_pixel_a2_a_aI.oe_register_mode = "none";
defparam i_pixel_a2_a_aI.oe_sync_reset = "none";
defparam i_pixel_a2_a_aI.operation_mode = "input";
defparam i_pixel_a2_a_aI.output_async_reset = "none";
defparam i_pixel_a2_a_aI.output_power_up = "low";
defparam i_pixel_a2_a_aI.output_register_mode = "none";
defparam i_pixel_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a3_a_aI(
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
	.combout(i_pixel_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[3]));
// synopsys translate_off
defparam i_pixel_a3_a_aI.input_async_reset = "none";
defparam i_pixel_a3_a_aI.input_power_up = "low";
defparam i_pixel_a3_a_aI.input_register_mode = "none";
defparam i_pixel_a3_a_aI.input_sync_reset = "none";
defparam i_pixel_a3_a_aI.oe_async_reset = "none";
defparam i_pixel_a3_a_aI.oe_power_up = "low";
defparam i_pixel_a3_a_aI.oe_register_mode = "none";
defparam i_pixel_a3_a_aI.oe_sync_reset = "none";
defparam i_pixel_a3_a_aI.operation_mode = "input";
defparam i_pixel_a3_a_aI.output_async_reset = "none";
defparam i_pixel_a3_a_aI.output_power_up = "low";
defparam i_pixel_a3_a_aI.output_register_mode = "none";
defparam i_pixel_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a4_a_aI(
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
	.combout(i_pixel_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[4]));
// synopsys translate_off
defparam i_pixel_a4_a_aI.input_async_reset = "none";
defparam i_pixel_a4_a_aI.input_power_up = "low";
defparam i_pixel_a4_a_aI.input_register_mode = "none";
defparam i_pixel_a4_a_aI.input_sync_reset = "none";
defparam i_pixel_a4_a_aI.oe_async_reset = "none";
defparam i_pixel_a4_a_aI.oe_power_up = "low";
defparam i_pixel_a4_a_aI.oe_register_mode = "none";
defparam i_pixel_a4_a_aI.oe_sync_reset = "none";
defparam i_pixel_a4_a_aI.operation_mode = "input";
defparam i_pixel_a4_a_aI.output_async_reset = "none";
defparam i_pixel_a4_a_aI.output_power_up = "low";
defparam i_pixel_a4_a_aI.output_register_mode = "none";
defparam i_pixel_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a5_a_aI(
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
	.combout(i_pixel_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[5]));
// synopsys translate_off
defparam i_pixel_a5_a_aI.input_async_reset = "none";
defparam i_pixel_a5_a_aI.input_power_up = "low";
defparam i_pixel_a5_a_aI.input_register_mode = "none";
defparam i_pixel_a5_a_aI.input_sync_reset = "none";
defparam i_pixel_a5_a_aI.oe_async_reset = "none";
defparam i_pixel_a5_a_aI.oe_power_up = "low";
defparam i_pixel_a5_a_aI.oe_register_mode = "none";
defparam i_pixel_a5_a_aI.oe_sync_reset = "none";
defparam i_pixel_a5_a_aI.operation_mode = "input";
defparam i_pixel_a5_a_aI.output_async_reset = "none";
defparam i_pixel_a5_a_aI.output_power_up = "low";
defparam i_pixel_a5_a_aI.output_register_mode = "none";
defparam i_pixel_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a6_a_aI(
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
	.combout(i_pixel_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[6]));
// synopsys translate_off
defparam i_pixel_a6_a_aI.input_async_reset = "none";
defparam i_pixel_a6_a_aI.input_power_up = "low";
defparam i_pixel_a6_a_aI.input_register_mode = "none";
defparam i_pixel_a6_a_aI.input_sync_reset = "none";
defparam i_pixel_a6_a_aI.oe_async_reset = "none";
defparam i_pixel_a6_a_aI.oe_power_up = "low";
defparam i_pixel_a6_a_aI.oe_register_mode = "none";
defparam i_pixel_a6_a_aI.oe_sync_reset = "none";
defparam i_pixel_a6_a_aI.operation_mode = "input";
defparam i_pixel_a6_a_aI.output_async_reset = "none";
defparam i_pixel_a6_a_aI.output_power_up = "low";
defparam i_pixel_a6_a_aI.output_register_mode = "none";
defparam i_pixel_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_pixel_a7_a_aI(
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
	.combout(i_pixel_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_pixel[7]));
// synopsys translate_off
defparam i_pixel_a7_a_aI.input_async_reset = "none";
defparam i_pixel_a7_a_aI.input_power_up = "low";
defparam i_pixel_a7_a_aI.input_register_mode = "none";
defparam i_pixel_a7_a_aI.input_sync_reset = "none";
defparam i_pixel_a7_a_aI.oe_async_reset = "none";
defparam i_pixel_a7_a_aI.oe_power_up = "low";
defparam i_pixel_a7_a_aI.oe_register_mode = "none";
defparam i_pixel_a7_a_aI.oe_sync_reset = "none";
defparam i_pixel_a7_a_aI.operation_mode = "input";
defparam i_pixel_a7_a_aI.output_async_reset = "none";
defparam i_pixel_a7_a_aI.output_power_up = "low";
defparam i_pixel_a7_a_aI.output_register_mode = "none";
defparam i_pixel_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N4
cycloneii_lcell_comb c_6__afeeder(
// Equation(s):
// c_6__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[6]

	.dataa(vcc),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_6__afeeder.lut_mask = 16'hCCCC;
defparam c_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X52_Y33
cycloneii_ram_block mem_0_aix64056z29482_aauto_generated_aram_block1a0(
	.portawe(mem_wren_1_),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_pixel_acombout[7],i_pixel_acombout[6],i_pixel_acombout[5],i_pixel_acombout[4],i_pixel_acombout[3],i_pixel_acombout[2],i_pixel_acombout[1],i_pixel_acombout[0]}),
	.portaaddr({column_7_,column_6_,column_5_,column_4_,column_3_,column_2_,column_1_,column_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr(8'b00000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus),
	.portbdataout());
// synopsys translate_off
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:mem_0|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.operation_mode = "single_port";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_address_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_last_address = 255;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 256;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_b_address_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_0_aix64056z29482_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N8
cycloneii_lcell_comb ix20492z52923(
// Equation(s):
// nx20492z1 = (i_reset_acombout) # (i_valid_acombout)

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(nx20492z1),
	.cout());
// synopsys translate_off
defparam ix20492z52923.lut_mask = 16'hFFF0;
defparam ix20492z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N5
cycloneii_lcell_ff reg_c_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_6__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_6_));

// Location: LCFF_X49_Y32_N19
cycloneii_lcell_ff reg_b_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_6_));

// Location: LCFF_X49_Y32_N3
cycloneii_lcell_ff reg_a_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_6_));

// Location: LCCOMB_X49_Y32_N2
cycloneii_lcell_comb ix28679z52979(
// Equation(s):
// nx28679z39 = (valid_0_ & (((a_6_)))) # (!valid_0_ & (b_6_ & (valid_1_)))

	.dataa(b_6_),
	.datab(valid_1_),
	.datac(a_6_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z39),
	.cout());
// synopsys translate_off
defparam ix28679z52979.lut_mask = 16'hF088;
defparam ix28679z52979.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N30
cycloneii_lcell_comb ix28679z52926(
// Equation(s):
// nx28679z3 = (!valid_1_ & (!valid_0_ & valid_2_))

	.dataa(valid_1_),
	.datab(vcc),
	.datac(valid_0_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z3),
	.cout());
// synopsys translate_off
defparam ix28679z52926.lut_mask = 16'h0500;
defparam ix28679z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N14
cycloneii_lcell_comb d_6__afeeder(
// Equation(s):
// d_6__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[6]

	.dataa(vcc),
	.datab(mem_0_aix64056z29482_aauto_generated_aq_a[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(d_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_6__afeeder.lut_mask = 16'hCCCC;
defparam d_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N15
cycloneii_lcell_ff reg_d_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_6__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_6_));

// Location: LCCOMB_X49_Y32_N22
cycloneii_lcell_comb ix28679z52977(
// Equation(s):
// i_add1_6_ = (nx28679z38) # ((nx28679z39) # ((nx28679z3 & d_6_)))

	.dataa(nx28679z38),
	.datab(nx28679z39),
	.datac(nx28679z3),
	.datad(d_6_),
	.cin(gnd),
	.combout(i_add1_6_),
	.cout());
// synopsys translate_off
defparam ix28679z52977.lut_mask = 16'hFEEE;
defparam ix28679z52977.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N2
cycloneii_lcell_comb d_5__afeeder(
// Equation(s):
// d_5__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[5]

	.dataa(vcc),
	.datab(mem_0_aix64056z29482_aauto_generated_aq_a[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(d_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_5__afeeder.lut_mask = 16'hCCCC;
defparam d_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N3
cycloneii_lcell_ff reg_d_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_5__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_5_));

// Location: LCCOMB_X48_Y34_N8
cycloneii_lcell_comb c_5__afeeder(
// Equation(s):
// c_5__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[5]

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[5]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_5__afeeder.lut_mask = 16'hAAAA;
defparam c_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N9
cycloneii_lcell_ff reg_c_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_5__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_5_));

// Location: LCFF_X50_Y32_N31
cycloneii_lcell_ff reg_b_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_5_));

// Location: LCCOMB_X50_Y32_N0
cycloneii_lcell_comb ix28679z52982(
// Equation(s):
// nx28679z41 = (valid_0_ & (a_5_)) # (!valid_0_ & (((b_5_ & valid_1_))))

	.dataa(a_5_),
	.datab(b_5_),
	.datac(valid_0_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z41),
	.cout());
// synopsys translate_off
defparam ix28679z52982.lut_mask = 16'hACA0;
defparam ix28679z52982.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N16
cycloneii_lcell_comb ix28679z52980(
// Equation(s):
// i_add1_5_ = (nx28679z40) # ((nx28679z41) # ((nx28679z3 & d_5_)))

	.dataa(nx28679z40),
	.datab(nx28679z3),
	.datac(d_5_),
	.datad(nx28679z41),
	.cin(gnd),
	.combout(i_add1_5_),
	.cout());
// synopsys translate_off
defparam ix28679z52980.lut_mask = 16'hFFEA;
defparam ix28679z52980.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N12
cycloneii_lcell_comb c_4__afeeder(
// Equation(s):
// c_4__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[4]

	.dataa(vcc),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_4__afeeder.lut_mask = 16'hCCCC;
defparam c_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N13
cycloneii_lcell_ff reg_c_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_4__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_4_));

// Location: LCCOMB_X47_Y34_N14
cycloneii_lcell_comb ix28679z53009(
// Equation(s):
// nx28679z59 = (valid_0_ & (h_4_)) # (!valid_0_ & (((c_4_ & valid_1_))))

	.dataa(h_4_),
	.datab(valid_0_),
	.datac(c_4_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z59),
	.cout());
// synopsys translate_off
defparam ix28679z53009.lut_mask = 16'hB888;
defparam ix28679z53009.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y34_N21
cycloneii_lcell_ff reg_e_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_4_));

// Location: LCFF_X47_Y34_N5
cycloneii_lcell_ff reg_f_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_4_));

// Location: LCFF_X47_Y34_N11
cycloneii_lcell_ff reg_g_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_4_));

// Location: LCCOMB_X47_Y34_N10
cycloneii_lcell_comb ix28679z53008(
// Equation(s):
// nx28679z58 = (!valid_2_ & (!valid_0_ & (g_4_ & !valid_1_)))

	.dataa(valid_2_),
	.datab(valid_0_),
	.datac(g_4_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z58),
	.cout());
// synopsys translate_off
defparam ix28679z53008.lut_mask = 16'h0010;
defparam ix28679z53008.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N12
cycloneii_lcell_comb ix28679z53007(
// Equation(s):
// i_add2_4_ = (nx28679z59) # ((nx28679z58) # ((e_4_ & nx28679z3)))

	.dataa(e_4_),
	.datab(nx28679z3),
	.datac(nx28679z59),
	.datad(nx28679z58),
	.cin(gnd),
	.combout(i_add2_4_),
	.cout());
// synopsys translate_off
defparam ix28679z53007.lut_mask = 16'hFFF8;
defparam ix28679z53007.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N23
cycloneii_lcell_ff reg_e_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_3_));

// Location: LCCOMB_X47_Y33_N8
cycloneii_lcell_comb ix28679z53011(
// Equation(s):
// nx28679z60 = (g_3_ & (!valid_2_ & (!valid_1_ & !valid_0_)))

	.dataa(g_3_),
	.datab(valid_2_),
	.datac(valid_1_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z60),
	.cout());
// synopsys translate_off
defparam ix28679z53011.lut_mask = 16'h0002;
defparam ix28679z53011.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y33_N28
cycloneii_lcell_comb ix28679z53010(
// Equation(s):
// i_add2_3_ = (nx28679z61) # ((nx28679z60) # ((e_3_ & nx28679z3)))

	.dataa(nx28679z61),
	.datab(e_3_),
	.datac(nx28679z60),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_add2_3_),
	.cout());
// synopsys translate_off
defparam ix28679z53010.lut_mask = 16'hFEFA;
defparam ix28679z53010.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N28
cycloneii_lcell_comb c_2__afeeder(
// Equation(s):
// c_2__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[2]

	.dataa(vcc),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_2__afeeder.lut_mask = 16'hCCCC;
defparam c_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N29
cycloneii_lcell_ff reg_c_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_2__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_2_));

// Location: LCCOMB_X48_Y31_N30
cycloneii_lcell_comb ix28679z53015(
// Equation(s):
// nx28679z63 = (valid_0_ & (h_2_)) # (!valid_0_ & (((c_2_ & valid_1_))))

	.dataa(h_2_),
	.datab(valid_0_),
	.datac(c_2_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z63),
	.cout());
// synopsys translate_off
defparam ix28679z53015.lut_mask = 16'hB888;
defparam ix28679z53015.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N19
cycloneii_lcell_ff reg_e_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_2_));

// Location: LCFF_X48_Y32_N3
cycloneii_lcell_ff reg_f_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_2_));

// Location: LCFF_X48_Y32_N9
cycloneii_lcell_ff reg_g_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_2_));

// Location: LCCOMB_X49_Y32_N8
cycloneii_lcell_comb ix28679z53014(
// Equation(s):
// nx28679z62 = (!valid_1_ & (!valid_2_ & (g_2_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(g_2_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z62),
	.cout());
// synopsys translate_off
defparam ix28679z53014.lut_mask = 16'h0010;
defparam ix28679z53014.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N4
cycloneii_lcell_comb ix28679z53013(
// Equation(s):
// i_add2_2_ = (nx28679z63) # ((nx28679z62) # ((e_2_ & nx28679z3)))

	.dataa(e_2_),
	.datab(nx28679z63),
	.datac(nx28679z3),
	.datad(nx28679z62),
	.cin(gnd),
	.combout(i_add2_2_),
	.cout());
// synopsys translate_off
defparam ix28679z53013.lut_mask = 16'hFFEC;
defparam ix28679z53013.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N11
cycloneii_lcell_ff reg_e_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_1_));

// Location: LCFF_X47_Y32_N1
cycloneii_lcell_ff reg_f_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_1_));

// Location: LCCOMB_X49_Y32_N28
cycloneii_lcell_comb ix28679z52993(
// Equation(s):
// nx28679z48 = (!valid_0_ & (f_1_ & (!valid_1_ & !valid_2_)))

	.dataa(valid_0_),
	.datab(f_1_),
	.datac(valid_1_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z48),
	.cout());
// synopsys translate_off
defparam ix28679z52993.lut_mask = 16'h0004;
defparam ix28679z52993.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N24
cycloneii_lcell_comb c_1__afeeder(
// Equation(s):
// c_1__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[1]

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[1]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_1__afeeder.lut_mask = 16'hAAAA;
defparam c_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N25
cycloneii_lcell_ff reg_c_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_1__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_1_));

// Location: LCFF_X48_Y32_N21
cycloneii_lcell_ff reg_b_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_1_));

// Location: LCFF_X48_Y32_N7
cycloneii_lcell_ff reg_a_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_1_));

// Location: LCCOMB_X48_Y32_N6
cycloneii_lcell_comb ix28679z52994(
// Equation(s):
// nx28679z49 = (valid_0_ & (((a_1_)))) # (!valid_0_ & (b_1_ & (valid_1_)))

	.dataa(b_1_),
	.datab(valid_1_),
	.datac(a_1_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z49),
	.cout());
// synopsys translate_off
defparam ix28679z52994.lut_mask = 16'hF088;
defparam ix28679z52994.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N12
cycloneii_lcell_comb ix28679z52992(
// Equation(s):
// i_add1_1_ = (nx28679z48) # ((nx28679z49) # ((d_1_ & nx28679z3)))

	.dataa(d_1_),
	.datab(nx28679z48),
	.datac(nx28679z3),
	.datad(nx28679z49),
	.cin(gnd),
	.combout(i_add1_1_),
	.cout());
// synopsys translate_off
defparam ix28679z52992.lut_mask = 16'hFFEC;
defparam ix28679z52992.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N25
cycloneii_lcell_ff reg_e_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_0_));

// Location: LCFF_X47_Y32_N3
cycloneii_lcell_ff reg_f_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_0_));

// Location: LCFF_X48_Y32_N23
cycloneii_lcell_ff reg_g_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_0_));

// Location: LCCOMB_X48_Y32_N22
cycloneii_lcell_comb ix28679z53020(
// Equation(s):
// nx28679z66 = (!valid_1_ & (!valid_0_ & (g_0_ & !valid_2_)))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(g_0_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z66),
	.cout());
// synopsys translate_off
defparam ix28679z53020.lut_mask = 16'h0010;
defparam ix28679z53020.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N6
cycloneii_lcell_comb c_0__afeeder(
// Equation(s):
// c_0__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[0]

	.dataa(vcc),
	.datab(mem_aix64056z29481_aauto_generated_aq_a[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_0__afeeder.lut_mask = 16'hCCCC;
defparam c_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N7
cycloneii_lcell_ff reg_c_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_0__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_0_));

// Location: LCCOMB_X48_Y34_N20
cycloneii_lcell_comb d_0__afeeder(
// Equation(s):
// d_0__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[0]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(mem_0_aix64056z29482_aauto_generated_aq_a[0]),
	.cin(gnd),
	.combout(d_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_0__afeeder.lut_mask = 16'hFF00;
defparam d_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N21
cycloneii_lcell_ff reg_d_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_0__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[0]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_0_));

// Location: LCFF_X48_Y33_N23
cycloneii_lcell_ff reg_i_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_0_));

// Location: LCFF_X48_Y32_N13
cycloneii_lcell_ff reg_h_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_0_));

// Location: LCCOMB_X48_Y33_N26
cycloneii_lcell_comb ix28679z53021(
// Equation(s):
// nx28679z67 = (valid_0_ & (((h_0_)))) # (!valid_0_ & (valid_1_ & (c_0_)))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(c_0_),
	.datad(h_0_),
	.cin(gnd),
	.combout(nx28679z67),
	.cout());
// synopsys translate_off
defparam ix28679z53021.lut_mask = 16'hEA40;
defparam ix28679z53021.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N4
cycloneii_lcell_comb ix28679z53019(
// Equation(s):
// i_add2_0_ = (nx28679z66) # ((nx28679z67) # ((nx28679z3 & e_0_)))

	.dataa(nx28679z3),
	.datab(e_0_),
	.datac(nx28679z66),
	.datad(nx28679z67),
	.cin(gnd),
	.combout(i_add2_0_),
	.cout());
// synopsys translate_off
defparam ix28679z53019.lut_mask = 16'hFFF8;
defparam ix28679z53019.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N8
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52932(
// Equation(s):
// stage1_ao_add_op12_stage1_0_ = (i_add1_0_ & (i_add2_0_ $ (VCC))) # (!i_add1_0_ & (i_add2_0_ & VCC))
// stage1_anx45057z8 = CARRY((i_add1_0_ & i_add2_0_))

	.dataa(i_add1_0_),
	.datab(i_add2_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(stage1_ao_add_op12_stage1_0_),
	.cout(stage1_anx45057z8));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52932.lut_mask = 16'h6688;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N10
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52931(
// Equation(s):
// stage1_ao_add_op12_stage1_1_ = (i_add2_1_ & ((i_add1_1_ & (stage1_anx45057z8 & VCC)) # (!i_add1_1_ & (!stage1_anx45057z8)))) # (!i_add2_1_ & ((i_add1_1_ & (!stage1_anx45057z8)) # (!i_add1_1_ & ((stage1_anx45057z8) # (GND)))))
// stage1_anx45057z7 = CARRY((i_add2_1_ & (!i_add1_1_ & !stage1_anx45057z8)) # (!i_add2_1_ & ((!stage1_anx45057z8) # (!i_add1_1_))))

	.dataa(i_add2_1_),
	.datab(i_add1_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z8),
	.combout(stage1_ao_add_op12_stage1_1_),
	.cout(stage1_anx45057z7));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52931.lut_mask = 16'h9617;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N12
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52930(
// Equation(s):
// stage1_ao_add_op12_stage1_2_ = ((i_add1_2_ $ (i_add2_2_ $ (!stage1_anx45057z7)))) # (GND)
// stage1_anx45057z6 = CARRY((i_add1_2_ & ((i_add2_2_) # (!stage1_anx45057z7))) # (!i_add1_2_ & (i_add2_2_ & !stage1_anx45057z7)))

	.dataa(i_add1_2_),
	.datab(i_add2_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z7),
	.combout(stage1_ao_add_op12_stage1_2_),
	.cout(stage1_anx45057z6));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52930.lut_mask = 16'h698E;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N14
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52929(
// Equation(s):
// stage1_ao_add_op12_stage1_3_ = (i_add1_3_ & ((i_add2_3_ & (stage1_anx45057z6 & VCC)) # (!i_add2_3_ & (!stage1_anx45057z6)))) # (!i_add1_3_ & ((i_add2_3_ & (!stage1_anx45057z6)) # (!i_add2_3_ & ((stage1_anx45057z6) # (GND)))))
// stage1_anx45057z5 = CARRY((i_add1_3_ & (!i_add2_3_ & !stage1_anx45057z6)) # (!i_add1_3_ & ((!stage1_anx45057z6) # (!i_add2_3_))))

	.dataa(i_add1_3_),
	.datab(i_add2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z6),
	.combout(stage1_ao_add_op12_stage1_3_),
	.cout(stage1_anx45057z5));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52929.lut_mask = 16'h9617;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N16
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52928(
// Equation(s):
// stage1_ao_add_op12_stage1_4_ = ((i_add1_4_ $ (i_add2_4_ $ (!stage1_anx45057z5)))) # (GND)
// stage1_anx45057z4 = CARRY((i_add1_4_ & ((i_add2_4_) # (!stage1_anx45057z5))) # (!i_add1_4_ & (i_add2_4_ & !stage1_anx45057z5)))

	.dataa(i_add1_4_),
	.datab(i_add2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z5),
	.combout(stage1_ao_add_op12_stage1_4_),
	.cout(stage1_anx45057z4));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52928.lut_mask = 16'h698E;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N18
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52927(
// Equation(s):
// stage1_ao_add_op12_stage1_5_ = (i_add2_5_ & ((i_add1_5_ & (stage1_anx45057z4 & VCC)) # (!i_add1_5_ & (!stage1_anx45057z4)))) # (!i_add2_5_ & ((i_add1_5_ & (!stage1_anx45057z4)) # (!i_add1_5_ & ((stage1_anx45057z4) # (GND)))))
// stage1_anx45057z3 = CARRY((i_add2_5_ & (!i_add1_5_ & !stage1_anx45057z4)) # (!i_add2_5_ & ((!stage1_anx45057z4) # (!i_add1_5_))))

	.dataa(i_add2_5_),
	.datab(i_add1_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z4),
	.combout(stage1_ao_add_op12_stage1_5_),
	.cout(stage1_anx45057z3));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52927.lut_mask = 16'h9617;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N20
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52926(
// Equation(s):
// stage1_ao_add_op12_stage1_6_ = ((i_add2_6_ $ (i_add1_6_ $ (!stage1_anx45057z3)))) # (GND)
// stage1_anx45057z2 = CARRY((i_add2_6_ & ((i_add1_6_) # (!stage1_anx45057z3))) # (!i_add2_6_ & (i_add1_6_ & !stage1_anx45057z3)))

	.dataa(i_add2_6_),
	.datab(i_add1_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z3),
	.combout(stage1_ao_add_op12_stage1_6_),
	.cout(stage1_anx45057z2));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52926.lut_mask = 16'h698E;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y31_N21
cycloneii_lcell_ff reg_r2_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_6_));

// Location: LCCOMB_X44_Y33_N6
cycloneii_lcell_comb ix28678z52942(
// Equation(s):
// i_add3_6_ = (valid_5_ & (r6_5_)) # (!valid_5_ & ((r2_6_)))

	.dataa(r6_5_),
	.datab(valid_5_),
	.datac(vcc),
	.datad(r2_6_),
	.cin(gnd),
	.combout(i_add3_6_),
	.cout());
// synopsys translate_off
defparam ix28678z52942.lut_mask = 16'hBB88;
defparam ix28678z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N19
cycloneii_lcell_ff reg_r2_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_5_));

// Location: LCCOMB_X46_Y33_N10
cycloneii_lcell_comb ix28678z52943(
// Equation(s):
// i_add3_5_ = (valid_5_ & (r6_4_)) # (!valid_5_ & ((r2_5_)))

	.dataa(r6_4_),
	.datab(vcc),
	.datac(valid_5_),
	.datad(r2_5_),
	.cin(gnd),
	.combout(i_add3_5_),
	.cout());
// synopsys translate_off
defparam ix28678z52943.lut_mask = 16'hAFA0;
defparam ix28678z52943.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N17
cycloneii_lcell_ff reg_r2_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_4_));

// Location: LCFF_X46_Y33_N29
cycloneii_lcell_ff reg_temp_add_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_4_));

// Location: LCFF_X48_Y31_N15
cycloneii_lcell_ff reg_r2_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_3_));

// Location: LCFF_X46_Y33_N9
cycloneii_lcell_ff reg_temp_add_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_3_));

// Location: LCFF_X48_Y31_N13
cycloneii_lcell_ff reg_r2_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_2_));

// Location: LCFF_X46_Y33_N13
cycloneii_lcell_ff reg_temp_add_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_2_));

// Location: LCFF_X48_Y31_N11
cycloneii_lcell_ff reg_r2_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_1_));

// Location: LCFF_X46_Y33_N1
cycloneii_lcell_ff reg_temp_add_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_1_));

// Location: LCCOMB_X46_Y33_N0
cycloneii_lcell_comb ix28678z52960(
// Equation(s):
// i_add4_1_ = (valid_2_ & ((temp_add_1_))) # (!valid_2_ & (r6_1_))

	.dataa(r6_1_),
	.datab(vcc),
	.datac(temp_add_1_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(i_add4_1_),
	.cout());
// synopsys translate_off
defparam ix28678z52960.lut_mask = 16'hF0AA;
defparam ix28678z52960.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N9
cycloneii_lcell_ff reg_r2_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_0_));

// Location: LCCOMB_X45_Y33_N30
cycloneii_lcell_comb ix28678z52948(
// Equation(s):
// i_add3_0_ = (!valid_5_ & r2_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_5_),
	.datad(r2_0_),
	.cin(gnd),
	.combout(i_add3_0_),
	.cout());
// synopsys translate_off
defparam ix28678z52948.lut_mask = 16'h0F00;
defparam ix28678z52948.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N4
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52936(
// Equation(s):
// stage2_ao_add_op12_stage2_0_ = (i_add4_0_ & (i_add3_0_ $ (VCC))) # (!i_add4_0_ & (i_add3_0_ & VCC))
// stage2_anx22301z12 = CARRY((i_add4_0_ & i_add3_0_))

	.dataa(i_add4_0_),
	.datab(i_add3_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(stage2_ao_add_op12_stage2_0_),
	.cout(stage2_anx22301z12));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52936.lut_mask = 16'h6688;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N8
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52934(
// Equation(s):
// stage2_ao_add_op12_stage2_2_ = ((i_add3_2_ $ (i_add4_2_ $ (!stage2_anx22301z11)))) # (GND)
// stage2_anx22301z10 = CARRY((i_add3_2_ & ((i_add4_2_) # (!stage2_anx22301z11))) # (!i_add3_2_ & (i_add4_2_ & !stage2_anx22301z11)))

	.dataa(i_add3_2_),
	.datab(i_add4_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z11),
	.combout(stage2_ao_add_op12_stage2_2_),
	.cout(stage2_anx22301z10));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52934.lut_mask = 16'h698E;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52934.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N9
cycloneii_lcell_ff reg_r6_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_2_));

// Location: LCCOMB_X46_Y33_N12
cycloneii_lcell_comb ix28678z52959(
// Equation(s):
// i_add4_2_ = (valid_2_ & (temp_add_2_)) # (!valid_2_ & ((r6_2_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_add_2_),
	.datad(r6_2_),
	.cin(gnd),
	.combout(i_add4_2_),
	.cout());
// synopsys translate_off
defparam ix28678z52959.lut_mask = 16'hF3C0;
defparam ix28678z52959.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N10
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52933(
// Equation(s):
// stage2_ao_add_op12_stage2_3_ = (i_add3_3_ & ((i_add4_3_ & (stage2_anx22301z10 & VCC)) # (!i_add4_3_ & (!stage2_anx22301z10)))) # (!i_add3_3_ & ((i_add4_3_ & (!stage2_anx22301z10)) # (!i_add4_3_ & ((stage2_anx22301z10) # (GND)))))
// stage2_anx22301z9 = CARRY((i_add3_3_ & (!i_add4_3_ & !stage2_anx22301z10)) # (!i_add3_3_ & ((!stage2_anx22301z10) # (!i_add4_3_))))

	.dataa(i_add3_3_),
	.datab(i_add4_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z10),
	.combout(stage2_ao_add_op12_stage2_3_),
	.cout(stage2_anx22301z9));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52933.lut_mask = 16'h9617;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N11
cycloneii_lcell_ff reg_r6_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_3_));

// Location: LCCOMB_X46_Y33_N8
cycloneii_lcell_comb ix28678z52958(
// Equation(s):
// i_add4_3_ = (valid_2_ & (temp_add_3_)) # (!valid_2_ & ((r6_3_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_add_3_),
	.datad(r6_3_),
	.cin(gnd),
	.combout(i_add4_3_),
	.cout());
// synopsys translate_off
defparam ix28678z52958.lut_mask = 16'hF3C0;
defparam ix28678z52958.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N12
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52932(
// Equation(s):
// stage2_ao_add_op12_stage2_4_ = ((i_add3_4_ $ (i_add4_4_ $ (!stage2_anx22301z9)))) # (GND)
// stage2_anx22301z8 = CARRY((i_add3_4_ & ((i_add4_4_) # (!stage2_anx22301z9))) # (!i_add3_4_ & (i_add4_4_ & !stage2_anx22301z9)))

	.dataa(i_add3_4_),
	.datab(i_add4_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z9),
	.combout(stage2_ao_add_op12_stage2_4_),
	.cout(stage2_anx22301z8));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52932.lut_mask = 16'h698E;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N13
cycloneii_lcell_ff reg_r6_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_4_));

// Location: LCCOMB_X46_Y33_N28
cycloneii_lcell_comb ix28678z52957(
// Equation(s):
// i_add4_4_ = (valid_2_ & (temp_add_4_)) # (!valid_2_ & ((r6_4_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_add_4_),
	.datad(r6_4_),
	.cin(gnd),
	.combout(i_add4_4_),
	.cout());
// synopsys translate_off
defparam ix28678z52957.lut_mask = 16'hF3C0;
defparam ix28678z52957.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N16
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52930(
// Equation(s):
// stage2_ao_add_op12_stage2_6_ = ((i_add4_6_ $ (i_add3_6_ $ (!stage2_anx22301z7)))) # (GND)
// stage2_anx22301z6 = CARRY((i_add4_6_ & ((i_add3_6_) # (!stage2_anx22301z7))) # (!i_add4_6_ & (i_add3_6_ & !stage2_anx22301z7)))

	.dataa(i_add4_6_),
	.datab(i_add3_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z7),
	.combout(stage2_ao_add_op12_stage2_6_),
	.cout(stage2_anx22301z6));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52930.lut_mask = 16'h698E;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N17
cycloneii_lcell_ff reg_r6_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_6_));

// Location: LCCOMB_X47_Y34_N8
cycloneii_lcell_comb ix28679z52975(
// Equation(s):
// nx28679z36 = (f_7_ & (!valid_1_ & (!valid_0_ & !valid_2_)))

	.dataa(f_7_),
	.datab(valid_1_),
	.datac(valid_0_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z36),
	.cout());
// synopsys translate_off
defparam ix28679z52975.lut_mask = 16'h0002;
defparam ix28679z52975.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N0
cycloneii_lcell_comb c_7__afeeder(
// Equation(s):
// c_7__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[7]

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[7]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_7__afeeder.lut_mask = 16'hAAAA;
defparam c_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N1
cycloneii_lcell_ff reg_c_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_7__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_7_));

// Location: LCFF_X48_Y33_N15
cycloneii_lcell_ff reg_b_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_7_));

// Location: LCCOMB_X47_Y33_N0
cycloneii_lcell_comb ix28679z52976(
// Equation(s):
// nx28679z37 = (valid_0_ & (a_7_)) # (!valid_0_ & (((b_7_ & valid_1_))))

	.dataa(a_7_),
	.datab(b_7_),
	.datac(valid_1_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z37),
	.cout());
// synopsys translate_off
defparam ix28679z52976.lut_mask = 16'hAAC0;
defparam ix28679z52976.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N18
cycloneii_lcell_comb ix28679z52974(
// Equation(s):
// i_add1_7_ = (nx28679z36) # ((nx28679z37) # ((d_7_ & nx28679z3)))

	.dataa(d_7_),
	.datab(nx28679z3),
	.datac(nx28679z36),
	.datad(nx28679z37),
	.cin(gnd),
	.combout(i_add1_7_),
	.cout());
// synopsys translate_off
defparam ix28679z52974.lut_mask = 16'hFFF8;
defparam ix28679z52974.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N22
cycloneii_lcell_comb stage1_ao_add_op12_stage1_add8_0_ix45057z52925(
// Equation(s):
// stage1_ao_add_op12_stage1_7_ = (i_add2_7_ & ((i_add1_7_ & (stage1_anx45057z2 & VCC)) # (!i_add1_7_ & (!stage1_anx45057z2)))) # (!i_add2_7_ & ((i_add1_7_ & (!stage1_anx45057z2)) # (!i_add1_7_ & ((stage1_anx45057z2) # (GND)))))
// stage1_ao_add_op12_stage1_8_ = CARRY((i_add2_7_ & (!i_add1_7_ & !stage1_anx45057z2)) # (!i_add2_7_ & ((!stage1_anx45057z2) # (!i_add1_7_))))

	.dataa(i_add2_7_),
	.datab(i_add1_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx45057z2),
	.combout(stage1_ao_add_op12_stage1_7_),
	.cout(stage1_ao_add_op12_stage1_8_));
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52925.lut_mask = 16'h9617;
defparam stage1_ao_add_op12_stage1_add8_0_ix45057z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y31_N23
cycloneii_lcell_ff reg_r2_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_add_op12_stage1_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_7_));

// Location: LCCOMB_X44_Y33_N16
cycloneii_lcell_comb ix28678z52941(
// Equation(s):
// i_add3_7_ = (valid_5_ & (r6_6_)) # (!valid_5_ & ((r2_7_)))

	.dataa(vcc),
	.datab(valid_5_),
	.datac(r6_6_),
	.datad(r2_7_),
	.cin(gnd),
	.combout(i_add3_7_),
	.cout());
// synopsys translate_off
defparam ix28678z52941.lut_mask = 16'hF3C0;
defparam ix28678z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N18
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52929(
// Equation(s):
// stage2_ao_add_op12_stage2_7_ = (i_add4_7_ & ((i_add3_7_ & (stage2_anx22301z6 & VCC)) # (!i_add3_7_ & (!stage2_anx22301z6)))) # (!i_add4_7_ & ((i_add3_7_ & (!stage2_anx22301z6)) # (!i_add3_7_ & ((stage2_anx22301z6) # (GND)))))
// stage2_anx22301z5 = CARRY((i_add4_7_ & (!i_add3_7_ & !stage2_anx22301z6)) # (!i_add4_7_ & ((!stage2_anx22301z6) # (!i_add3_7_))))

	.dataa(i_add4_7_),
	.datab(i_add3_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z6),
	.combout(stage2_ao_add_op12_stage2_7_),
	.cout(stage2_anx22301z5));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52929.lut_mask = 16'h9617;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N19
cycloneii_lcell_ff reg_r6_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_7_));

// Location: LCCOMB_X48_Y34_N16
cycloneii_lcell_comb c_3__afeeder(
// Equation(s):
// c_3__afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a[3]

	.dataa(mem_aix64056z29481_aauto_generated_aq_a[3]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(c_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam c_3__afeeder.lut_mask = 16'hAAAA;
defparam c_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N17
cycloneii_lcell_ff reg_c_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(c_3__afeeder_combout),
	.sdata(mem_0_aix64056z29482_aauto_generated_aq_a[3]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(c_3_));

// Location: LCFF_X47_Y33_N3
cycloneii_lcell_ff reg_b_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_3_));

// Location: LCCOMB_X47_Y33_N2
cycloneii_lcell_comb ix28679z52964(
// Equation(s):
// nx28679z29 = (valid_0_ & (((b_3_)))) # (!valid_0_ & (d_3_ & ((valid_1_))))

	.dataa(d_3_),
	.datab(valid_0_),
	.datac(b_3_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z29),
	.cout());
// synopsys translate_off
defparam ix28679z52964.lut_mask = 16'hE2C0;
defparam ix28679z52964.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N5
cycloneii_lcell_ff reg_f_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_3_));

// Location: LCCOMB_X47_Y33_N4
cycloneii_lcell_comb ix28679z52962(
// Equation(s):
// i_max2_3_ = (nx28679z28) # ((nx28679z29) # ((f_3_ & nx28679z3)))

	.dataa(nx28679z28),
	.datab(nx28679z29),
	.datac(f_3_),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max2_3_),
	.cout());
// synopsys translate_off
defparam ix28679z52962.lut_mask = 16'hFEEE;
defparam ix28679z52962.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y33_N22
cycloneii_lcell_comb ix28679z52939(
// Equation(s):
// nx28679z12 = (!valid_1_ & (!valid_2_ & (e_3_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(e_3_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z12),
	.cout());
// synopsys translate_off
defparam ix28679z52939.lut_mask = 16'h0010;
defparam ix28679z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N15
cycloneii_lcell_ff reg_g_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_3_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_3_));

// Location: LCCOMB_X47_Y33_N14
cycloneii_lcell_comb ix28679z52940(
// Equation(s):
// nx28679z13 = (valid_0_ & (((g_3_)))) # (!valid_0_ & (a_3_ & ((valid_1_))))

	.dataa(a_3_),
	.datab(valid_0_),
	.datac(g_3_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z13),
	.cout());
// synopsys translate_off
defparam ix28679z52940.lut_mask = 16'hE2C0;
defparam ix28679z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y33_N16
cycloneii_lcell_comb ix28679z52938(
// Equation(s):
// i_max1_3_ = (nx28679z12) # ((nx28679z13) # ((c_3_ & nx28679z3)))

	.dataa(c_3_),
	.datab(nx28679z12),
	.datac(nx28679z13),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max1_3_),
	.cout());
// synopsys translate_off
defparam ix28679z52938.lut_mask = 16'hFEFC;
defparam ix28679z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N26
cycloneii_lcell_comb d_7__afeeder(
// Equation(s):
// d_7__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(mem_0_aix64056z29482_aauto_generated_aq_a[7]),
	.cin(gnd),
	.combout(d_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_7__afeeder.lut_mask = 16'hFF00;
defparam d_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N27
cycloneii_lcell_ff reg_d_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_7__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_7_));

// Location: LCCOMB_X48_Y33_N14
cycloneii_lcell_comb ix28679z52952(
// Equation(s):
// nx28679z21 = (valid_0_ & (((b_7_)))) # (!valid_0_ & (valid_1_ & ((d_7_))))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(b_7_),
	.datad(d_7_),
	.cin(gnd),
	.combout(nx28679z21),
	.cout());
// synopsys translate_off
defparam ix28679z52952.lut_mask = 16'hE4A0;
defparam ix28679z52952.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y33_N31
cycloneii_lcell_ff reg_e_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[7]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_7_));

// Location: LCFF_X48_Y33_N29
cycloneii_lcell_ff reg_f_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_7_));

// Location: LCFF_X47_Y34_N31
cycloneii_lcell_ff reg_i_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_7_));

// Location: LCFF_X48_Y33_N1
cycloneii_lcell_ff reg_h_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_7_));

// Location: LCCOMB_X48_Y33_N0
cycloneii_lcell_comb ix28679z52951(
// Equation(s):
// nx28679z20 = (!valid_1_ & (!valid_2_ & (h_7_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(h_7_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z20),
	.cout());
// synopsys translate_off
defparam ix28679z52951.lut_mask = 16'h0010;
defparam ix28679z52951.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N28
cycloneii_lcell_comb ix28679z52950(
// Equation(s):
// i_max2_7_ = (nx28679z21) # ((nx28679z20) # ((nx28679z3 & f_7_)))

	.dataa(nx28679z3),
	.datab(nx28679z21),
	.datac(f_7_),
	.datad(nx28679z20),
	.cin(gnd),
	.combout(i_max2_7_),
	.cout());
// synopsys translate_off
defparam ix28679z52950.lut_mask = 16'hFFEC;
defparam ix28679z52950.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N27
cycloneii_lcell_ff reg_e_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[6]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_6_));

// Location: LCFF_X49_Y32_N31
cycloneii_lcell_ff reg_f_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_6_));

// Location: LCFF_X50_Y32_N25
cycloneii_lcell_ff reg_g_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_6_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_6_));

// Location: LCCOMB_X50_Y32_N24
cycloneii_lcell_comb ix28679z52931(
// Equation(s):
// nx28679z7 = (valid_0_ & (((g_6_)))) # (!valid_0_ & (a_6_ & (valid_1_)))

	.dataa(a_6_),
	.datab(valid_1_),
	.datac(g_6_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z7),
	.cout());
// synopsys translate_off
defparam ix28679z52931.lut_mask = 16'hF088;
defparam ix28679z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N26
cycloneii_lcell_comb ix28679z52930(
// Equation(s):
// nx28679z6 = (!valid_1_ & (!valid_2_ & (e_6_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(e_6_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z6),
	.cout());
// synopsys translate_off
defparam ix28679z52930.lut_mask = 16'h0010;
defparam ix28679z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N22
cycloneii_lcell_comb ix28679z52929(
// Equation(s):
// i_max1_6_ = (nx28679z7) # ((nx28679z6) # ((nx28679z3 & c_6_)))

	.dataa(nx28679z3),
	.datab(c_6_),
	.datac(nx28679z7),
	.datad(nx28679z6),
	.cin(gnd),
	.combout(i_max1_6_),
	.cout());
// synopsys translate_off
defparam ix28679z52929.lut_mask = 16'hFFF8;
defparam ix28679z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y32_N3
cycloneii_lcell_ff reg_i_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_5_));

// Location: LCFF_X50_Y32_N29
cycloneii_lcell_ff reg_h_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_5_));

// Location: LCCOMB_X50_Y32_N28
cycloneii_lcell_comb ix28679z52957(
// Equation(s):
// nx28679z24 = (!valid_1_ & (!valid_2_ & (h_5_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(h_5_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z24),
	.cout());
// synopsys translate_off
defparam ix28679z52957.lut_mask = 16'h0010;
defparam ix28679z52957.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y32_N27
cycloneii_lcell_ff reg_e_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_pixel_acombout[5]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(e_5_));

// Location: LCFF_X50_Y32_N21
cycloneii_lcell_ff reg_f_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(e_5_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(f_5_));

// Location: LCCOMB_X50_Y32_N30
cycloneii_lcell_comb ix28679z52958(
// Equation(s):
// nx28679z25 = (valid_0_ & (((b_5_)))) # (!valid_0_ & (valid_1_ & ((d_5_))))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(b_5_),
	.datad(d_5_),
	.cin(gnd),
	.combout(nx28679z25),
	.cout());
// synopsys translate_off
defparam ix28679z52958.lut_mask = 16'hE4A0;
defparam ix28679z52958.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y32_N20
cycloneii_lcell_comb ix28679z52956(
// Equation(s):
// i_max2_5_ = (nx28679z24) # ((nx28679z25) # ((nx28679z3 & f_5_)))

	.dataa(nx28679z3),
	.datab(nx28679z24),
	.datac(f_5_),
	.datad(nx28679z25),
	.cin(gnd),
	.combout(i_max2_5_),
	.cout());
// synopsys translate_off
defparam ix28679z52956.lut_mask = 16'hFFEC;
defparam ix28679z52956.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N30
cycloneii_lcell_comb d_4__afeeder(
// Equation(s):
// d_4__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[4]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(mem_0_aix64056z29482_aauto_generated_aq_a[4]),
	.cin(gnd),
	.combout(d_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_4__afeeder.lut_mask = 16'hFF00;
defparam d_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N31
cycloneii_lcell_ff reg_d_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_4__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[4]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_4_));

// Location: LCFF_X47_Y34_N29
cycloneii_lcell_ff reg_i_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_4_));

// Location: LCFF_X47_Y34_N1
cycloneii_lcell_ff reg_h_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_4_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_4_));

// Location: LCCOMB_X47_Y34_N0
cycloneii_lcell_comb ix28679z52960(
// Equation(s):
// nx28679z26 = (!valid_1_ & (!valid_2_ & (h_4_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(h_4_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z26),
	.cout());
// synopsys translate_off
defparam ix28679z52960.lut_mask = 16'h0010;
defparam ix28679z52960.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N4
cycloneii_lcell_comb ix28679z52959(
// Equation(s):
// i_max2_4_ = (nx28679z27) # ((nx28679z26) # ((f_4_ & nx28679z3)))

	.dataa(nx28679z27),
	.datab(nx28679z26),
	.datac(f_4_),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max2_4_),
	.cout());
// synopsys translate_off
defparam ix28679z52959.lut_mask = 16'hFEEE;
defparam ix28679z52959.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y31_N1
cycloneii_lcell_ff reg_b_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_2_));

// Location: LCFF_X48_Y31_N29
cycloneii_lcell_ff reg_a_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_2_));

// Location: LCCOMB_X48_Y32_N8
cycloneii_lcell_comb ix28679z52943(
// Equation(s):
// nx28679z15 = (valid_0_ & (((g_2_)))) # (!valid_0_ & (valid_1_ & ((a_2_))))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(g_2_),
	.datad(a_2_),
	.cin(gnd),
	.combout(nx28679z15),
	.cout());
// synopsys translate_off
defparam ix28679z52943.lut_mask = 16'hE2C0;
defparam ix28679z52943.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N18
cycloneii_lcell_comb ix28679z52942(
// Equation(s):
// nx28679z14 = (!valid_1_ & (!valid_2_ & (e_2_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(e_2_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z14),
	.cout());
// synopsys translate_off
defparam ix28679z52942.lut_mask = 16'h0010;
defparam ix28679z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N4
cycloneii_lcell_comb ix28679z52941(
// Equation(s):
// i_max1_2_ = (nx28679z15) # ((nx28679z14) # ((c_2_ & nx28679z3)))

	.dataa(c_2_),
	.datab(nx28679z15),
	.datac(nx28679z14),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max1_2_),
	.cout());
// synopsys translate_off
defparam ix28679z52941.lut_mask = 16'hFEFC;
defparam ix28679z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N10
cycloneii_lcell_comb d_1__afeeder(
// Equation(s):
// d_1__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[1]

	.dataa(mem_0_aix64056z29482_aauto_generated_aq_a[1]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(d_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_1__afeeder.lut_mask = 16'hAAAA;
defparam d_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N11
cycloneii_lcell_ff reg_d_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_1__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[1]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_1_));

// Location: LCCOMB_X48_Y32_N20
cycloneii_lcell_comb ix28679z52970(
// Equation(s):
// nx28679z33 = (valid_0_ & (((b_1_)))) # (!valid_0_ & (valid_1_ & ((d_1_))))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(b_1_),
	.datad(d_1_),
	.cin(gnd),
	.combout(nx28679z33),
	.cout());
// synopsys translate_off
defparam ix28679z52970.lut_mask = 16'hE2C0;
defparam ix28679z52970.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N0
cycloneii_lcell_comb ix28679z52968(
// Equation(s):
// i_max2_1_ = (nx28679z32) # ((nx28679z33) # ((nx28679z3 & f_1_)))

	.dataa(nx28679z32),
	.datab(nx28679z3),
	.datac(f_1_),
	.datad(nx28679z33),
	.cin(gnd),
	.combout(i_max2_1_),
	.cout());
// synopsys translate_off
defparam ix28679z52968.lut_mask = 16'hFFEA;
defparam ix28679z52968.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y32_N5
cycloneii_lcell_ff reg_b_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(c_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(b_0_));

// Location: LCCOMB_X47_Y32_N4
cycloneii_lcell_comb ix28679z52973(
// Equation(s):
// nx28679z35 = (valid_0_ & (((b_0_)))) # (!valid_0_ & (valid_1_ & ((d_0_))))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(b_0_),
	.datad(d_0_),
	.cin(gnd),
	.combout(nx28679z35),
	.cout());
// synopsys translate_off
defparam ix28679z52973.lut_mask = 16'hE2C0;
defparam ix28679z52973.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N2
cycloneii_lcell_comb ix28679z52971(
// Equation(s):
// i_max2_0_ = (nx28679z34) # ((nx28679z35) # ((f_0_ & nx28679z3)))

	.dataa(nx28679z34),
	.datab(nx28679z35),
	.datac(f_0_),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max2_0_),
	.cout());
// synopsys translate_off
defparam ix28679z52971.lut_mask = 16'hFEEE;
defparam ix28679z52971.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N8
cycloneii_lcell_comb stage1_au_max1_aix54128z52931(
// Equation(s):
// stage1_au_max1_anx54128z8 = CARRY((i_max1_0_ & !i_max2_0_))

	.dataa(i_max1_0_),
	.datab(i_max2_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(stage1_au_max1_anx54128z8));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52931.lut_mask = 16'h0022;
defparam stage1_au_max1_aix54128z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N10
cycloneii_lcell_comb stage1_au_max1_aix54128z52930(
// Equation(s):
// stage1_au_max1_anx54128z7 = CARRY((i_max1_1_ & (i_max2_1_ & !stage1_au_max1_anx54128z8)) # (!i_max1_1_ & ((i_max2_1_) # (!stage1_au_max1_anx54128z8))))

	.dataa(i_max1_1_),
	.datab(i_max2_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx54128z8),
	.combout(),
	.cout(stage1_au_max1_anx54128z7));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52930.lut_mask = 16'h004D;
defparam stage1_au_max1_aix54128z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N12
cycloneii_lcell_comb stage1_au_max1_aix54128z52929(
// Equation(s):
// stage1_au_max1_anx54128z6 = CARRY((i_max2_2_ & (i_max1_2_ & !stage1_au_max1_anx54128z7)) # (!i_max2_2_ & ((i_max1_2_) # (!stage1_au_max1_anx54128z7))))

	.dataa(i_max2_2_),
	.datab(i_max1_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx54128z7),
	.combout(),
	.cout(stage1_au_max1_anx54128z6));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52929.lut_mask = 16'h004D;
defparam stage1_au_max1_aix54128z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N14
cycloneii_lcell_comb stage1_au_max1_aix54128z52928(
// Equation(s):
// stage1_au_max1_anx54128z5 = CARRY((i_max1_3_ & (i_max2_3_ & !stage1_au_max1_anx54128z6)) # (!i_max1_3_ & ((i_max2_3_) # (!stage1_au_max1_anx54128z6))))

	.dataa(i_max1_3_),
	.datab(i_max2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx54128z6),
	.combout(),
	.cout(stage1_au_max1_anx54128z5));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52928.lut_mask = 16'h004D;
defparam stage1_au_max1_aix54128z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N16
cycloneii_lcell_comb stage1_au_max1_aix54128z52927(
// Equation(s):
// stage1_au_max1_anx54128z4 = CARRY((i_max1_4_ & ((!stage1_au_max1_anx54128z5) # (!i_max2_4_))) # (!i_max1_4_ & (!i_max2_4_ & !stage1_au_max1_anx54128z5)))

	.dataa(i_max1_4_),
	.datab(i_max2_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx54128z5),
	.combout(),
	.cout(stage1_au_max1_anx54128z4));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52927.lut_mask = 16'h002B;
defparam stage1_au_max1_aix54128z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N18
cycloneii_lcell_comb stage1_au_max1_aix54128z52926(
// Equation(s):
// stage1_au_max1_anx54128z3 = CARRY((i_max1_5_ & (i_max2_5_ & !stage1_au_max1_anx54128z4)) # (!i_max1_5_ & ((i_max2_5_) # (!stage1_au_max1_anx54128z4))))

	.dataa(i_max1_5_),
	.datab(i_max2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx54128z4),
	.combout(),
	.cout(stage1_au_max1_anx54128z3));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52926.lut_mask = 16'h004D;
defparam stage1_au_max1_aix54128z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N20
cycloneii_lcell_comb stage1_au_max1_aix54128z52925(
// Equation(s):
// stage1_au_max1_anx54128z2 = CARRY((i_max2_6_ & (i_max1_6_ & !stage1_au_max1_anx54128z3)) # (!i_max2_6_ & ((i_max1_6_) # (!stage1_au_max1_anx54128z3))))

	.dataa(i_max2_6_),
	.datab(i_max1_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx54128z3),
	.combout(),
	.cout(stage1_au_max1_anx54128z2));
// synopsys translate_off
defparam stage1_au_max1_aix54128z52925.lut_mask = 16'h004D;
defparam stage1_au_max1_aix54128z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N22
cycloneii_lcell_comb stage1_au_max1_aix54128z52924(
// Equation(s):
// stage1_au_max1_anx54128z1 = (i_max1_7_ & ((stage1_au_max1_anx54128z2) # (!i_max2_7_))) # (!i_max1_7_ & (stage1_au_max1_anx54128z2 & !i_max2_7_))

	.dataa(i_max1_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(i_max2_7_),
	.cin(stage1_au_max1_anx54128z2),
	.combout(stage1_au_max1_anx54128z1),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix54128z52924.lut_mask = 16'hA0FA;
defparam stage1_au_max1_aix54128z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N18
cycloneii_lcell_comb stage1_au_max1_aix58116z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_3_ = (stage1_au_max1_anx54128z1 & ((i_max1_3_))) # (!stage1_au_max1_anx54128z1 & (i_max2_3_))

	.dataa(vcc),
	.datab(i_max2_3_),
	.datac(i_max1_3_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_3_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix58116z52923.lut_mask = 16'hF0CC;
defparam stage1_au_max1_aix58116z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y34_N22
cycloneii_lcell_comb d_2__afeeder(
// Equation(s):
// d_2__afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a[2]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(mem_0_aix64056z29482_aauto_generated_aq_a[2]),
	.cin(gnd),
	.combout(d_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam d_2__afeeder.lut_mask = 16'hFF00;
defparam d_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y34_N23
cycloneii_lcell_ff reg_d_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(d_2__afeeder_combout),
	.sdata(mem_aix64056z29481_aauto_generated_aq_a[2]),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(o_row_0_),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(d_2_));

// Location: LCFF_X48_Y31_N27
cycloneii_lcell_ff reg_i_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(d_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_2_));

// Location: LCFF_X48_Y32_N27
cycloneii_lcell_ff reg_h_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_2_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(h_2_));

// Location: LCCOMB_X48_Y32_N26
cycloneii_lcell_comb ix28679z52966(
// Equation(s):
// nx28679z30 = (!valid_2_ & (!valid_0_ & (h_2_ & !valid_1_)))

	.dataa(valid_2_),
	.datab(valid_0_),
	.datac(h_2_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z30),
	.cout());
// synopsys translate_off
defparam ix28679z52966.lut_mask = 16'h0010;
defparam ix28679z52966.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N0
cycloneii_lcell_comb ix28679z52967(
// Equation(s):
// nx28679z31 = (valid_0_ & (((b_2_)))) # (!valid_0_ & (valid_1_ & ((d_2_))))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(b_2_),
	.datad(d_2_),
	.cin(gnd),
	.combout(nx28679z31),
	.cout());
// synopsys translate_off
defparam ix28679z52967.lut_mask = 16'hE4A0;
defparam ix28679z52967.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N2
cycloneii_lcell_comb ix28679z52965(
// Equation(s):
// i_max2_2_ = (nx28679z30) # ((nx28679z31) # ((nx28679z3 & f_2_)))

	.dataa(nx28679z3),
	.datab(nx28679z30),
	.datac(f_2_),
	.datad(nx28679z31),
	.cin(gnd),
	.combout(i_max2_2_),
	.cout());
// synopsys translate_off
defparam ix28679z52965.lut_mask = 16'hFFEC;
defparam ix28679z52965.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N28
cycloneii_lcell_comb stage1_au_max1_aix59113z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_2_ = (stage1_au_max1_anx54128z1 & (i_max1_2_)) # (!stage1_au_max1_anx54128z1 & ((i_max2_2_)))

	.dataa(vcc),
	.datab(i_max1_2_),
	.datac(i_max2_2_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_2_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix59113z52923.lut_mask = 16'hCCF0;
defparam stage1_au_max1_aix59113z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N24
cycloneii_lcell_comb ix28679z52948(
// Equation(s):
// nx28679z18 = (!valid_1_ & (!valid_0_ & (e_0_ & !valid_2_)))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(e_0_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z18),
	.cout());
// synopsys translate_off
defparam ix28679z52948.lut_mask = 16'h0010;
defparam ix28679z52948.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y32_N15
cycloneii_lcell_ff reg_a_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_0_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_0_));

// Location: LCCOMB_X48_Y32_N14
cycloneii_lcell_comb ix28679z52949(
// Equation(s):
// nx28679z19 = (valid_0_ & (((g_0_)))) # (!valid_0_ & (valid_1_ & (a_0_)))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(a_0_),
	.datad(g_0_),
	.cin(gnd),
	.combout(nx28679z19),
	.cout());
// synopsys translate_off
defparam ix28679z52949.lut_mask = 16'hEC20;
defparam ix28679z52949.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N24
cycloneii_lcell_comb ix28679z52947(
// Equation(s):
// i_max1_0_ = (nx28679z18) # ((nx28679z19) # ((c_0_ & nx28679z3)))

	.dataa(c_0_),
	.datab(nx28679z18),
	.datac(nx28679z19),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max1_0_),
	.cout());
// synopsys translate_off
defparam ix28679z52947.lut_mask = 16'hFEFC;
defparam ix28679z52947.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N30
cycloneii_lcell_comb stage1_au_max1_aix61107z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_0_ = (stage1_au_max1_anx54128z1 & ((i_max1_0_))) # (!stage1_au_max1_anx54128z1 & (i_max2_0_))

	.dataa(vcc),
	.datab(i_max2_0_),
	.datac(i_max1_0_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_0_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix61107z52923.lut_mask = 16'hF0CC;
defparam stage1_au_max1_aix61107z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N0
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52933(
// Equation(s):
// stage1_ao_max_add_stage1_0_ = (stage1_ao_add_op12_stage1_0_ & (stage1_au_max1_ao_max_pix_0_ $ (VCC))) # (!stage1_ao_add_op12_stage1_0_ & (stage1_au_max1_ao_max_pix_0_ & VCC))
// stage1_anx15254z10 = CARRY((stage1_ao_add_op12_stage1_0_ & stage1_au_max1_ao_max_pix_0_))

	.dataa(stage1_ao_add_op12_stage1_0_),
	.datab(stage1_au_max1_ao_max_pix_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(stage1_ao_max_add_stage1_0_),
	.cout(stage1_anx15254z10));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52933.lut_mask = 16'h6688;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N2
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52932(
// Equation(s):
// stage1_ao_max_add_stage1_1_ = (stage1_au_max1_ao_max_pix_1_ & ((stage1_ao_add_op12_stage1_1_ & (stage1_anx15254z10 & VCC)) # (!stage1_ao_add_op12_stage1_1_ & (!stage1_anx15254z10)))) # (!stage1_au_max1_ao_max_pix_1_ & ((stage1_ao_add_op12_stage1_1_ & 
// (!stage1_anx15254z10)) # (!stage1_ao_add_op12_stage1_1_ & ((stage1_anx15254z10) # (GND)))))
// stage1_anx15254z9 = CARRY((stage1_au_max1_ao_max_pix_1_ & (!stage1_ao_add_op12_stage1_1_ & !stage1_anx15254z10)) # (!stage1_au_max1_ao_max_pix_1_ & ((!stage1_anx15254z10) # (!stage1_ao_add_op12_stage1_1_))))

	.dataa(stage1_au_max1_ao_max_pix_1_),
	.datab(stage1_ao_add_op12_stage1_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z10),
	.combout(stage1_ao_max_add_stage1_1_),
	.cout(stage1_anx15254z9));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52932.lut_mask = 16'h9617;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N4
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52931(
// Equation(s):
// stage1_ao_max_add_stage1_2_ = ((stage1_ao_add_op12_stage1_2_ $ (stage1_au_max1_ao_max_pix_2_ $ (!stage1_anx15254z9)))) # (GND)
// stage1_anx15254z8 = CARRY((stage1_ao_add_op12_stage1_2_ & ((stage1_au_max1_ao_max_pix_2_) # (!stage1_anx15254z9))) # (!stage1_ao_add_op12_stage1_2_ & (stage1_au_max1_ao_max_pix_2_ & !stage1_anx15254z9)))

	.dataa(stage1_ao_add_op12_stage1_2_),
	.datab(stage1_au_max1_ao_max_pix_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z9),
	.combout(stage1_ao_max_add_stage1_2_),
	.cout(stage1_anx15254z8));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52931.lut_mask = 16'h698E;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N6
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52930(
// Equation(s):
// stage1_ao_max_add_stage1_3_ = (stage1_ao_add_op12_stage1_3_ & ((stage1_au_max1_ao_max_pix_3_ & (stage1_anx15254z8 & VCC)) # (!stage1_au_max1_ao_max_pix_3_ & (!stage1_anx15254z8)))) # (!stage1_ao_add_op12_stage1_3_ & ((stage1_au_max1_ao_max_pix_3_ & 
// (!stage1_anx15254z8)) # (!stage1_au_max1_ao_max_pix_3_ & ((stage1_anx15254z8) # (GND)))))
// stage1_anx15254z7 = CARRY((stage1_ao_add_op12_stage1_3_ & (!stage1_au_max1_ao_max_pix_3_ & !stage1_anx15254z8)) # (!stage1_ao_add_op12_stage1_3_ & ((!stage1_anx15254z8) # (!stage1_au_max1_ao_max_pix_3_))))

	.dataa(stage1_ao_add_op12_stage1_3_),
	.datab(stage1_au_max1_ao_max_pix_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z8),
	.combout(stage1_ao_max_add_stage1_3_),
	.cout(stage1_anx15254z7));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52930.lut_mask = 16'h9617;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y31_N7
cycloneii_lcell_ff reg_r3_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_3_));

// Location: LCFF_X44_Y31_N29
cycloneii_lcell_ff reg_temp_max_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_3_));

// Location: LCCOMB_X44_Y31_N28
cycloneii_lcell_comb ix28678z52932(
// Equation(s):
// i_max3_3_ = (valid_2_ & (temp_max_3_)) # (!valid_2_ & ((r4_3_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_max_3_),
	.datad(r4_3_),
	.cin(gnd),
	.combout(i_max3_3_),
	.cout());
// synopsys translate_off
defparam ix28678z52932.lut_mask = 16'hF3C0;
defparam ix28678z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y31_N24
cycloneii_lcell_comb stage1_ao_add_op12_stage1_8__a0(
// Equation(s):
// stage1_ao_add_op12_stage1_8__a0_combout = !stage1_ao_add_op12_stage1_8_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_ao_add_op12_stage1_8_),
	.combout(stage1_ao_add_op12_stage1_8__a0_combout),
	.cout());
// synopsys translate_off
defparam stage1_ao_add_op12_stage1_8__a0.lut_mask = 16'h0F0F;
defparam stage1_ao_add_op12_stage1_8__a0.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N22
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1(
// Equation(s):
// stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout = CARRY(stage1_ao_add_op12_stage1_8__a0_combout)

	.dataa(vcc),
	.datab(stage1_ao_add_op12_stage1_8__a0_combout),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1.lut_mask = 16'h00CC;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N24
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52924(
// Equation(s):
// stage1_ao_max_add_stage1_8_ = (stage1_anx15254z2 & (!stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout)) # (!stage1_anx15254z2 & ((stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout) # (GND)))
// stage1_ao_max_add_stage1_9_ = CARRY((!stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout) # (!stage1_anx15254z2))

	.dataa(stage1_anx15254z2),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout),
	.combout(stage1_ao_max_add_stage1_8_),
	.cout(stage1_ao_max_add_stage1_9_));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52924.lut_mask = 16'h5A5F;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N26
cycloneii_lcell_comb stage1_aix15254z52923(
// Equation(s):
// stage1_anx15254z1 = !stage1_ao_max_add_stage1_9_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_ao_max_add_stage1_9_),
	.combout(stage1_anx15254z1),
	.cout());
// synopsys translate_off
defparam stage1_aix15254z52923.lut_mask = 16'h0F0F;
defparam stage1_aix15254z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y31_N27
cycloneii_lcell_ff reg_r3_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_anx15254z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_9_));

// Location: LCFF_X45_Y31_N9
cycloneii_lcell_ff reg_temp_max_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_9_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_9_));

// Location: LCCOMB_X46_Y31_N28
cycloneii_lcell_comb stage2_au_max2_aix52134z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_9_ = (stage2_au_max2_anx52134z1 & ((i_max3_9_))) # (!stage2_au_max2_anx52134z1 & (r3_9_))

	.dataa(stage2_au_max2_anx52134z1),
	.datab(vcc),
	.datac(r3_9_),
	.datad(i_max3_9_),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_9_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix52134z52923.lut_mask = 16'hFA50;
defparam stage2_au_max2_aix52134z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N29
cycloneii_lcell_ff reg_r4_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_9_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_9_));

// Location: LCCOMB_X45_Y31_N8
cycloneii_lcell_comb ix28678z52926(
// Equation(s):
// i_max3_9_ = (valid_2_ & (temp_max_9_)) # (!valid_2_ & ((r4_9_)))

	.dataa(valid_2_),
	.datab(vcc),
	.datac(temp_max_9_),
	.datad(r4_9_),
	.cin(gnd),
	.combout(i_max3_9_),
	.cout());
// synopsys translate_off
defparam ix28678z52926.lut_mask = 16'hF5A0;
defparam ix28678z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N25
cycloneii_lcell_ff reg_r3_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_8_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_8_));

// Location: LCCOMB_X47_Y34_N20
cycloneii_lcell_comb ix28679z52936(
// Equation(s):
// nx28679z10 = (!valid_1_ & (!valid_2_ & (e_4_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(e_4_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z10),
	.cout());
// synopsys translate_off
defparam ix28679z52936.lut_mask = 16'h0010;
defparam ix28679z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y34_N22
cycloneii_lcell_comb ix28679z52935(
// Equation(s):
// i_max1_4_ = (nx28679z11) # ((nx28679z10) # ((c_4_ & nx28679z3)))

	.dataa(nx28679z11),
	.datab(c_4_),
	.datac(nx28679z10),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max1_4_),
	.cout());
// synopsys translate_off
defparam ix28679z52935.lut_mask = 16'hFEFA;
defparam ix28679z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N30
cycloneii_lcell_comb stage1_au_max1_aix57119z52923(
// Equation(s):
// stage1_au_max1_ao_max_pix_4_ = (stage1_au_max1_anx54128z1 & ((i_max1_4_))) # (!stage1_au_max1_anx54128z1 & (i_max2_4_))

	.dataa(vcc),
	.datab(i_max2_4_),
	.datac(i_max1_4_),
	.datad(stage1_au_max1_anx54128z1),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_pix_4_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix57119z52923.lut_mask = 16'hF0CC;
defparam stage1_au_max1_aix57119z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N8
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52929(
// Equation(s):
// stage1_ao_max_add_stage1_4_ = ((stage1_ao_add_op12_stage1_4_ $ (stage1_au_max1_ao_max_pix_4_ $ (!stage1_anx15254z7)))) # (GND)
// stage1_anx15254z6 = CARRY((stage1_ao_add_op12_stage1_4_ & ((stage1_au_max1_ao_max_pix_4_) # (!stage1_anx15254z7))) # (!stage1_ao_add_op12_stage1_4_ & (stage1_au_max1_ao_max_pix_4_ & !stage1_anx15254z7)))

	.dataa(stage1_ao_add_op12_stage1_4_),
	.datab(stage1_au_max1_ao_max_pix_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z7),
	.combout(stage1_ao_max_add_stage1_4_),
	.cout(stage1_anx15254z6));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52929.lut_mask = 16'h698E;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N10
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52928(
// Equation(s):
// stage1_ao_max_add_stage1_5_ = (stage1_au_max1_ao_max_pix_5_ & ((stage1_ao_add_op12_stage1_5_ & (stage1_anx15254z6 & VCC)) # (!stage1_ao_add_op12_stage1_5_ & (!stage1_anx15254z6)))) # (!stage1_au_max1_ao_max_pix_5_ & ((stage1_ao_add_op12_stage1_5_ & 
// (!stage1_anx15254z6)) # (!stage1_ao_add_op12_stage1_5_ & ((stage1_anx15254z6) # (GND)))))
// stage1_anx15254z5 = CARRY((stage1_au_max1_ao_max_pix_5_ & (!stage1_ao_add_op12_stage1_5_ & !stage1_anx15254z6)) # (!stage1_au_max1_ao_max_pix_5_ & ((!stage1_anx15254z6) # (!stage1_ao_add_op12_stage1_5_))))

	.dataa(stage1_au_max1_ao_max_pix_5_),
	.datab(stage1_ao_add_op12_stage1_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z6),
	.combout(stage1_ao_max_add_stage1_5_),
	.cout(stage1_anx15254z5));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52928.lut_mask = 16'h9617;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y31_N12
cycloneii_lcell_comb stage1_ao_max_add_stage1_add9_1_ix15254z52927(
// Equation(s):
// stage1_ao_max_add_stage1_6_ = ((stage1_au_max1_ao_max_pix_6_ $ (stage1_ao_add_op12_stage1_6_ $ (!stage1_anx15254z5)))) # (GND)
// stage1_anx15254z4 = CARRY((stage1_au_max1_ao_max_pix_6_ & ((stage1_ao_add_op12_stage1_6_) # (!stage1_anx15254z5))) # (!stage1_au_max1_ao_max_pix_6_ & (stage1_ao_add_op12_stage1_6_ & !stage1_anx15254z5)))

	.dataa(stage1_au_max1_ao_max_pix_6_),
	.datab(stage1_ao_add_op12_stage1_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_anx15254z5),
	.combout(stage1_ao_max_add_stage1_6_),
	.cout(stage1_anx15254z4));
// synopsys translate_off
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52927.lut_mask = 16'h698E;
defparam stage1_ao_max_add_stage1_add9_1_ix15254z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X47_Y31_N15
cycloneii_lcell_ff reg_r3_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_7_));

// Location: LCFF_X45_Y31_N3
cycloneii_lcell_ff reg_temp_max_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_7_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_7_));

// Location: LCCOMB_X46_Y31_N24
cycloneii_lcell_comb stage2_au_max2_aix54128z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_7_ = (stage2_au_max2_anx52134z1 & (i_max3_7_)) # (!stage2_au_max2_anx52134z1 & ((r3_7_)))

	.dataa(i_max3_7_),
	.datab(vcc),
	.datac(stage2_au_max2_anx52134z1),
	.datad(r3_7_),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_7_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix54128z52923.lut_mask = 16'hAFA0;
defparam stage2_au_max2_aix54128z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N25
cycloneii_lcell_ff reg_r4_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_7_));

// Location: LCCOMB_X45_Y31_N2
cycloneii_lcell_comb ix28678z52928(
// Equation(s):
// i_max3_7_ = (valid_2_ & (temp_max_7_)) # (!valid_2_ & ((r4_7_)))

	.dataa(valid_2_),
	.datab(vcc),
	.datac(temp_max_7_),
	.datad(r4_7_),
	.cin(gnd),
	.combout(i_max3_7_),
	.cout());
// synopsys translate_off
defparam ix28678z52928.lut_mask = 16'hF5A0;
defparam ix28678z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N13
cycloneii_lcell_ff reg_r3_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_6_));

// Location: LCFF_X47_Y31_N11
cycloneii_lcell_ff reg_r3_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_5_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_5_));

// Location: LCFF_X47_Y31_N9
cycloneii_lcell_ff reg_r3_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_4_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_4_));

// Location: LCFF_X47_Y31_N5
cycloneii_lcell_ff reg_r3_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_2_));

// Location: LCCOMB_X44_Y31_N26
cycloneii_lcell_comb stage2_au_max2_aix59113z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_2_ = (stage2_au_max2_anx52134z1 & (i_max3_2_)) # (!stage2_au_max2_anx52134z1 & ((r3_2_)))

	.dataa(vcc),
	.datab(i_max3_2_),
	.datac(r3_2_),
	.datad(stage2_au_max2_anx52134z1),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_2_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix59113z52923.lut_mask = 16'hCCF0;
defparam stage2_au_max2_aix59113z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y31_N27
cycloneii_lcell_ff reg_r4_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_2_));

// Location: LCFF_X45_Y31_N1
cycloneii_lcell_ff reg_temp_max_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_2_));

// Location: LCCOMB_X45_Y31_N0
cycloneii_lcell_comb ix28678z52933(
// Equation(s):
// i_max3_2_ = (valid_2_ & ((temp_max_2_))) # (!valid_2_ & (r4_2_))

	.dataa(vcc),
	.datab(r4_2_),
	.datac(temp_max_2_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(i_max3_2_),
	.cout());
// synopsys translate_off
defparam ix28678z52933.lut_mask = 16'hF0CC;
defparam ix28678z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y31_N3
cycloneii_lcell_ff reg_r3_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_1_));

// Location: LCFF_X47_Y31_N1
cycloneii_lcell_ff reg_r3_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_ao_max_add_stage1_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r3_0_));

// Location: LCFF_X44_Y31_N31
cycloneii_lcell_ff reg_temp_max_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_0_));

// Location: LCCOMB_X44_Y31_N2
cycloneii_lcell_comb stage2_au_max2_aix61107z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_0_ = (stage2_au_max2_anx52134z1 & (i_max3_0_)) # (!stage2_au_max2_anx52134z1 & ((r3_0_)))

	.dataa(vcc),
	.datab(i_max3_0_),
	.datac(r3_0_),
	.datad(stage2_au_max2_anx52134z1),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_0_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix61107z52923.lut_mask = 16'hCCF0;
defparam stage2_au_max2_aix61107z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y31_N3
cycloneii_lcell_ff reg_r4_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_0_));

// Location: LCCOMB_X44_Y31_N30
cycloneii_lcell_comb ix28678z52935(
// Equation(s):
// i_max3_0_ = (valid_2_ & (temp_max_0_)) # (!valid_2_ & ((r4_0_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_max_0_),
	.datad(r4_0_),
	.cin(gnd),
	.combout(i_max3_0_),
	.cout());
// synopsys translate_off
defparam ix28678z52935.lut_mask = 16'hF3C0;
defparam ix28678z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N12
cycloneii_lcell_comb stage2_au_max2_aix52134z52933(
// Equation(s):
// stage2_au_max2_anx52134z10 = CARRY((!r3_0_ & i_max3_0_))

	.dataa(r3_0_),
	.datab(i_max3_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(stage2_au_max2_anx52134z10));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52933.lut_mask = 16'h0044;
defparam stage2_au_max2_aix52134z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N14
cycloneii_lcell_comb stage2_au_max2_aix52134z52932(
// Equation(s):
// stage2_au_max2_anx52134z9 = CARRY((i_max3_1_ & (r3_1_ & !stage2_au_max2_anx52134z10)) # (!i_max3_1_ & ((r3_1_) # (!stage2_au_max2_anx52134z10))))

	.dataa(i_max3_1_),
	.datab(r3_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z10),
	.combout(),
	.cout(stage2_au_max2_anx52134z9));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52932.lut_mask = 16'h004D;
defparam stage2_au_max2_aix52134z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N16
cycloneii_lcell_comb stage2_au_max2_aix52134z52931(
// Equation(s):
// stage2_au_max2_anx52134z8 = CARRY((r3_2_ & (i_max3_2_ & !stage2_au_max2_anx52134z9)) # (!r3_2_ & ((i_max3_2_) # (!stage2_au_max2_anx52134z9))))

	.dataa(r3_2_),
	.datab(i_max3_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z9),
	.combout(),
	.cout(stage2_au_max2_anx52134z8));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52931.lut_mask = 16'h004D;
defparam stage2_au_max2_aix52134z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N18
cycloneii_lcell_comb stage2_au_max2_aix52134z52930(
// Equation(s):
// stage2_au_max2_anx52134z7 = CARRY((r3_3_ & ((!stage2_au_max2_anx52134z8) # (!i_max3_3_))) # (!r3_3_ & (!i_max3_3_ & !stage2_au_max2_anx52134z8)))

	.dataa(r3_3_),
	.datab(i_max3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z8),
	.combout(),
	.cout(stage2_au_max2_anx52134z7));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52930.lut_mask = 16'h002B;
defparam stage2_au_max2_aix52134z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N20
cycloneii_lcell_comb stage2_au_max2_aix52134z52929(
// Equation(s):
// stage2_au_max2_anx52134z6 = CARRY((i_max3_4_ & ((!stage2_au_max2_anx52134z7) # (!r3_4_))) # (!i_max3_4_ & (!r3_4_ & !stage2_au_max2_anx52134z7)))

	.dataa(i_max3_4_),
	.datab(r3_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z7),
	.combout(),
	.cout(stage2_au_max2_anx52134z6));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52929.lut_mask = 16'h002B;
defparam stage2_au_max2_aix52134z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N22
cycloneii_lcell_comb stage2_au_max2_aix52134z52928(
// Equation(s):
// stage2_au_max2_anx52134z5 = CARRY((i_max3_5_ & (r3_5_ & !stage2_au_max2_anx52134z6)) # (!i_max3_5_ & ((r3_5_) # (!stage2_au_max2_anx52134z6))))

	.dataa(i_max3_5_),
	.datab(r3_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z6),
	.combout(),
	.cout(stage2_au_max2_anx52134z5));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52928.lut_mask = 16'h004D;
defparam stage2_au_max2_aix52134z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N24
cycloneii_lcell_comb stage2_au_max2_aix52134z52927(
// Equation(s):
// stage2_au_max2_anx52134z4 = CARRY((i_max3_6_ & ((!stage2_au_max2_anx52134z5) # (!r3_6_))) # (!i_max3_6_ & (!r3_6_ & !stage2_au_max2_anx52134z5)))

	.dataa(i_max3_6_),
	.datab(r3_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z5),
	.combout(),
	.cout(stage2_au_max2_anx52134z4));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52927.lut_mask = 16'h002B;
defparam stage2_au_max2_aix52134z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N26
cycloneii_lcell_comb stage2_au_max2_aix52134z52926(
// Equation(s):
// stage2_au_max2_anx52134z3 = CARRY((r3_7_ & ((!stage2_au_max2_anx52134z4) # (!i_max3_7_))) # (!r3_7_ & (!i_max3_7_ & !stage2_au_max2_anx52134z4)))

	.dataa(r3_7_),
	.datab(i_max3_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z4),
	.combout(),
	.cout(stage2_au_max2_anx52134z3));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52926.lut_mask = 16'h002B;
defparam stage2_au_max2_aix52134z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N28
cycloneii_lcell_comb stage2_au_max2_aix52134z52925(
// Equation(s):
// stage2_au_max2_anx52134z2 = CARRY((i_max3_8_ & ((!stage2_au_max2_anx52134z3) # (!r3_8_))) # (!i_max3_8_ & (!r3_8_ & !stage2_au_max2_anx52134z3)))

	.dataa(i_max3_8_),
	.datab(r3_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx52134z3),
	.combout(),
	.cout(stage2_au_max2_anx52134z2));
// synopsys translate_off
defparam stage2_au_max2_aix52134z52925.lut_mask = 16'h002B;
defparam stage2_au_max2_aix52134z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y31_N30
cycloneii_lcell_comb stage2_au_max2_aix52134z52924(
// Equation(s):
// stage2_au_max2_anx52134z1 = (i_max3_9_ & ((stage2_au_max2_anx52134z2) # (!r3_9_))) # (!i_max3_9_ & (stage2_au_max2_anx52134z2 & !r3_9_))

	.dataa(vcc),
	.datab(i_max3_9_),
	.datac(vcc),
	.datad(r3_9_),
	.cin(stage2_au_max2_anx52134z2),
	.combout(stage2_au_max2_anx52134z1),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix52134z52924.lut_mask = 16'hC0FC;
defparam stage2_au_max2_aix52134z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N24
cycloneii_lcell_comb stage2_au_max2_aix58116z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_3_ = (stage2_au_max2_anx52134z1 & ((i_max3_3_))) # (!stage2_au_max2_anx52134z1 & (r3_3_))

	.dataa(vcc),
	.datab(r3_3_),
	.datac(i_max3_3_),
	.datad(stage2_au_max2_anx52134z1),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_3_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix58116z52923.lut_mask = 16'hF0CC;
defparam stage2_au_max2_aix58116z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X44_Y31_N25
cycloneii_lcell_ff reg_r4_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_3_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_3_));

// Location: LCFF_X45_Y33_N5
cycloneii_lcell_ff reg_r6_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_0_));

// Location: LCCOMB_X45_Y32_N6
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52936(
// Equation(s):
// nx61908z14 = CARRY((!r6_1_ & !r6_0_))

	.dataa(r6_1_),
	.datab(r6_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx61908z14));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52936.lut_mask = 16'h0011;
defparam sub_out_sub13_0_ix61908z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N8
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52935(
// Equation(s):
// nx61908z13 = CARRY((r6_2_) # (!nx61908z14))

	.dataa(r6_2_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z14),
	.combout(),
	.cout(nx61908z13));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52935.lut_mask = 16'h00AF;
defparam sub_out_sub13_0_ix61908z52935.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N10
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52934(
// Equation(s):
// nx61908z12 = CARRY((r6_3_ & (r4_0_ & !nx61908z13)) # (!r6_3_ & ((r4_0_) # (!nx61908z13))))

	.dataa(r6_3_),
	.datab(r4_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z13),
	.combout(),
	.cout(nx61908z12));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52934.lut_mask = 16'h004D;
defparam sub_out_sub13_0_ix61908z52934.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N12
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52933(
// Equation(s):
// nx61908z11 = CARRY((r4_1_ & (r6_4_ & !nx61908z12)) # (!r4_1_ & ((r6_4_) # (!nx61908z12))))

	.dataa(r4_1_),
	.datab(r6_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z12),
	.combout(),
	.cout(nx61908z11));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52933.lut_mask = 16'h004D;
defparam sub_out_sub13_0_ix61908z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N14
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52932(
// Equation(s):
// nx61908z10 = CARRY((r6_5_ & (r4_2_ & !nx61908z11)) # (!r6_5_ & ((r4_2_) # (!nx61908z11))))

	.dataa(r6_5_),
	.datab(r4_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z11),
	.combout(),
	.cout(nx61908z10));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52932.lut_mask = 16'h004D;
defparam sub_out_sub13_0_ix61908z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N16
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52931(
// Equation(s):
// nx61908z9 = CARRY((r6_6_ & ((!nx61908z10) # (!r4_3_))) # (!r6_6_ & (!r4_3_ & !nx61908z10)))

	.dataa(r6_6_),
	.datab(r4_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z10),
	.combout(),
	.cout(nx61908z9));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52931.lut_mask = 16'h002B;
defparam sub_out_sub13_0_ix61908z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N18
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52930(
// Equation(s):
// sub_out_7_ = ((r4_4_ $ (r6_7_ $ (nx61908z9)))) # (GND)
// nx61908z8 = CARRY((r4_4_ & ((!nx61908z9) # (!r6_7_))) # (!r4_4_ & (!r6_7_ & !nx61908z9)))

	.dataa(r4_4_),
	.datab(r6_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z9),
	.combout(sub_out_7_),
	.cout(nx61908z8));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52930.lut_mask = 16'h962B;
defparam sub_out_sub13_0_ix61908z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N26
cycloneii_lcell_comb stage1_aix45057z52923_a1(
// Equation(s):
// stage1_aix45057z52923_a1_cout = CARRY(stage1_ao_add_op12_stage1_8__a0_combout)

	.dataa(vcc),
	.datab(stage1_ao_add_op12_stage1_8__a0_combout),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(stage1_aix45057z52923_a1_cout));
// synopsys translate_off
defparam stage1_aix45057z52923_a1.lut_mask = 16'h00CC;
defparam stage1_aix45057z52923_a1.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N28
cycloneii_lcell_comb stage1_aix45057z52923(
// Equation(s):
// stage1_anx45057z1 = stage1_aix45057z52923_a1_cout

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_aix45057z52923_a1_cout),
	.combout(stage1_anx45057z1),
	.cout());
// synopsys translate_off
defparam stage1_aix45057z52923.lut_mask = 16'hF0F0;
defparam stage1_aix45057z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X44_Y33_N29
cycloneii_lcell_ff reg_r2_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_anx45057z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r2_8_));

// Location: LCFF_X44_Y33_N19
cycloneii_lcell_ff reg_temp_add_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r2_8_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_add_8_));

// Location: LCCOMB_X44_Y33_N18
cycloneii_lcell_comb ix28678z52953(
// Equation(s):
// i_add4_8_ = (valid_2_ & (temp_add_8_)) # (!valid_2_ & ((r6_8_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_add_8_),
	.datad(r6_8_),
	.cin(gnd),
	.combout(i_add4_8_),
	.cout());
// synopsys translate_off
defparam ix28678z52953.lut_mask = 16'hF3C0;
defparam ix28678z52953.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N20
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52928(
// Equation(s):
// stage2_ao_add_op12_stage2_8_ = ((i_add3_8_ $ (i_add4_8_ $ (!stage2_anx22301z5)))) # (GND)
// stage2_anx22301z4 = CARRY((i_add3_8_ & ((i_add4_8_) # (!stage2_anx22301z5))) # (!i_add3_8_ & (i_add4_8_ & !stage2_anx22301z5)))

	.dataa(i_add3_8_),
	.datab(i_add4_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z5),
	.combout(stage2_ao_add_op12_stage2_8_),
	.cout(stage2_anx22301z4));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52928.lut_mask = 16'h698E;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N21
cycloneii_lcell_ff reg_r6_8_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_8_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_8_));

// Location: LCCOMB_X45_Y32_N20
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52929(
// Equation(s):
// sub_out_8_ = (r4_5_ & ((r6_8_ & (!nx61908z8)) # (!r6_8_ & (nx61908z8 & VCC)))) # (!r4_5_ & ((r6_8_ & ((nx61908z8) # (GND))) # (!r6_8_ & (!nx61908z8))))
// nx61908z7 = CARRY((r4_5_ & (r6_8_ & !nx61908z8)) # (!r4_5_ & ((r6_8_) # (!nx61908z8))))

	.dataa(r4_5_),
	.datab(r6_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z8),
	.combout(sub_out_8_),
	.cout(nx61908z7));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52929.lut_mask = 16'h694D;
defparam sub_out_sub13_0_ix61908z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X46_Y33_N25
cycloneii_lcell_ff reg_temp_max_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_6_));

// Location: LCCOMB_X46_Y33_N24
cycloneii_lcell_comb ix28678z52929(
// Equation(s):
// i_max3_6_ = (valid_2_ & (temp_max_6_)) # (!valid_2_ & ((r4_6_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_max_6_),
	.datad(r4_6_),
	.cin(gnd),
	.combout(i_max3_6_),
	.cout());
// synopsys translate_off
defparam ix28678z52929.lut_mask = 16'hF3C0;
defparam ix28678z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N2
cycloneii_lcell_comb stage2_au_max2_aix55125z52923(
// Equation(s):
// stage2_au_max2_ao_max_pix_6_ = (stage2_au_max2_anx52134z1 & ((i_max3_6_))) # (!stage2_au_max2_anx52134z1 & (r3_6_))

	.dataa(stage2_au_max2_anx52134z1),
	.datab(vcc),
	.datac(r3_6_),
	.datad(i_max3_6_),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_pix_6_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix55125z52923.lut_mask = 16'hFA50;
defparam stage2_au_max2_aix55125z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N3
cycloneii_lcell_ff reg_r4_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_pix_6_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r4_6_));

// Location: LCCOMB_X45_Y32_N22
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52928(
// Equation(s):
// sub_out_9_ = ((r6_9_ $ (r4_6_ $ (nx61908z7)))) # (GND)
// nx61908z6 = CARRY((r6_9_ & (r4_6_ & !nx61908z7)) # (!r6_9_ & ((r4_6_) # (!nx61908z7))))

	.dataa(r6_9_),
	.datab(r4_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z7),
	.combout(sub_out_9_),
	.cout(nx61908z6));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52928.lut_mask = 16'h964D;
defparam sub_out_sub13_0_ix61908z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N2
cycloneii_lcell_comb ix61908z52938(
// Equation(s):
// nx61908z16 = (sub_out_9_) # ((sub_out_7_ & sub_out_8_))

	.dataa(vcc),
	.datab(sub_out_7_),
	.datac(sub_out_8_),
	.datad(sub_out_9_),
	.cin(gnd),
	.combout(nx61908z16),
	.cout());
// synopsys translate_off
defparam ix61908z52938.lut_mask = 16'hFFC0;
defparam ix61908z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N4
cycloneii_lcell_comb ix28678z52950(
// Equation(s):
// i_add4_11_ = (!valid_2_ & r6_11_)

	.dataa(vcc),
	.datab(valid_2_),
	.datac(r6_11_),
	.datad(vcc),
	.cin(gnd),
	.combout(i_add4_11_),
	.cout());
// synopsys translate_off
defparam ix28678z52950.lut_mask = 16'h3030;
defparam ix28678z52950.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N22
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52927(
// Equation(s):
// stage2_ao_add_op12_stage2_9_ = (i_add3_9_ & ((i_add4_9_ & (stage2_anx22301z4 & VCC)) # (!i_add4_9_ & (!stage2_anx22301z4)))) # (!i_add3_9_ & ((i_add4_9_ & (!stage2_anx22301z4)) # (!i_add4_9_ & ((stage2_anx22301z4) # (GND)))))
// stage2_anx22301z3 = CARRY((i_add3_9_ & (!i_add4_9_ & !stage2_anx22301z4)) # (!i_add3_9_ & ((!stage2_anx22301z4) # (!i_add4_9_))))

	.dataa(i_add3_9_),
	.datab(i_add4_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z4),
	.combout(stage2_ao_add_op12_stage2_9_),
	.cout(stage2_anx22301z3));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52927.lut_mask = 16'h9617;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N23
cycloneii_lcell_ff reg_r6_9_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_9_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_9_));

// Location: LCCOMB_X44_Y33_N30
cycloneii_lcell_comb ix28678z52952(
// Equation(s):
// i_add4_9_ = (!valid_2_ & r6_9_)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_2_),
	.datad(r6_9_),
	.cin(gnd),
	.combout(i_add4_9_),
	.cout());
// synopsys translate_off
defparam ix28678z52952.lut_mask = 16'h0F00;
defparam ix28678z52952.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N24
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52926(
// Equation(s):
// stage2_ao_add_op12_stage2_10_ = ((i_add3_10_ $ (i_add4_10_ $ (!stage2_anx22301z3)))) # (GND)
// stage2_anx22301z2 = CARRY((i_add3_10_ & ((i_add4_10_) # (!stage2_anx22301z3))) # (!i_add3_10_ & (i_add4_10_ & !stage2_anx22301z3)))

	.dataa(i_add3_10_),
	.datab(i_add4_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z3),
	.combout(stage2_ao_add_op12_stage2_10_),
	.cout(stage2_anx22301z2));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52926.lut_mask = 16'h698E;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N25
cycloneii_lcell_ff reg_r6_10_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_10_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_10_));

// Location: LCCOMB_X44_Y33_N24
cycloneii_lcell_comb ix28678z52951(
// Equation(s):
// i_add4_10_ = (!valid_2_ & r6_10_)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_2_),
	.datad(r6_10_),
	.cin(gnd),
	.combout(i_add4_10_),
	.cout());
// synopsys translate_off
defparam ix28678z52951.lut_mask = 16'h0F00;
defparam ix28678z52951.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N26
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52925(
// Equation(s):
// stage2_ao_add_op12_stage2_11_ = (i_add3_11_ & ((i_add4_11_ & (stage2_anx22301z2 & VCC)) # (!i_add4_11_ & (!stage2_anx22301z2)))) # (!i_add3_11_ & ((i_add4_11_ & (!stage2_anx22301z2)) # (!i_add4_11_ & ((stage2_anx22301z2) # (GND)))))
// stage2_anx22301z1 = CARRY((i_add3_11_ & (!i_add4_11_ & !stage2_anx22301z2)) # (!i_add3_11_ & ((!stage2_anx22301z2) # (!i_add4_11_))))

	.dataa(i_add3_11_),
	.datab(i_add4_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_anx22301z2),
	.combout(stage2_ao_add_op12_stage2_11_),
	.cout(stage2_anx22301z1));
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52925.lut_mask = 16'h9617;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N27
cycloneii_lcell_ff reg_r6_11_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_11_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_11_));

// Location: LCCOMB_X45_Y32_N24
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52927(
// Equation(s):
// sub_out_10_ = (r6_10_ & ((r4_7_ & (!nx61908z6)) # (!r4_7_ & ((nx61908z6) # (GND))))) # (!r6_10_ & ((r4_7_ & (nx61908z6 & VCC)) # (!r4_7_ & (!nx61908z6))))
// nx61908z5 = CARRY((r6_10_ & ((!nx61908z6) # (!r4_7_))) # (!r6_10_ & (!r4_7_ & !nx61908z6)))

	.dataa(r6_10_),
	.datab(r4_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z6),
	.combout(sub_out_10_),
	.cout(nx61908z5));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52927.lut_mask = 16'h692B;
defparam sub_out_sub13_0_ix61908z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X45_Y32_N26
cycloneii_lcell_comb sub_out_sub13_0_ix61908z52926(
// Equation(s):
// sub_out_11_ = ((r4_8_ $ (r6_11_ $ (nx61908z5)))) # (GND)
// nx61908z4 = CARRY((r4_8_ & ((!nx61908z5) # (!r6_11_))) # (!r4_8_ & (!r6_11_ & !nx61908z5)))

	.dataa(r4_8_),
	.datab(r6_11_),
	.datac(vcc),
	.datad(vcc),
	.cin(nx61908z5),
	.combout(sub_out_11_),
	.cout(nx61908z4));
// synopsys translate_off
defparam sub_out_sub13_0_ix61908z52926.lut_mask = 16'h962B;
defparam sub_out_sub13_0_ix61908z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N22
cycloneii_lcell_comb ix28678z52949(
// Equation(s):
// i_add4_12_ = (!valid_2_ & r6_12_)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_2_),
	.datad(r6_12_),
	.cin(gnd),
	.combout(i_add4_12_),
	.cout());
// synopsys translate_off
defparam ix28678z52949.lut_mask = 16'h0F00;
defparam ix28678z52949.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y33_N14
cycloneii_lcell_comb ix28678z52936(
// Equation(s):
// i_add3_12_ = (r6_11_ & valid_5_)

	.dataa(vcc),
	.datab(vcc),
	.datac(r6_11_),
	.datad(valid_5_),
	.cin(gnd),
	.combout(i_add3_12_),
	.cout());
// synopsys translate_off
defparam ix28678z52936.lut_mask = 16'hF000;
defparam ix28678z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X45_Y33_N28
cycloneii_lcell_comb stage2_ao_add_op12_stage2_add13_0_ix22301z52923(
// Equation(s):
// stage2_ao_add_op12_stage2_12_ = i_add4_12_ $ (stage2_anx22301z1 $ (!i_add3_12_))

	.dataa(vcc),
	.datab(i_add4_12_),
	.datac(vcc),
	.datad(i_add3_12_),
	.cin(stage2_anx22301z1),
	.combout(stage2_ao_add_op12_stage2_12_),
	.cout());
// synopsys translate_off
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52923.lut_mask = 16'h3CC3;
defparam stage2_ao_add_op12_stage2_add13_0_ix22301z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X45_Y33_N29
cycloneii_lcell_ff reg_r6_12_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_ao_add_op12_stage2_12_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r6_12_));

// Location: LCCOMB_X45_Y32_N0
cycloneii_lcell_comb ix61908z52937(
// Equation(s):
// nx61908z15 = (sub_out_11_) # ((sub_out_10_) # (sub_out_12_))

	.dataa(vcc),
	.datab(sub_out_11_),
	.datac(sub_out_10_),
	.datad(sub_out_12_),
	.cin(gnd),
	.combout(nx61908z15),
	.cout());
// synopsys translate_off
defparam ix61908z52937.lut_mask = 16'hFFFC;
defparam ix61908z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N26
cycloneii_lcell_comb ix61908z52923(
// Equation(s):
// nx61908z1 = (nx61908z17) # ((nx61908z2 & ((nx61908z16) # (nx61908z15))))

	.dataa(nx61908z2),
	.datab(nx61908z17),
	.datac(nx61908z16),
	.datad(nx61908z15),
	.cin(gnd),
	.combout(nx61908z1),
	.cout());
// synopsys translate_off
defparam ix61908z52923.lut_mask = 16'hEEEC;
defparam ix61908z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N27
cycloneii_lcell_ff reg_r9(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx61908z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(reg_r9_aregout));

// Location: LCCOMB_X46_Y32_N0
cycloneii_lcell_comb ix28679z52923(
// Equation(s):
// nx28679z1 = (valid_0_) # ((!valid_1_ & !valid_2_))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(valid_2_),
	.datad(vcc),
	.cin(gnd),
	.combout(nx28679z1),
	.cout());
// synopsys translate_off
defparam ix28679z52923.lut_mask = 16'hABAB;
defparam ix28679z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N24
cycloneii_lcell_comb ix28679z52924(
// Equation(s):
// nx28679z2 = (!valid_1_ & !valid_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(valid_1_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z2),
	.cout());
// synopsys translate_off
defparam ix28679z52924.lut_mask = 16'h000F;
defparam ix28679z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N30
cycloneii_lcell_comb ix28679z52927(
// Equation(s):
// nx28679z4 = (!valid_1_ & (!valid_2_ & (e_7_ & !valid_0_)))

	.dataa(valid_1_),
	.datab(valid_2_),
	.datac(e_7_),
	.datad(valid_0_),
	.cin(gnd),
	.combout(nx28679z4),
	.cout());
// synopsys translate_off
defparam ix28679z52927.lut_mask = 16'h0010;
defparam ix28679z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y33_N13
cycloneii_lcell_ff reg_a_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(b_7_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(a_7_));

// Location: LCCOMB_X47_Y33_N12
cycloneii_lcell_comb ix28679z52928(
// Equation(s):
// nx28679z5 = (valid_0_ & (g_7_)) # (!valid_0_ & (((a_7_ & valid_1_))))

	.dataa(g_7_),
	.datab(valid_0_),
	.datac(a_7_),
	.datad(valid_1_),
	.cin(gnd),
	.combout(nx28679z5),
	.cout());
// synopsys translate_off
defparam ix28679z52928.lut_mask = 16'hB888;
defparam ix28679z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N16
cycloneii_lcell_comb ix28679z52925(
// Equation(s):
// i_max1_7_ = (nx28679z4) # ((nx28679z5) # ((c_7_ & nx28679z3)))

	.dataa(c_7_),
	.datab(nx28679z4),
	.datac(nx28679z3),
	.datad(nx28679z5),
	.cin(gnd),
	.combout(i_max1_7_),
	.cout());
// synopsys translate_off
defparam ix28679z52925.lut_mask = 16'hFFEC;
defparam ix28679z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N18
cycloneii_lcell_comb ix28679z52955(
// Equation(s):
// nx28679z23 = (valid_0_ & (((b_6_)))) # (!valid_0_ & (valid_1_ & ((d_6_))))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(b_6_),
	.datad(d_6_),
	.cin(gnd),
	.combout(nx28679z23),
	.cout());
// synopsys translate_off
defparam ix28679z52955.lut_mask = 16'hE2C0;
defparam ix28679z52955.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y32_N30
cycloneii_lcell_comb ix28679z52953(
// Equation(s):
// i_max2_6_ = (nx28679z22) # ((nx28679z23) # ((nx28679z3 & f_6_)))

	.dataa(nx28679z22),
	.datab(nx28679z3),
	.datac(f_6_),
	.datad(nx28679z23),
	.cin(gnd),
	.combout(i_max2_6_),
	.cout());
// synopsys translate_off
defparam ix28679z52953.lut_mask = 16'hFFEA;
defparam ix28679z52953.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y32_N10
cycloneii_lcell_comb ix28679z52945(
// Equation(s):
// nx28679z16 = (!valid_1_ & (!valid_0_ & (e_1_ & !valid_2_)))

	.dataa(valid_1_),
	.datab(valid_0_),
	.datac(e_1_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx28679z16),
	.cout());
// synopsys translate_off
defparam ix28679z52945.lut_mask = 16'h0010;
defparam ix28679z52945.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y32_N21
cycloneii_lcell_ff reg_g_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(f_1_),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(vcc),
	.ena(nx20492z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(g_1_));

// Location: LCCOMB_X48_Y32_N16
cycloneii_lcell_comb ix28679z52946(
// Equation(s):
// nx28679z17 = (valid_0_ & (((g_1_)))) # (!valid_0_ & (a_1_ & (valid_1_)))

	.dataa(a_1_),
	.datab(valid_0_),
	.datac(valid_1_),
	.datad(g_1_),
	.cin(gnd),
	.combout(nx28679z17),
	.cout());
// synopsys translate_off
defparam ix28679z52946.lut_mask = 16'hEC20;
defparam ix28679z52946.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X47_Y32_N6
cycloneii_lcell_comb ix28679z52944(
// Equation(s):
// i_max1_1_ = (nx28679z16) # ((nx28679z17) # ((c_1_ & nx28679z3)))

	.dataa(c_1_),
	.datab(nx28679z16),
	.datac(nx28679z17),
	.datad(nx28679z3),
	.cin(gnd),
	.combout(i_max1_1_),
	.cout());
// synopsys translate_off
defparam ix28679z52944.lut_mask = 16'hFEFC;
defparam ix28679z52944.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N4
cycloneii_lcell_comb stage1_au_max1_aix19309z52931(
// Equation(s):
// stage1_au_max1_anx19309z7 = CARRY((i_max2_0_ & !i_max1_0_))

	.dataa(i_max2_0_),
	.datab(i_max1_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(stage1_au_max1_anx19309z7));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52931.lut_mask = 16'h0022;
defparam stage1_au_max1_aix19309z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N6
cycloneii_lcell_comb stage1_au_max1_aix19309z52930(
// Equation(s):
// stage1_au_max1_anx19309z6 = CARRY((i_max2_1_ & (i_max1_1_ & !stage1_au_max1_anx19309z7)) # (!i_max2_1_ & ((i_max1_1_) # (!stage1_au_max1_anx19309z7))))

	.dataa(i_max2_1_),
	.datab(i_max1_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx19309z7),
	.combout(),
	.cout(stage1_au_max1_anx19309z6));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52930.lut_mask = 16'h004D;
defparam stage1_au_max1_aix19309z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N8
cycloneii_lcell_comb stage1_au_max1_aix19309z52929(
// Equation(s):
// stage1_au_max1_anx19309z5 = CARRY((i_max2_2_ & ((!stage1_au_max1_anx19309z6) # (!i_max1_2_))) # (!i_max2_2_ & (!i_max1_2_ & !stage1_au_max1_anx19309z6)))

	.dataa(i_max2_2_),
	.datab(i_max1_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx19309z6),
	.combout(),
	.cout(stage1_au_max1_anx19309z5));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52929.lut_mask = 16'h002B;
defparam stage1_au_max1_aix19309z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N10
cycloneii_lcell_comb stage1_au_max1_aix19309z52928(
// Equation(s):
// stage1_au_max1_anx19309z4 = CARRY((i_max1_3_ & ((!stage1_au_max1_anx19309z5) # (!i_max2_3_))) # (!i_max1_3_ & (!i_max2_3_ & !stage1_au_max1_anx19309z5)))

	.dataa(i_max1_3_),
	.datab(i_max2_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx19309z5),
	.combout(),
	.cout(stage1_au_max1_anx19309z4));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52928.lut_mask = 16'h002B;
defparam stage1_au_max1_aix19309z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N12
cycloneii_lcell_comb stage1_au_max1_aix19309z52927(
// Equation(s):
// stage1_au_max1_anx19309z3 = CARRY((i_max2_4_ & ((!stage1_au_max1_anx19309z4) # (!i_max1_4_))) # (!i_max2_4_ & (!i_max1_4_ & !stage1_au_max1_anx19309z4)))

	.dataa(i_max2_4_),
	.datab(i_max1_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx19309z4),
	.combout(),
	.cout(stage1_au_max1_anx19309z3));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52927.lut_mask = 16'h002B;
defparam stage1_au_max1_aix19309z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N14
cycloneii_lcell_comb stage1_au_max1_aix19309z52926(
// Equation(s):
// stage1_au_max1_anx19309z2 = CARRY((i_max1_5_ & ((!stage1_au_max1_anx19309z3) # (!i_max2_5_))) # (!i_max1_5_ & (!i_max2_5_ & !stage1_au_max1_anx19309z3)))

	.dataa(i_max1_5_),
	.datab(i_max2_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx19309z3),
	.combout(),
	.cout(stage1_au_max1_anx19309z2));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52926.lut_mask = 16'h002B;
defparam stage1_au_max1_aix19309z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N16
cycloneii_lcell_comb stage1_au_max1_aix19309z52925(
// Equation(s):
// stage1_au_max1_anx19309z1 = CARRY((i_max1_6_ & (i_max2_6_ & !stage1_au_max1_anx19309z2)) # (!i_max1_6_ & ((i_max2_6_) # (!stage1_au_max1_anx19309z2))))

	.dataa(i_max1_6_),
	.datab(i_max2_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage1_au_max1_anx19309z2),
	.combout(),
	.cout(stage1_au_max1_anx19309z1));
// synopsys translate_off
defparam stage1_au_max1_aix19309z52925.lut_mask = 16'h004D;
defparam stage1_au_max1_aix19309z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N18
cycloneii_lcell_comb stage1_au_max1_aix19309z52923(
// Equation(s):
// stage1_au_max1_ao_max_dir_2_ = (i_max2_7_ & ((stage1_au_max1_anx19309z1) # (!i_max1_7_))) # (!i_max2_7_ & (stage1_au_max1_anx19309z1 & !i_max1_7_))

	.dataa(vcc),
	.datab(i_max2_7_),
	.datac(vcc),
	.datad(i_max1_7_),
	.cin(stage1_au_max1_anx19309z1),
	.combout(stage1_au_max1_ao_max_dir_2_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix19309z52923.lut_mask = 16'hC0FC;
defparam stage1_au_max1_aix19309z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y32_N2
cycloneii_lcell_comb stage1_au_max1_aix17315z52923(
// Equation(s):
// stage1_au_max1_ao_max_dir_0_ = (stage1_au_max1_ao_max_dir_2_ & ((nx28679z2))) # (!stage1_au_max1_ao_max_dir_2_ & (nx28679z1))

	.dataa(vcc),
	.datab(nx28679z1),
	.datac(nx28679z2),
	.datad(stage1_au_max1_ao_max_dir_2_),
	.cin(gnd),
	.combout(stage1_au_max1_ao_max_dir_0_),
	.cout());
// synopsys translate_off
defparam stage1_au_max1_aix17315z52923.lut_mask = 16'hF0CC;
defparam stage1_au_max1_aix17315z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y32_N3
cycloneii_lcell_ff reg_r1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_au_max1_ao_max_dir_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_0_));

// Location: LCFF_X46_Y32_N29
cycloneii_lcell_ff reg_temp_dir_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r1_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_dir_0_));

// Location: LCCOMB_X46_Y32_N28
cycloneii_lcell_comb ix28678z52925(
// Equation(s):
// i_dir3_0_ = (valid_2_ & (temp_dir_0_)) # (!valid_2_ & ((r5_0_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_dir_0_),
	.datad(r5_0_),
	.cin(gnd),
	.combout(i_dir3_0_),
	.cout());
// synopsys translate_off
defparam ix28678z52925.lut_mask = 16'hF3C0;
defparam ix28678z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X45_Y31_N11
cycloneii_lcell_ff reg_temp_max_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r3_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_max_1_));

// Location: LCCOMB_X45_Y31_N10
cycloneii_lcell_comb ix28678z52934(
// Equation(s):
// i_max3_1_ = (valid_2_ & ((temp_max_1_))) # (!valid_2_ & (r4_1_))

	.dataa(r4_1_),
	.datab(vcc),
	.datac(temp_max_1_),
	.datad(valid_2_),
	.cin(gnd),
	.combout(i_max3_1_),
	.cout());
// synopsys translate_off
defparam ix28678z52934.lut_mask = 16'hF0AA;
defparam ix28678z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N4
cycloneii_lcell_comb stage2_au_max2_aix19309z52934(
// Equation(s):
// stage2_au_max2_anx19309z10 = CARRY((!i_max3_0_ & r3_0_))

	.dataa(i_max3_0_),
	.datab(r3_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(stage2_au_max2_anx19309z10));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52934.lut_mask = 16'h0044;
defparam stage2_au_max2_aix19309z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N6
cycloneii_lcell_comb stage2_au_max2_aix19309z52933(
// Equation(s):
// stage2_au_max2_anx19309z9 = CARRY((r3_1_ & (i_max3_1_ & !stage2_au_max2_anx19309z10)) # (!r3_1_ & ((i_max3_1_) # (!stage2_au_max2_anx19309z10))))

	.dataa(r3_1_),
	.datab(i_max3_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z10),
	.combout(),
	.cout(stage2_au_max2_anx19309z9));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52933.lut_mask = 16'h004D;
defparam stage2_au_max2_aix19309z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N8
cycloneii_lcell_comb stage2_au_max2_aix19309z52932(
// Equation(s):
// stage2_au_max2_anx19309z8 = CARRY((r3_2_ & ((!stage2_au_max2_anx19309z9) # (!i_max3_2_))) # (!r3_2_ & (!i_max3_2_ & !stage2_au_max2_anx19309z9)))

	.dataa(r3_2_),
	.datab(i_max3_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z9),
	.combout(),
	.cout(stage2_au_max2_anx19309z8));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52932.lut_mask = 16'h002B;
defparam stage2_au_max2_aix19309z52932.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N10
cycloneii_lcell_comb stage2_au_max2_aix19309z52931(
// Equation(s):
// stage2_au_max2_anx19309z7 = CARRY((i_max3_3_ & ((!stage2_au_max2_anx19309z8) # (!r3_3_))) # (!i_max3_3_ & (!r3_3_ & !stage2_au_max2_anx19309z8)))

	.dataa(i_max3_3_),
	.datab(r3_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z8),
	.combout(),
	.cout(stage2_au_max2_anx19309z7));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52931.lut_mask = 16'h002B;
defparam stage2_au_max2_aix19309z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N12
cycloneii_lcell_comb stage2_au_max2_aix19309z52930(
// Equation(s):
// stage2_au_max2_anx19309z6 = CARRY((i_max3_4_ & (r3_4_ & !stage2_au_max2_anx19309z7)) # (!i_max3_4_ & ((r3_4_) # (!stage2_au_max2_anx19309z7))))

	.dataa(i_max3_4_),
	.datab(r3_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z7),
	.combout(),
	.cout(stage2_au_max2_anx19309z6));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52930.lut_mask = 16'h004D;
defparam stage2_au_max2_aix19309z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N14
cycloneii_lcell_comb stage2_au_max2_aix19309z52929(
// Equation(s):
// stage2_au_max2_anx19309z5 = CARRY((i_max3_5_ & ((!stage2_au_max2_anx19309z6) # (!r3_5_))) # (!i_max3_5_ & (!r3_5_ & !stage2_au_max2_anx19309z6)))

	.dataa(i_max3_5_),
	.datab(r3_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z6),
	.combout(),
	.cout(stage2_au_max2_anx19309z5));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52929.lut_mask = 16'h002B;
defparam stage2_au_max2_aix19309z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N16
cycloneii_lcell_comb stage2_au_max2_aix19309z52928(
// Equation(s):
// stage2_au_max2_anx19309z4 = CARRY((i_max3_6_ & (r3_6_ & !stage2_au_max2_anx19309z5)) # (!i_max3_6_ & ((r3_6_) # (!stage2_au_max2_anx19309z5))))

	.dataa(i_max3_6_),
	.datab(r3_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z5),
	.combout(),
	.cout(stage2_au_max2_anx19309z4));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52928.lut_mask = 16'h004D;
defparam stage2_au_max2_aix19309z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N18
cycloneii_lcell_comb stage2_au_max2_aix19309z52927(
// Equation(s):
// stage2_au_max2_anx19309z3 = CARRY((r3_7_ & (i_max3_7_ & !stage2_au_max2_anx19309z4)) # (!r3_7_ & ((i_max3_7_) # (!stage2_au_max2_anx19309z4))))

	.dataa(r3_7_),
	.datab(i_max3_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z4),
	.combout(),
	.cout(stage2_au_max2_anx19309z3));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52927.lut_mask = 16'h004D;
defparam stage2_au_max2_aix19309z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N20
cycloneii_lcell_comb stage2_au_max2_aix19309z52926(
// Equation(s):
// stage2_au_max2_anx19309z2 = CARRY((i_max3_8_ & (r3_8_ & !stage2_au_max2_anx19309z3)) # (!i_max3_8_ & ((r3_8_) # (!stage2_au_max2_anx19309z3))))

	.dataa(i_max3_8_),
	.datab(r3_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(stage2_au_max2_anx19309z3),
	.combout(),
	.cout(stage2_au_max2_anx19309z2));
// synopsys translate_off
defparam stage2_au_max2_aix19309z52926.lut_mask = 16'h004D;
defparam stage2_au_max2_aix19309z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X44_Y31_N22
cycloneii_lcell_comb stage2_au_max2_aix19309z52924(
// Equation(s):
// stage2_au_max2_anx19309z1 = (i_max3_9_ & (stage2_au_max2_anx19309z2 & r3_9_)) # (!i_max3_9_ & ((stage2_au_max2_anx19309z2) # (r3_9_)))

	.dataa(vcc),
	.datab(i_max3_9_),
	.datac(vcc),
	.datad(r3_9_),
	.cin(stage2_au_max2_anx19309z2),
	.combout(stage2_au_max2_anx19309z1),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix19309z52924.lut_mask = 16'hF330;
defparam stage2_au_max2_aix19309z52924.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N0
cycloneii_lcell_comb stage2_au_max2_aix17315z52923(
// Equation(s):
// stage2_au_max2_ao_max_dir_0_ = (stage2_au_max2_anx19309z1 & (r1_0_)) # (!stage2_au_max2_anx19309z1 & ((i_dir3_0_)))

	.dataa(vcc),
	.datab(r1_0_),
	.datac(i_dir3_0_),
	.datad(stage2_au_max2_anx19309z1),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_dir_0_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix17315z52923.lut_mask = 16'hCCF0;
defparam stage2_au_max2_aix17315z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N1
cycloneii_lcell_ff reg_r5_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_dir_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_0_));

// Location: LCCOMB_X46_Y32_N22
cycloneii_lcell_comb ix24856z52923(
// Equation(s):
// nx24856z1 = (valid_6_ & ((r5_0_))) # (!valid_6_ & (r8_0_))

	.dataa(valid_6_),
	.datab(vcc),
	.datac(r8_0_),
	.datad(r5_0_),
	.cin(gnd),
	.combout(nx24856z1),
	.cout());
// synopsys translate_off
defparam ix24856z52923.lut_mask = 16'hFA50;
defparam ix24856z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y32_N23
cycloneii_lcell_ff reg_r8_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx24856z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_0_));

// Location: LCCOMB_X46_Y32_N30
cycloneii_lcell_comb ix63886z52923(
// Equation(s):
// o_dir_0_ = (reg_r9_aregout & r8_0_)

	.dataa(reg_r9_aregout),
	.datab(vcc),
	.datac(vcc),
	.datad(r8_0_),
	.cin(gnd),
	.combout(o_dir_0_),
	.cout());
// synopsys translate_off
defparam ix63886z52923.lut_mask = 16'hAA00;
defparam ix63886z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y33_N2
cycloneii_lcell_comb ix35074z52923(
// Equation(s):
// nx35074z1 = (!valid_0_ & ((valid_1_) # (!valid_2_)))

	.dataa(valid_0_),
	.datab(valid_1_),
	.datac(vcc),
	.datad(valid_2_),
	.cin(gnd),
	.combout(nx35074z1),
	.cout());
// synopsys translate_off
defparam ix35074z52923.lut_mask = 16'h4455;
defparam ix35074z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y33_N3
cycloneii_lcell_ff reg_r1_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35074z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_1_));

// Location: LCFF_X46_Y33_N3
cycloneii_lcell_ff reg_temp_dir_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(r1_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_1_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(temp_dir_1_));

// Location: LCCOMB_X46_Y33_N2
cycloneii_lcell_comb ix28678z52924(
// Equation(s):
// i_dir3_1_ = (valid_2_ & (temp_dir_1_)) # (!valid_2_ & ((r5_1_)))

	.dataa(vcc),
	.datab(valid_2_),
	.datac(temp_dir_1_),
	.datad(r5_1_),
	.cin(gnd),
	.combout(i_dir3_1_),
	.cout());
// synopsys translate_off
defparam ix28678z52924.lut_mask = 16'hF3C0;
defparam ix28678z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X46_Y31_N10
cycloneii_lcell_comb stage2_au_max2_aix18312z52923(
// Equation(s):
// stage2_au_max2_ao_max_dir_1_ = (stage2_au_max2_anx19309z1 & ((r1_1_))) # (!stage2_au_max2_anx19309z1 & (i_dir3_1_))

	.dataa(vcc),
	.datab(stage2_au_max2_anx19309z1),
	.datac(i_dir3_1_),
	.datad(r1_1_),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_dir_1_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix18312z52923.lut_mask = 16'hFC30;
defparam stage2_au_max2_aix18312z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N11
cycloneii_lcell_ff reg_r5_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_dir_1_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_1_));

// Location: LCCOMB_X46_Y31_N20
cycloneii_lcell_comb ix23859z52923(
// Equation(s):
// nx23859z1 = (valid_6_ & ((r5_1_))) # (!valid_6_ & (r8_1_))

	.dataa(valid_6_),
	.datab(vcc),
	.datac(r8_1_),
	.datad(r5_1_),
	.cin(gnd),
	.combout(nx23859z1),
	.cout());
// synopsys translate_off
defparam ix23859z52923.lut_mask = 16'hFA50;
defparam ix23859z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N21
cycloneii_lcell_ff reg_r8_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx23859z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_1_));

// Location: LCCOMB_X46_Y31_N14
cycloneii_lcell_comb ix62889z52923(
// Equation(s):
// o_dir_1_ = (r8_1_ & reg_r9_aregout)

	.dataa(vcc),
	.datab(vcc),
	.datac(r8_1_),
	.datad(reg_r9_aregout),
	.cin(gnd),
	.combout(o_dir_1_),
	.cout());
// synopsys translate_off
defparam ix62889z52923.lut_mask = 16'hF000;
defparam ix62889z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y32_N19
cycloneii_lcell_ff reg_r1_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage1_au_max1_ao_max_dir_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r1_2_));

// Location: LCCOMB_X46_Y31_N12
cycloneii_lcell_comb stage2_au_max2_aix19309z52923(
// Equation(s):
// stage2_au_max2_ao_max_dir_2_ = (stage2_au_max2_anx19309z1 & ((r1_2_))) # (!stage2_au_max2_anx19309z1 & (i_dir3_2_))

	.dataa(i_dir3_2_),
	.datab(r1_2_),
	.datac(vcc),
	.datad(stage2_au_max2_anx19309z1),
	.cin(gnd),
	.combout(stage2_au_max2_ao_max_dir_2_),
	.cout());
// synopsys translate_off
defparam stage2_au_max2_aix19309z52923.lut_mask = 16'hCCAA;
defparam stage2_au_max2_aix19309z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N13
cycloneii_lcell_ff reg_r5_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(stage2_au_max2_ao_max_dir_2_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(!valid_5_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r5_2_));

// Location: LCCOMB_X46_Y31_N8
cycloneii_lcell_comb ix22862z52923(
// Equation(s):
// nx22862z1 = (valid_6_ & ((r5_2_))) # (!valid_6_ & (r8_2_))

	.dataa(valid_6_),
	.datab(vcc),
	.datac(r8_2_),
	.datad(r5_2_),
	.cin(gnd),
	.combout(nx22862z1),
	.cout());
// synopsys translate_off
defparam ix22862z52923.lut_mask = 16'hFA50;
defparam ix22862z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X46_Y31_N9
cycloneii_lcell_ff reg_r8_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx22862z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(r8_2_));

// Location: LCCOMB_X46_Y31_N18
cycloneii_lcell_comb ix61892z52923(
// Equation(s):
// o_dir_2_ = (r8_2_ & reg_r9_aregout)

	.dataa(vcc),
	.datab(vcc),
	.datac(r8_2_),
	.datad(reg_r9_aregout),
	.cin(gnd),
	.combout(o_dir_2_),
	.cout());
// synopsys translate_off
defparam ix61892z52923.lut_mask = 16'hF000;
defparam ix61892z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y33_N4
cycloneii_lcell_comb column_valid1_6__afeeder(
// Equation(s):
// column_valid1_6__afeeder_combout = column_6_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(column_6_),
	.cin(gnd),
	.combout(column_valid1_6__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_6__afeeder.lut_mask = 16'hFF00;
defparam column_valid1_6__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y33_N5
cycloneii_lcell_ff reg_column_valid1_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_6__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_6_));

// Location: LCFF_X50_Y33_N11
cycloneii_lcell_ff reg_column_valid2_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(column_valid1_6_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_6_));

// Location: LCCOMB_X50_Y33_N10
cycloneii_lcell_comb ix25376z52925(
// Equation(s):
// nx25376z3 = ((!reg_output_valid_reg_aregout) # (!column_valid2_6_)) # (!column_valid2_7_)

	.dataa(column_valid2_7_),
	.datab(vcc),
	.datac(column_valid2_6_),
	.datad(reg_output_valid_reg_aregout),
	.cin(gnd),
	.combout(nx25376z3),
	.cout());
// synopsys translate_off
defparam ix25376z52925.lut_mask = 16'h5FFF;
defparam ix25376z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y33_N26
cycloneii_lcell_comb column_valid1_0__afeeder(
// Equation(s):
// column_valid1_0__afeeder_combout = column_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(column_0_),
	.cin(gnd),
	.combout(column_valid1_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_0__afeeder.lut_mask = 16'hFF00;
defparam column_valid1_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y33_N27
cycloneii_lcell_ff reg_column_valid1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_0_));

// Location: LCFF_X50_Y33_N19
cycloneii_lcell_ff reg_column_valid2_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(column_valid1_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_0_));

// Location: LCCOMB_X50_Y33_N18
cycloneii_lcell_comb ix25376z52927(
// Equation(s):
// nx25376z5 = ((!column_valid2_2_) # (!column_valid2_0_)) # (!column_valid2_1_)

	.dataa(column_valid2_1_),
	.datab(vcc),
	.datac(column_valid2_0_),
	.datad(column_valid2_2_),
	.cin(gnd),
	.combout(nx25376z5),
	.cout());
// synopsys translate_off
defparam ix25376z52927.lut_mask = 16'h5FFF;
defparam ix25376z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y33_N20
cycloneii_lcell_comb column_valid1_4__afeeder(
// Equation(s):
// column_valid1_4__afeeder_combout = column_4_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(column_4_),
	.cin(gnd),
	.combout(column_valid1_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_4__afeeder.lut_mask = 16'hFF00;
defparam column_valid1_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X49_Y33_N21
cycloneii_lcell_ff reg_column_valid1_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_4__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_4_));

// Location: LCFF_X50_Y33_N17
cycloneii_lcell_ff reg_column_valid2_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(column_valid1_4_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_4_));

// Location: LCCOMB_X50_Y33_N8
cycloneii_lcell_comb column_valid1_5__afeeder(
// Equation(s):
// column_valid1_5__afeeder_combout = column_5_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(column_5_),
	.cin(gnd),
	.combout(column_valid1_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam column_valid1_5__afeeder.lut_mask = 16'hFF00;
defparam column_valid1_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X50_Y33_N9
cycloneii_lcell_ff reg_column_valid1_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(column_valid1_5__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid1_5_));

// Location: LCFF_X50_Y33_N13
cycloneii_lcell_ff reg_column_valid2_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(column_valid1_5_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(column_valid2_5_));

// Location: LCCOMB_X50_Y33_N30
cycloneii_lcell_comb ix26373z52927(
// Equation(s):
// nx26373z5 = ((!column_valid2_5_) # (!column_valid2_3_)) # (!column_valid2_4_)

	.dataa(vcc),
	.datab(column_valid2_4_),
	.datac(column_valid2_3_),
	.datad(column_valid2_5_),
	.cin(gnd),
	.combout(nx26373z5),
	.cout());
// synopsys translate_off
defparam ix26373z52927.lut_mask = 16'h3FFF;
defparam ix26373z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N8
cycloneii_lcell_comb ix26373z52925(
// Equation(s):
// nx26373z3 = (!nx26373z4 & (!nx25376z3 & (!nx25376z5 & !nx26373z5)))

	.dataa(nx26373z4),
	.datab(nx25376z3),
	.datac(nx25376z5),
	.datad(nx26373z5),
	.cin(gnd),
	.combout(nx26373z3),
	.cout());
// synopsys translate_off
defparam ix26373z52925.lut_mask = 16'h0001;
defparam ix26373z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y33_N22
cycloneii_lcell_comb ix25376z52929(
// Equation(s):
// nx25376z7 = ((!row_valid2_4_) # (!row_valid2_2_)) # (!row_valid2_3_)

	.dataa(vcc),
	.datab(row_valid2_3_),
	.datac(row_valid2_2_),
	.datad(row_valid2_4_),
	.cin(gnd),
	.combout(nx25376z7),
	.cout());
// synopsys translate_off
defparam ix25376z52929.lut_mask = 16'h3FFF;
defparam ix25376z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y33_N16
cycloneii_lcell_comb row_valid1_0__afeeder(
// Equation(s):
// row_valid1_0__afeeder_combout = o_row_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_row_0_),
	.cin(gnd),
	.combout(row_valid1_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam row_valid1_0__afeeder.lut_mask = 16'hFF00;
defparam row_valid1_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y33_N17
cycloneii_lcell_ff reg_row_valid1_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(row_valid1_0__afeeder_combout),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(valid_0_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid1_0_));

// Location: LCFF_X50_Y33_N25
cycloneii_lcell_ff reg_row_valid2_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(row_valid1_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(valid_4_),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(row_valid2_0_));

// Location: LCCOMB_X50_Y33_N24
cycloneii_lcell_comb ix25376z52928(
// Equation(s):
// nx25376z6 = (!nx25376z7 & (row_valid2_0_ & row_valid2_1_))

	.dataa(vcc),
	.datab(nx25376z7),
	.datac(row_valid2_0_),
	.datad(row_valid2_1_),
	.cin(gnd),
	.combout(nx25376z6),
	.cout());
// synopsys translate_off
defparam ix25376z52928.lut_mask = 16'h3000;
defparam ix25376z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N30
cycloneii_lcell_comb ix26373z52924(
// Equation(s):
// nx26373z2 = (o_mode_1_ & !nx25376z9)

	.dataa(o_mode_1_),
	.datab(vcc),
	.datac(vcc),
	.datad(nx25376z9),
	.cin(gnd),
	.combout(nx26373z2),
	.cout());
// synopsys translate_off
defparam ix26373z52924.lut_mask = 16'h00AA;
defparam ix26373z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N0
cycloneii_lcell_comb ix26373z52923(
// Equation(s):
// nx26373z1 = (!i_valid_acombout & (((nx26373z3 & nx25376z6)) # (!nx26373z2)))

	.dataa(i_valid_acombout),
	.datab(nx26373z3),
	.datac(nx25376z6),
	.datad(nx26373z2),
	.cin(gnd),
	.combout(nx26373z1),
	.cout());
// synopsys translate_off
defparam ix26373z52923.lut_mask = 16'h4055;
defparam ix26373z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y33_N1
cycloneii_lcell_ff reg_mode_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx26373z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx25376z9));

// Location: LCCOMB_X50_Y33_N0
cycloneii_lcell_comb ix25376z52926(
// Equation(s):
// nx25376z4 = (row_valid2_7_ & (!nx25376z5 & (row_valid2_5_ & row_valid2_6_)))

	.dataa(row_valid2_7_),
	.datab(nx25376z5),
	.datac(row_valid2_5_),
	.datad(row_valid2_6_),
	.cin(gnd),
	.combout(nx25376z4),
	.cout());
// synopsys translate_off
defparam ix25376z52926.lut_mask = 16'h2000;
defparam ix25376z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N2
cycloneii_lcell_comb ix25376z52930(
// Equation(s):
// nx25376z8 = (o_mode_1_) # ((i_valid_acombout) # (!nx25376z9))

	.dataa(o_mode_1_),
	.datab(nx25376z9),
	.datac(vcc),
	.datad(i_valid_acombout),
	.cin(gnd),
	.combout(nx25376z8),
	.cout());
// synopsys translate_off
defparam ix25376z52930.lut_mask = 16'hFFBB;
defparam ix25376z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y33_N10
cycloneii_lcell_comb ix25376z52923(
// Equation(s):
// nx25376z1 = (nx25376z8) # ((nx25376z2 & (nx25376z6 & nx25376z4)))

	.dataa(nx25376z2),
	.datab(nx25376z6),
	.datac(nx25376z4),
	.datad(nx25376z8),
	.cin(gnd),
	.combout(nx25376z1),
	.cout());
// synopsys translate_off
defparam ix25376z52923.lut_mask = 16'hFF80;
defparam ix25376z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y33_N11
cycloneii_lcell_ff reg_mode_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx25376z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_mode_1_));

// Location: LCCOMB_X53_Y33_N26
cycloneii_lcell_comb ix58250z52923(
// Equation(s):
// inc_d_7_ = nx58250z1 $ (o_row_7_)

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(o_row_7_),
	.cin(nx58250z1),
	.combout(inc_d_7_),
	.cout());
// synopsys translate_off
defparam ix58250z52923.lut_mask = 16'h0FF0;
defparam ix58250z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X53_Y33_N27
cycloneii_lcell_ff reg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(inc_d_7_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(i_reset_acombout),
	.sload(gnd),
	.ena(nx34903z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(o_row_7_));

// Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_valid_aI(
	.datain(reg_output_valid_reg_aregout),
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
	.padio(o_valid));
// synopsys translate_off
defparam o_valid_aI.input_async_reset = "none";
defparam o_valid_aI.input_power_up = "low";
defparam o_valid_aI.input_register_mode = "none";
defparam o_valid_aI.input_sync_reset = "none";
defparam o_valid_aI.oe_async_reset = "none";
defparam o_valid_aI.oe_power_up = "low";
defparam o_valid_aI.oe_register_mode = "none";
defparam o_valid_aI.oe_sync_reset = "none";
defparam o_valid_aI.operation_mode = "output";
defparam o_valid_aI.output_async_reset = "none";
defparam o_valid_aI.output_power_up = "low";
defparam o_valid_aI.output_register_mode = "none";
defparam o_valid_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_edge_aI(
	.datain(reg_r9_aregout),
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
	.padio(o_edge));
// synopsys translate_off
defparam o_edge_aI.input_async_reset = "none";
defparam o_edge_aI.input_power_up = "low";
defparam o_edge_aI.input_register_mode = "none";
defparam o_edge_aI.input_sync_reset = "none";
defparam o_edge_aI.oe_async_reset = "none";
defparam o_edge_aI.oe_power_up = "low";
defparam o_edge_aI.oe_register_mode = "none";
defparam o_edge_aI.oe_sync_reset = "none";
defparam o_edge_aI.operation_mode = "output";
defparam o_edge_aI.output_async_reset = "none";
defparam o_edge_aI.output_power_up = "low";
defparam o_edge_aI.output_register_mode = "none";
defparam o_edge_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a0_a_aI(
	.datain(o_dir_0_),
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
	.padio(o_dir[0]));
// synopsys translate_off
defparam o_dir_a0_a_aI.input_async_reset = "none";
defparam o_dir_a0_a_aI.input_power_up = "low";
defparam o_dir_a0_a_aI.input_register_mode = "none";
defparam o_dir_a0_a_aI.input_sync_reset = "none";
defparam o_dir_a0_a_aI.oe_async_reset = "none";
defparam o_dir_a0_a_aI.oe_power_up = "low";
defparam o_dir_a0_a_aI.oe_register_mode = "none";
defparam o_dir_a0_a_aI.oe_sync_reset = "none";
defparam o_dir_a0_a_aI.operation_mode = "output";
defparam o_dir_a0_a_aI.output_async_reset = "none";
defparam o_dir_a0_a_aI.output_power_up = "low";
defparam o_dir_a0_a_aI.output_register_mode = "none";
defparam o_dir_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a1_a_aI(
	.datain(o_dir_1_),
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
	.padio(o_dir[1]));
// synopsys translate_off
defparam o_dir_a1_a_aI.input_async_reset = "none";
defparam o_dir_a1_a_aI.input_power_up = "low";
defparam o_dir_a1_a_aI.input_register_mode = "none";
defparam o_dir_a1_a_aI.input_sync_reset = "none";
defparam o_dir_a1_a_aI.oe_async_reset = "none";
defparam o_dir_a1_a_aI.oe_power_up = "low";
defparam o_dir_a1_a_aI.oe_register_mode = "none";
defparam o_dir_a1_a_aI.oe_sync_reset = "none";
defparam o_dir_a1_a_aI.operation_mode = "output";
defparam o_dir_a1_a_aI.output_async_reset = "none";
defparam o_dir_a1_a_aI.output_power_up = "low";
defparam o_dir_a1_a_aI.output_register_mode = "none";
defparam o_dir_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_dir_a2_a_aI(
	.datain(o_dir_2_),
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
	.padio(o_dir[2]));
// synopsys translate_off
defparam o_dir_a2_a_aI.input_async_reset = "none";
defparam o_dir_a2_a_aI.input_power_up = "low";
defparam o_dir_a2_a_aI.input_register_mode = "none";
defparam o_dir_a2_a_aI.input_sync_reset = "none";
defparam o_dir_a2_a_aI.oe_async_reset = "none";
defparam o_dir_a2_a_aI.oe_power_up = "low";
defparam o_dir_a2_a_aI.oe_register_mode = "none";
defparam o_dir_a2_a_aI.oe_sync_reset = "none";
defparam o_dir_a2_a_aI.operation_mode = "output";
defparam o_dir_a2_a_aI.output_async_reset = "none";
defparam o_dir_a2_a_aI.output_power_up = "low";
defparam o_dir_a2_a_aI.output_register_mode = "none";
defparam o_dir_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_a0_a_aI(
	.datain(!nx25376z9),
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
defparam o_mode_a0_a_aI.input_async_reset = "none";
defparam o_mode_a0_a_aI.input_power_up = "low";
defparam o_mode_a0_a_aI.input_register_mode = "none";
defparam o_mode_a0_a_aI.input_sync_reset = "none";
defparam o_mode_a0_a_aI.oe_async_reset = "none";
defparam o_mode_a0_a_aI.oe_power_up = "low";
defparam o_mode_a0_a_aI.oe_register_mode = "none";
defparam o_mode_a0_a_aI.oe_sync_reset = "none";
defparam o_mode_a0_a_aI.operation_mode = "output";
defparam o_mode_a0_a_aI.output_async_reset = "none";
defparam o_mode_a0_a_aI.output_power_up = "low";
defparam o_mode_a0_a_aI.output_register_mode = "none";
defparam o_mode_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_mode_a1_a_aI(
	.datain(o_mode_1_),
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
defparam o_mode_a1_a_aI.input_async_reset = "none";
defparam o_mode_a1_a_aI.input_power_up = "low";
defparam o_mode_a1_a_aI.input_register_mode = "none";
defparam o_mode_a1_a_aI.input_sync_reset = "none";
defparam o_mode_a1_a_aI.oe_async_reset = "none";
defparam o_mode_a1_a_aI.oe_power_up = "low";
defparam o_mode_a1_a_aI.oe_register_mode = "none";
defparam o_mode_a1_a_aI.oe_sync_reset = "none";
defparam o_mode_a1_a_aI.operation_mode = "output";
defparam o_mode_a1_a_aI.output_async_reset = "none";
defparam o_mode_a1_a_aI.output_power_up = "low";
defparam o_mode_a1_a_aI.output_register_mode = "none";
defparam o_mode_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a0_a_aI(
	.datain(o_row_0_),
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
	.padio(o_row[0]));
// synopsys translate_off
defparam o_row_a0_a_aI.input_async_reset = "none";
defparam o_row_a0_a_aI.input_power_up = "low";
defparam o_row_a0_a_aI.input_register_mode = "none";
defparam o_row_a0_a_aI.input_sync_reset = "none";
defparam o_row_a0_a_aI.oe_async_reset = "none";
defparam o_row_a0_a_aI.oe_power_up = "low";
defparam o_row_a0_a_aI.oe_register_mode = "none";
defparam o_row_a0_a_aI.oe_sync_reset = "none";
defparam o_row_a0_a_aI.operation_mode = "output";
defparam o_row_a0_a_aI.output_async_reset = "none";
defparam o_row_a0_a_aI.output_power_up = "low";
defparam o_row_a0_a_aI.output_register_mode = "none";
defparam o_row_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a1_a_aI(
	.datain(o_row_1_),
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
	.padio(o_row[1]));
// synopsys translate_off
defparam o_row_a1_a_aI.input_async_reset = "none";
defparam o_row_a1_a_aI.input_power_up = "low";
defparam o_row_a1_a_aI.input_register_mode = "none";
defparam o_row_a1_a_aI.input_sync_reset = "none";
defparam o_row_a1_a_aI.oe_async_reset = "none";
defparam o_row_a1_a_aI.oe_power_up = "low";
defparam o_row_a1_a_aI.oe_register_mode = "none";
defparam o_row_a1_a_aI.oe_sync_reset = "none";
defparam o_row_a1_a_aI.operation_mode = "output";
defparam o_row_a1_a_aI.output_async_reset = "none";
defparam o_row_a1_a_aI.output_power_up = "low";
defparam o_row_a1_a_aI.output_register_mode = "none";
defparam o_row_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a2_a_aI(
	.datain(o_row_2_),
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
	.padio(o_row[2]));
// synopsys translate_off
defparam o_row_a2_a_aI.input_async_reset = "none";
defparam o_row_a2_a_aI.input_power_up = "low";
defparam o_row_a2_a_aI.input_register_mode = "none";
defparam o_row_a2_a_aI.input_sync_reset = "none";
defparam o_row_a2_a_aI.oe_async_reset = "none";
defparam o_row_a2_a_aI.oe_power_up = "low";
defparam o_row_a2_a_aI.oe_register_mode = "none";
defparam o_row_a2_a_aI.oe_sync_reset = "none";
defparam o_row_a2_a_aI.operation_mode = "output";
defparam o_row_a2_a_aI.output_async_reset = "none";
defparam o_row_a2_a_aI.output_power_up = "low";
defparam o_row_a2_a_aI.output_register_mode = "none";
defparam o_row_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a3_a_aI(
	.datain(o_row_3_),
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
	.padio(o_row[3]));
// synopsys translate_off
defparam o_row_a3_a_aI.input_async_reset = "none";
defparam o_row_a3_a_aI.input_power_up = "low";
defparam o_row_a3_a_aI.input_register_mode = "none";
defparam o_row_a3_a_aI.input_sync_reset = "none";
defparam o_row_a3_a_aI.oe_async_reset = "none";
defparam o_row_a3_a_aI.oe_power_up = "low";
defparam o_row_a3_a_aI.oe_register_mode = "none";
defparam o_row_a3_a_aI.oe_sync_reset = "none";
defparam o_row_a3_a_aI.operation_mode = "output";
defparam o_row_a3_a_aI.output_async_reset = "none";
defparam o_row_a3_a_aI.output_power_up = "low";
defparam o_row_a3_a_aI.output_register_mode = "none";
defparam o_row_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a4_a_aI(
	.datain(o_row_4_),
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
	.padio(o_row[4]));
// synopsys translate_off
defparam o_row_a4_a_aI.input_async_reset = "none";
defparam o_row_a4_a_aI.input_power_up = "low";
defparam o_row_a4_a_aI.input_register_mode = "none";
defparam o_row_a4_a_aI.input_sync_reset = "none";
defparam o_row_a4_a_aI.oe_async_reset = "none";
defparam o_row_a4_a_aI.oe_power_up = "low";
defparam o_row_a4_a_aI.oe_register_mode = "none";
defparam o_row_a4_a_aI.oe_sync_reset = "none";
defparam o_row_a4_a_aI.operation_mode = "output";
defparam o_row_a4_a_aI.output_async_reset = "none";
defparam o_row_a4_a_aI.output_power_up = "low";
defparam o_row_a4_a_aI.output_register_mode = "none";
defparam o_row_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a5_a_aI(
	.datain(o_row_5_),
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
	.padio(o_row[5]));
// synopsys translate_off
defparam o_row_a5_a_aI.input_async_reset = "none";
defparam o_row_a5_a_aI.input_power_up = "low";
defparam o_row_a5_a_aI.input_register_mode = "none";
defparam o_row_a5_a_aI.input_sync_reset = "none";
defparam o_row_a5_a_aI.oe_async_reset = "none";
defparam o_row_a5_a_aI.oe_power_up = "low";
defparam o_row_a5_a_aI.oe_register_mode = "none";
defparam o_row_a5_a_aI.oe_sync_reset = "none";
defparam o_row_a5_a_aI.operation_mode = "output";
defparam o_row_a5_a_aI.output_async_reset = "none";
defparam o_row_a5_a_aI.output_power_up = "low";
defparam o_row_a5_a_aI.output_register_mode = "none";
defparam o_row_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a6_a_aI(
	.datain(o_row_6_),
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
	.padio(o_row[6]));
// synopsys translate_off
defparam o_row_a6_a_aI.input_async_reset = "none";
defparam o_row_a6_a_aI.input_power_up = "low";
defparam o_row_a6_a_aI.input_register_mode = "none";
defparam o_row_a6_a_aI.input_sync_reset = "none";
defparam o_row_a6_a_aI.oe_async_reset = "none";
defparam o_row_a6_a_aI.oe_power_up = "low";
defparam o_row_a6_a_aI.oe_register_mode = "none";
defparam o_row_a6_a_aI.oe_sync_reset = "none";
defparam o_row_a6_a_aI.operation_mode = "output";
defparam o_row_a6_a_aI.output_async_reset = "none";
defparam o_row_a6_a_aI.output_power_up = "low";
defparam o_row_a6_a_aI.output_register_mode = "none";
defparam o_row_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_row_a7_a_aI(
	.datain(o_row_7_),
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
	.padio(o_row[7]));
// synopsys translate_off
defparam o_row_a7_a_aI.input_async_reset = "none";
defparam o_row_a7_a_aI.input_power_up = "low";
defparam o_row_a7_a_aI.input_register_mode = "none";
defparam o_row_a7_a_aI.input_sync_reset = "none";
defparam o_row_a7_a_aI.oe_async_reset = "none";
defparam o_row_a7_a_aI.oe_power_up = "low";
defparam o_row_a7_a_aI.oe_register_mode = "none";
defparam o_row_a7_a_aI.oe_sync_reset = "none";
defparam o_row_a7_a_aI.operation_mode = "output";
defparam o_row_a7_a_aI.output_async_reset = "none";
defparam o_row_a7_a_aI.output_power_up = "low";
defparam o_row_a7_a_aI.output_register_mode = "none";
defparam o_row_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a1_a_aI(
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
defparam debug_key_a1_a_aI.input_async_reset = "none";
defparam debug_key_a1_a_aI.input_power_up = "low";
defparam debug_key_a1_a_aI.input_register_mode = "none";
defparam debug_key_a1_a_aI.input_sync_reset = "none";
defparam debug_key_a1_a_aI.oe_async_reset = "none";
defparam debug_key_a1_a_aI.oe_power_up = "low";
defparam debug_key_a1_a_aI.oe_register_mode = "none";
defparam debug_key_a1_a_aI.oe_sync_reset = "none";
defparam debug_key_a1_a_aI.operation_mode = "input";
defparam debug_key_a1_a_aI.output_async_reset = "none";
defparam debug_key_a1_a_aI.output_power_up = "low";
defparam debug_key_a1_a_aI.output_register_mode = "none";
defparam debug_key_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a2_a_aI(
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
defparam debug_key_a2_a_aI.input_async_reset = "none";
defparam debug_key_a2_a_aI.input_power_up = "low";
defparam debug_key_a2_a_aI.input_register_mode = "none";
defparam debug_key_a2_a_aI.input_sync_reset = "none";
defparam debug_key_a2_a_aI.oe_async_reset = "none";
defparam debug_key_a2_a_aI.oe_power_up = "low";
defparam debug_key_a2_a_aI.oe_register_mode = "none";
defparam debug_key_a2_a_aI.oe_sync_reset = "none";
defparam debug_key_a2_a_aI.operation_mode = "input";
defparam debug_key_a2_a_aI.output_async_reset = "none";
defparam debug_key_a2_a_aI.output_power_up = "low";
defparam debug_key_a2_a_aI.output_register_mode = "none";
defparam debug_key_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_key_a3_a_aI(
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
defparam debug_key_a3_a_aI.input_async_reset = "none";
defparam debug_key_a3_a_aI.input_power_up = "low";
defparam debug_key_a3_a_aI.input_register_mode = "none";
defparam debug_key_a3_a_aI.input_sync_reset = "none";
defparam debug_key_a3_a_aI.oe_async_reset = "none";
defparam debug_key_a3_a_aI.oe_power_up = "low";
defparam debug_key_a3_a_aI.oe_register_mode = "none";
defparam debug_key_a3_a_aI.oe_sync_reset = "none";
defparam debug_key_a3_a_aI.operation_mode = "input";
defparam debug_key_a3_a_aI.output_async_reset = "none";
defparam debug_key_a3_a_aI.output_power_up = "low";
defparam debug_key_a3_a_aI.output_register_mode = "none";
defparam debug_key_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a0_a_aI(
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
defparam debug_switch_a0_a_aI.input_async_reset = "none";
defparam debug_switch_a0_a_aI.input_power_up = "low";
defparam debug_switch_a0_a_aI.input_register_mode = "none";
defparam debug_switch_a0_a_aI.input_sync_reset = "none";
defparam debug_switch_a0_a_aI.oe_async_reset = "none";
defparam debug_switch_a0_a_aI.oe_power_up = "low";
defparam debug_switch_a0_a_aI.oe_register_mode = "none";
defparam debug_switch_a0_a_aI.oe_sync_reset = "none";
defparam debug_switch_a0_a_aI.operation_mode = "input";
defparam debug_switch_a0_a_aI.output_async_reset = "none";
defparam debug_switch_a0_a_aI.output_power_up = "low";
defparam debug_switch_a0_a_aI.output_register_mode = "none";
defparam debug_switch_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a1_a_aI(
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
defparam debug_switch_a1_a_aI.input_async_reset = "none";
defparam debug_switch_a1_a_aI.input_power_up = "low";
defparam debug_switch_a1_a_aI.input_register_mode = "none";
defparam debug_switch_a1_a_aI.input_sync_reset = "none";
defparam debug_switch_a1_a_aI.oe_async_reset = "none";
defparam debug_switch_a1_a_aI.oe_power_up = "low";
defparam debug_switch_a1_a_aI.oe_register_mode = "none";
defparam debug_switch_a1_a_aI.oe_sync_reset = "none";
defparam debug_switch_a1_a_aI.operation_mode = "input";
defparam debug_switch_a1_a_aI.output_async_reset = "none";
defparam debug_switch_a1_a_aI.output_power_up = "low";
defparam debug_switch_a1_a_aI.output_register_mode = "none";
defparam debug_switch_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a2_a_aI(
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
defparam debug_switch_a2_a_aI.input_async_reset = "none";
defparam debug_switch_a2_a_aI.input_power_up = "low";
defparam debug_switch_a2_a_aI.input_register_mode = "none";
defparam debug_switch_a2_a_aI.input_sync_reset = "none";
defparam debug_switch_a2_a_aI.oe_async_reset = "none";
defparam debug_switch_a2_a_aI.oe_power_up = "low";
defparam debug_switch_a2_a_aI.oe_register_mode = "none";
defparam debug_switch_a2_a_aI.oe_sync_reset = "none";
defparam debug_switch_a2_a_aI.operation_mode = "input";
defparam debug_switch_a2_a_aI.output_async_reset = "none";
defparam debug_switch_a2_a_aI.output_power_up = "low";
defparam debug_switch_a2_a_aI.output_register_mode = "none";
defparam debug_switch_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a3_a_aI(
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
defparam debug_switch_a3_a_aI.input_async_reset = "none";
defparam debug_switch_a3_a_aI.input_power_up = "low";
defparam debug_switch_a3_a_aI.input_register_mode = "none";
defparam debug_switch_a3_a_aI.input_sync_reset = "none";
defparam debug_switch_a3_a_aI.oe_async_reset = "none";
defparam debug_switch_a3_a_aI.oe_power_up = "low";
defparam debug_switch_a3_a_aI.oe_register_mode = "none";
defparam debug_switch_a3_a_aI.oe_sync_reset = "none";
defparam debug_switch_a3_a_aI.operation_mode = "input";
defparam debug_switch_a3_a_aI.output_async_reset = "none";
defparam debug_switch_a3_a_aI.output_power_up = "low";
defparam debug_switch_a3_a_aI.output_register_mode = "none";
defparam debug_switch_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a4_a_aI(
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
defparam debug_switch_a4_a_aI.input_async_reset = "none";
defparam debug_switch_a4_a_aI.input_power_up = "low";
defparam debug_switch_a4_a_aI.input_register_mode = "none";
defparam debug_switch_a4_a_aI.input_sync_reset = "none";
defparam debug_switch_a4_a_aI.oe_async_reset = "none";
defparam debug_switch_a4_a_aI.oe_power_up = "low";
defparam debug_switch_a4_a_aI.oe_register_mode = "none";
defparam debug_switch_a4_a_aI.oe_sync_reset = "none";
defparam debug_switch_a4_a_aI.operation_mode = "input";
defparam debug_switch_a4_a_aI.output_async_reset = "none";
defparam debug_switch_a4_a_aI.output_power_up = "low";
defparam debug_switch_a4_a_aI.output_register_mode = "none";
defparam debug_switch_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a5_a_aI(
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
defparam debug_switch_a5_a_aI.input_async_reset = "none";
defparam debug_switch_a5_a_aI.input_power_up = "low";
defparam debug_switch_a5_a_aI.input_register_mode = "none";
defparam debug_switch_a5_a_aI.input_sync_reset = "none";
defparam debug_switch_a5_a_aI.oe_async_reset = "none";
defparam debug_switch_a5_a_aI.oe_power_up = "low";
defparam debug_switch_a5_a_aI.oe_register_mode = "none";
defparam debug_switch_a5_a_aI.oe_sync_reset = "none";
defparam debug_switch_a5_a_aI.operation_mode = "input";
defparam debug_switch_a5_a_aI.output_async_reset = "none";
defparam debug_switch_a5_a_aI.output_power_up = "low";
defparam debug_switch_a5_a_aI.output_register_mode = "none";
defparam debug_switch_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a6_a_aI(
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
defparam debug_switch_a6_a_aI.input_async_reset = "none";
defparam debug_switch_a6_a_aI.input_power_up = "low";
defparam debug_switch_a6_a_aI.input_register_mode = "none";
defparam debug_switch_a6_a_aI.input_sync_reset = "none";
defparam debug_switch_a6_a_aI.oe_async_reset = "none";
defparam debug_switch_a6_a_aI.oe_power_up = "low";
defparam debug_switch_a6_a_aI.oe_register_mode = "none";
defparam debug_switch_a6_a_aI.oe_sync_reset = "none";
defparam debug_switch_a6_a_aI.operation_mode = "input";
defparam debug_switch_a6_a_aI.output_async_reset = "none";
defparam debug_switch_a6_a_aI.output_power_up = "low";
defparam debug_switch_a6_a_aI.output_register_mode = "none";
defparam debug_switch_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a7_a_aI(
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
defparam debug_switch_a7_a_aI.input_async_reset = "none";
defparam debug_switch_a7_a_aI.input_power_up = "low";
defparam debug_switch_a7_a_aI.input_register_mode = "none";
defparam debug_switch_a7_a_aI.input_sync_reset = "none";
defparam debug_switch_a7_a_aI.oe_async_reset = "none";
defparam debug_switch_a7_a_aI.oe_power_up = "low";
defparam debug_switch_a7_a_aI.oe_register_mode = "none";
defparam debug_switch_a7_a_aI.oe_sync_reset = "none";
defparam debug_switch_a7_a_aI.operation_mode = "input";
defparam debug_switch_a7_a_aI.output_async_reset = "none";
defparam debug_switch_a7_a_aI.output_power_up = "low";
defparam debug_switch_a7_a_aI.output_register_mode = "none";
defparam debug_switch_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a8_a_aI(
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
defparam debug_switch_a8_a_aI.input_async_reset = "none";
defparam debug_switch_a8_a_aI.input_power_up = "low";
defparam debug_switch_a8_a_aI.input_register_mode = "none";
defparam debug_switch_a8_a_aI.input_sync_reset = "none";
defparam debug_switch_a8_a_aI.oe_async_reset = "none";
defparam debug_switch_a8_a_aI.oe_power_up = "low";
defparam debug_switch_a8_a_aI.oe_register_mode = "none";
defparam debug_switch_a8_a_aI.oe_sync_reset = "none";
defparam debug_switch_a8_a_aI.operation_mode = "input";
defparam debug_switch_a8_a_aI.output_async_reset = "none";
defparam debug_switch_a8_a_aI.output_power_up = "low";
defparam debug_switch_a8_a_aI.output_register_mode = "none";
defparam debug_switch_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a9_a_aI(
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
defparam debug_switch_a9_a_aI.input_async_reset = "none";
defparam debug_switch_a9_a_aI.input_power_up = "low";
defparam debug_switch_a9_a_aI.input_register_mode = "none";
defparam debug_switch_a9_a_aI.input_sync_reset = "none";
defparam debug_switch_a9_a_aI.oe_async_reset = "none";
defparam debug_switch_a9_a_aI.oe_power_up = "low";
defparam debug_switch_a9_a_aI.oe_register_mode = "none";
defparam debug_switch_a9_a_aI.oe_sync_reset = "none";
defparam debug_switch_a9_a_aI.operation_mode = "input";
defparam debug_switch_a9_a_aI.output_async_reset = "none";
defparam debug_switch_a9_a_aI.output_power_up = "low";
defparam debug_switch_a9_a_aI.output_register_mode = "none";
defparam debug_switch_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a10_a_aI(
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
defparam debug_switch_a10_a_aI.input_async_reset = "none";
defparam debug_switch_a10_a_aI.input_power_up = "low";
defparam debug_switch_a10_a_aI.input_register_mode = "none";
defparam debug_switch_a10_a_aI.input_sync_reset = "none";
defparam debug_switch_a10_a_aI.oe_async_reset = "none";
defparam debug_switch_a10_a_aI.oe_power_up = "low";
defparam debug_switch_a10_a_aI.oe_register_mode = "none";
defparam debug_switch_a10_a_aI.oe_sync_reset = "none";
defparam debug_switch_a10_a_aI.operation_mode = "input";
defparam debug_switch_a10_a_aI.output_async_reset = "none";
defparam debug_switch_a10_a_aI.output_power_up = "low";
defparam debug_switch_a10_a_aI.output_register_mode = "none";
defparam debug_switch_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a11_a_aI(
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
defparam debug_switch_a11_a_aI.input_async_reset = "none";
defparam debug_switch_a11_a_aI.input_power_up = "low";
defparam debug_switch_a11_a_aI.input_register_mode = "none";
defparam debug_switch_a11_a_aI.input_sync_reset = "none";
defparam debug_switch_a11_a_aI.oe_async_reset = "none";
defparam debug_switch_a11_a_aI.oe_power_up = "low";
defparam debug_switch_a11_a_aI.oe_register_mode = "none";
defparam debug_switch_a11_a_aI.oe_sync_reset = "none";
defparam debug_switch_a11_a_aI.operation_mode = "input";
defparam debug_switch_a11_a_aI.output_async_reset = "none";
defparam debug_switch_a11_a_aI.output_power_up = "low";
defparam debug_switch_a11_a_aI.output_register_mode = "none";
defparam debug_switch_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a12_a_aI(
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
defparam debug_switch_a12_a_aI.input_async_reset = "none";
defparam debug_switch_a12_a_aI.input_power_up = "low";
defparam debug_switch_a12_a_aI.input_register_mode = "none";
defparam debug_switch_a12_a_aI.input_sync_reset = "none";
defparam debug_switch_a12_a_aI.oe_async_reset = "none";
defparam debug_switch_a12_a_aI.oe_power_up = "low";
defparam debug_switch_a12_a_aI.oe_register_mode = "none";
defparam debug_switch_a12_a_aI.oe_sync_reset = "none";
defparam debug_switch_a12_a_aI.operation_mode = "input";
defparam debug_switch_a12_a_aI.output_async_reset = "none";
defparam debug_switch_a12_a_aI.output_power_up = "low";
defparam debug_switch_a12_a_aI.output_register_mode = "none";
defparam debug_switch_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a13_a_aI(
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
defparam debug_switch_a13_a_aI.input_async_reset = "none";
defparam debug_switch_a13_a_aI.input_power_up = "low";
defparam debug_switch_a13_a_aI.input_register_mode = "none";
defparam debug_switch_a13_a_aI.input_sync_reset = "none";
defparam debug_switch_a13_a_aI.oe_async_reset = "none";
defparam debug_switch_a13_a_aI.oe_power_up = "low";
defparam debug_switch_a13_a_aI.oe_register_mode = "none";
defparam debug_switch_a13_a_aI.oe_sync_reset = "none";
defparam debug_switch_a13_a_aI.operation_mode = "input";
defparam debug_switch_a13_a_aI.output_async_reset = "none";
defparam debug_switch_a13_a_aI.output_power_up = "low";
defparam debug_switch_a13_a_aI.output_register_mode = "none";
defparam debug_switch_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a14_a_aI(
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
defparam debug_switch_a14_a_aI.input_async_reset = "none";
defparam debug_switch_a14_a_aI.input_power_up = "low";
defparam debug_switch_a14_a_aI.input_register_mode = "none";
defparam debug_switch_a14_a_aI.input_sync_reset = "none";
defparam debug_switch_a14_a_aI.oe_async_reset = "none";
defparam debug_switch_a14_a_aI.oe_power_up = "low";
defparam debug_switch_a14_a_aI.oe_register_mode = "none";
defparam debug_switch_a14_a_aI.oe_sync_reset = "none";
defparam debug_switch_a14_a_aI.operation_mode = "input";
defparam debug_switch_a14_a_aI.output_async_reset = "none";
defparam debug_switch_a14_a_aI.output_power_up = "low";
defparam debug_switch_a14_a_aI.output_register_mode = "none";
defparam debug_switch_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a15_a_aI(
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
defparam debug_switch_a15_a_aI.input_async_reset = "none";
defparam debug_switch_a15_a_aI.input_power_up = "low";
defparam debug_switch_a15_a_aI.input_register_mode = "none";
defparam debug_switch_a15_a_aI.input_sync_reset = "none";
defparam debug_switch_a15_a_aI.oe_async_reset = "none";
defparam debug_switch_a15_a_aI.oe_power_up = "low";
defparam debug_switch_a15_a_aI.oe_register_mode = "none";
defparam debug_switch_a15_a_aI.oe_sync_reset = "none";
defparam debug_switch_a15_a_aI.operation_mode = "input";
defparam debug_switch_a15_a_aI.output_async_reset = "none";
defparam debug_switch_a15_a_aI.output_power_up = "low";
defparam debug_switch_a15_a_aI.output_register_mode = "none";
defparam debug_switch_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a16_a_aI(
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
defparam debug_switch_a16_a_aI.input_async_reset = "none";
defparam debug_switch_a16_a_aI.input_power_up = "low";
defparam debug_switch_a16_a_aI.input_register_mode = "none";
defparam debug_switch_a16_a_aI.input_sync_reset = "none";
defparam debug_switch_a16_a_aI.oe_async_reset = "none";
defparam debug_switch_a16_a_aI.oe_power_up = "low";
defparam debug_switch_a16_a_aI.oe_register_mode = "none";
defparam debug_switch_a16_a_aI.oe_sync_reset = "none";
defparam debug_switch_a16_a_aI.operation_mode = "input";
defparam debug_switch_a16_a_aI.output_async_reset = "none";
defparam debug_switch_a16_a_aI.output_power_up = "low";
defparam debug_switch_a16_a_aI.output_register_mode = "none";
defparam debug_switch_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io debug_switch_a17_a_aI(
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
defparam debug_switch_a17_a_aI.input_async_reset = "none";
defparam debug_switch_a17_a_aI.input_power_up = "low";
defparam debug_switch_a17_a_aI.input_register_mode = "none";
defparam debug_switch_a17_a_aI.input_sync_reset = "none";
defparam debug_switch_a17_a_aI.oe_async_reset = "none";
defparam debug_switch_a17_a_aI.oe_power_up = "low";
defparam debug_switch_a17_a_aI.oe_register_mode = "none";
defparam debug_switch_a17_a_aI.oe_sync_reset = "none";
defparam debug_switch_a17_a_aI.operation_mode = "input";
defparam debug_switch_a17_a_aI.output_async_reset = "none";
defparam debug_switch_a17_a_aI.output_power_up = "low";
defparam debug_switch_a17_a_aI.output_register_mode = "none";
defparam debug_switch_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a0_a_aI(
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
defparam debug_led_red_a0_a_aI.input_async_reset = "none";
defparam debug_led_red_a0_a_aI.input_power_up = "low";
defparam debug_led_red_a0_a_aI.input_register_mode = "none";
defparam debug_led_red_a0_a_aI.input_sync_reset = "none";
defparam debug_led_red_a0_a_aI.oe_async_reset = "none";
defparam debug_led_red_a0_a_aI.oe_power_up = "low";
defparam debug_led_red_a0_a_aI.oe_register_mode = "none";
defparam debug_led_red_a0_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a0_a_aI.operation_mode = "output";
defparam debug_led_red_a0_a_aI.output_async_reset = "none";
defparam debug_led_red_a0_a_aI.output_power_up = "low";
defparam debug_led_red_a0_a_aI.output_register_mode = "none";
defparam debug_led_red_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a1_a_aI(
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
defparam debug_led_red_a1_a_aI.input_async_reset = "none";
defparam debug_led_red_a1_a_aI.input_power_up = "low";
defparam debug_led_red_a1_a_aI.input_register_mode = "none";
defparam debug_led_red_a1_a_aI.input_sync_reset = "none";
defparam debug_led_red_a1_a_aI.oe_async_reset = "none";
defparam debug_led_red_a1_a_aI.oe_power_up = "low";
defparam debug_led_red_a1_a_aI.oe_register_mode = "none";
defparam debug_led_red_a1_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a1_a_aI.operation_mode = "output";
defparam debug_led_red_a1_a_aI.output_async_reset = "none";
defparam debug_led_red_a1_a_aI.output_power_up = "low";
defparam debug_led_red_a1_a_aI.output_register_mode = "none";
defparam debug_led_red_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a2_a_aI(
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
defparam debug_led_red_a2_a_aI.input_async_reset = "none";
defparam debug_led_red_a2_a_aI.input_power_up = "low";
defparam debug_led_red_a2_a_aI.input_register_mode = "none";
defparam debug_led_red_a2_a_aI.input_sync_reset = "none";
defparam debug_led_red_a2_a_aI.oe_async_reset = "none";
defparam debug_led_red_a2_a_aI.oe_power_up = "low";
defparam debug_led_red_a2_a_aI.oe_register_mode = "none";
defparam debug_led_red_a2_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a2_a_aI.operation_mode = "output";
defparam debug_led_red_a2_a_aI.output_async_reset = "none";
defparam debug_led_red_a2_a_aI.output_power_up = "low";
defparam debug_led_red_a2_a_aI.output_register_mode = "none";
defparam debug_led_red_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a3_a_aI(
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
defparam debug_led_red_a3_a_aI.input_async_reset = "none";
defparam debug_led_red_a3_a_aI.input_power_up = "low";
defparam debug_led_red_a3_a_aI.input_register_mode = "none";
defparam debug_led_red_a3_a_aI.input_sync_reset = "none";
defparam debug_led_red_a3_a_aI.oe_async_reset = "none";
defparam debug_led_red_a3_a_aI.oe_power_up = "low";
defparam debug_led_red_a3_a_aI.oe_register_mode = "none";
defparam debug_led_red_a3_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a3_a_aI.operation_mode = "output";
defparam debug_led_red_a3_a_aI.output_async_reset = "none";
defparam debug_led_red_a3_a_aI.output_power_up = "low";
defparam debug_led_red_a3_a_aI.output_register_mode = "none";
defparam debug_led_red_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a4_a_aI(
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
defparam debug_led_red_a4_a_aI.input_async_reset = "none";
defparam debug_led_red_a4_a_aI.input_power_up = "low";
defparam debug_led_red_a4_a_aI.input_register_mode = "none";
defparam debug_led_red_a4_a_aI.input_sync_reset = "none";
defparam debug_led_red_a4_a_aI.oe_async_reset = "none";
defparam debug_led_red_a4_a_aI.oe_power_up = "low";
defparam debug_led_red_a4_a_aI.oe_register_mode = "none";
defparam debug_led_red_a4_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a4_a_aI.operation_mode = "output";
defparam debug_led_red_a4_a_aI.output_async_reset = "none";
defparam debug_led_red_a4_a_aI.output_power_up = "low";
defparam debug_led_red_a4_a_aI.output_register_mode = "none";
defparam debug_led_red_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a5_a_aI(
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
defparam debug_led_red_a5_a_aI.input_async_reset = "none";
defparam debug_led_red_a5_a_aI.input_power_up = "low";
defparam debug_led_red_a5_a_aI.input_register_mode = "none";
defparam debug_led_red_a5_a_aI.input_sync_reset = "none";
defparam debug_led_red_a5_a_aI.oe_async_reset = "none";
defparam debug_led_red_a5_a_aI.oe_power_up = "low";
defparam debug_led_red_a5_a_aI.oe_register_mode = "none";
defparam debug_led_red_a5_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a5_a_aI.operation_mode = "output";
defparam debug_led_red_a5_a_aI.output_async_reset = "none";
defparam debug_led_red_a5_a_aI.output_power_up = "low";
defparam debug_led_red_a5_a_aI.output_register_mode = "none";
defparam debug_led_red_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a6_a_aI(
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
defparam debug_led_red_a6_a_aI.input_async_reset = "none";
defparam debug_led_red_a6_a_aI.input_power_up = "low";
defparam debug_led_red_a6_a_aI.input_register_mode = "none";
defparam debug_led_red_a6_a_aI.input_sync_reset = "none";
defparam debug_led_red_a6_a_aI.oe_async_reset = "none";
defparam debug_led_red_a6_a_aI.oe_power_up = "low";
defparam debug_led_red_a6_a_aI.oe_register_mode = "none";
defparam debug_led_red_a6_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a6_a_aI.operation_mode = "output";
defparam debug_led_red_a6_a_aI.output_async_reset = "none";
defparam debug_led_red_a6_a_aI.output_power_up = "low";
defparam debug_led_red_a6_a_aI.output_register_mode = "none";
defparam debug_led_red_a6_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a7_a_aI(
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
defparam debug_led_red_a7_a_aI.input_async_reset = "none";
defparam debug_led_red_a7_a_aI.input_power_up = "low";
defparam debug_led_red_a7_a_aI.input_register_mode = "none";
defparam debug_led_red_a7_a_aI.input_sync_reset = "none";
defparam debug_led_red_a7_a_aI.oe_async_reset = "none";
defparam debug_led_red_a7_a_aI.oe_power_up = "low";
defparam debug_led_red_a7_a_aI.oe_register_mode = "none";
defparam debug_led_red_a7_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a7_a_aI.operation_mode = "output";
defparam debug_led_red_a7_a_aI.output_async_reset = "none";
defparam debug_led_red_a7_a_aI.output_power_up = "low";
defparam debug_led_red_a7_a_aI.output_register_mode = "none";
defparam debug_led_red_a7_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a8_a_aI(
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
defparam debug_led_red_a8_a_aI.input_async_reset = "none";
defparam debug_led_red_a8_a_aI.input_power_up = "low";
defparam debug_led_red_a8_a_aI.input_register_mode = "none";
defparam debug_led_red_a8_a_aI.input_sync_reset = "none";
defparam debug_led_red_a8_a_aI.oe_async_reset = "none";
defparam debug_led_red_a8_a_aI.oe_power_up = "low";
defparam debug_led_red_a8_a_aI.oe_register_mode = "none";
defparam debug_led_red_a8_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a8_a_aI.operation_mode = "output";
defparam debug_led_red_a8_a_aI.output_async_reset = "none";
defparam debug_led_red_a8_a_aI.output_power_up = "low";
defparam debug_led_red_a8_a_aI.output_register_mode = "none";
defparam debug_led_red_a8_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a9_a_aI(
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
defparam debug_led_red_a9_a_aI.input_async_reset = "none";
defparam debug_led_red_a9_a_aI.input_power_up = "low";
defparam debug_led_red_a9_a_aI.input_register_mode = "none";
defparam debug_led_red_a9_a_aI.input_sync_reset = "none";
defparam debug_led_red_a9_a_aI.oe_async_reset = "none";
defparam debug_led_red_a9_a_aI.oe_power_up = "low";
defparam debug_led_red_a9_a_aI.oe_register_mode = "none";
defparam debug_led_red_a9_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a9_a_aI.operation_mode = "output";
defparam debug_led_red_a9_a_aI.output_async_reset = "none";
defparam debug_led_red_a9_a_aI.output_power_up = "low";
defparam debug_led_red_a9_a_aI.output_register_mode = "none";
defparam debug_led_red_a9_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a10_a_aI(
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
defparam debug_led_red_a10_a_aI.input_async_reset = "none";
defparam debug_led_red_a10_a_aI.input_power_up = "low";
defparam debug_led_red_a10_a_aI.input_register_mode = "none";
defparam debug_led_red_a10_a_aI.input_sync_reset = "none";
defparam debug_led_red_a10_a_aI.oe_async_reset = "none";
defparam debug_led_red_a10_a_aI.oe_power_up = "low";
defparam debug_led_red_a10_a_aI.oe_register_mode = "none";
defparam debug_led_red_a10_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a10_a_aI.operation_mode = "output";
defparam debug_led_red_a10_a_aI.output_async_reset = "none";
defparam debug_led_red_a10_a_aI.output_power_up = "low";
defparam debug_led_red_a10_a_aI.output_register_mode = "none";
defparam debug_led_red_a10_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a11_a_aI(
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
defparam debug_led_red_a11_a_aI.input_async_reset = "none";
defparam debug_led_red_a11_a_aI.input_power_up = "low";
defparam debug_led_red_a11_a_aI.input_register_mode = "none";
defparam debug_led_red_a11_a_aI.input_sync_reset = "none";
defparam debug_led_red_a11_a_aI.oe_async_reset = "none";
defparam debug_led_red_a11_a_aI.oe_power_up = "low";
defparam debug_led_red_a11_a_aI.oe_register_mode = "none";
defparam debug_led_red_a11_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a11_a_aI.operation_mode = "output";
defparam debug_led_red_a11_a_aI.output_async_reset = "none";
defparam debug_led_red_a11_a_aI.output_power_up = "low";
defparam debug_led_red_a11_a_aI.output_register_mode = "none";
defparam debug_led_red_a11_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a12_a_aI(
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
defparam debug_led_red_a12_a_aI.input_async_reset = "none";
defparam debug_led_red_a12_a_aI.input_power_up = "low";
defparam debug_led_red_a12_a_aI.input_register_mode = "none";
defparam debug_led_red_a12_a_aI.input_sync_reset = "none";
defparam debug_led_red_a12_a_aI.oe_async_reset = "none";
defparam debug_led_red_a12_a_aI.oe_power_up = "low";
defparam debug_led_red_a12_a_aI.oe_register_mode = "none";
defparam debug_led_red_a12_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a12_a_aI.operation_mode = "output";
defparam debug_led_red_a12_a_aI.output_async_reset = "none";
defparam debug_led_red_a12_a_aI.output_power_up = "low";
defparam debug_led_red_a12_a_aI.output_register_mode = "none";
defparam debug_led_red_a12_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a13_a_aI(
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
defparam debug_led_red_a13_a_aI.input_async_reset = "none";
defparam debug_led_red_a13_a_aI.input_power_up = "low";
defparam debug_led_red_a13_a_aI.input_register_mode = "none";
defparam debug_led_red_a13_a_aI.input_sync_reset = "none";
defparam debug_led_red_a13_a_aI.oe_async_reset = "none";
defparam debug_led_red_a13_a_aI.oe_power_up = "low";
defparam debug_led_red_a13_a_aI.oe_register_mode = "none";
defparam debug_led_red_a13_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a13_a_aI.operation_mode = "output";
defparam debug_led_red_a13_a_aI.output_async_reset = "none";
defparam debug_led_red_a13_a_aI.output_power_up = "low";
defparam debug_led_red_a13_a_aI.output_register_mode = "none";
defparam debug_led_red_a13_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a14_a_aI(
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
defparam debug_led_red_a14_a_aI.input_async_reset = "none";
defparam debug_led_red_a14_a_aI.input_power_up = "low";
defparam debug_led_red_a14_a_aI.input_register_mode = "none";
defparam debug_led_red_a14_a_aI.input_sync_reset = "none";
defparam debug_led_red_a14_a_aI.oe_async_reset = "none";
defparam debug_led_red_a14_a_aI.oe_power_up = "low";
defparam debug_led_red_a14_a_aI.oe_register_mode = "none";
defparam debug_led_red_a14_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a14_a_aI.operation_mode = "output";
defparam debug_led_red_a14_a_aI.output_async_reset = "none";
defparam debug_led_red_a14_a_aI.output_power_up = "low";
defparam debug_led_red_a14_a_aI.output_register_mode = "none";
defparam debug_led_red_a14_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a15_a_aI(
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
defparam debug_led_red_a15_a_aI.input_async_reset = "none";
defparam debug_led_red_a15_a_aI.input_power_up = "low";
defparam debug_led_red_a15_a_aI.input_register_mode = "none";
defparam debug_led_red_a15_a_aI.input_sync_reset = "none";
defparam debug_led_red_a15_a_aI.oe_async_reset = "none";
defparam debug_led_red_a15_a_aI.oe_power_up = "low";
defparam debug_led_red_a15_a_aI.oe_register_mode = "none";
defparam debug_led_red_a15_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a15_a_aI.operation_mode = "output";
defparam debug_led_red_a15_a_aI.output_async_reset = "none";
defparam debug_led_red_a15_a_aI.output_power_up = "low";
defparam debug_led_red_a15_a_aI.output_register_mode = "none";
defparam debug_led_red_a15_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a16_a_aI(
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
defparam debug_led_red_a16_a_aI.input_async_reset = "none";
defparam debug_led_red_a16_a_aI.input_power_up = "low";
defparam debug_led_red_a16_a_aI.input_register_mode = "none";
defparam debug_led_red_a16_a_aI.input_sync_reset = "none";
defparam debug_led_red_a16_a_aI.oe_async_reset = "none";
defparam debug_led_red_a16_a_aI.oe_power_up = "low";
defparam debug_led_red_a16_a_aI.oe_register_mode = "none";
defparam debug_led_red_a16_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a16_a_aI.operation_mode = "output";
defparam debug_led_red_a16_a_aI.output_async_reset = "none";
defparam debug_led_red_a16_a_aI.output_power_up = "low";
defparam debug_led_red_a16_a_aI.output_register_mode = "none";
defparam debug_led_red_a16_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_red_a17_a_aI(
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
	.padio(debug_led_red[17]));
// synopsys translate_off
defparam debug_led_red_a17_a_aI.input_async_reset = "none";
defparam debug_led_red_a17_a_aI.input_power_up = "low";
defparam debug_led_red_a17_a_aI.input_register_mode = "none";
defparam debug_led_red_a17_a_aI.input_sync_reset = "none";
defparam debug_led_red_a17_a_aI.oe_async_reset = "none";
defparam debug_led_red_a17_a_aI.oe_power_up = "low";
defparam debug_led_red_a17_a_aI.oe_register_mode = "none";
defparam debug_led_red_a17_a_aI.oe_sync_reset = "none";
defparam debug_led_red_a17_a_aI.operation_mode = "output";
defparam debug_led_red_a17_a_aI.output_async_reset = "none";
defparam debug_led_red_a17_a_aI.output_power_up = "low";
defparam debug_led_red_a17_a_aI.output_register_mode = "none";
defparam debug_led_red_a17_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a0_a_aI(
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
defparam debug_led_grn_a0_a_aI.input_async_reset = "none";
defparam debug_led_grn_a0_a_aI.input_power_up = "low";
defparam debug_led_grn_a0_a_aI.input_register_mode = "none";
defparam debug_led_grn_a0_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a0_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a0_a_aI.oe_power_up = "low";
defparam debug_led_grn_a0_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a0_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a0_a_aI.operation_mode = "output";
defparam debug_led_grn_a0_a_aI.output_async_reset = "none";
defparam debug_led_grn_a0_a_aI.output_power_up = "low";
defparam debug_led_grn_a0_a_aI.output_register_mode = "none";
defparam debug_led_grn_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a1_a_aI(
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
defparam debug_led_grn_a1_a_aI.input_async_reset = "none";
defparam debug_led_grn_a1_a_aI.input_power_up = "low";
defparam debug_led_grn_a1_a_aI.input_register_mode = "none";
defparam debug_led_grn_a1_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a1_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a1_a_aI.oe_power_up = "low";
defparam debug_led_grn_a1_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a1_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a1_a_aI.operation_mode = "output";
defparam debug_led_grn_a1_a_aI.output_async_reset = "none";
defparam debug_led_grn_a1_a_aI.output_power_up = "low";
defparam debug_led_grn_a1_a_aI.output_register_mode = "none";
defparam debug_led_grn_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a2_a_aI(
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
defparam debug_led_grn_a2_a_aI.input_async_reset = "none";
defparam debug_led_grn_a2_a_aI.input_power_up = "low";
defparam debug_led_grn_a2_a_aI.input_register_mode = "none";
defparam debug_led_grn_a2_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a2_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a2_a_aI.oe_power_up = "low";
defparam debug_led_grn_a2_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a2_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a2_a_aI.operation_mode = "output";
defparam debug_led_grn_a2_a_aI.output_async_reset = "none";
defparam debug_led_grn_a2_a_aI.output_power_up = "low";
defparam debug_led_grn_a2_a_aI.output_register_mode = "none";
defparam debug_led_grn_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a3_a_aI(
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
defparam debug_led_grn_a3_a_aI.input_async_reset = "none";
defparam debug_led_grn_a3_a_aI.input_power_up = "low";
defparam debug_led_grn_a3_a_aI.input_register_mode = "none";
defparam debug_led_grn_a3_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a3_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a3_a_aI.oe_power_up = "low";
defparam debug_led_grn_a3_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a3_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a3_a_aI.operation_mode = "output";
defparam debug_led_grn_a3_a_aI.output_async_reset = "none";
defparam debug_led_grn_a3_a_aI.output_power_up = "low";
defparam debug_led_grn_a3_a_aI.output_register_mode = "none";
defparam debug_led_grn_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a4_a_aI(
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
defparam debug_led_grn_a4_a_aI.input_async_reset = "none";
defparam debug_led_grn_a4_a_aI.input_power_up = "low";
defparam debug_led_grn_a4_a_aI.input_register_mode = "none";
defparam debug_led_grn_a4_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a4_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a4_a_aI.oe_power_up = "low";
defparam debug_led_grn_a4_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a4_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a4_a_aI.operation_mode = "output";
defparam debug_led_grn_a4_a_aI.output_async_reset = "none";
defparam debug_led_grn_a4_a_aI.output_power_up = "low";
defparam debug_led_grn_a4_a_aI.output_register_mode = "none";
defparam debug_led_grn_a4_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_led_grn_a5_a_aI(
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
defparam debug_led_grn_a5_a_aI.input_async_reset = "none";
defparam debug_led_grn_a5_a_aI.input_power_up = "low";
defparam debug_led_grn_a5_a_aI.input_register_mode = "none";
defparam debug_led_grn_a5_a_aI.input_sync_reset = "none";
defparam debug_led_grn_a5_a_aI.oe_async_reset = "none";
defparam debug_led_grn_a5_a_aI.oe_power_up = "low";
defparam debug_led_grn_a5_a_aI.oe_register_mode = "none";
defparam debug_led_grn_a5_a_aI.oe_sync_reset = "none";
defparam debug_led_grn_a5_a_aI.operation_mode = "output";
defparam debug_led_grn_a5_a_aI.output_async_reset = "none";
defparam debug_led_grn_a5_a_aI.output_power_up = "low";
defparam debug_led_grn_a5_a_aI.output_register_mode = "none";
defparam debug_led_grn_a5_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a0_a_aI(
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
	.padio(debug_num_0[0]));
// synopsys translate_off
defparam debug_num_0_a0_a_aI.input_async_reset = "none";
defparam debug_num_0_a0_a_aI.input_power_up = "low";
defparam debug_num_0_a0_a_aI.input_register_mode = "none";
defparam debug_num_0_a0_a_aI.input_sync_reset = "none";
defparam debug_num_0_a0_a_aI.oe_async_reset = "none";
defparam debug_num_0_a0_a_aI.oe_power_up = "low";
defparam debug_num_0_a0_a_aI.oe_register_mode = "none";
defparam debug_num_0_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a0_a_aI.operation_mode = "output";
defparam debug_num_0_a0_a_aI.output_async_reset = "none";
defparam debug_num_0_a0_a_aI.output_power_up = "low";
defparam debug_num_0_a0_a_aI.output_register_mode = "none";
defparam debug_num_0_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a1_a_aI(
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
	.padio(debug_num_0[1]));
// synopsys translate_off
defparam debug_num_0_a1_a_aI.input_async_reset = "none";
defparam debug_num_0_a1_a_aI.input_power_up = "low";
defparam debug_num_0_a1_a_aI.input_register_mode = "none";
defparam debug_num_0_a1_a_aI.input_sync_reset = "none";
defparam debug_num_0_a1_a_aI.oe_async_reset = "none";
defparam debug_num_0_a1_a_aI.oe_power_up = "low";
defparam debug_num_0_a1_a_aI.oe_register_mode = "none";
defparam debug_num_0_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a1_a_aI.operation_mode = "output";
defparam debug_num_0_a1_a_aI.output_async_reset = "none";
defparam debug_num_0_a1_a_aI.output_power_up = "low";
defparam debug_num_0_a1_a_aI.output_register_mode = "none";
defparam debug_num_0_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a2_a_aI(
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
	.padio(debug_num_0[2]));
// synopsys translate_off
defparam debug_num_0_a2_a_aI.input_async_reset = "none";
defparam debug_num_0_a2_a_aI.input_power_up = "low";
defparam debug_num_0_a2_a_aI.input_register_mode = "none";
defparam debug_num_0_a2_a_aI.input_sync_reset = "none";
defparam debug_num_0_a2_a_aI.oe_async_reset = "none";
defparam debug_num_0_a2_a_aI.oe_power_up = "low";
defparam debug_num_0_a2_a_aI.oe_register_mode = "none";
defparam debug_num_0_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a2_a_aI.operation_mode = "output";
defparam debug_num_0_a2_a_aI.output_async_reset = "none";
defparam debug_num_0_a2_a_aI.output_power_up = "low";
defparam debug_num_0_a2_a_aI.output_register_mode = "none";
defparam debug_num_0_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_0_a3_a_aI(
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
	.padio(debug_num_0[3]));
// synopsys translate_off
defparam debug_num_0_a3_a_aI.input_async_reset = "none";
defparam debug_num_0_a3_a_aI.input_power_up = "low";
defparam debug_num_0_a3_a_aI.input_register_mode = "none";
defparam debug_num_0_a3_a_aI.input_sync_reset = "none";
defparam debug_num_0_a3_a_aI.oe_async_reset = "none";
defparam debug_num_0_a3_a_aI.oe_power_up = "low";
defparam debug_num_0_a3_a_aI.oe_register_mode = "none";
defparam debug_num_0_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_0_a3_a_aI.operation_mode = "output";
defparam debug_num_0_a3_a_aI.output_async_reset = "none";
defparam debug_num_0_a3_a_aI.output_power_up = "low";
defparam debug_num_0_a3_a_aI.output_register_mode = "none";
defparam debug_num_0_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a0_a_aI(
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
	.padio(debug_num_1[0]));
// synopsys translate_off
defparam debug_num_1_a0_a_aI.input_async_reset = "none";
defparam debug_num_1_a0_a_aI.input_power_up = "low";
defparam debug_num_1_a0_a_aI.input_register_mode = "none";
defparam debug_num_1_a0_a_aI.input_sync_reset = "none";
defparam debug_num_1_a0_a_aI.oe_async_reset = "none";
defparam debug_num_1_a0_a_aI.oe_power_up = "low";
defparam debug_num_1_a0_a_aI.oe_register_mode = "none";
defparam debug_num_1_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a0_a_aI.operation_mode = "output";
defparam debug_num_1_a0_a_aI.output_async_reset = "none";
defparam debug_num_1_a0_a_aI.output_power_up = "low";
defparam debug_num_1_a0_a_aI.output_register_mode = "none";
defparam debug_num_1_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a1_a_aI(
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
	.padio(debug_num_1[1]));
// synopsys translate_off
defparam debug_num_1_a1_a_aI.input_async_reset = "none";
defparam debug_num_1_a1_a_aI.input_power_up = "low";
defparam debug_num_1_a1_a_aI.input_register_mode = "none";
defparam debug_num_1_a1_a_aI.input_sync_reset = "none";
defparam debug_num_1_a1_a_aI.oe_async_reset = "none";
defparam debug_num_1_a1_a_aI.oe_power_up = "low";
defparam debug_num_1_a1_a_aI.oe_register_mode = "none";
defparam debug_num_1_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a1_a_aI.operation_mode = "output";
defparam debug_num_1_a1_a_aI.output_async_reset = "none";
defparam debug_num_1_a1_a_aI.output_power_up = "low";
defparam debug_num_1_a1_a_aI.output_register_mode = "none";
defparam debug_num_1_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a2_a_aI(
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
	.padio(debug_num_1[2]));
// synopsys translate_off
defparam debug_num_1_a2_a_aI.input_async_reset = "none";
defparam debug_num_1_a2_a_aI.input_power_up = "low";
defparam debug_num_1_a2_a_aI.input_register_mode = "none";
defparam debug_num_1_a2_a_aI.input_sync_reset = "none";
defparam debug_num_1_a2_a_aI.oe_async_reset = "none";
defparam debug_num_1_a2_a_aI.oe_power_up = "low";
defparam debug_num_1_a2_a_aI.oe_register_mode = "none";
defparam debug_num_1_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a2_a_aI.operation_mode = "output";
defparam debug_num_1_a2_a_aI.output_async_reset = "none";
defparam debug_num_1_a2_a_aI.output_power_up = "low";
defparam debug_num_1_a2_a_aI.output_register_mode = "none";
defparam debug_num_1_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_1_a3_a_aI(
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
	.padio(debug_num_1[3]));
// synopsys translate_off
defparam debug_num_1_a3_a_aI.input_async_reset = "none";
defparam debug_num_1_a3_a_aI.input_power_up = "low";
defparam debug_num_1_a3_a_aI.input_register_mode = "none";
defparam debug_num_1_a3_a_aI.input_sync_reset = "none";
defparam debug_num_1_a3_a_aI.oe_async_reset = "none";
defparam debug_num_1_a3_a_aI.oe_power_up = "low";
defparam debug_num_1_a3_a_aI.oe_register_mode = "none";
defparam debug_num_1_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_1_a3_a_aI.operation_mode = "output";
defparam debug_num_1_a3_a_aI.output_async_reset = "none";
defparam debug_num_1_a3_a_aI.output_power_up = "low";
defparam debug_num_1_a3_a_aI.output_register_mode = "none";
defparam debug_num_1_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a0_a_aI(
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
	.padio(debug_num_2[0]));
// synopsys translate_off
defparam debug_num_2_a0_a_aI.input_async_reset = "none";
defparam debug_num_2_a0_a_aI.input_power_up = "low";
defparam debug_num_2_a0_a_aI.input_register_mode = "none";
defparam debug_num_2_a0_a_aI.input_sync_reset = "none";
defparam debug_num_2_a0_a_aI.oe_async_reset = "none";
defparam debug_num_2_a0_a_aI.oe_power_up = "low";
defparam debug_num_2_a0_a_aI.oe_register_mode = "none";
defparam debug_num_2_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a0_a_aI.operation_mode = "output";
defparam debug_num_2_a0_a_aI.output_async_reset = "none";
defparam debug_num_2_a0_a_aI.output_power_up = "low";
defparam debug_num_2_a0_a_aI.output_register_mode = "none";
defparam debug_num_2_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a1_a_aI(
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
	.padio(debug_num_2[1]));
// synopsys translate_off
defparam debug_num_2_a1_a_aI.input_async_reset = "none";
defparam debug_num_2_a1_a_aI.input_power_up = "low";
defparam debug_num_2_a1_a_aI.input_register_mode = "none";
defparam debug_num_2_a1_a_aI.input_sync_reset = "none";
defparam debug_num_2_a1_a_aI.oe_async_reset = "none";
defparam debug_num_2_a1_a_aI.oe_power_up = "low";
defparam debug_num_2_a1_a_aI.oe_register_mode = "none";
defparam debug_num_2_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a1_a_aI.operation_mode = "output";
defparam debug_num_2_a1_a_aI.output_async_reset = "none";
defparam debug_num_2_a1_a_aI.output_power_up = "low";
defparam debug_num_2_a1_a_aI.output_register_mode = "none";
defparam debug_num_2_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a2_a_aI(
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
	.padio(debug_num_2[2]));
// synopsys translate_off
defparam debug_num_2_a2_a_aI.input_async_reset = "none";
defparam debug_num_2_a2_a_aI.input_power_up = "low";
defparam debug_num_2_a2_a_aI.input_register_mode = "none";
defparam debug_num_2_a2_a_aI.input_sync_reset = "none";
defparam debug_num_2_a2_a_aI.oe_async_reset = "none";
defparam debug_num_2_a2_a_aI.oe_power_up = "low";
defparam debug_num_2_a2_a_aI.oe_register_mode = "none";
defparam debug_num_2_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a2_a_aI.operation_mode = "output";
defparam debug_num_2_a2_a_aI.output_async_reset = "none";
defparam debug_num_2_a2_a_aI.output_power_up = "low";
defparam debug_num_2_a2_a_aI.output_register_mode = "none";
defparam debug_num_2_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_2_a3_a_aI(
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
	.padio(debug_num_2[3]));
// synopsys translate_off
defparam debug_num_2_a3_a_aI.input_async_reset = "none";
defparam debug_num_2_a3_a_aI.input_power_up = "low";
defparam debug_num_2_a3_a_aI.input_register_mode = "none";
defparam debug_num_2_a3_a_aI.input_sync_reset = "none";
defparam debug_num_2_a3_a_aI.oe_async_reset = "none";
defparam debug_num_2_a3_a_aI.oe_power_up = "low";
defparam debug_num_2_a3_a_aI.oe_register_mode = "none";
defparam debug_num_2_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_2_a3_a_aI.operation_mode = "output";
defparam debug_num_2_a3_a_aI.output_async_reset = "none";
defparam debug_num_2_a3_a_aI.output_power_up = "low";
defparam debug_num_2_a3_a_aI.output_register_mode = "none";
defparam debug_num_2_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a0_a_aI(
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
	.padio(debug_num_3[0]));
// synopsys translate_off
defparam debug_num_3_a0_a_aI.input_async_reset = "none";
defparam debug_num_3_a0_a_aI.input_power_up = "low";
defparam debug_num_3_a0_a_aI.input_register_mode = "none";
defparam debug_num_3_a0_a_aI.input_sync_reset = "none";
defparam debug_num_3_a0_a_aI.oe_async_reset = "none";
defparam debug_num_3_a0_a_aI.oe_power_up = "low";
defparam debug_num_3_a0_a_aI.oe_register_mode = "none";
defparam debug_num_3_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a0_a_aI.operation_mode = "output";
defparam debug_num_3_a0_a_aI.output_async_reset = "none";
defparam debug_num_3_a0_a_aI.output_power_up = "low";
defparam debug_num_3_a0_a_aI.output_register_mode = "none";
defparam debug_num_3_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a1_a_aI(
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
	.padio(debug_num_3[1]));
// synopsys translate_off
defparam debug_num_3_a1_a_aI.input_async_reset = "none";
defparam debug_num_3_a1_a_aI.input_power_up = "low";
defparam debug_num_3_a1_a_aI.input_register_mode = "none";
defparam debug_num_3_a1_a_aI.input_sync_reset = "none";
defparam debug_num_3_a1_a_aI.oe_async_reset = "none";
defparam debug_num_3_a1_a_aI.oe_power_up = "low";
defparam debug_num_3_a1_a_aI.oe_register_mode = "none";
defparam debug_num_3_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a1_a_aI.operation_mode = "output";
defparam debug_num_3_a1_a_aI.output_async_reset = "none";
defparam debug_num_3_a1_a_aI.output_power_up = "low";
defparam debug_num_3_a1_a_aI.output_register_mode = "none";
defparam debug_num_3_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a2_a_aI(
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
	.padio(debug_num_3[2]));
// synopsys translate_off
defparam debug_num_3_a2_a_aI.input_async_reset = "none";
defparam debug_num_3_a2_a_aI.input_power_up = "low";
defparam debug_num_3_a2_a_aI.input_register_mode = "none";
defparam debug_num_3_a2_a_aI.input_sync_reset = "none";
defparam debug_num_3_a2_a_aI.oe_async_reset = "none";
defparam debug_num_3_a2_a_aI.oe_power_up = "low";
defparam debug_num_3_a2_a_aI.oe_register_mode = "none";
defparam debug_num_3_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a2_a_aI.operation_mode = "output";
defparam debug_num_3_a2_a_aI.output_async_reset = "none";
defparam debug_num_3_a2_a_aI.output_power_up = "low";
defparam debug_num_3_a2_a_aI.output_register_mode = "none";
defparam debug_num_3_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_3_a3_a_aI(
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
	.padio(debug_num_3[3]));
// synopsys translate_off
defparam debug_num_3_a3_a_aI.input_async_reset = "none";
defparam debug_num_3_a3_a_aI.input_power_up = "low";
defparam debug_num_3_a3_a_aI.input_register_mode = "none";
defparam debug_num_3_a3_a_aI.input_sync_reset = "none";
defparam debug_num_3_a3_a_aI.oe_async_reset = "none";
defparam debug_num_3_a3_a_aI.oe_power_up = "low";
defparam debug_num_3_a3_a_aI.oe_register_mode = "none";
defparam debug_num_3_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_3_a3_a_aI.operation_mode = "output";
defparam debug_num_3_a3_a_aI.output_async_reset = "none";
defparam debug_num_3_a3_a_aI.output_power_up = "low";
defparam debug_num_3_a3_a_aI.output_register_mode = "none";
defparam debug_num_3_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a0_a_aI(
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
	.padio(debug_num_4[0]));
// synopsys translate_off
defparam debug_num_4_a0_a_aI.input_async_reset = "none";
defparam debug_num_4_a0_a_aI.input_power_up = "low";
defparam debug_num_4_a0_a_aI.input_register_mode = "none";
defparam debug_num_4_a0_a_aI.input_sync_reset = "none";
defparam debug_num_4_a0_a_aI.oe_async_reset = "none";
defparam debug_num_4_a0_a_aI.oe_power_up = "low";
defparam debug_num_4_a0_a_aI.oe_register_mode = "none";
defparam debug_num_4_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a0_a_aI.operation_mode = "output";
defparam debug_num_4_a0_a_aI.output_async_reset = "none";
defparam debug_num_4_a0_a_aI.output_power_up = "low";
defparam debug_num_4_a0_a_aI.output_register_mode = "none";
defparam debug_num_4_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a1_a_aI(
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
	.padio(debug_num_4[1]));
// synopsys translate_off
defparam debug_num_4_a1_a_aI.input_async_reset = "none";
defparam debug_num_4_a1_a_aI.input_power_up = "low";
defparam debug_num_4_a1_a_aI.input_register_mode = "none";
defparam debug_num_4_a1_a_aI.input_sync_reset = "none";
defparam debug_num_4_a1_a_aI.oe_async_reset = "none";
defparam debug_num_4_a1_a_aI.oe_power_up = "low";
defparam debug_num_4_a1_a_aI.oe_register_mode = "none";
defparam debug_num_4_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a1_a_aI.operation_mode = "output";
defparam debug_num_4_a1_a_aI.output_async_reset = "none";
defparam debug_num_4_a1_a_aI.output_power_up = "low";
defparam debug_num_4_a1_a_aI.output_register_mode = "none";
defparam debug_num_4_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a2_a_aI(
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
	.padio(debug_num_4[2]));
// synopsys translate_off
defparam debug_num_4_a2_a_aI.input_async_reset = "none";
defparam debug_num_4_a2_a_aI.input_power_up = "low";
defparam debug_num_4_a2_a_aI.input_register_mode = "none";
defparam debug_num_4_a2_a_aI.input_sync_reset = "none";
defparam debug_num_4_a2_a_aI.oe_async_reset = "none";
defparam debug_num_4_a2_a_aI.oe_power_up = "low";
defparam debug_num_4_a2_a_aI.oe_register_mode = "none";
defparam debug_num_4_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a2_a_aI.operation_mode = "output";
defparam debug_num_4_a2_a_aI.output_async_reset = "none";
defparam debug_num_4_a2_a_aI.output_power_up = "low";
defparam debug_num_4_a2_a_aI.output_register_mode = "none";
defparam debug_num_4_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_4_a3_a_aI(
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
	.padio(debug_num_4[3]));
// synopsys translate_off
defparam debug_num_4_a3_a_aI.input_async_reset = "none";
defparam debug_num_4_a3_a_aI.input_power_up = "low";
defparam debug_num_4_a3_a_aI.input_register_mode = "none";
defparam debug_num_4_a3_a_aI.input_sync_reset = "none";
defparam debug_num_4_a3_a_aI.oe_async_reset = "none";
defparam debug_num_4_a3_a_aI.oe_power_up = "low";
defparam debug_num_4_a3_a_aI.oe_register_mode = "none";
defparam debug_num_4_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_4_a3_a_aI.operation_mode = "output";
defparam debug_num_4_a3_a_aI.output_async_reset = "none";
defparam debug_num_4_a3_a_aI.output_power_up = "low";
defparam debug_num_4_a3_a_aI.output_register_mode = "none";
defparam debug_num_4_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a0_a_aI(
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
	.padio(debug_num_5[0]));
// synopsys translate_off
defparam debug_num_5_a0_a_aI.input_async_reset = "none";
defparam debug_num_5_a0_a_aI.input_power_up = "low";
defparam debug_num_5_a0_a_aI.input_register_mode = "none";
defparam debug_num_5_a0_a_aI.input_sync_reset = "none";
defparam debug_num_5_a0_a_aI.oe_async_reset = "none";
defparam debug_num_5_a0_a_aI.oe_power_up = "low";
defparam debug_num_5_a0_a_aI.oe_register_mode = "none";
defparam debug_num_5_a0_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a0_a_aI.operation_mode = "output";
defparam debug_num_5_a0_a_aI.output_async_reset = "none";
defparam debug_num_5_a0_a_aI.output_power_up = "low";
defparam debug_num_5_a0_a_aI.output_register_mode = "none";
defparam debug_num_5_a0_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a1_a_aI(
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
	.padio(debug_num_5[1]));
// synopsys translate_off
defparam debug_num_5_a1_a_aI.input_async_reset = "none";
defparam debug_num_5_a1_a_aI.input_power_up = "low";
defparam debug_num_5_a1_a_aI.input_register_mode = "none";
defparam debug_num_5_a1_a_aI.input_sync_reset = "none";
defparam debug_num_5_a1_a_aI.oe_async_reset = "none";
defparam debug_num_5_a1_a_aI.oe_power_up = "low";
defparam debug_num_5_a1_a_aI.oe_register_mode = "none";
defparam debug_num_5_a1_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a1_a_aI.operation_mode = "output";
defparam debug_num_5_a1_a_aI.output_async_reset = "none";
defparam debug_num_5_a1_a_aI.output_power_up = "low";
defparam debug_num_5_a1_a_aI.output_register_mode = "none";
defparam debug_num_5_a1_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a2_a_aI(
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
	.padio(debug_num_5[2]));
// synopsys translate_off
defparam debug_num_5_a2_a_aI.input_async_reset = "none";
defparam debug_num_5_a2_a_aI.input_power_up = "low";
defparam debug_num_5_a2_a_aI.input_register_mode = "none";
defparam debug_num_5_a2_a_aI.input_sync_reset = "none";
defparam debug_num_5_a2_a_aI.oe_async_reset = "none";
defparam debug_num_5_a2_a_aI.oe_power_up = "low";
defparam debug_num_5_a2_a_aI.oe_register_mode = "none";
defparam debug_num_5_a2_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a2_a_aI.operation_mode = "output";
defparam debug_num_5_a2_a_aI.output_async_reset = "none";
defparam debug_num_5_a2_a_aI.output_power_up = "low";
defparam debug_num_5_a2_a_aI.output_register_mode = "none";
defparam debug_num_5_a2_a_aI.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io debug_num_5_a3_a_aI(
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
	.padio(debug_num_5[3]));
// synopsys translate_off
defparam debug_num_5_a3_a_aI.input_async_reset = "none";
defparam debug_num_5_a3_a_aI.input_power_up = "low";
defparam debug_num_5_a3_a_aI.input_register_mode = "none";
defparam debug_num_5_a3_a_aI.input_sync_reset = "none";
defparam debug_num_5_a3_a_aI.oe_async_reset = "none";
defparam debug_num_5_a3_a_aI.oe_power_up = "low";
defparam debug_num_5_a3_a_aI.oe_register_mode = "none";
defparam debug_num_5_a3_a_aI.oe_sync_reset = "none";
defparam debug_num_5_a3_a_aI.operation_mode = "output";
defparam debug_num_5_a3_a_aI.output_async_reset = "none";
defparam debug_num_5_a3_a_aI.output_power_up = "low";
defparam debug_num_5_a3_a_aI.output_register_mode = "none";
defparam debug_num_5_a3_a_aI.output_sync_reset = "none";
// synopsys translate_on

endmodule
