-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 153 11/29/2010 SJ Full Version"

-- DATE "03/23/2016 19:25:39"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kirsch_chip IS
    PORT (
	i_clock : IN std_logic;
	i_reset : IN std_logic;
	i_valid : IN std_logic;
	i_pixel : IN std_logic_vector(7 DOWNTO 0);
	o_valid : OUT std_logic;
	o_edge : OUT std_logic;
	o_dir : OUT std_logic_vector(2 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_row : OUT std_logic_vector(7 DOWNTO 0);
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(17 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_num_0 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_1 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_2 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_3 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_4 : OUT std_logic_vector(3 DOWNTO 0);
	debug_num_5 : OUT std_logic_vector(3 DOWNTO 0)
	);
END kirsch_chip;

-- Design Ports Information
-- o_valid	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_edge	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[1]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_dir[2]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[0]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[6]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_row[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_key[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_led_red[0]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[17]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[0]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[1]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_0[3]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[0]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[1]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[2]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_1[3]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[0]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[1]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_2[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[1]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[2]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_3[3]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[1]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[2]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_4[3]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[0]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[2]	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_num_5[3]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_valid	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_reset	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[7]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[6]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[5]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[3]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[1]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_pixel[0]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_pixel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_valid : std_logic;
SIGNAL ww_o_edge : std_logic;
SIGNAL ww_o_dir : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_row : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_num_0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_num_5 : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL column_valid2_7_a : std_logic;
SIGNAL nx23902z3 : std_logic;
SIGNAL row_valid2_7_a : std_logic;
SIGNAL r4_8_a : std_logic;
SIGNAL r4_5_a : std_logic;
SIGNAL r4_4_a : std_logic;
SIGNAL r6_5_a : std_logic;
SIGNAL r4_1_a : std_logic;
SIGNAL r6_1_a : std_logic;
SIGNAL nx61908z3 : std_logic;
SIGNAL nx61908z2 : std_logic;
SIGNAL nx26373z4 : std_logic;
SIGNAL nx25376z2 : std_logic;
SIGNAL column_valid1_7_a : std_logic;
SIGNAL row_valid1_7_a : std_logic;
SIGNAL i_add3_11_a : std_logic;
SIGNAL i_add3_10_a : std_logic;
SIGNAL i_add3_9_a : std_logic;
SIGNAL i_add3_8_a : std_logic;
SIGNAL temp_add_7_a : std_logic;
SIGNAL i_add4_7_a : std_logic;
SIGNAL temp_add_6_a : std_logic;
SIGNAL i_add4_6_a : std_logic;
SIGNAL temp_add_5_a : std_logic;
SIGNAL i_add4_5_a : std_logic;
SIGNAL i_add3_4_a : std_logic;
SIGNAL i_add3_3_a : std_logic;
SIGNAL i_add3_2_a : std_logic;
SIGNAL i_add3_1_a : std_logic;
SIGNAL temp_add_0_a : std_logic;
SIGNAL i_add4_0_a : std_logic;
SIGNAL stage2_ao_add_op12_stage2_1_a : std_logic;
SIGNAL stage2_ao_add_op12_stage2_5_a : std_logic;
SIGNAL temp_max_8_a : std_logic;
SIGNAL i_max3_8_a : std_logic;
SIGNAL temp_max_5_a : std_logic;
SIGNAL i_max3_5_a : std_logic;
SIGNAL temp_max_4_a : std_logic;
SIGNAL i_max3_4_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_8_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_5_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_4_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_1_a : std_logic;
SIGNAL temp_dir_2_a : std_logic;
SIGNAL i_dir3_2_a : std_logic;
SIGNAL g_7_a : std_logic;
SIGNAL nx28679z52 : std_logic;
SIGNAL nx28679z53 : std_logic;
SIGNAL i_add2_7_a : std_logic;
SIGNAL nx28679z54 : std_logic;
SIGNAL h_6_a : std_logic;
SIGNAL nx28679z55 : std_logic;
SIGNAL i_add2_6_a : std_logic;
SIGNAL nx28679z38 : std_logic;
SIGNAL g_5_a : std_logic;
SIGNAL nx28679z56 : std_logic;
SIGNAL nx28679z57 : std_logic;
SIGNAL i_add2_5_a : std_logic;
SIGNAL nx28679z40 : std_logic;
SIGNAL a_5_a : std_logic;
SIGNAL nx28679z42 : std_logic;
SIGNAL a_4_a : std_logic;
SIGNAL b_4_a : std_logic;
SIGNAL nx28679z43 : std_logic;
SIGNAL i_add1_4_a : std_logic;
SIGNAL h_3_a : std_logic;
SIGNAL nx28679z61 : std_logic;
SIGNAL d_3_a : std_logic;
SIGNAL nx28679z44 : std_logic;
SIGNAL a_3_a : std_logic;
SIGNAL nx28679z45 : std_logic;
SIGNAL i_add1_3_a : std_logic;
SIGNAL nx28679z46 : std_logic;
SIGNAL nx28679z47 : std_logic;
SIGNAL i_add1_2_a : std_logic;
SIGNAL nx28679z64 : std_logic;
SIGNAL h_1_a : std_logic;
SIGNAL nx28679z65 : std_logic;
SIGNAL i_add2_1_a : std_logic;
SIGNAL nx28679z50 : std_logic;
SIGNAL nx28679z51 : std_logic;
SIGNAL i_add1_0_a : std_logic;
SIGNAL nx28679z22 : std_logic;
SIGNAL nx28679z8 : std_logic;
SIGNAL nx28679z9 : std_logic;
SIGNAL i_max1_5_a : std_logic;
SIGNAL nx28679z27 : std_logic;
SIGNAL nx28679z11 : std_logic;
SIGNAL nx28679z28 : std_logic;
SIGNAL nx28679z32 : std_logic;
SIGNAL nx28679z34 : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_7_a : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_6_a : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_5_a : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_1_a : std_logic;
SIGNAL stage1_anx15254z3 : std_logic;
SIGNAL stage1_anx15254z2 : std_logic;
SIGNAL i_6_a : std_logic;
SIGNAL i_3_a : std_logic;
SIGNAL i_1_a : std_logic;
SIGNAL mem_wren_0_a : std_logic;
SIGNAL mem_wren_1_a : std_logic;
SIGNAL column_valid1_7_afeeder_combout : std_logic;
SIGNAL column_valid2_7_afeeder_combout : std_logic;
SIGNAL d_3_afeeder_combout : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL inc_d_0_a : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL inc_d_0_dup_1231 : std_logic;
SIGNAL nx34903z1 : std_logic;
SIGNAL column_0_a : std_logic;
SIGNAL nx12707z1 : std_logic;
SIGNAL inc_d_1_dup_1233 : std_logic;
SIGNAL column_1_a : std_logic;
SIGNAL nx8437z2 : std_logic;
SIGNAL nx8437z1 : std_logic;
SIGNAL inc_d_3_dup_1237 : std_logic;
SIGNAL column_3_a : std_logic;
SIGNAL nx34903z4 : std_logic;
SIGNAL nx50725z4 : std_logic;
SIGNAL nx50725z3 : std_logic;
SIGNAL nx50725z2 : std_logic;
SIGNAL inc_d_6_dup_1243 : std_logic;
SIGNAL column_6_a : std_logic;
SIGNAL nx50725z1 : std_logic;
SIGNAL inc_d_7_dup_1245 : std_logic;
SIGNAL column_7_a : std_logic;
SIGNAL inc_d_5_dup_1241 : std_logic;
SIGNAL column_5_a : std_logic;
SIGNAL nx34903z3 : std_logic;
SIGNAL nx34903z2 : std_logic;
SIGNAL o_row_0_a : std_logic;
SIGNAL nx54262z3 : std_logic;
SIGNAL inc_d_1_a : std_logic;
SIGNAL o_row_1_a : std_logic;
SIGNAL nx54262z2 : std_logic;
SIGNAL nx54262z1 : std_logic;
SIGNAL inc_d_3_a : std_logic;
SIGNAL o_row_3_a : std_logic;
SIGNAL nx58250z4 : std_logic;
SIGNAL nx58250z3 : std_logic;
SIGNAL inc_d_5_a : std_logic;
SIGNAL o_row_5_a : std_logic;
SIGNAL nx58250z2 : std_logic;
SIGNAL inc_d_6_a : std_logic;
SIGNAL o_row_6_a : std_logic;
SIGNAL row_valid1_6_afeeder_combout : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL valid_0_a : std_logic;
SIGNAL row_valid1_6_a : std_logic;
SIGNAL row_valid2_6_afeeder_combout : std_logic;
SIGNAL valid_1_a : std_logic;
SIGNAL valid_2_a : std_logic;
SIGNAL valid_3_a : std_logic;
SIGNAL valid_4_a : std_logic;
SIGNAL row_valid2_6_a : std_logic;
SIGNAL inc_d_4_a : std_logic;
SIGNAL o_row_4_a : std_logic;
SIGNAL row_valid1_4_afeeder_combout : std_logic;
SIGNAL row_valid1_4_a : std_logic;
SIGNAL row_valid2_4_a : std_logic;
SIGNAL row_valid1_5_a : std_logic;
SIGNAL row_valid2_5_a : std_logic;
SIGNAL nx23902z5 : std_logic;
SIGNAL inc_d_2_a : std_logic;
SIGNAL o_row_2_a : std_logic;
SIGNAL row_valid1_2_afeeder_combout : std_logic;
SIGNAL row_valid1_2_a : std_logic;
SIGNAL row_valid2_2_a : std_logic;
SIGNAL row_valid1_3_a : std_logic;
SIGNAL row_valid2_3_a : std_logic;
SIGNAL row_valid1_1_afeeder_combout : std_logic;
SIGNAL row_valid1_1_a : std_logic;
SIGNAL row_valid2_1_afeeder_combout : std_logic;
SIGNAL row_valid2_1_a : std_logic;
SIGNAL nx23902z4 : std_logic;
SIGNAL column_valid1_3_afeeder_combout : std_logic;
SIGNAL column_valid1_3_a : std_logic;
SIGNAL column_valid2_3_a : std_logic;
SIGNAL inc_d_2_dup_1235 : std_logic;
SIGNAL column_2_a : std_logic;
SIGNAL column_valid1_2_afeeder_combout : std_logic;
SIGNAL column_valid1_2_a : std_logic;
SIGNAL column_valid2_2_a : std_logic;
SIGNAL column_valid1_1_afeeder_combout : std_logic;
SIGNAL column_valid1_1_a : std_logic;
SIGNAL column_valid2_1_afeeder_combout : std_logic;
SIGNAL column_valid2_1_a : std_logic;
SIGNAL nx23902z2 : std_logic;
SIGNAL nx23902z1 : std_logic;
SIGNAL reg_output_valid_reg_aregout : std_logic;
SIGNAL valid_5_a : std_logic;
SIGNAL valid_6_a : std_logic;
SIGNAL nx61908z17 : std_logic;
SIGNAL inc_d_4_dup_1239 : std_logic;
SIGNAL column_4_a : std_logic;
SIGNAL c_6_afeeder_combout : std_logic;
SIGNAL nx20492z1 : std_logic;
SIGNAL c_6_a : std_logic;
SIGNAL b_6_a : std_logic;
SIGNAL a_6_a : std_logic;
SIGNAL nx28679z39 : std_logic;
SIGNAL nx28679z3 : std_logic;
SIGNAL d_6_afeeder_combout : std_logic;
SIGNAL d_6_a : std_logic;
SIGNAL i_add1_6_a : std_logic;
SIGNAL d_5_afeeder_combout : std_logic;
SIGNAL d_5_a : std_logic;
SIGNAL c_5_afeeder_combout : std_logic;
SIGNAL c_5_a : std_logic;
SIGNAL b_5_a : std_logic;
SIGNAL nx28679z41 : std_logic;
SIGNAL i_add1_5_a : std_logic;
SIGNAL c_4_afeeder_combout : std_logic;
SIGNAL c_4_a : std_logic;
SIGNAL nx28679z59 : std_logic;
SIGNAL e_4_a : std_logic;
SIGNAL f_4_a : std_logic;
SIGNAL g_4_a : std_logic;
SIGNAL nx28679z58 : std_logic;
SIGNAL i_add2_4_a : std_logic;
SIGNAL e_3_a : std_logic;
SIGNAL nx28679z60 : std_logic;
SIGNAL i_add2_3_a : std_logic;
SIGNAL c_2_afeeder_combout : std_logic;
SIGNAL c_2_a : std_logic;
SIGNAL nx28679z63 : std_logic;
SIGNAL e_2_a : std_logic;
SIGNAL f_2_a : std_logic;
SIGNAL g_2_a : std_logic;
SIGNAL nx28679z62 : std_logic;
SIGNAL i_add2_2_a : std_logic;
SIGNAL e_1_a : std_logic;
SIGNAL f_1_a : std_logic;
SIGNAL nx28679z48 : std_logic;
SIGNAL c_1_afeeder_combout : std_logic;
SIGNAL c_1_a : std_logic;
SIGNAL b_1_a : std_logic;
SIGNAL a_1_a : std_logic;
SIGNAL nx28679z49 : std_logic;
SIGNAL i_add1_1_a : std_logic;
SIGNAL e_0_a : std_logic;
SIGNAL f_0_a : std_logic;
SIGNAL g_0_a : std_logic;
SIGNAL nx28679z66 : std_logic;
SIGNAL c_0_afeeder_combout : std_logic;
SIGNAL c_0_a : std_logic;
SIGNAL d_0_afeeder_combout : std_logic;
SIGNAL d_0_a : std_logic;
SIGNAL i_0_a : std_logic;
SIGNAL h_0_a : std_logic;
SIGNAL nx28679z67 : std_logic;
SIGNAL i_add2_0_a : std_logic;
SIGNAL stage1_anx45057z8 : std_logic;
SIGNAL stage1_anx45057z7 : std_logic;
SIGNAL stage1_anx45057z6 : std_logic;
SIGNAL stage1_anx45057z5 : std_logic;
SIGNAL stage1_anx45057z4 : std_logic;
SIGNAL stage1_anx45057z3 : std_logic;
SIGNAL stage1_ao_add_op12_stage1_6_a : std_logic;
SIGNAL r2_6_a : std_logic;
SIGNAL i_add3_6_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_5_a : std_logic;
SIGNAL r2_5_a : std_logic;
SIGNAL i_add3_5_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_4_a : std_logic;
SIGNAL r2_4_a : std_logic;
SIGNAL temp_add_4_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_3_a : std_logic;
SIGNAL r2_3_a : std_logic;
SIGNAL temp_add_3_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_2_a : std_logic;
SIGNAL r2_2_a : std_logic;
SIGNAL temp_add_2_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_1_a : std_logic;
SIGNAL r2_1_a : std_logic;
SIGNAL temp_add_1_a : std_logic;
SIGNAL i_add4_1_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_0_a : std_logic;
SIGNAL r2_0_a : std_logic;
SIGNAL i_add3_0_a : std_logic;
SIGNAL stage2_anx22301z12 : std_logic;
SIGNAL stage2_anx22301z11 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_2_a : std_logic;
SIGNAL r6_2_a : std_logic;
SIGNAL i_add4_2_a : std_logic;
SIGNAL stage2_anx22301z10 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_3_a : std_logic;
SIGNAL r6_3_a : std_logic;
SIGNAL i_add4_3_a : std_logic;
SIGNAL stage2_anx22301z9 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_4_a : std_logic;
SIGNAL r6_4_a : std_logic;
SIGNAL i_add4_4_a : std_logic;
SIGNAL stage2_anx22301z8 : std_logic;
SIGNAL stage2_anx22301z7 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_6_a : std_logic;
SIGNAL r6_6_a : std_logic;
SIGNAL nx28679z36 : std_logic;
SIGNAL c_7_afeeder_combout : std_logic;
SIGNAL c_7_a : std_logic;
SIGNAL b_7_a : std_logic;
SIGNAL nx28679z37 : std_logic;
SIGNAL i_add1_7_a : std_logic;
SIGNAL stage1_anx45057z2 : std_logic;
SIGNAL stage1_ao_add_op12_stage1_7_a : std_logic;
SIGNAL r2_7_a : std_logic;
SIGNAL i_add3_7_a : std_logic;
SIGNAL stage2_anx22301z6 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_7_a : std_logic;
SIGNAL r6_7_a : std_logic;
SIGNAL c_3_afeeder_combout : std_logic;
SIGNAL c_3_a : std_logic;
SIGNAL b_3_a : std_logic;
SIGNAL nx28679z29 : std_logic;
SIGNAL f_3_a : std_logic;
SIGNAL i_max2_3_a : std_logic;
SIGNAL nx28679z12 : std_logic;
SIGNAL g_3_a : std_logic;
SIGNAL nx28679z13 : std_logic;
SIGNAL i_max1_3_a : std_logic;
SIGNAL d_7_afeeder_combout : std_logic;
SIGNAL d_7_a : std_logic;
SIGNAL nx28679z21 : std_logic;
SIGNAL e_7_a : std_logic;
SIGNAL f_7_a : std_logic;
SIGNAL i_7_a : std_logic;
SIGNAL h_7_a : std_logic;
SIGNAL nx28679z20 : std_logic;
SIGNAL i_max2_7_a : std_logic;
SIGNAL e_6_a : std_logic;
SIGNAL f_6_a : std_logic;
SIGNAL g_6_a : std_logic;
SIGNAL nx28679z7 : std_logic;
SIGNAL nx28679z6 : std_logic;
SIGNAL i_max1_6_a : std_logic;
SIGNAL i_5_a : std_logic;
SIGNAL h_5_a : std_logic;
SIGNAL nx28679z24 : std_logic;
SIGNAL e_5_a : std_logic;
SIGNAL f_5_a : std_logic;
SIGNAL nx28679z25 : std_logic;
SIGNAL i_max2_5_a : std_logic;
SIGNAL d_4_afeeder_combout : std_logic;
SIGNAL d_4_a : std_logic;
SIGNAL i_4_a : std_logic;
SIGNAL h_4_a : std_logic;
SIGNAL nx28679z26 : std_logic;
SIGNAL i_max2_4_a : std_logic;
SIGNAL b_2_a : std_logic;
SIGNAL a_2_a : std_logic;
SIGNAL nx28679z15 : std_logic;
SIGNAL nx28679z14 : std_logic;
SIGNAL i_max1_2_a : std_logic;
SIGNAL d_1_afeeder_combout : std_logic;
SIGNAL d_1_a : std_logic;
SIGNAL nx28679z33 : std_logic;
SIGNAL i_max2_1_a : std_logic;
SIGNAL b_0_a : std_logic;
SIGNAL nx28679z35 : std_logic;
SIGNAL i_max2_0_a : std_logic;
SIGNAL stage1_au_max1_anx54128z8 : std_logic;
SIGNAL stage1_au_max1_anx54128z7 : std_logic;
SIGNAL stage1_au_max1_anx54128z6 : std_logic;
SIGNAL stage1_au_max1_anx54128z5 : std_logic;
SIGNAL stage1_au_max1_anx54128z4 : std_logic;
SIGNAL stage1_au_max1_anx54128z3 : std_logic;
SIGNAL stage1_au_max1_anx54128z2 : std_logic;
SIGNAL stage1_au_max1_anx54128z1 : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_3_a : std_logic;
SIGNAL d_2_afeeder_combout : std_logic;
SIGNAL d_2_a : std_logic;
SIGNAL i_2_a : std_logic;
SIGNAL h_2_a : std_logic;
SIGNAL nx28679z30 : std_logic;
SIGNAL nx28679z31 : std_logic;
SIGNAL i_max2_2_a : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_2_a : std_logic;
SIGNAL nx28679z18 : std_logic;
SIGNAL a_0_a : std_logic;
SIGNAL nx28679z19 : std_logic;
SIGNAL i_max1_0_a : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_0_a : std_logic;
SIGNAL stage1_anx15254z10 : std_logic;
SIGNAL stage1_anx15254z9 : std_logic;
SIGNAL stage1_anx15254z8 : std_logic;
SIGNAL stage1_ao_max_add_stage1_3_a : std_logic;
SIGNAL r3_3_a : std_logic;
SIGNAL temp_max_3_a : std_logic;
SIGNAL i_max3_3_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_8_a : std_logic;
SIGNAL stage1_ao_add_op12_stage1_8_a0_combout : std_logic;
SIGNAL stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout : std_logic;
SIGNAL stage1_ao_max_add_stage1_9_a : std_logic;
SIGNAL stage1_anx15254z1 : std_logic;
SIGNAL r3_9_a : std_logic;
SIGNAL temp_max_9_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_9_a : std_logic;
SIGNAL r4_9_a : std_logic;
SIGNAL i_max3_9_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_8_a : std_logic;
SIGNAL r3_8_a : std_logic;
SIGNAL nx28679z10 : std_logic;
SIGNAL i_max1_4_a : std_logic;
SIGNAL stage1_au_max1_ao_max_pix_4_a : std_logic;
SIGNAL stage1_anx15254z7 : std_logic;
SIGNAL stage1_anx15254z6 : std_logic;
SIGNAL stage1_anx15254z5 : std_logic;
SIGNAL stage1_anx15254z4 : std_logic;
SIGNAL stage1_ao_max_add_stage1_7_a : std_logic;
SIGNAL r3_7_a : std_logic;
SIGNAL temp_max_7_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_7_a : std_logic;
SIGNAL r4_7_a : std_logic;
SIGNAL i_max3_7_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_6_a : std_logic;
SIGNAL r3_6_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_5_a : std_logic;
SIGNAL r3_5_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_4_a : std_logic;
SIGNAL r3_4_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_2_a : std_logic;
SIGNAL r3_2_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_2_a : std_logic;
SIGNAL r4_2_a : std_logic;
SIGNAL temp_max_2_a : std_logic;
SIGNAL i_max3_2_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_1_a : std_logic;
SIGNAL r3_1_a : std_logic;
SIGNAL stage1_ao_max_add_stage1_0_a : std_logic;
SIGNAL r3_0_a : std_logic;
SIGNAL temp_max_0_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_0_a : std_logic;
SIGNAL r4_0_a : std_logic;
SIGNAL i_max3_0_a : std_logic;
SIGNAL stage2_au_max2_anx52134z10 : std_logic;
SIGNAL stage2_au_max2_anx52134z9 : std_logic;
SIGNAL stage2_au_max2_anx52134z8 : std_logic;
SIGNAL stage2_au_max2_anx52134z7 : std_logic;
SIGNAL stage2_au_max2_anx52134z6 : std_logic;
SIGNAL stage2_au_max2_anx52134z5 : std_logic;
SIGNAL stage2_au_max2_anx52134z4 : std_logic;
SIGNAL stage2_au_max2_anx52134z3 : std_logic;
SIGNAL stage2_au_max2_anx52134z2 : std_logic;
SIGNAL stage2_au_max2_anx52134z1 : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_3_a : std_logic;
SIGNAL r4_3_a : std_logic;
SIGNAL stage2_ao_add_op12_stage2_0_a : std_logic;
SIGNAL r6_0_a : std_logic;
SIGNAL nx61908z14 : std_logic;
SIGNAL nx61908z13 : std_logic;
SIGNAL nx61908z12 : std_logic;
SIGNAL nx61908z11 : std_logic;
SIGNAL nx61908z10 : std_logic;
SIGNAL nx61908z9 : std_logic;
SIGNAL sub_out_7_a : std_logic;
SIGNAL stage1_aix45057z52923_a1_cout : std_logic;
SIGNAL stage1_anx45057z1 : std_logic;
SIGNAL r2_8_a : std_logic;
SIGNAL temp_add_8_a : std_logic;
SIGNAL i_add4_8_a : std_logic;
SIGNAL stage2_anx22301z5 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_8_a : std_logic;
SIGNAL r6_8_a : std_logic;
SIGNAL nx61908z8 : std_logic;
SIGNAL sub_out_8_a : std_logic;
SIGNAL temp_max_6_a : std_logic;
SIGNAL i_max3_6_a : std_logic;
SIGNAL stage2_au_max2_ao_max_pix_6_a : std_logic;
SIGNAL r4_6_a : std_logic;
SIGNAL nx61908z7 : std_logic;
SIGNAL sub_out_9_a : std_logic;
SIGNAL nx61908z16 : std_logic;
SIGNAL i_add4_11_a : std_logic;
SIGNAL stage2_anx22301z4 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_9_a : std_logic;
SIGNAL r6_9_a : std_logic;
SIGNAL i_add4_9_a : std_logic;
SIGNAL stage2_anx22301z3 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_10_a : std_logic;
SIGNAL r6_10_a : std_logic;
SIGNAL i_add4_10_a : std_logic;
SIGNAL stage2_anx22301z2 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_11_a : std_logic;
SIGNAL r6_11_a : std_logic;
SIGNAL nx61908z6 : std_logic;
SIGNAL nx61908z5 : std_logic;
SIGNAL sub_out_11_a : std_logic;
SIGNAL sub_out_10_a : std_logic;
SIGNAL i_add4_12_a : std_logic;
SIGNAL i_add3_12_a : std_logic;
SIGNAL stage2_anx22301z1 : std_logic;
SIGNAL stage2_ao_add_op12_stage2_12_a : std_logic;
SIGNAL r6_12_a : std_logic;
SIGNAL nx61908z4 : std_logic;
SIGNAL sub_out_12_a : std_logic;
SIGNAL nx61908z15 : std_logic;
SIGNAL nx61908z1 : std_logic;
SIGNAL reg_r9_aregout : std_logic;
SIGNAL nx28679z1 : std_logic;
SIGNAL nx28679z2 : std_logic;
SIGNAL nx28679z4 : std_logic;
SIGNAL a_7_a : std_logic;
SIGNAL nx28679z5 : std_logic;
SIGNAL i_max1_7_a : std_logic;
SIGNAL nx28679z23 : std_logic;
SIGNAL i_max2_6_a : std_logic;
SIGNAL nx28679z16 : std_logic;
SIGNAL g_1_a : std_logic;
SIGNAL nx28679z17 : std_logic;
SIGNAL i_max1_1_a : std_logic;
SIGNAL stage1_au_max1_anx19309z7 : std_logic;
SIGNAL stage1_au_max1_anx19309z6 : std_logic;
SIGNAL stage1_au_max1_anx19309z5 : std_logic;
SIGNAL stage1_au_max1_anx19309z4 : std_logic;
SIGNAL stage1_au_max1_anx19309z3 : std_logic;
SIGNAL stage1_au_max1_anx19309z2 : std_logic;
SIGNAL stage1_au_max1_anx19309z1 : std_logic;
SIGNAL stage1_au_max1_ao_max_dir_2_a : std_logic;
SIGNAL stage1_au_max1_ao_max_dir_0_a : std_logic;
SIGNAL r1_0_a : std_logic;
SIGNAL temp_dir_0_a : std_logic;
SIGNAL i_dir3_0_a : std_logic;
SIGNAL temp_max_1_a : std_logic;
SIGNAL i_max3_1_a : std_logic;
SIGNAL stage2_au_max2_anx19309z10 : std_logic;
SIGNAL stage2_au_max2_anx19309z9 : std_logic;
SIGNAL stage2_au_max2_anx19309z8 : std_logic;
SIGNAL stage2_au_max2_anx19309z7 : std_logic;
SIGNAL stage2_au_max2_anx19309z6 : std_logic;
SIGNAL stage2_au_max2_anx19309z5 : std_logic;
SIGNAL stage2_au_max2_anx19309z4 : std_logic;
SIGNAL stage2_au_max2_anx19309z3 : std_logic;
SIGNAL stage2_au_max2_anx19309z2 : std_logic;
SIGNAL stage2_au_max2_anx19309z1 : std_logic;
SIGNAL stage2_au_max2_ao_max_dir_0_a : std_logic;
SIGNAL r5_0_a : std_logic;
SIGNAL nx24856z1 : std_logic;
SIGNAL r8_0_a : std_logic;
SIGNAL o_dir_0_a : std_logic;
SIGNAL nx35074z1 : std_logic;
SIGNAL r1_1_a : std_logic;
SIGNAL temp_dir_1_a : std_logic;
SIGNAL i_dir3_1_a : std_logic;
SIGNAL stage2_au_max2_ao_max_dir_1_a : std_logic;
SIGNAL r5_1_a : std_logic;
SIGNAL nx23859z1 : std_logic;
SIGNAL r8_1_a : std_logic;
SIGNAL o_dir_1_a : std_logic;
SIGNAL r1_2_a : std_logic;
SIGNAL stage2_au_max2_ao_max_dir_2_a : std_logic;
SIGNAL r5_2_a : std_logic;
SIGNAL nx22862z1 : std_logic;
SIGNAL r8_2_a : std_logic;
SIGNAL o_dir_2_a : std_logic;
SIGNAL column_valid1_6_afeeder_combout : std_logic;
SIGNAL column_valid1_6_a : std_logic;
SIGNAL column_valid2_6_a : std_logic;
SIGNAL nx25376z3 : std_logic;
SIGNAL column_valid1_0_afeeder_combout : std_logic;
SIGNAL column_valid1_0_a : std_logic;
SIGNAL column_valid2_0_a : std_logic;
SIGNAL nx25376z5 : std_logic;
SIGNAL column_valid1_4_afeeder_combout : std_logic;
SIGNAL column_valid1_4_a : std_logic;
SIGNAL column_valid2_4_a : std_logic;
SIGNAL column_valid1_5_afeeder_combout : std_logic;
SIGNAL column_valid1_5_a : std_logic;
SIGNAL column_valid2_5_a : std_logic;
SIGNAL nx26373z5 : std_logic;
SIGNAL nx26373z3 : std_logic;
SIGNAL nx25376z7 : std_logic;
SIGNAL row_valid1_0_afeeder_combout : std_logic;
SIGNAL row_valid1_0_a : std_logic;
SIGNAL row_valid2_0_a : std_logic;
SIGNAL nx25376z6 : std_logic;
SIGNAL nx26373z2 : std_logic;
SIGNAL nx26373z1 : std_logic;
SIGNAL nx25376z9 : std_logic;
SIGNAL nx25376z4 : std_logic;
SIGNAL nx25376z8 : std_logic;
SIGNAL nx25376z1 : std_logic;
SIGNAL o_mode_1_a : std_logic;
SIGNAL nx58250z1 : std_logic;
SIGNAL inc_d_7_a : std_logic;
SIGNAL o_row_7_a : std_logic;
SIGNAL i_pixel_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z29481_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z29482_aauto_generated_aq_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_nx25376z9 : std_logic;
SIGNAL ALT_INV_valid_5_a : std_logic;

BEGIN

ww_i_clock <= i_clock;
ww_i_reset <= i_reset;
ww_i_valid <= i_valid;
ww_i_pixel <= i_pixel;
o_valid <= ww_o_valid;
o_edge <= ww_o_edge;
o_dir <= ww_o_dir;
o_mode <= ww_o_mode;
o_row <= ww_o_row;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_num_0 <= ww_debug_num_0;
debug_num_1 <= ww_debug_num_1;
debug_num_2 <= ww_debug_num_2;
debug_num_3 <= ww_debug_num_3;
debug_num_4 <= ww_debug_num_4;
debug_num_5 <= ww_debug_num_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus <= (column_7_a & column_6_a & column_5_a & column_4_a & column_3_a & column_2_a & column_1_a & column_0_a);

mem_0_aix64056z29482_aauto_generated_aq_a(0) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
mem_0_aix64056z29482_aauto_generated_aq_a(1) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
mem_0_aix64056z29482_aauto_generated_aq_a(2) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
mem_0_aix64056z29482_aauto_generated_aq_a(3) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
mem_0_aix64056z29482_aauto_generated_aq_a(4) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
mem_0_aix64056z29482_aauto_generated_aq_a(5) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
mem_0_aix64056z29482_aauto_generated_aq_a(6) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
mem_0_aix64056z29482_aauto_generated_aq_a(7) <= mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_pixel_acombout(7) & i_pixel_acombout(6) & i_pixel_acombout(5) & i_pixel_acombout(4) & i_pixel_acombout(3) & i_pixel_acombout(2) & i_pixel_acombout(1) & 
i_pixel_acombout(0));

mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus <= (column_7_a & column_6_a & column_5_a & column_4_a & column_3_a & column_2_a & column_1_a & column_0_a);

mem_aix64056z29481_aauto_generated_aq_a(0) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(0);
mem_aix64056z29481_aauto_generated_aq_a(1) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(1);
mem_aix64056z29481_aauto_generated_aq_a(2) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(2);
mem_aix64056z29481_aauto_generated_aq_a(3) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(3);
mem_aix64056z29481_aauto_generated_aq_a(4) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(4);
mem_aix64056z29481_aauto_generated_aq_a(5) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(5);
mem_aix64056z29481_aauto_generated_aq_a(6) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(6);
mem_aix64056z29481_aauto_generated_aq_a(7) <= mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);
ALT_INV_nx25376z9 <= NOT nx25376z9;
ALT_INV_valid_5_a <= NOT valid_5_a;

-- Location: LCFF_X45_Y33_N3
reg_column_valid2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid2_7_afeeder_combout,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_7_a);

-- Location: LCCOMB_X50_Y33_N16
ix23902z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx23902z3 = (column_valid2_7_a) # ((column_valid2_6_a) # ((column_valid2_4_a) # (column_valid2_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => column_valid2_7_a,
	datab => column_valid2_6_a,
	datac => column_valid2_4_a,
	datad => column_valid2_5_a,
	combout => nx23902z3);

-- Location: LCFF_X50_Y33_N7
reg_row_valid2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => row_valid1_7_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_7_a);

-- Location: LCFF_X46_Y31_N23
reg_r4_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_8_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_8_a);

-- Location: LCFF_X46_Y31_N5
reg_r4_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_5_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_5_a);

-- Location: LCFF_X46_Y31_N7
reg_r4_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_4_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_4_a);

-- Location: LCFF_X45_Y33_N15
reg_r6_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_5_a);

-- Location: LCFF_X44_Y31_N1
reg_r4_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_1_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_1_a);

-- Location: LCFF_X45_Y33_N7
reg_r6_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_1_a);

-- Location: LCCOMB_X45_Y32_N28
sub_out_sub13_0_ix61908z52925 : cycloneii_lcell_comb
-- Equation(s):
-- sub_out_12_a = (r4_9_a & ((r6_12_a & (!nx61908z4)) # (!r6_12_a & (nx61908z4 & VCC)))) # (!r4_9_a & ((r6_12_a & ((nx61908z4) # (GND))) # (!r6_12_a & (!nx61908z4))))
-- nx61908z3 = CARRY((r4_9_a & (r6_12_a & !nx61908z4)) # (!r4_9_a & ((r6_12_a) # (!nx61908z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_9_a,
	datab => r6_12_a,
	datad => VCC,
	cin => nx61908z4,
	combout => sub_out_12_a,
	cout => nx61908z3);

-- Location: LCCOMB_X45_Y32_N30
ix61908z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z2 = (!nx61908z3 & valid_6_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => valid_6_a,
	cin => nx61908z3,
	combout => nx61908z2);

-- Location: LCCOMB_X50_Y33_N6
ix26373z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z4 = ((!row_valid2_6_a) # (!row_valid2_7_a)) # (!row_valid2_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row_valid2_5_a,
	datac => row_valid2_7_a,
	datad => row_valid2_6_a,
	combout => nx26373z4);

-- Location: LCCOMB_X50_Y33_N12
ix25376z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z2 = (!nx25376z3 & (column_valid2_3_a & (column_valid2_5_a & column_valid2_4_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25376z3,
	datab => column_valid2_3_a,
	datac => column_valid2_5_a,
	datad => column_valid2_4_a,
	combout => nx25376z2);

-- Location: LCFF_X49_Y33_N19
reg_column_valid1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_7_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_7_a);

-- Location: LCFF_X51_Y33_N25
reg_row_valid1_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_row_7_a,
	sload => VCC,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_7_a);

-- Location: LCCOMB_X44_Y33_N20
ix28678z52937 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_11_a = (r6_10_a & valid_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r6_10_a,
	datad => valid_5_a,
	combout => i_add3_11_a);

-- Location: LCCOMB_X44_Y33_N12
ix28678z52938 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_10_a = (r6_9_a & valid_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r6_9_a,
	datad => valid_5_a,
	combout => i_add3_10_a);

-- Location: LCCOMB_X44_Y33_N10
ix28678z52939 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_9_a = (r6_8_a & valid_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r6_8_a,
	datad => valid_5_a,
	combout => i_add3_9_a);

-- Location: LCCOMB_X44_Y33_N2
ix28678z52940 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_8_a = (valid_5_a & (r6_7_a)) # (!valid_5_a & ((r2_8_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r6_7_a,
	datac => r2_8_a,
	datad => valid_5_a,
	combout => i_add3_8_a);

-- Location: LCFF_X44_Y33_N9
reg_temp_add_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_7_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_7_a);

-- Location: LCCOMB_X44_Y33_N8
ix28678z52954 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_7_a = (valid_2_a & (temp_add_7_a)) # (!valid_2_a & ((r6_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_add_7_a,
	datad => r6_7_a,
	combout => i_add4_7_a);

-- Location: LCFF_X44_Y33_N1
reg_temp_add_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_6_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_6_a);

-- Location: LCCOMB_X44_Y33_N0
ix28678z52955 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_6_a = (valid_2_a & ((temp_add_6_a))) # (!valid_2_a & (r6_6_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_6_a,
	datab => valid_2_a,
	datac => temp_add_6_a,
	combout => i_add4_6_a);

-- Location: LCFF_X46_Y33_N17
reg_temp_add_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_5_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_5_a);

-- Location: LCCOMB_X46_Y33_N16
ix28678z52956 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_5_a = (valid_2_a & (temp_add_5_a)) # (!valid_2_a & ((r6_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_add_5_a,
	datad => r6_5_a,
	combout => i_add4_5_a);

-- Location: LCCOMB_X46_Y33_N14
ix28678z52944 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_4_a = (valid_5_a & ((r6_3_a))) # (!valid_5_a & (r2_4_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2_4_a,
	datac => valid_5_a,
	datad => r6_3_a,
	combout => i_add3_4_a);

-- Location: LCCOMB_X46_Y33_N18
ix28678z52945 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_3_a = (valid_5_a & (r6_2_a)) # (!valid_5_a & ((r2_3_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_2_a,
	datac => valid_5_a,
	datad => r2_3_a,
	combout => i_add3_3_a);

-- Location: LCCOMB_X46_Y33_N30
ix28678z52946 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_2_a = (valid_5_a & ((r6_1_a))) # (!valid_5_a & (r2_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_5_a,
	datac => r2_2_a,
	datad => r6_1_a,
	combout => i_add3_2_a);

-- Location: LCCOMB_X46_Y33_N26
ix28678z52947 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_1_a = (valid_5_a & (r6_0_a)) # (!valid_5_a & ((r2_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_5_a,
	datac => r6_0_a,
	datad => r2_1_a,
	combout => i_add3_1_a);

-- Location: LCFF_X46_Y33_N5
reg_temp_add_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_0_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_0_a);

-- Location: LCCOMB_X46_Y33_N4
ix28678z52961 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_0_a = (valid_2_a & ((temp_add_0_a))) # (!valid_2_a & (r6_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_0_a,
	datac => temp_add_0_a,
	datad => valid_2_a,
	combout => i_add4_0_a);

-- Location: LCCOMB_X45_Y33_N6
stage2_ao_add_op12_stage2_add13_0_ix22301z52935 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_1_a = (i_add3_1_a & ((i_add4_1_a & (stage2_anx22301z12 & VCC)) # (!i_add4_1_a & (!stage2_anx22301z12)))) # (!i_add3_1_a & ((i_add4_1_a & (!stage2_anx22301z12)) # (!i_add4_1_a & ((stage2_anx22301z12) # (GND)))))
-- stage2_anx22301z11 = CARRY((i_add3_1_a & (!i_add4_1_a & !stage2_anx22301z12)) # (!i_add3_1_a & ((!stage2_anx22301z12) # (!i_add4_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_1_a,
	datab => i_add4_1_a,
	datad => VCC,
	cin => stage2_anx22301z12,
	combout => stage2_ao_add_op12_stage2_1_a,
	cout => stage2_anx22301z11);

-- Location: LCCOMB_X45_Y33_N14
stage2_ao_add_op12_stage2_add13_0_ix22301z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_5_a = (i_add4_5_a & ((i_add3_5_a & (stage2_anx22301z8 & VCC)) # (!i_add3_5_a & (!stage2_anx22301z8)))) # (!i_add4_5_a & ((i_add3_5_a & (!stage2_anx22301z8)) # (!i_add3_5_a & ((stage2_anx22301z8) # (GND)))))
-- stage2_anx22301z7 = CARRY((i_add4_5_a & (!i_add3_5_a & !stage2_anx22301z8)) # (!i_add4_5_a & ((!stage2_anx22301z8) # (!i_add3_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add4_5_a,
	datab => i_add3_5_a,
	datad => VCC,
	cin => stage2_anx22301z8,
	combout => stage2_ao_add_op12_stage2_5_a,
	cout => stage2_anx22301z7);

-- Location: LCFF_X46_Y33_N7
reg_temp_max_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_8_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_8_a);

-- Location: LCCOMB_X46_Y33_N6
ix28678z52927 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_8_a = (valid_2_a & (temp_max_8_a)) # (!valid_2_a & ((r4_8_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_max_8_a,
	datad => r4_8_a,
	combout => i_max3_8_a);

-- Location: LCFF_X45_Y31_N5
reg_temp_max_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_5_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_5_a);

-- Location: LCCOMB_X45_Y31_N4
ix28678z52930 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_5_a = (valid_2_a & ((temp_max_5_a))) # (!valid_2_a & (r4_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r4_5_a,
	datac => temp_max_5_a,
	datad => valid_2_a,
	combout => i_max3_5_a);

-- Location: LCFF_X45_Y31_N7
reg_temp_max_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_4_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_4_a);

-- Location: LCCOMB_X45_Y31_N6
ix28678z52931 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_4_a = (valid_2_a & ((temp_max_4_a))) # (!valid_2_a & (r4_4_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r4_4_a,
	datac => temp_max_4_a,
	datad => valid_2_a,
	combout => i_max3_4_a);

-- Location: LCCOMB_X46_Y31_N22
stage2_au_max2_aix53131z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_8_a = (stage2_au_max2_anx52134z1 & (i_max3_8_a)) # (!stage2_au_max2_anx52134z1 & ((r3_8_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_8_a,
	datac => stage2_au_max2_anx52134z1,
	datad => r3_8_a,
	combout => stage2_au_max2_ao_max_pix_8_a);

-- Location: LCCOMB_X46_Y31_N4
stage2_au_max2_aix56122z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_5_a = (stage2_au_max2_anx52134z1 & (i_max3_5_a)) # (!stage2_au_max2_anx52134z1 & ((r3_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stage2_au_max2_anx52134z1,
	datab => i_max3_5_a,
	datac => r3_5_a,
	combout => stage2_au_max2_ao_max_pix_5_a);

-- Location: LCCOMB_X46_Y31_N6
stage2_au_max2_aix57119z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_4_a = (stage2_au_max2_anx52134z1 & (i_max3_4_a)) # (!stage2_au_max2_anx52134z1 & ((r3_4_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max3_4_a,
	datac => stage2_au_max2_anx52134z1,
	datad => r3_4_a,
	combout => stage2_au_max2_ao_max_pix_4_a);

-- Location: LCCOMB_X44_Y31_N0
stage2_au_max2_aix60110z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_1_a = (stage2_au_max2_anx52134z1 & ((i_max3_1_a))) # (!stage2_au_max2_anx52134z1 & (r3_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_1_a,
	datac => i_max3_1_a,
	datad => stage2_au_max2_anx52134z1,
	combout => stage2_au_max2_ao_max_pix_1_a);

-- Location: LCFF_X46_Y32_N27
reg_temp_dir_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r1_2_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_dir_2_a);

-- Location: LCCOMB_X46_Y32_N26
ix28678z52923 : cycloneii_lcell_comb
-- Equation(s):
-- i_dir3_2_a = (valid_2_a & (temp_dir_2_a)) # (!valid_2_a & ((r5_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_dir_2_a,
	datad => r5_2_a,
	combout => i_dir3_2_a);

-- Location: LCFF_X47_Y33_N19
reg_g_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_7_a);

-- Location: LCCOMB_X47_Y33_N18
ix28679z52999 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z52 = (!valid_2_a & (!valid_0_a & (g_7_a & !valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_0_a,
	datac => g_7_a,
	datad => valid_1_a,
	combout => nx28679z52);

-- Location: LCCOMB_X48_Y33_N24
ix28679z53000 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z53 = (valid_0_a & (h_7_a)) # (!valid_0_a & (((c_7_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => h_7_a,
	datac => c_7_a,
	datad => valid_1_a,
	combout => nx28679z53);

-- Location: LCCOMB_X48_Y33_N6
ix28679z52998 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_7_a = (nx28679z53) # ((nx28679z52) # ((nx28679z3 & e_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => e_7_a,
	datac => nx28679z53,
	datad => nx28679z52,
	combout => i_add2_7_a);

-- Location: LCCOMB_X50_Y32_N4
ix28679z53002 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z54 = (!valid_0_a & (!valid_1_a & (!valid_2_a & g_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => valid_2_a,
	datad => g_6_a,
	combout => nx28679z54);

-- Location: LCFF_X49_Y32_N11
reg_h_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_6_a);

-- Location: LCCOMB_X49_Y32_N4
ix28679z53003 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z55 = (valid_0_a & (((h_6_a)))) # (!valid_0_a & (c_6_a & (valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => c_6_a,
	datac => valid_1_a,
	datad => h_6_a,
	combout => nx28679z55);

-- Location: LCCOMB_X49_Y32_N16
ix28679z53001 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_6_a = (nx28679z54) # ((nx28679z55) # ((nx28679z3 & e_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z54,
	datab => nx28679z3,
	datac => nx28679z55,
	datad => e_6_a,
	combout => i_add2_6_a);

-- Location: LCCOMB_X49_Y32_N6
ix28679z52978 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z38 = (!valid_2_a & (!valid_1_a & (!valid_0_a & f_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_1_a,
	datac => valid_0_a,
	datad => f_6_a,
	combout => nx28679z38);

-- Location: LCFF_X50_Y32_N13
reg_g_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_5_a);

-- Location: LCCOMB_X50_Y32_N12
ix28679z53005 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z56 = (!valid_0_a & (!valid_1_a & (g_5_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => g_5_a,
	datad => valid_2_a,
	combout => nx28679z56);

-- Location: LCCOMB_X50_Y32_N8
ix28679z53006 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z57 = (valid_0_a & (h_5_a)) # (!valid_0_a & (((valid_1_a & c_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_5_a,
	datab => valid_1_a,
	datac => c_5_a,
	datad => valid_0_a,
	combout => nx28679z57);

-- Location: LCCOMB_X50_Y32_N10
ix28679z53004 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_5_a = (nx28679z56) # ((nx28679z57) # ((e_5_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z56,
	datab => e_5_a,
	datac => nx28679z57,
	datad => nx28679z3,
	combout => i_add2_5_a);

-- Location: LCCOMB_X50_Y32_N18
ix28679z52981 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z40 = (!valid_0_a & (!valid_1_a & (f_5_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => f_5_a,
	datad => valid_2_a,
	combout => nx28679z40);

-- Location: LCFF_X50_Y32_N15
reg_a_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_5_a);

-- Location: LCCOMB_X47_Y34_N26
ix28679z52984 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z42 = (!valid_2_a & (!valid_0_a & (f_4_a & !valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_0_a,
	datac => f_4_a,
	datad => valid_1_a,
	combout => nx28679z42);

-- Location: LCFF_X47_Y34_N25
reg_a_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_4_a);

-- Location: LCFF_X47_Y34_N3
reg_b_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_4_a);

-- Location: LCCOMB_X47_Y34_N16
ix28679z52985 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z43 = (valid_0_a & (a_4_a)) # (!valid_0_a & (((b_4_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_4_a,
	datab => b_4_a,
	datac => valid_0_a,
	datad => valid_1_a,
	combout => nx28679z43);

-- Location: LCCOMB_X47_Y34_N6
ix28679z52983 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_4_a = (nx28679z43) # ((nx28679z42) # ((d_4_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_4_a,
	datab => nx28679z3,
	datac => nx28679z43,
	datad => nx28679z42,
	combout => i_add1_4_a);

-- Location: LCFF_X47_Y33_N11
reg_h_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_3_a);

-- Location: LCCOMB_X47_Y33_N6
ix28679z53012 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z61 = (valid_0_a & (h_3_a)) # (!valid_0_a & (((c_3_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_3_a,
	datab => valid_0_a,
	datac => c_3_a,
	datad => valid_1_a,
	combout => nx28679z61);

-- Location: LCFF_X48_Y34_N19
reg_d_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_3_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(3),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_3_a);

-- Location: LCCOMB_X47_Y33_N20
ix28679z52987 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z44 = (!valid_2_a & (!valid_1_a & (f_3_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_1_a,
	datac => f_3_a,
	datad => valid_0_a,
	combout => nx28679z44);

-- Location: LCFF_X47_Y33_N25
reg_a_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_3_a);

-- Location: LCCOMB_X47_Y33_N24
ix28679z52988 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z45 = (valid_0_a & (((a_3_a)))) # (!valid_0_a & (b_3_a & ((valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_3_a,
	datab => valid_0_a,
	datac => a_3_a,
	datad => valid_1_a,
	combout => nx28679z45);

-- Location: LCCOMB_X47_Y33_N26
ix28679z52986 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_3_a = (nx28679z45) # ((nx28679z44) # ((d_3_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z45,
	datab => d_3_a,
	datac => nx28679z44,
	datad => nx28679z3,
	combout => i_add1_3_a);

-- Location: LCCOMB_X48_Y31_N2
ix28679z52990 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z46 = (!valid_2_a & (!valid_0_a & (f_2_a & !valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_0_a,
	datac => f_2_a,
	datad => valid_1_a,
	combout => nx28679z46);

-- Location: LCCOMB_X48_Y31_N28
ix28679z52991 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z47 = (valid_0_a & (((a_2_a)))) # (!valid_0_a & (valid_1_a & (b_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => b_2_a,
	datac => a_2_a,
	datad => valid_0_a,
	combout => nx28679z47);

-- Location: LCCOMB_X48_Y31_N6
ix28679z52989 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_2_a = (nx28679z47) # ((nx28679z46) # ((nx28679z3 & d_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => nx28679z47,
	datac => d_2_a,
	datad => nx28679z46,
	combout => i_add1_2_a);

-- Location: LCCOMB_X49_Y32_N20
ix28679z53017 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z64 = (!valid_1_a & (!valid_2_a & (g_1_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => g_1_a,
	datad => valid_0_a,
	combout => nx28679z64);

-- Location: LCFF_X48_Y32_N29
reg_h_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_1_a);

-- Location: LCCOMB_X49_Y32_N0
ix28679z53018 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z65 = (valid_0_a & (((h_1_a)))) # (!valid_0_a & (valid_1_a & ((c_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => h_1_a,
	datad => c_1_a,
	combout => nx28679z65);

-- Location: LCCOMB_X49_Y32_N14
ix28679z53016 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_1_a = (nx28679z64) # ((nx28679z65) # ((e_1_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z64,
	datab => e_1_a,
	datac => nx28679z3,
	datad => nx28679z65,
	combout => i_add2_1_a);

-- Location: LCCOMB_X48_Y32_N0
ix28679z52996 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z50 = (!valid_1_a & (f_0_a & (!valid_2_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => f_0_a,
	datac => valid_2_a,
	datad => valid_0_a,
	combout => nx28679z50);

-- Location: LCCOMB_X48_Y33_N20
ix28679z52997 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z51 = (valid_0_a & (a_0_a)) # (!valid_0_a & (((valid_1_a & b_0_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_0_a,
	datab => valid_1_a,
	datac => b_0_a,
	datad => valid_0_a,
	combout => nx28679z51);

-- Location: LCCOMB_X48_Y33_N18
ix28679z52995 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_0_a = (nx28679z51) # ((nx28679z50) # ((nx28679z3 & d_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => d_0_a,
	datac => nx28679z51,
	datad => nx28679z50,
	combout => i_add1_0_a);

-- Location: LCCOMB_X49_Y32_N10
ix28679z52954 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z22 = (!valid_1_a & (!valid_2_a & (h_6_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => h_6_a,
	datad => valid_0_a,
	combout => nx28679z22);

-- Location: LCCOMB_X50_Y32_N26
ix28679z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z8 = (!valid_1_a & (!valid_2_a & (e_5_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => e_5_a,
	datad => valid_0_a,
	combout => nx28679z8);

-- Location: LCCOMB_X50_Y32_N14
ix28679z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z9 = (valid_0_a & (g_5_a)) # (!valid_0_a & (((valid_1_a & a_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_5_a,
	datab => valid_1_a,
	datac => a_5_a,
	datad => valid_0_a,
	combout => nx28679z9);

-- Location: LCCOMB_X50_Y32_N6
ix28679z52932 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_5_a = (nx28679z9) # ((nx28679z8) # ((nx28679z3 & c_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => c_5_a,
	datac => nx28679z9,
	datad => nx28679z8,
	combout => i_max1_5_a);

-- Location: LCCOMB_X47_Y34_N2
ix28679z52961 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z27 = (valid_0_a & (((b_4_a)))) # (!valid_0_a & (d_4_a & ((valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_4_a,
	datab => valid_0_a,
	datac => b_4_a,
	datad => valid_1_a,
	combout => nx28679z27);

-- Location: LCCOMB_X47_Y34_N24
ix28679z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z11 = (valid_0_a & (g_4_a)) # (!valid_0_a & (((a_4_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_4_a,
	datab => valid_0_a,
	datac => a_4_a,
	datad => valid_1_a,
	combout => nx28679z11);

-- Location: LCCOMB_X47_Y33_N10
ix28679z52963 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z28 = (!valid_1_a & (!valid_2_a & (h_3_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => h_3_a,
	datad => valid_0_a,
	combout => nx28679z28);

-- Location: LCCOMB_X48_Y32_N28
ix28679z52969 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z32 = (!valid_1_a & (!valid_0_a & (h_1_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => h_1_a,
	datad => valid_2_a,
	combout => nx28679z32);

-- Location: LCCOMB_X48_Y32_N12
ix28679z52972 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z34 = (!valid_1_a & (!valid_0_a & (h_0_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => h_0_a,
	datad => valid_2_a,
	combout => nx28679z34);

-- Location: LCCOMB_X46_Y32_N20
stage1_au_max1_aix54128z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_7_a = (stage1_au_max1_anx54128z1 & (i_max1_7_a)) # (!stage1_au_max1_anx54128z1 & ((i_max2_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_7_a,
	datac => i_max2_7_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_7_a);

-- Location: LCCOMB_X47_Y32_N26
stage1_au_max1_aix55125z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_6_a = (stage1_au_max1_anx54128z1 & (i_max1_6_a)) # (!stage1_au_max1_anx54128z1 & ((i_max2_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max1_6_a,
	datac => i_max2_6_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_6_a);

-- Location: LCCOMB_X47_Y32_N28
stage1_au_max1_aix56122z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_5_a = (stage1_au_max1_anx54128z1 & ((i_max1_5_a))) # (!stage1_au_max1_anx54128z1 & (i_max2_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max2_5_a,
	datac => i_max1_5_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_5_a);

-- Location: LCCOMB_X47_Y31_N20
stage1_au_max1_aix60110z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_1_a = (stage1_au_max1_anx54128z1 & ((i_max1_1_a))) # (!stage1_au_max1_anx54128z1 & (i_max2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max2_1_a,
	datac => i_max1_1_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_1_a);

-- Location: LCCOMB_X47_Y31_N14
stage1_ao_max_add_stage1_add9_1_ix15254z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_7_a = (stage1_au_max1_ao_max_pix_7_a & ((stage1_ao_add_op12_stage1_7_a & (stage1_anx15254z4 & VCC)) # (!stage1_ao_add_op12_stage1_7_a & (!stage1_anx15254z4)))) # (!stage1_au_max1_ao_max_pix_7_a & ((stage1_ao_add_op12_stage1_7_a & 
-- (!stage1_anx15254z4)) # (!stage1_ao_add_op12_stage1_7_a & ((stage1_anx15254z4) # (GND)))))
-- stage1_anx15254z3 = CARRY((stage1_au_max1_ao_max_pix_7_a & (!stage1_ao_add_op12_stage1_7_a & !stage1_anx15254z4)) # (!stage1_au_max1_ao_max_pix_7_a & ((!stage1_anx15254z4) # (!stage1_ao_add_op12_stage1_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_au_max1_ao_max_pix_7_a,
	datab => stage1_ao_add_op12_stage1_7_a,
	datad => VCC,
	cin => stage1_anx15254z4,
	combout => stage1_ao_max_add_stage1_7_a,
	cout => stage1_anx15254z3);

-- Location: LCCOMB_X47_Y31_N16
stage1_aix15254z52925 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_anx15254z2 = !stage1_anx15254z3

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => stage1_anx15254z3,
	combout => stage1_anx15254z2);

-- Location: LCFF_X49_Y32_N25
reg_i_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_6_a);

-- Location: LCFF_X47_Y33_N31
reg_i_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_3_a);

-- Location: LCFF_X48_Y33_N13
reg_i_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_1_a);

-- Location: M4K_X52_Y34
mem_aix64056z29481_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => mem_wren_0_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_aix64056z29481_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => mem_aix64056z29481_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X53_Y33_N4
ix51243z52923 : cycloneii_lcell_comb
-- Equation(s):
-- mem_wren_0_a = (!o_row_0_a & i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_row_0_a,
	datad => i_valid_acombout,
	combout => mem_wren_0_a);

-- Location: LCCOMB_X53_Y33_N6
ix54114z52923 : cycloneii_lcell_comb
-- Equation(s):
-- mem_wren_1_a = (o_row_0_a & i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_row_0_a,
	datad => i_valid_acombout,
	combout => mem_wren_1_a);

-- Location: LCCOMB_X49_Y33_N18
column_valid1_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_7_afeeder_combout = column_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => column_7_a,
	combout => column_valid1_7_afeeder_combout);

-- Location: LCCOMB_X45_Y33_N2
column_valid2_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid2_7_afeeder_combout = column_valid1_7_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => column_valid1_7_a,
	combout => column_valid2_7_afeeder_combout);

-- Location: LCCOMB_X48_Y34_N18
d_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_3_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem_0_aix64056z29482_aauto_generated_aq_a(3),
	combout => d_3_afeeder_combout);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_clock_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_clock,
	combout => i_clock_acombout);

-- Location: CLKCTRL_G3
i_clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => i_clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_clock_aclkctrl_outclk);

-- Location: LCCOMB_X53_Y33_N28
ix51271z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_0_a = !o_row_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => o_row_0_a,
	combout => inc_d_0_a);

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_reset_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_reset,
	combout => i_reset_acombout);

-- Location: LCCOMB_X49_Y33_N26
ix9489z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_0_dup_1231 = !column_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => column_0_a,
	combout => inc_d_0_dup_1231);

-- Location: LCCOMB_X49_Y33_N22
ix34903z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx34903z1 = (valid_0_a) # (i_reset_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datad => i_reset_acombout,
	combout => nx34903z1);

-- Location: LCFF_X49_Y33_N27
reg_q_0_dup_7 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_0_dup_1231,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_0_a);

-- Location: LCCOMB_X49_Y33_N2
ix12707z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx12707z1 = CARRY(column_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => column_0_a,
	datad => VCC,
	cout => nx12707z1);

-- Location: LCCOMB_X49_Y33_N4
ix12707z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_1_dup_1233 = (column_1_a & (!nx12707z1)) # (!column_1_a & ((nx12707z1) # (GND)))
-- nx8437z2 = CARRY((!nx12707z1) # (!column_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => column_1_a,
	datad => VCC,
	cin => nx12707z1,
	combout => inc_d_1_dup_1233,
	cout => nx8437z2);

-- Location: LCFF_X49_Y33_N5
reg_q_1_dup_6 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_1_dup_1233,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_1_a);

-- Location: LCCOMB_X49_Y33_N6
ix8437z52925 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_2_dup_1235 = (column_2_a & (nx8437z2 $ (GND))) # (!column_2_a & (!nx8437z2 & VCC))
-- nx8437z1 = CARRY((column_2_a & !nx8437z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => column_2_a,
	datad => VCC,
	cin => nx8437z2,
	combout => inc_d_2_dup_1235,
	cout => nx8437z1);

-- Location: LCCOMB_X49_Y33_N8
ix8437z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_3_dup_1237 = (column_3_a & (!nx8437z1)) # (!column_3_a & ((nx8437z1) # (GND)))
-- nx50725z4 = CARRY((!nx8437z1) # (!column_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => column_3_a,
	datad => VCC,
	cin => nx8437z1,
	combout => inc_d_3_dup_1237,
	cout => nx50725z4);

-- Location: LCFF_X49_Y33_N9
reg_q_3_dup_4 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_3_dup_1237,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_3_a);

-- Location: LCCOMB_X49_Y33_N28
ix34903z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx34903z4 = (column_2_a & (column_3_a & (column_1_a & column_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => column_2_a,
	datab => column_3_a,
	datac => column_1_a,
	datad => column_0_a,
	combout => nx34903z4);

-- Location: LCCOMB_X49_Y33_N10
ix50725z52926 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_4_dup_1239 = (column_4_a & (nx50725z4 $ (GND))) # (!column_4_a & (!nx50725z4 & VCC))
-- nx50725z3 = CARRY((column_4_a & !nx50725z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => column_4_a,
	datad => VCC,
	cin => nx50725z4,
	combout => inc_d_4_dup_1239,
	cout => nx50725z3);

-- Location: LCCOMB_X49_Y33_N12
ix50725z52925 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_5_dup_1241 = (column_5_a & (!nx50725z3)) # (!column_5_a & ((nx50725z3) # (GND)))
-- nx50725z2 = CARRY((!nx50725z3) # (!column_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => column_5_a,
	datad => VCC,
	cin => nx50725z3,
	combout => inc_d_5_dup_1241,
	cout => nx50725z2);

-- Location: LCCOMB_X49_Y33_N14
ix50725z52924 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_6_dup_1243 = (column_6_a & (nx50725z2 $ (GND))) # (!column_6_a & (!nx50725z2 & VCC))
-- nx50725z1 = CARRY((column_6_a & !nx50725z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => column_6_a,
	datad => VCC,
	cin => nx50725z2,
	combout => inc_d_6_dup_1243,
	cout => nx50725z1);

-- Location: LCFF_X49_Y33_N15
reg_q_6_dup_1 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_6_dup_1243,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_6_a);

-- Location: LCCOMB_X49_Y33_N16
ix50725z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_7_dup_1245 = column_7_a $ (nx50725z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => column_7_a,
	cin => nx50725z1,
	combout => inc_d_7_dup_1245);

-- Location: LCFF_X49_Y33_N17
reg_q_7_dup_0 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_7_dup_1245,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_7_a);

-- Location: LCFF_X49_Y33_N13
reg_q_5_dup_2 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_5_dup_1241,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_5_a);

-- Location: LCCOMB_X49_Y33_N24
ix34903z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx34903z3 = (column_4_a & (column_6_a & (column_7_a & column_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => column_4_a,
	datab => column_6_a,
	datac => column_7_a,
	datad => column_5_a,
	combout => nx34903z3);

-- Location: LCCOMB_X48_Y33_N10
ix34903z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx34903z2 = (i_reset_acombout) # ((valid_0_a & (nx34903z4 & nx34903z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => nx34903z4,
	datac => i_reset_acombout,
	datad => nx34903z3,
	combout => nx34903z2);

-- Location: LCFF_X53_Y33_N29
reg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_0_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_0_a);

-- Location: LCCOMB_X53_Y33_N12
ix54262z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx54262z3 = CARRY(o_row_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => o_row_0_a,
	datad => VCC,
	cout => nx54262z3);

-- Location: LCCOMB_X53_Y33_N14
ix54262z52925 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_1_a = (o_row_1_a & (!nx54262z3)) # (!o_row_1_a & ((nx54262z3) # (GND)))
-- nx54262z2 = CARRY((!nx54262z3) # (!o_row_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => o_row_1_a,
	datad => VCC,
	cin => nx54262z3,
	combout => inc_d_1_a,
	cout => nx54262z2);

-- Location: LCFF_X53_Y33_N15
reg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_1_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_1_a);

-- Location: LCCOMB_X53_Y33_N16
ix54262z52924 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_2_a = (o_row_2_a & (nx54262z2 $ (GND))) # (!o_row_2_a & (!nx54262z2 & VCC))
-- nx54262z1 = CARRY((o_row_2_a & !nx54262z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_row_2_a,
	datad => VCC,
	cin => nx54262z2,
	combout => inc_d_2_a,
	cout => nx54262z1);

-- Location: LCCOMB_X53_Y33_N18
ix54262z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_3_a = (o_row_3_a & (!nx54262z1)) # (!o_row_3_a & ((nx54262z1) # (GND)))
-- nx58250z4 = CARRY((!nx54262z1) # (!o_row_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => o_row_3_a,
	datad => VCC,
	cin => nx54262z1,
	combout => inc_d_3_a,
	cout => nx58250z4);

-- Location: LCFF_X53_Y33_N19
reg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_3_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_3_a);

-- Location: LCCOMB_X53_Y33_N20
ix58250z52926 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_4_a = (o_row_4_a & (nx58250z4 $ (GND))) # (!o_row_4_a & (!nx58250z4 & VCC))
-- nx58250z3 = CARRY((o_row_4_a & !nx58250z4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_row_4_a,
	datad => VCC,
	cin => nx58250z4,
	combout => inc_d_4_a,
	cout => nx58250z3);

-- Location: LCCOMB_X53_Y33_N22
ix58250z52925 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_5_a = (o_row_5_a & (!nx58250z3)) # (!o_row_5_a & ((nx58250z3) # (GND)))
-- nx58250z2 = CARRY((!nx58250z3) # (!o_row_5_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => o_row_5_a,
	datad => VCC,
	cin => nx58250z3,
	combout => inc_d_5_a,
	cout => nx58250z2);

-- Location: LCFF_X53_Y33_N23
reg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_5_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_5_a);

-- Location: LCCOMB_X53_Y33_N24
ix58250z52924 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_6_a = (o_row_6_a & (nx58250z2 $ (GND))) # (!o_row_6_a & (!nx58250z2 & VCC))
-- nx58250z1 = CARRY((o_row_6_a & !nx58250z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => o_row_6_a,
	datad => VCC,
	cin => nx58250z2,
	combout => inc_d_6_a,
	cout => nx58250z1);

-- Location: LCFF_X53_Y33_N25
reg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_6_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_6_a);

-- Location: LCCOMB_X51_Y33_N2
row_valid1_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid1_6_afeeder_combout = o_row_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_row_6_a,
	combout => row_valid1_6_afeeder_combout);

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_valid_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_valid,
	combout => i_valid_acombout);

-- Location: LCFF_X48_Y32_N31
reg_valid_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_valid_acombout,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_0_a);

-- Location: LCFF_X51_Y33_N3
reg_row_valid1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid1_6_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_6_a);

-- Location: LCCOMB_X50_Y33_N2
row_valid2_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid2_6_afeeder_combout = row_valid1_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => row_valid1_6_a,
	combout => row_valid2_6_afeeder_combout);

-- Location: LCFF_X48_Y32_N17
reg_valid_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_1_a);

-- Location: LCFF_X48_Y32_N1
reg_valid_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_2_a);

-- Location: LCFF_X49_Y31_N3
reg_valid_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_3_a);

-- Location: LCFF_X49_Y31_N1
reg_valid_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_4_a);

-- Location: LCFF_X50_Y33_N3
reg_row_valid2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid2_6_afeeder_combout,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_6_a);

-- Location: LCFF_X53_Y33_N21
reg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_4_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_4_a);

-- Location: LCCOMB_X51_Y33_N14
row_valid1_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid1_4_afeeder_combout = o_row_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_row_4_a,
	combout => row_valid1_4_afeeder_combout);

-- Location: LCFF_X51_Y33_N15
reg_row_valid1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid1_4_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_4_a);

-- Location: LCFF_X50_Y33_N27
reg_row_valid2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => row_valid1_4_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_4_a);

-- Location: LCFF_X51_Y33_N29
reg_row_valid1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_row_5_a,
	sload => VCC,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_5_a);

-- Location: LCFF_X50_Y33_N1
reg_row_valid2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => row_valid1_5_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_5_a);

-- Location: LCCOMB_X50_Y33_N26
ix23902z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx23902z5 = (row_valid2_7_a) # ((row_valid2_6_a) # ((row_valid2_4_a) # (row_valid2_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_valid2_7_a,
	datab => row_valid2_6_a,
	datac => row_valid2_4_a,
	datad => row_valid2_5_a,
	combout => nx23902z5);

-- Location: LCFF_X53_Y33_N17
reg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_2_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_2_a);

-- Location: LCCOMB_X51_Y33_N12
row_valid1_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid1_2_afeeder_combout = o_row_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_row_2_a,
	combout => row_valid1_2_afeeder_combout);

-- Location: LCFF_X51_Y33_N13
reg_row_valid1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid1_2_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_2_a);

-- Location: LCFF_X50_Y33_N23
reg_row_valid2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => row_valid1_2_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_2_a);

-- Location: LCFF_X51_Y33_N11
reg_row_valid1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => o_row_3_a,
	sload => VCC,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_3_a);

-- Location: LCFF_X50_Y33_N15
reg_row_valid2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => row_valid1_3_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_3_a);

-- Location: LCCOMB_X51_Y33_N30
row_valid1_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid1_1_afeeder_combout = o_row_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_row_1_a,
	combout => row_valid1_1_afeeder_combout);

-- Location: LCFF_X51_Y33_N31
reg_row_valid1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid1_1_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_1_a);

-- Location: LCCOMB_X50_Y33_N28
row_valid2_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid2_1_afeeder_combout = row_valid1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => row_valid1_1_a,
	combout => row_valid2_1_afeeder_combout);

-- Location: LCFF_X50_Y33_N29
reg_row_valid2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid2_1_afeeder_combout,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_1_a);

-- Location: LCCOMB_X50_Y33_N14
ix23902z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx23902z4 = (row_valid2_2_a) # ((row_valid2_3_a) # (row_valid2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row_valid2_2_a,
	datac => row_valid2_3_a,
	datad => row_valid2_1_a,
	combout => nx23902z4);

-- Location: LCCOMB_X49_Y33_N30
column_valid1_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_3_afeeder_combout = column_3_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => column_3_a,
	combout => column_valid1_3_afeeder_combout);

-- Location: LCFF_X49_Y33_N31
reg_column_valid1_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_3_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_3_a);

-- Location: LCFF_X50_Y33_N31
reg_column_valid2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => column_valid1_3_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_3_a);

-- Location: LCFF_X49_Y33_N7
reg_q_2_dup_5 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_2_dup_1235,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_2_a);

-- Location: LCCOMB_X51_Y33_N0
column_valid1_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_2_afeeder_combout = column_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => column_2_a,
	combout => column_valid1_2_afeeder_combout);

-- Location: LCFF_X51_Y33_N1
reg_column_valid1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_2_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_2_a);

-- Location: LCFF_X50_Y33_N21
reg_column_valid2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => column_valid1_2_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_2_a);

-- Location: LCCOMB_X49_Y33_N0
column_valid1_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_1_afeeder_combout = column_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => column_1_a,
	combout => column_valid1_1_afeeder_combout);

-- Location: LCFF_X49_Y33_N1
reg_column_valid1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_1_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_1_a);

-- Location: LCCOMB_X45_Y33_N0
column_valid2_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid2_1_afeeder_combout = column_valid1_1_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => column_valid1_1_a,
	combout => column_valid2_1_afeeder_combout);

-- Location: LCFF_X45_Y33_N1
reg_column_valid2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid2_1_afeeder_combout,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_1_a);

-- Location: LCCOMB_X50_Y33_N20
ix23902z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx23902z2 = (nx23902z3) # ((column_valid2_3_a) # ((column_valid2_2_a) # (column_valid2_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx23902z3,
	datab => column_valid2_3_a,
	datac => column_valid2_2_a,
	datad => column_valid2_1_a,
	combout => nx23902z2);

-- Location: LCCOMB_X46_Y31_N16
ix23902z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx23902z1 = (valid_6_a & (nx23902z2 & ((nx23902z5) # (nx23902z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_6_a,
	datab => nx23902z5,
	datac => nx23902z4,
	datad => nx23902z2,
	combout => nx23902z1);

-- Location: LCFF_X46_Y31_N17
reg_output_valid_reg : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23902z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_output_valid_reg_aregout);

-- Location: LCFF_X45_Y33_N31
reg_valid_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_5_a);

-- Location: LCFF_X45_Y32_N31
reg_valid_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => valid_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => valid_6_a);

-- Location: LCCOMB_X45_Y32_N4
ix61908z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z17 = (!valid_6_a & reg_r9_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_6_a,
	datac => reg_r9_aregout,
	combout => nx61908z17);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(0),
	combout => i_pixel_acombout(0));

-- Location: LCFF_X49_Y33_N11
reg_q_4_dup_3 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_4_dup_1239,
	sclr => nx34903z2,
	ena => nx34903z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_4_a);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(1),
	combout => i_pixel_acombout(1));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(2),
	combout => i_pixel_acombout(2));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(3),
	combout => i_pixel_acombout(3));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(4),
	combout => i_pixel_acombout(4));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(5),
	combout => i_pixel_acombout(5));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(6),
	combout => i_pixel_acombout(6));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_pixel_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_pixel(7),
	combout => i_pixel_acombout(7));

-- Location: LCCOMB_X48_Y34_N4
c_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_6_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_aix64056z29481_aauto_generated_aq_a(6),
	combout => c_6_afeeder_combout);

-- Location: M4K_X52_Y33
mem_0_aix64056z29482_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:mem_0|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => mem_wren_1_a,
	clk0 => i_clock_aclkctrl_outclk,
	portadatain => mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTAADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => mem_0_aix64056z29482_aauto_generated_aram_block1a0_PORTADATAOUT_bus);

-- Location: LCCOMB_X48_Y33_N8
ix20492z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx20492z1 = (i_reset_acombout) # (i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	datad => i_valid_acombout,
	combout => nx20492z1);

-- Location: LCFF_X48_Y34_N5
reg_c_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_6_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(6),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_6_a);

-- Location: LCFF_X49_Y32_N19
reg_b_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_6_a);

-- Location: LCFF_X49_Y32_N3
reg_a_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_6_a);

-- Location: LCCOMB_X49_Y32_N2
ix28679z52979 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z39 = (valid_0_a & (((a_6_a)))) # (!valid_0_a & (b_6_a & (valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_6_a,
	datab => valid_1_a,
	datac => a_6_a,
	datad => valid_0_a,
	combout => nx28679z39);

-- Location: LCCOMB_X48_Y32_N30
ix28679z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z3 = (!valid_1_a & (!valid_0_a & valid_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datac => valid_0_a,
	datad => valid_2_a,
	combout => nx28679z3);

-- Location: LCCOMB_X48_Y34_N14
d_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_6_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_0_aix64056z29482_aauto_generated_aq_a(6),
	combout => d_6_afeeder_combout);

-- Location: LCFF_X48_Y34_N15
reg_d_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_6_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(6),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_6_a);

-- Location: LCCOMB_X49_Y32_N22
ix28679z52977 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_6_a = (nx28679z38) # ((nx28679z39) # ((nx28679z3 & d_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z38,
	datab => nx28679z39,
	datac => nx28679z3,
	datad => d_6_a,
	combout => i_add1_6_a);

-- Location: LCCOMB_X48_Y34_N2
d_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_5_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_0_aix64056z29482_aauto_generated_aq_a(5),
	combout => d_5_afeeder_combout);

-- Location: LCFF_X48_Y34_N3
reg_d_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_5_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(5),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_5_a);

-- Location: LCCOMB_X48_Y34_N8
c_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_5_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(5),
	combout => c_5_afeeder_combout);

-- Location: LCFF_X48_Y34_N9
reg_c_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_5_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(5),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_5_a);

-- Location: LCFF_X50_Y32_N31
reg_b_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_5_a);

-- Location: LCCOMB_X50_Y32_N0
ix28679z52982 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z41 = (valid_0_a & (a_5_a)) # (!valid_0_a & (((b_5_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_5_a,
	datab => b_5_a,
	datac => valid_0_a,
	datad => valid_1_a,
	combout => nx28679z41);

-- Location: LCCOMB_X50_Y32_N16
ix28679z52980 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_5_a = (nx28679z40) # ((nx28679z41) # ((nx28679z3 & d_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z40,
	datab => nx28679z3,
	datac => d_5_a,
	datad => nx28679z41,
	combout => i_add1_5_a);

-- Location: LCCOMB_X48_Y34_N12
c_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_4_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_aix64056z29481_aauto_generated_aq_a(4),
	combout => c_4_afeeder_combout);

-- Location: LCFF_X48_Y34_N13
reg_c_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_4_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(4),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_4_a);

-- Location: LCCOMB_X47_Y34_N14
ix28679z53009 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z59 = (valid_0_a & (h_4_a)) # (!valid_0_a & (((c_4_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_4_a,
	datab => valid_0_a,
	datac => c_4_a,
	datad => valid_1_a,
	combout => nx28679z59);

-- Location: LCFF_X47_Y34_N21
reg_e_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(4),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_4_a);

-- Location: LCFF_X47_Y34_N5
reg_f_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_4_a);

-- Location: LCFF_X47_Y34_N11
reg_g_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_4_a);

-- Location: LCCOMB_X47_Y34_N10
ix28679z53008 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z58 = (!valid_2_a & (!valid_0_a & (g_4_a & !valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_0_a,
	datac => g_4_a,
	datad => valid_1_a,
	combout => nx28679z58);

-- Location: LCCOMB_X47_Y34_N12
ix28679z53007 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_4_a = (nx28679z59) # ((nx28679z58) # ((e_4_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_4_a,
	datab => nx28679z3,
	datac => nx28679z59,
	datad => nx28679z58,
	combout => i_add2_4_a);

-- Location: LCFF_X47_Y33_N23
reg_e_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(3),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_3_a);

-- Location: LCCOMB_X47_Y33_N8
ix28679z53011 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z60 = (g_3_a & (!valid_2_a & (!valid_1_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_3_a,
	datab => valid_2_a,
	datac => valid_1_a,
	datad => valid_0_a,
	combout => nx28679z60);

-- Location: LCCOMB_X47_Y33_N28
ix28679z53010 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_3_a = (nx28679z61) # ((nx28679z60) # ((e_3_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z61,
	datab => e_3_a,
	datac => nx28679z60,
	datad => nx28679z3,
	combout => i_add2_3_a);

-- Location: LCCOMB_X48_Y34_N28
c_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_2_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_aix64056z29481_aauto_generated_aq_a(2),
	combout => c_2_afeeder_combout);

-- Location: LCFF_X48_Y34_N29
reg_c_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_2_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(2),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_2_a);

-- Location: LCCOMB_X48_Y31_N30
ix28679z53015 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z63 = (valid_0_a & (h_2_a)) # (!valid_0_a & (((c_2_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_2_a,
	datab => valid_0_a,
	datac => c_2_a,
	datad => valid_1_a,
	combout => nx28679z63);

-- Location: LCFF_X48_Y32_N19
reg_e_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(2),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_2_a);

-- Location: LCFF_X48_Y32_N3
reg_f_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_2_a);

-- Location: LCFF_X48_Y32_N9
reg_g_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_2_a);

-- Location: LCCOMB_X49_Y32_N8
ix28679z53014 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z62 = (!valid_1_a & (!valid_2_a & (g_2_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => g_2_a,
	datad => valid_0_a,
	combout => nx28679z62);

-- Location: LCCOMB_X48_Y31_N4
ix28679z53013 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_2_a = (nx28679z63) # ((nx28679z62) # ((e_2_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => e_2_a,
	datab => nx28679z63,
	datac => nx28679z3,
	datad => nx28679z62,
	combout => i_add2_2_a);

-- Location: LCFF_X48_Y32_N11
reg_e_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(1),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_1_a);

-- Location: LCFF_X47_Y32_N1
reg_f_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_1_a);

-- Location: LCCOMB_X49_Y32_N28
ix28679z52993 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z48 = (!valid_0_a & (f_1_a & (!valid_1_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => f_1_a,
	datac => valid_1_a,
	datad => valid_2_a,
	combout => nx28679z48);

-- Location: LCCOMB_X48_Y34_N24
c_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_1_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(1),
	combout => c_1_afeeder_combout);

-- Location: LCFF_X48_Y34_N25
reg_c_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_1_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(1),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_1_a);

-- Location: LCFF_X48_Y32_N21
reg_b_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_1_a);

-- Location: LCFF_X48_Y32_N7
reg_a_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_1_a);

-- Location: LCCOMB_X48_Y32_N6
ix28679z52994 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z49 = (valid_0_a & (((a_1_a)))) # (!valid_0_a & (b_1_a & (valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_1_a,
	datab => valid_1_a,
	datac => a_1_a,
	datad => valid_0_a,
	combout => nx28679z49);

-- Location: LCCOMB_X49_Y32_N12
ix28679z52992 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_1_a = (nx28679z48) # ((nx28679z49) # ((d_1_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_1_a,
	datab => nx28679z48,
	datac => nx28679z3,
	datad => nx28679z49,
	combout => i_add1_1_a);

-- Location: LCFF_X48_Y32_N25
reg_e_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(0),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_0_a);

-- Location: LCFF_X47_Y32_N3
reg_f_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_0_a);

-- Location: LCFF_X48_Y32_N23
reg_g_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_0_a);

-- Location: LCCOMB_X48_Y32_N22
ix28679z53020 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z66 = (!valid_1_a & (!valid_0_a & (g_0_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => g_0_a,
	datad => valid_2_a,
	combout => nx28679z66);

-- Location: LCCOMB_X48_Y34_N6
c_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_0_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mem_aix64056z29481_aauto_generated_aq_a(0),
	combout => c_0_afeeder_combout);

-- Location: LCFF_X48_Y34_N7
reg_c_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_0_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(0),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_0_a);

-- Location: LCCOMB_X48_Y34_N20
d_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_0_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem_0_aix64056z29482_aauto_generated_aq_a(0),
	combout => d_0_afeeder_combout);

-- Location: LCFF_X48_Y34_N21
reg_d_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_0_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(0),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_0_a);

-- Location: LCFF_X48_Y33_N23
reg_i_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_0_a);

-- Location: LCFF_X48_Y32_N13
reg_h_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_0_a);

-- Location: LCCOMB_X48_Y33_N26
ix28679z53021 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z67 = (valid_0_a & (((h_0_a)))) # (!valid_0_a & (valid_1_a & (c_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => c_0_a,
	datad => h_0_a,
	combout => nx28679z67);

-- Location: LCCOMB_X48_Y33_N4
ix28679z53019 : cycloneii_lcell_comb
-- Equation(s):
-- i_add2_0_a = (nx28679z66) # ((nx28679z67) # ((nx28679z3 & e_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => e_0_a,
	datac => nx28679z66,
	datad => nx28679z67,
	combout => i_add2_0_a);

-- Location: LCCOMB_X48_Y31_N8
stage1_ao_add_op12_stage1_add8_0_ix45057z52932 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_0_a = (i_add1_0_a & (i_add2_0_a $ (VCC))) # (!i_add1_0_a & (i_add2_0_a & VCC))
-- stage1_anx45057z8 = CARRY((i_add1_0_a & i_add2_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_add1_0_a,
	datab => i_add2_0_a,
	datad => VCC,
	combout => stage1_ao_add_op12_stage1_0_a,
	cout => stage1_anx45057z8);

-- Location: LCCOMB_X48_Y31_N10
stage1_ao_add_op12_stage1_add8_0_ix45057z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_1_a = (i_add2_1_a & ((i_add1_1_a & (stage1_anx45057z8 & VCC)) # (!i_add1_1_a & (!stage1_anx45057z8)))) # (!i_add2_1_a & ((i_add1_1_a & (!stage1_anx45057z8)) # (!i_add1_1_a & ((stage1_anx45057z8) # (GND)))))
-- stage1_anx45057z7 = CARRY((i_add2_1_a & (!i_add1_1_a & !stage1_anx45057z8)) # (!i_add2_1_a & ((!stage1_anx45057z8) # (!i_add1_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add2_1_a,
	datab => i_add1_1_a,
	datad => VCC,
	cin => stage1_anx45057z8,
	combout => stage1_ao_add_op12_stage1_1_a,
	cout => stage1_anx45057z7);

-- Location: LCCOMB_X48_Y31_N12
stage1_ao_add_op12_stage1_add8_0_ix45057z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_2_a = ((i_add1_2_a $ (i_add2_2_a $ (!stage1_anx45057z7)))) # (GND)
-- stage1_anx45057z6 = CARRY((i_add1_2_a & ((i_add2_2_a) # (!stage1_anx45057z7))) # (!i_add1_2_a & (i_add2_2_a & !stage1_anx45057z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add1_2_a,
	datab => i_add2_2_a,
	datad => VCC,
	cin => stage1_anx45057z7,
	combout => stage1_ao_add_op12_stage1_2_a,
	cout => stage1_anx45057z6);

-- Location: LCCOMB_X48_Y31_N14
stage1_ao_add_op12_stage1_add8_0_ix45057z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_3_a = (i_add1_3_a & ((i_add2_3_a & (stage1_anx45057z6 & VCC)) # (!i_add2_3_a & (!stage1_anx45057z6)))) # (!i_add1_3_a & ((i_add2_3_a & (!stage1_anx45057z6)) # (!i_add2_3_a & ((stage1_anx45057z6) # (GND)))))
-- stage1_anx45057z5 = CARRY((i_add1_3_a & (!i_add2_3_a & !stage1_anx45057z6)) # (!i_add1_3_a & ((!stage1_anx45057z6) # (!i_add2_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add1_3_a,
	datab => i_add2_3_a,
	datad => VCC,
	cin => stage1_anx45057z6,
	combout => stage1_ao_add_op12_stage1_3_a,
	cout => stage1_anx45057z5);

-- Location: LCCOMB_X48_Y31_N16
stage1_ao_add_op12_stage1_add8_0_ix45057z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_4_a = ((i_add1_4_a $ (i_add2_4_a $ (!stage1_anx45057z5)))) # (GND)
-- stage1_anx45057z4 = CARRY((i_add1_4_a & ((i_add2_4_a) # (!stage1_anx45057z5))) # (!i_add1_4_a & (i_add2_4_a & !stage1_anx45057z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add1_4_a,
	datab => i_add2_4_a,
	datad => VCC,
	cin => stage1_anx45057z5,
	combout => stage1_ao_add_op12_stage1_4_a,
	cout => stage1_anx45057z4);

-- Location: LCCOMB_X48_Y31_N18
stage1_ao_add_op12_stage1_add8_0_ix45057z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_5_a = (i_add2_5_a & ((i_add1_5_a & (stage1_anx45057z4 & VCC)) # (!i_add1_5_a & (!stage1_anx45057z4)))) # (!i_add2_5_a & ((i_add1_5_a & (!stage1_anx45057z4)) # (!i_add1_5_a & ((stage1_anx45057z4) # (GND)))))
-- stage1_anx45057z3 = CARRY((i_add2_5_a & (!i_add1_5_a & !stage1_anx45057z4)) # (!i_add2_5_a & ((!stage1_anx45057z4) # (!i_add1_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add2_5_a,
	datab => i_add1_5_a,
	datad => VCC,
	cin => stage1_anx45057z4,
	combout => stage1_ao_add_op12_stage1_5_a,
	cout => stage1_anx45057z3);

-- Location: LCCOMB_X48_Y31_N20
stage1_ao_add_op12_stage1_add8_0_ix45057z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_6_a = ((i_add2_6_a $ (i_add1_6_a $ (!stage1_anx45057z3)))) # (GND)
-- stage1_anx45057z2 = CARRY((i_add2_6_a & ((i_add1_6_a) # (!stage1_anx45057z3))) # (!i_add2_6_a & (i_add1_6_a & !stage1_anx45057z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add2_6_a,
	datab => i_add1_6_a,
	datad => VCC,
	cin => stage1_anx45057z3,
	combout => stage1_ao_add_op12_stage1_6_a,
	cout => stage1_anx45057z2);

-- Location: LCFF_X48_Y31_N21
reg_r2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_6_a);

-- Location: LCCOMB_X44_Y33_N6
ix28678z52942 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_6_a = (valid_5_a & (r6_5_a)) # (!valid_5_a & ((r2_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_5_a,
	datab => valid_5_a,
	datad => r2_6_a,
	combout => i_add3_6_a);

-- Location: LCFF_X48_Y31_N19
reg_r2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_5_a);

-- Location: LCCOMB_X46_Y33_N10
ix28678z52943 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_5_a = (valid_5_a & (r6_4_a)) # (!valid_5_a & ((r2_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_4_a,
	datac => valid_5_a,
	datad => r2_5_a,
	combout => i_add3_5_a);

-- Location: LCFF_X48_Y31_N17
reg_r2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_4_a);

-- Location: LCFF_X46_Y33_N29
reg_temp_add_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_4_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_4_a);

-- Location: LCFF_X48_Y31_N15
reg_r2_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_3_a);

-- Location: LCFF_X46_Y33_N9
reg_temp_add_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_3_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_3_a);

-- Location: LCFF_X48_Y31_N13
reg_r2_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_2_a);

-- Location: LCFF_X46_Y33_N13
reg_temp_add_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_2_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_2_a);

-- Location: LCFF_X48_Y31_N11
reg_r2_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_1_a);

-- Location: LCFF_X46_Y33_N1
reg_temp_add_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_1_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_1_a);

-- Location: LCCOMB_X46_Y33_N0
ix28678z52960 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_1_a = (valid_2_a & ((temp_add_1_a))) # (!valid_2_a & (r6_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_1_a,
	datac => temp_add_1_a,
	datad => valid_2_a,
	combout => i_add4_1_a);

-- Location: LCFF_X48_Y31_N9
reg_r2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_0_a);

-- Location: LCCOMB_X45_Y33_N30
ix28678z52948 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_0_a = (!valid_5_a & r2_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_5_a,
	datad => r2_0_a,
	combout => i_add3_0_a);

-- Location: LCCOMB_X45_Y33_N4
stage2_ao_add_op12_stage2_add13_0_ix22301z52936 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_0_a = (i_add4_0_a & (i_add3_0_a $ (VCC))) # (!i_add4_0_a & (i_add3_0_a & VCC))
-- stage2_anx22301z12 = CARRY((i_add4_0_a & i_add3_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_add4_0_a,
	datab => i_add3_0_a,
	datad => VCC,
	combout => stage2_ao_add_op12_stage2_0_a,
	cout => stage2_anx22301z12);

-- Location: LCCOMB_X45_Y33_N8
stage2_ao_add_op12_stage2_add13_0_ix22301z52934 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_2_a = ((i_add3_2_a $ (i_add4_2_a $ (!stage2_anx22301z11)))) # (GND)
-- stage2_anx22301z10 = CARRY((i_add3_2_a & ((i_add4_2_a) # (!stage2_anx22301z11))) # (!i_add3_2_a & (i_add4_2_a & !stage2_anx22301z11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_2_a,
	datab => i_add4_2_a,
	datad => VCC,
	cin => stage2_anx22301z11,
	combout => stage2_ao_add_op12_stage2_2_a,
	cout => stage2_anx22301z10);

-- Location: LCFF_X45_Y33_N9
reg_r6_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_2_a);

-- Location: LCCOMB_X46_Y33_N12
ix28678z52959 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_2_a = (valid_2_a & (temp_add_2_a)) # (!valid_2_a & ((r6_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_add_2_a,
	datad => r6_2_a,
	combout => i_add4_2_a);

-- Location: LCCOMB_X45_Y33_N10
stage2_ao_add_op12_stage2_add13_0_ix22301z52933 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_3_a = (i_add3_3_a & ((i_add4_3_a & (stage2_anx22301z10 & VCC)) # (!i_add4_3_a & (!stage2_anx22301z10)))) # (!i_add3_3_a & ((i_add4_3_a & (!stage2_anx22301z10)) # (!i_add4_3_a & ((stage2_anx22301z10) # (GND)))))
-- stage2_anx22301z9 = CARRY((i_add3_3_a & (!i_add4_3_a & !stage2_anx22301z10)) # (!i_add3_3_a & ((!stage2_anx22301z10) # (!i_add4_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_3_a,
	datab => i_add4_3_a,
	datad => VCC,
	cin => stage2_anx22301z10,
	combout => stage2_ao_add_op12_stage2_3_a,
	cout => stage2_anx22301z9);

-- Location: LCFF_X45_Y33_N11
reg_r6_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_3_a);

-- Location: LCCOMB_X46_Y33_N8
ix28678z52958 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_3_a = (valid_2_a & (temp_add_3_a)) # (!valid_2_a & ((r6_3_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_add_3_a,
	datad => r6_3_a,
	combout => i_add4_3_a);

-- Location: LCCOMB_X45_Y33_N12
stage2_ao_add_op12_stage2_add13_0_ix22301z52932 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_4_a = ((i_add3_4_a $ (i_add4_4_a $ (!stage2_anx22301z9)))) # (GND)
-- stage2_anx22301z8 = CARRY((i_add3_4_a & ((i_add4_4_a) # (!stage2_anx22301z9))) # (!i_add3_4_a & (i_add4_4_a & !stage2_anx22301z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_4_a,
	datab => i_add4_4_a,
	datad => VCC,
	cin => stage2_anx22301z9,
	combout => stage2_ao_add_op12_stage2_4_a,
	cout => stage2_anx22301z8);

-- Location: LCFF_X45_Y33_N13
reg_r6_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_4_a);

-- Location: LCCOMB_X46_Y33_N28
ix28678z52957 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_4_a = (valid_2_a & (temp_add_4_a)) # (!valid_2_a & ((r6_4_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_add_4_a,
	datad => r6_4_a,
	combout => i_add4_4_a);

-- Location: LCCOMB_X45_Y33_N16
stage2_ao_add_op12_stage2_add13_0_ix22301z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_6_a = ((i_add4_6_a $ (i_add3_6_a $ (!stage2_anx22301z7)))) # (GND)
-- stage2_anx22301z6 = CARRY((i_add4_6_a & ((i_add3_6_a) # (!stage2_anx22301z7))) # (!i_add4_6_a & (i_add3_6_a & !stage2_anx22301z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add4_6_a,
	datab => i_add3_6_a,
	datad => VCC,
	cin => stage2_anx22301z7,
	combout => stage2_ao_add_op12_stage2_6_a,
	cout => stage2_anx22301z6);

-- Location: LCFF_X45_Y33_N17
reg_r6_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_6_a);

-- Location: LCCOMB_X47_Y34_N8
ix28679z52975 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z36 = (f_7_a & (!valid_1_a & (!valid_0_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => f_7_a,
	datab => valid_1_a,
	datac => valid_0_a,
	datad => valid_2_a,
	combout => nx28679z36);

-- Location: LCCOMB_X48_Y34_N0
c_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_7_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(7),
	combout => c_7_afeeder_combout);

-- Location: LCFF_X48_Y34_N1
reg_c_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_7_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(7),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_7_a);

-- Location: LCFF_X48_Y33_N15
reg_b_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_7_a);

-- Location: LCCOMB_X47_Y33_N0
ix28679z52976 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z37 = (valid_0_a & (a_7_a)) # (!valid_0_a & (((b_7_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_7_a,
	datab => b_7_a,
	datac => valid_1_a,
	datad => valid_0_a,
	combout => nx28679z37);

-- Location: LCCOMB_X47_Y34_N18
ix28679z52974 : cycloneii_lcell_comb
-- Equation(s):
-- i_add1_7_a = (nx28679z36) # ((nx28679z37) # ((d_7_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_7_a,
	datab => nx28679z3,
	datac => nx28679z36,
	datad => nx28679z37,
	combout => i_add1_7_a);

-- Location: LCCOMB_X48_Y31_N22
stage1_ao_add_op12_stage1_add8_0_ix45057z52925 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_7_a = (i_add2_7_a & ((i_add1_7_a & (stage1_anx45057z2 & VCC)) # (!i_add1_7_a & (!stage1_anx45057z2)))) # (!i_add2_7_a & ((i_add1_7_a & (!stage1_anx45057z2)) # (!i_add1_7_a & ((stage1_anx45057z2) # (GND)))))
-- stage1_ao_add_op12_stage1_8_a = CARRY((i_add2_7_a & (!i_add1_7_a & !stage1_anx45057z2)) # (!i_add2_7_a & ((!stage1_anx45057z2) # (!i_add1_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add2_7_a,
	datab => i_add1_7_a,
	datad => VCC,
	cin => stage1_anx45057z2,
	combout => stage1_ao_add_op12_stage1_7_a,
	cout => stage1_ao_add_op12_stage1_8_a);

-- Location: LCFF_X48_Y31_N23
reg_r2_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_add_op12_stage1_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_7_a);

-- Location: LCCOMB_X44_Y33_N16
ix28678z52941 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_7_a = (valid_5_a & (r6_6_a)) # (!valid_5_a & ((r2_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_5_a,
	datac => r6_6_a,
	datad => r2_7_a,
	combout => i_add3_7_a);

-- Location: LCCOMB_X45_Y33_N18
stage2_ao_add_op12_stage2_add13_0_ix22301z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_7_a = (i_add4_7_a & ((i_add3_7_a & (stage2_anx22301z6 & VCC)) # (!i_add3_7_a & (!stage2_anx22301z6)))) # (!i_add4_7_a & ((i_add3_7_a & (!stage2_anx22301z6)) # (!i_add3_7_a & ((stage2_anx22301z6) # (GND)))))
-- stage2_anx22301z5 = CARRY((i_add4_7_a & (!i_add3_7_a & !stage2_anx22301z6)) # (!i_add4_7_a & ((!stage2_anx22301z6) # (!i_add3_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add4_7_a,
	datab => i_add3_7_a,
	datad => VCC,
	cin => stage2_anx22301z6,
	combout => stage2_ao_add_op12_stage2_7_a,
	cout => stage2_anx22301z5);

-- Location: LCFF_X45_Y33_N19
reg_r6_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_7_a);

-- Location: LCCOMB_X48_Y34_N16
c_3_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- c_3_afeeder_combout = mem_aix64056z29481_aauto_generated_aq_a(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z29481_aauto_generated_aq_a(3),
	combout => c_3_afeeder_combout);

-- Location: LCFF_X48_Y34_N17
reg_c_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => c_3_afeeder_combout,
	sdata => mem_0_aix64056z29482_aauto_generated_aq_a(3),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c_3_a);

-- Location: LCFF_X47_Y33_N3
reg_b_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_3_a);

-- Location: LCCOMB_X47_Y33_N2
ix28679z52964 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z29 = (valid_0_a & (((b_3_a)))) # (!valid_0_a & (d_3_a & ((valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_3_a,
	datab => valid_0_a,
	datac => b_3_a,
	datad => valid_1_a,
	combout => nx28679z29);

-- Location: LCFF_X47_Y33_N5
reg_f_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_3_a);

-- Location: LCCOMB_X47_Y33_N4
ix28679z52962 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_3_a = (nx28679z28) # ((nx28679z29) # ((f_3_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z28,
	datab => nx28679z29,
	datac => f_3_a,
	datad => nx28679z3,
	combout => i_max2_3_a);

-- Location: LCCOMB_X47_Y33_N22
ix28679z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z12 = (!valid_1_a & (!valid_2_a & (e_3_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => e_3_a,
	datad => valid_0_a,
	combout => nx28679z12);

-- Location: LCFF_X47_Y33_N15
reg_g_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_3_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_3_a);

-- Location: LCCOMB_X47_Y33_N14
ix28679z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z13 = (valid_0_a & (((g_3_a)))) # (!valid_0_a & (a_3_a & ((valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_3_a,
	datab => valid_0_a,
	datac => g_3_a,
	datad => valid_1_a,
	combout => nx28679z13);

-- Location: LCCOMB_X47_Y33_N16
ix28679z52938 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_3_a = (nx28679z12) # ((nx28679z13) # ((c_3_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_3_a,
	datab => nx28679z12,
	datac => nx28679z13,
	datad => nx28679z3,
	combout => i_max1_3_a);

-- Location: LCCOMB_X48_Y34_N26
d_7_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_7_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem_0_aix64056z29482_aauto_generated_aq_a(7),
	combout => d_7_afeeder_combout);

-- Location: LCFF_X48_Y34_N27
reg_d_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_7_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(7),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_7_a);

-- Location: LCCOMB_X48_Y33_N14
ix28679z52952 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z21 = (valid_0_a & (((b_7_a)))) # (!valid_0_a & (valid_1_a & ((d_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => b_7_a,
	datad => d_7_a,
	combout => nx28679z21);

-- Location: LCFF_X48_Y33_N31
reg_e_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(7),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_7_a);

-- Location: LCFF_X48_Y33_N29
reg_f_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_7_a);

-- Location: LCFF_X47_Y34_N31
reg_i_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_7_a);

-- Location: LCFF_X48_Y33_N1
reg_h_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_7_a);

-- Location: LCCOMB_X48_Y33_N0
ix28679z52951 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z20 = (!valid_1_a & (!valid_2_a & (h_7_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => h_7_a,
	datad => valid_0_a,
	combout => nx28679z20);

-- Location: LCCOMB_X48_Y33_N28
ix28679z52950 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_7_a = (nx28679z21) # ((nx28679z20) # ((nx28679z3 & f_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => nx28679z21,
	datac => f_7_a,
	datad => nx28679z20,
	combout => i_max2_7_a);

-- Location: LCFF_X49_Y32_N27
reg_e_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(6),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_6_a);

-- Location: LCFF_X49_Y32_N31
reg_f_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_6_a);

-- Location: LCFF_X50_Y32_N25
reg_g_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_6_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_6_a);

-- Location: LCCOMB_X50_Y32_N24
ix28679z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z7 = (valid_0_a & (((g_6_a)))) # (!valid_0_a & (a_6_a & (valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_6_a,
	datab => valid_1_a,
	datac => g_6_a,
	datad => valid_0_a,
	combout => nx28679z7);

-- Location: LCCOMB_X49_Y32_N26
ix28679z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z6 = (!valid_1_a & (!valid_2_a & (e_6_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => e_6_a,
	datad => valid_0_a,
	combout => nx28679z6);

-- Location: LCCOMB_X50_Y32_N22
ix28679z52929 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_6_a = (nx28679z7) # ((nx28679z6) # ((nx28679z3 & c_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => c_6_a,
	datac => nx28679z7,
	datad => nx28679z6,
	combout => i_max1_6_a);

-- Location: LCFF_X50_Y32_N3
reg_i_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_5_a);

-- Location: LCFF_X50_Y32_N29
reg_h_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_5_a);

-- Location: LCCOMB_X50_Y32_N28
ix28679z52957 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z24 = (!valid_1_a & (!valid_2_a & (h_5_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => h_5_a,
	datad => valid_0_a,
	combout => nx28679z24);

-- Location: LCFF_X50_Y32_N27
reg_e_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_pixel_acombout(5),
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => e_5_a);

-- Location: LCFF_X50_Y32_N21
reg_f_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => e_5_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => f_5_a);

-- Location: LCCOMB_X50_Y32_N30
ix28679z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z25 = (valid_0_a & (((b_5_a)))) # (!valid_0_a & (valid_1_a & ((d_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => b_5_a,
	datad => d_5_a,
	combout => nx28679z25);

-- Location: LCCOMB_X50_Y32_N20
ix28679z52956 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_5_a = (nx28679z24) # ((nx28679z25) # ((nx28679z3 & f_5_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => nx28679z24,
	datac => f_5_a,
	datad => nx28679z25,
	combout => i_max2_5_a);

-- Location: LCCOMB_X48_Y34_N30
d_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_4_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem_0_aix64056z29482_aauto_generated_aq_a(4),
	combout => d_4_afeeder_combout);

-- Location: LCFF_X48_Y34_N31
reg_d_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_4_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(4),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_4_a);

-- Location: LCFF_X47_Y34_N29
reg_i_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_4_a);

-- Location: LCFF_X47_Y34_N1
reg_h_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_4_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_4_a);

-- Location: LCCOMB_X47_Y34_N0
ix28679z52960 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z26 = (!valid_1_a & (!valid_2_a & (h_4_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => h_4_a,
	datad => valid_0_a,
	combout => nx28679z26);

-- Location: LCCOMB_X47_Y34_N4
ix28679z52959 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_4_a = (nx28679z27) # ((nx28679z26) # ((f_4_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z27,
	datab => nx28679z26,
	datac => f_4_a,
	datad => nx28679z3,
	combout => i_max2_4_a);

-- Location: LCFF_X48_Y31_N1
reg_b_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_2_a);

-- Location: LCFF_X48_Y31_N29
reg_a_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_2_a);

-- Location: LCCOMB_X48_Y32_N8
ix28679z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z15 = (valid_0_a & (((g_2_a)))) # (!valid_0_a & (valid_1_a & ((a_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => g_2_a,
	datad => a_2_a,
	combout => nx28679z15);

-- Location: LCCOMB_X48_Y32_N18
ix28679z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z14 = (!valid_1_a & (!valid_2_a & (e_2_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => e_2_a,
	datad => valid_0_a,
	combout => nx28679z14);

-- Location: LCCOMB_X48_Y32_N4
ix28679z52941 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_2_a = (nx28679z15) # ((nx28679z14) # ((c_2_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_2_a,
	datab => nx28679z15,
	datac => nx28679z14,
	datad => nx28679z3,
	combout => i_max1_2_a);

-- Location: LCCOMB_X48_Y34_N10
d_1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_1_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z29482_aauto_generated_aq_a(1),
	combout => d_1_afeeder_combout);

-- Location: LCFF_X48_Y34_N11
reg_d_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_1_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(1),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_1_a);

-- Location: LCCOMB_X48_Y32_N20
ix28679z52970 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z33 = (valid_0_a & (((b_1_a)))) # (!valid_0_a & (valid_1_a & ((d_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => b_1_a,
	datad => d_1_a,
	combout => nx28679z33);

-- Location: LCCOMB_X47_Y32_N0
ix28679z52968 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_1_a = (nx28679z32) # ((nx28679z33) # ((nx28679z3 & f_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z32,
	datab => nx28679z3,
	datac => f_1_a,
	datad => nx28679z33,
	combout => i_max2_1_a);

-- Location: LCFF_X47_Y32_N5
reg_b_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => c_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => b_0_a);

-- Location: LCCOMB_X47_Y32_N4
ix28679z52973 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z35 = (valid_0_a & (((b_0_a)))) # (!valid_0_a & (valid_1_a & ((d_0_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => b_0_a,
	datad => d_0_a,
	combout => nx28679z35);

-- Location: LCCOMB_X47_Y32_N2
ix28679z52971 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_0_a = (nx28679z34) # ((nx28679z35) # ((f_0_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z34,
	datab => nx28679z35,
	datac => f_0_a,
	datad => nx28679z3,
	combout => i_max2_0_a);

-- Location: LCCOMB_X47_Y32_N8
stage1_au_max1_aix54128z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z8 = CARRY((i_max1_0_a & !i_max2_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_0_a,
	datab => i_max2_0_a,
	datad => VCC,
	cout => stage1_au_max1_anx54128z8);

-- Location: LCCOMB_X47_Y32_N10
stage1_au_max1_aix54128z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z7 = CARRY((i_max1_1_a & (i_max2_1_a & !stage1_au_max1_anx54128z8)) # (!i_max1_1_a & ((i_max2_1_a) # (!stage1_au_max1_anx54128z8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_1_a,
	datab => i_max2_1_a,
	datad => VCC,
	cin => stage1_au_max1_anx54128z8,
	cout => stage1_au_max1_anx54128z7);

-- Location: LCCOMB_X47_Y32_N12
stage1_au_max1_aix54128z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z6 = CARRY((i_max2_2_a & (i_max1_2_a & !stage1_au_max1_anx54128z7)) # (!i_max2_2_a & ((i_max1_2_a) # (!stage1_au_max1_anx54128z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max2_2_a,
	datab => i_max1_2_a,
	datad => VCC,
	cin => stage1_au_max1_anx54128z7,
	cout => stage1_au_max1_anx54128z6);

-- Location: LCCOMB_X47_Y32_N14
stage1_au_max1_aix54128z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z5 = CARRY((i_max1_3_a & (i_max2_3_a & !stage1_au_max1_anx54128z6)) # (!i_max1_3_a & ((i_max2_3_a) # (!stage1_au_max1_anx54128z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_3_a,
	datab => i_max2_3_a,
	datad => VCC,
	cin => stage1_au_max1_anx54128z6,
	cout => stage1_au_max1_anx54128z5);

-- Location: LCCOMB_X47_Y32_N16
stage1_au_max1_aix54128z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z4 = CARRY((i_max1_4_a & ((!stage1_au_max1_anx54128z5) # (!i_max2_4_a))) # (!i_max1_4_a & (!i_max2_4_a & !stage1_au_max1_anx54128z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_4_a,
	datab => i_max2_4_a,
	datad => VCC,
	cin => stage1_au_max1_anx54128z5,
	cout => stage1_au_max1_anx54128z4);

-- Location: LCCOMB_X47_Y32_N18
stage1_au_max1_aix54128z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z3 = CARRY((i_max1_5_a & (i_max2_5_a & !stage1_au_max1_anx54128z4)) # (!i_max1_5_a & ((i_max2_5_a) # (!stage1_au_max1_anx54128z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_5_a,
	datab => i_max2_5_a,
	datad => VCC,
	cin => stage1_au_max1_anx54128z4,
	cout => stage1_au_max1_anx54128z3);

-- Location: LCCOMB_X47_Y32_N20
stage1_au_max1_aix54128z52925 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z2 = CARRY((i_max2_6_a & (i_max1_6_a & !stage1_au_max1_anx54128z3)) # (!i_max2_6_a & ((i_max1_6_a) # (!stage1_au_max1_anx54128z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max2_6_a,
	datab => i_max1_6_a,
	datad => VCC,
	cin => stage1_au_max1_anx54128z3,
	cout => stage1_au_max1_anx54128z2);

-- Location: LCCOMB_X47_Y32_N22
stage1_au_max1_aix54128z52924 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx54128z1 = (i_max1_7_a & ((stage1_au_max1_anx54128z2) # (!i_max2_7_a))) # (!i_max1_7_a & (stage1_au_max1_anx54128z2 & !i_max2_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_7_a,
	datad => i_max2_7_a,
	cin => stage1_au_max1_anx54128z2,
	combout => stage1_au_max1_anx54128z1);

-- Location: LCCOMB_X47_Y31_N18
stage1_au_max1_aix58116z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_3_a = (stage1_au_max1_anx54128z1 & ((i_max1_3_a))) # (!stage1_au_max1_anx54128z1 & (i_max2_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max2_3_a,
	datac => i_max1_3_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_3_a);

-- Location: LCCOMB_X48_Y34_N22
d_2_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- d_2_afeeder_combout = mem_0_aix64056z29482_aauto_generated_aq_a(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => mem_0_aix64056z29482_aauto_generated_aq_a(2),
	combout => d_2_afeeder_combout);

-- Location: LCFF_X48_Y34_N23
reg_d_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => d_2_afeeder_combout,
	sdata => mem_aix64056z29481_aauto_generated_aq_a(2),
	sclr => i_reset_acombout,
	sload => o_row_0_a,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_2_a);

-- Location: LCFF_X48_Y31_N27
reg_i_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => d_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_2_a);

-- Location: LCFF_X48_Y32_N27
reg_h_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_2_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => h_2_a);

-- Location: LCCOMB_X48_Y32_N26
ix28679z52966 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z30 = (!valid_2_a & (!valid_0_a & (h_2_a & !valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datab => valid_0_a,
	datac => h_2_a,
	datad => valid_1_a,
	combout => nx28679z30);

-- Location: LCCOMB_X48_Y31_N0
ix28679z52967 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z31 = (valid_0_a & (((b_2_a)))) # (!valid_0_a & (valid_1_a & ((d_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => b_2_a,
	datad => d_2_a,
	combout => nx28679z31);

-- Location: LCCOMB_X48_Y32_N2
ix28679z52965 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_2_a = (nx28679z30) # ((nx28679z31) # ((nx28679z3 & f_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z3,
	datab => nx28679z30,
	datac => f_2_a,
	datad => nx28679z31,
	combout => i_max2_2_a);

-- Location: LCCOMB_X47_Y31_N28
stage1_au_max1_aix59113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_2_a = (stage1_au_max1_anx54128z1 & (i_max1_2_a)) # (!stage1_au_max1_anx54128z1 & ((i_max2_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max1_2_a,
	datac => i_max2_2_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_2_a);

-- Location: LCCOMB_X48_Y32_N24
ix28679z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z18 = (!valid_1_a & (!valid_0_a & (e_0_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => e_0_a,
	datad => valid_2_a,
	combout => nx28679z18);

-- Location: LCFF_X48_Y32_N15
reg_a_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_0_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_0_a);

-- Location: LCCOMB_X48_Y32_N14
ix28679z52949 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z19 = (valid_0_a & (((g_0_a)))) # (!valid_0_a & (valid_1_a & (a_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => a_0_a,
	datad => g_0_a,
	combout => nx28679z19);

-- Location: LCCOMB_X47_Y32_N24
ix28679z52947 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_0_a = (nx28679z18) # ((nx28679z19) # ((c_0_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_0_a,
	datab => nx28679z18,
	datac => nx28679z19,
	datad => nx28679z3,
	combout => i_max1_0_a);

-- Location: LCCOMB_X47_Y31_N30
stage1_au_max1_aix61107z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_0_a = (stage1_au_max1_anx54128z1 & ((i_max1_0_a))) # (!stage1_au_max1_anx54128z1 & (i_max2_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max2_0_a,
	datac => i_max1_0_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_0_a);

-- Location: LCCOMB_X47_Y31_N0
stage1_ao_max_add_stage1_add9_1_ix15254z52933 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_0_a = (stage1_ao_add_op12_stage1_0_a & (stage1_au_max1_ao_max_pix_0_a $ (VCC))) # (!stage1_ao_add_op12_stage1_0_a & (stage1_au_max1_ao_max_pix_0_a & VCC))
-- stage1_anx15254z10 = CARRY((stage1_ao_add_op12_stage1_0_a & stage1_au_max1_ao_max_pix_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stage1_ao_add_op12_stage1_0_a,
	datab => stage1_au_max1_ao_max_pix_0_a,
	datad => VCC,
	combout => stage1_ao_max_add_stage1_0_a,
	cout => stage1_anx15254z10);

-- Location: LCCOMB_X47_Y31_N2
stage1_ao_max_add_stage1_add9_1_ix15254z52932 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_1_a = (stage1_au_max1_ao_max_pix_1_a & ((stage1_ao_add_op12_stage1_1_a & (stage1_anx15254z10 & VCC)) # (!stage1_ao_add_op12_stage1_1_a & (!stage1_anx15254z10)))) # (!stage1_au_max1_ao_max_pix_1_a & ((stage1_ao_add_op12_stage1_1_a 
-- & (!stage1_anx15254z10)) # (!stage1_ao_add_op12_stage1_1_a & ((stage1_anx15254z10) # (GND)))))
-- stage1_anx15254z9 = CARRY((stage1_au_max1_ao_max_pix_1_a & (!stage1_ao_add_op12_stage1_1_a & !stage1_anx15254z10)) # (!stage1_au_max1_ao_max_pix_1_a & ((!stage1_anx15254z10) # (!stage1_ao_add_op12_stage1_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_au_max1_ao_max_pix_1_a,
	datab => stage1_ao_add_op12_stage1_1_a,
	datad => VCC,
	cin => stage1_anx15254z10,
	combout => stage1_ao_max_add_stage1_1_a,
	cout => stage1_anx15254z9);

-- Location: LCCOMB_X47_Y31_N4
stage1_ao_max_add_stage1_add9_1_ix15254z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_2_a = ((stage1_ao_add_op12_stage1_2_a $ (stage1_au_max1_ao_max_pix_2_a $ (!stage1_anx15254z9)))) # (GND)
-- stage1_anx15254z8 = CARRY((stage1_ao_add_op12_stage1_2_a & ((stage1_au_max1_ao_max_pix_2_a) # (!stage1_anx15254z9))) # (!stage1_ao_add_op12_stage1_2_a & (stage1_au_max1_ao_max_pix_2_a & !stage1_anx15254z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_ao_add_op12_stage1_2_a,
	datab => stage1_au_max1_ao_max_pix_2_a,
	datad => VCC,
	cin => stage1_anx15254z9,
	combout => stage1_ao_max_add_stage1_2_a,
	cout => stage1_anx15254z8);

-- Location: LCCOMB_X47_Y31_N6
stage1_ao_max_add_stage1_add9_1_ix15254z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_3_a = (stage1_ao_add_op12_stage1_3_a & ((stage1_au_max1_ao_max_pix_3_a & (stage1_anx15254z8 & VCC)) # (!stage1_au_max1_ao_max_pix_3_a & (!stage1_anx15254z8)))) # (!stage1_ao_add_op12_stage1_3_a & ((stage1_au_max1_ao_max_pix_3_a & 
-- (!stage1_anx15254z8)) # (!stage1_au_max1_ao_max_pix_3_a & ((stage1_anx15254z8) # (GND)))))
-- stage1_anx15254z7 = CARRY((stage1_ao_add_op12_stage1_3_a & (!stage1_au_max1_ao_max_pix_3_a & !stage1_anx15254z8)) # (!stage1_ao_add_op12_stage1_3_a & ((!stage1_anx15254z8) # (!stage1_au_max1_ao_max_pix_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_ao_add_op12_stage1_3_a,
	datab => stage1_au_max1_ao_max_pix_3_a,
	datad => VCC,
	cin => stage1_anx15254z8,
	combout => stage1_ao_max_add_stage1_3_a,
	cout => stage1_anx15254z7);

-- Location: LCFF_X47_Y31_N7
reg_r3_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_3_a);

-- Location: LCFF_X44_Y31_N29
reg_temp_max_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_3_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_3_a);

-- Location: LCCOMB_X44_Y31_N28
ix28678z52932 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_3_a = (valid_2_a & (temp_max_3_a)) # (!valid_2_a & ((r4_3_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_max_3_a,
	datad => r4_3_a,
	combout => i_max3_3_a);

-- Location: LCCOMB_X48_Y31_N24
stage1_ao_add_op12_stage1_8_a0 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_add_op12_stage1_8_a0_combout = !stage1_ao_add_op12_stage1_8_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => stage1_ao_add_op12_stage1_8_a,
	combout => stage1_ao_add_op12_stage1_8_a0_combout);

-- Location: LCCOMB_X47_Y31_N22
stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout = CARRY(stage1_ao_add_op12_stage1_8_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stage1_ao_add_op12_stage1_8_a0_combout,
	datad => VCC,
	cout => stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout);

-- Location: LCCOMB_X47_Y31_N24
stage1_ao_max_add_stage1_add9_1_ix15254z52924 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_8_a = (stage1_anx15254z2 & (!stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout)) # (!stage1_anx15254z2 & ((stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout) # (GND)))
-- stage1_ao_max_add_stage1_9_a = CARRY((!stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout) # (!stage1_anx15254z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_anx15254z2,
	datad => VCC,
	cin => stage1_ao_max_add_stage1_add9_1_ix15254z52924_a1_cout,
	combout => stage1_ao_max_add_stage1_8_a,
	cout => stage1_ao_max_add_stage1_9_a);

-- Location: LCCOMB_X47_Y31_N26
stage1_aix15254z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_anx15254z1 = !stage1_ao_max_add_stage1_9_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => stage1_ao_max_add_stage1_9_a,
	combout => stage1_anx15254z1);

-- Location: LCFF_X47_Y31_N27
reg_r3_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_anx15254z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_9_a);

-- Location: LCFF_X45_Y31_N9
reg_temp_max_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_9_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_9_a);

-- Location: LCCOMB_X46_Y31_N28
stage2_au_max2_aix52134z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_9_a = (stage2_au_max2_anx52134z1 & ((i_max3_9_a))) # (!stage2_au_max2_anx52134z1 & (r3_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stage2_au_max2_anx52134z1,
	datac => r3_9_a,
	datad => i_max3_9_a,
	combout => stage2_au_max2_ao_max_pix_9_a);

-- Location: LCFF_X46_Y31_N29
reg_r4_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_9_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_9_a);

-- Location: LCCOMB_X45_Y31_N8
ix28678z52926 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_9_a = (valid_2_a & (temp_max_9_a)) # (!valid_2_a & ((r4_9_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datac => temp_max_9_a,
	datad => r4_9_a,
	combout => i_max3_9_a);

-- Location: LCFF_X47_Y31_N25
reg_r3_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_8_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_8_a);

-- Location: LCCOMB_X47_Y34_N20
ix28679z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z10 = (!valid_1_a & (!valid_2_a & (e_4_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => e_4_a,
	datad => valid_0_a,
	combout => nx28679z10);

-- Location: LCCOMB_X47_Y34_N22
ix28679z52935 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_4_a = (nx28679z11) # ((nx28679z10) # ((c_4_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z11,
	datab => c_4_a,
	datac => nx28679z10,
	datad => nx28679z3,
	combout => i_max1_4_a);

-- Location: LCCOMB_X47_Y32_N30
stage1_au_max1_aix57119z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_pix_4_a = (stage1_au_max1_anx54128z1 & ((i_max1_4_a))) # (!stage1_au_max1_anx54128z1 & (i_max2_4_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max2_4_a,
	datac => i_max1_4_a,
	datad => stage1_au_max1_anx54128z1,
	combout => stage1_au_max1_ao_max_pix_4_a);

-- Location: LCCOMB_X47_Y31_N8
stage1_ao_max_add_stage1_add9_1_ix15254z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_4_a = ((stage1_ao_add_op12_stage1_4_a $ (stage1_au_max1_ao_max_pix_4_a $ (!stage1_anx15254z7)))) # (GND)
-- stage1_anx15254z6 = CARRY((stage1_ao_add_op12_stage1_4_a & ((stage1_au_max1_ao_max_pix_4_a) # (!stage1_anx15254z7))) # (!stage1_ao_add_op12_stage1_4_a & (stage1_au_max1_ao_max_pix_4_a & !stage1_anx15254z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_ao_add_op12_stage1_4_a,
	datab => stage1_au_max1_ao_max_pix_4_a,
	datad => VCC,
	cin => stage1_anx15254z7,
	combout => stage1_ao_max_add_stage1_4_a,
	cout => stage1_anx15254z6);

-- Location: LCCOMB_X47_Y31_N10
stage1_ao_max_add_stage1_add9_1_ix15254z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_5_a = (stage1_au_max1_ao_max_pix_5_a & ((stage1_ao_add_op12_stage1_5_a & (stage1_anx15254z6 & VCC)) # (!stage1_ao_add_op12_stage1_5_a & (!stage1_anx15254z6)))) # (!stage1_au_max1_ao_max_pix_5_a & ((stage1_ao_add_op12_stage1_5_a & 
-- (!stage1_anx15254z6)) # (!stage1_ao_add_op12_stage1_5_a & ((stage1_anx15254z6) # (GND)))))
-- stage1_anx15254z5 = CARRY((stage1_au_max1_ao_max_pix_5_a & (!stage1_ao_add_op12_stage1_5_a & !stage1_anx15254z6)) # (!stage1_au_max1_ao_max_pix_5_a & ((!stage1_anx15254z6) # (!stage1_ao_add_op12_stage1_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_au_max1_ao_max_pix_5_a,
	datab => stage1_ao_add_op12_stage1_5_a,
	datad => VCC,
	cin => stage1_anx15254z6,
	combout => stage1_ao_max_add_stage1_5_a,
	cout => stage1_anx15254z5);

-- Location: LCCOMB_X47_Y31_N12
stage1_ao_max_add_stage1_add9_1_ix15254z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_ao_max_add_stage1_6_a = ((stage1_au_max1_ao_max_pix_6_a $ (stage1_ao_add_op12_stage1_6_a $ (!stage1_anx15254z5)))) # (GND)
-- stage1_anx15254z4 = CARRY((stage1_au_max1_ao_max_pix_6_a & ((stage1_ao_add_op12_stage1_6_a) # (!stage1_anx15254z5))) # (!stage1_au_max1_ao_max_pix_6_a & (stage1_ao_add_op12_stage1_6_a & !stage1_anx15254z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stage1_au_max1_ao_max_pix_6_a,
	datab => stage1_ao_add_op12_stage1_6_a,
	datad => VCC,
	cin => stage1_anx15254z5,
	combout => stage1_ao_max_add_stage1_6_a,
	cout => stage1_anx15254z4);

-- Location: LCFF_X47_Y31_N15
reg_r3_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_7_a);

-- Location: LCFF_X45_Y31_N3
reg_temp_max_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_7_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_7_a);

-- Location: LCCOMB_X46_Y31_N24
stage2_au_max2_aix54128z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_7_a = (stage2_au_max2_anx52134z1 & (i_max3_7_a)) # (!stage2_au_max2_anx52134z1 & ((r3_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_7_a,
	datac => stage2_au_max2_anx52134z1,
	datad => r3_7_a,
	combout => stage2_au_max2_ao_max_pix_7_a);

-- Location: LCFF_X46_Y31_N25
reg_r4_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_7_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_7_a);

-- Location: LCCOMB_X45_Y31_N2
ix28678z52928 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_7_a = (valid_2_a & (temp_max_7_a)) # (!valid_2_a & ((r4_7_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_2_a,
	datac => temp_max_7_a,
	datad => r4_7_a,
	combout => i_max3_7_a);

-- Location: LCFF_X47_Y31_N13
reg_r3_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_6_a);

-- Location: LCFF_X47_Y31_N11
reg_r3_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_5_a);

-- Location: LCFF_X47_Y31_N9
reg_r3_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_4_a);

-- Location: LCFF_X47_Y31_N5
reg_r3_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_2_a);

-- Location: LCCOMB_X44_Y31_N26
stage2_au_max2_aix59113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_2_a = (stage2_au_max2_anx52134z1 & (i_max3_2_a)) # (!stage2_au_max2_anx52134z1 & ((r3_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max3_2_a,
	datac => r3_2_a,
	datad => stage2_au_max2_anx52134z1,
	combout => stage2_au_max2_ao_max_pix_2_a);

-- Location: LCFF_X44_Y31_N27
reg_r4_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_2_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_2_a);

-- Location: LCFF_X45_Y31_N1
reg_temp_max_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_2_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_2_a);

-- Location: LCCOMB_X45_Y31_N0
ix28678z52933 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_2_a = (valid_2_a & ((temp_max_2_a))) # (!valid_2_a & (r4_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r4_2_a,
	datac => temp_max_2_a,
	datad => valid_2_a,
	combout => i_max3_2_a);

-- Location: LCFF_X47_Y31_N3
reg_r3_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_1_a);

-- Location: LCFF_X47_Y31_N1
reg_r3_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_ao_max_add_stage1_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r3_0_a);

-- Location: LCFF_X44_Y31_N31
reg_temp_max_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_0_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_0_a);

-- Location: LCCOMB_X44_Y31_N2
stage2_au_max2_aix61107z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_0_a = (stage2_au_max2_anx52134z1 & (i_max3_0_a)) # (!stage2_au_max2_anx52134z1 & ((r3_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_max3_0_a,
	datac => r3_0_a,
	datad => stage2_au_max2_anx52134z1,
	combout => stage2_au_max2_ao_max_pix_0_a);

-- Location: LCFF_X44_Y31_N3
reg_r4_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_0_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_0_a);

-- Location: LCCOMB_X44_Y31_N30
ix28678z52935 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_0_a = (valid_2_a & (temp_max_0_a)) # (!valid_2_a & ((r4_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_max_0_a,
	datad => r4_0_a,
	combout => i_max3_0_a);

-- Location: LCCOMB_X45_Y31_N12
stage2_au_max2_aix52134z52933 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z10 = CARRY((!r3_0_a & i_max3_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3_0_a,
	datab => i_max3_0_a,
	datad => VCC,
	cout => stage2_au_max2_anx52134z10);

-- Location: LCCOMB_X45_Y31_N14
stage2_au_max2_aix52134z52932 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z9 = CARRY((i_max3_1_a & (r3_1_a & !stage2_au_max2_anx52134z10)) # (!i_max3_1_a & ((r3_1_a) # (!stage2_au_max2_anx52134z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_1_a,
	datab => r3_1_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z10,
	cout => stage2_au_max2_anx52134z9);

-- Location: LCCOMB_X45_Y31_N16
stage2_au_max2_aix52134z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z8 = CARRY((r3_2_a & (i_max3_2_a & !stage2_au_max2_anx52134z9)) # (!r3_2_a & ((i_max3_2_a) # (!stage2_au_max2_anx52134z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_2_a,
	datab => i_max3_2_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z9,
	cout => stage2_au_max2_anx52134z8);

-- Location: LCCOMB_X45_Y31_N18
stage2_au_max2_aix52134z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z7 = CARRY((r3_3_a & ((!stage2_au_max2_anx52134z8) # (!i_max3_3_a))) # (!r3_3_a & (!i_max3_3_a & !stage2_au_max2_anx52134z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_3_a,
	datab => i_max3_3_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z8,
	cout => stage2_au_max2_anx52134z7);

-- Location: LCCOMB_X45_Y31_N20
stage2_au_max2_aix52134z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z6 = CARRY((i_max3_4_a & ((!stage2_au_max2_anx52134z7) # (!r3_4_a))) # (!i_max3_4_a & (!r3_4_a & !stage2_au_max2_anx52134z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_4_a,
	datab => r3_4_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z7,
	cout => stage2_au_max2_anx52134z6);

-- Location: LCCOMB_X45_Y31_N22
stage2_au_max2_aix52134z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z5 = CARRY((i_max3_5_a & (r3_5_a & !stage2_au_max2_anx52134z6)) # (!i_max3_5_a & ((r3_5_a) # (!stage2_au_max2_anx52134z6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_5_a,
	datab => r3_5_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z6,
	cout => stage2_au_max2_anx52134z5);

-- Location: LCCOMB_X45_Y31_N24
stage2_au_max2_aix52134z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z4 = CARRY((i_max3_6_a & ((!stage2_au_max2_anx52134z5) # (!r3_6_a))) # (!i_max3_6_a & (!r3_6_a & !stage2_au_max2_anx52134z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_6_a,
	datab => r3_6_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z5,
	cout => stage2_au_max2_anx52134z4);

-- Location: LCCOMB_X45_Y31_N26
stage2_au_max2_aix52134z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z3 = CARRY((r3_7_a & ((!stage2_au_max2_anx52134z4) # (!i_max3_7_a))) # (!r3_7_a & (!i_max3_7_a & !stage2_au_max2_anx52134z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_7_a,
	datab => i_max3_7_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z4,
	cout => stage2_au_max2_anx52134z3);

-- Location: LCCOMB_X45_Y31_N28
stage2_au_max2_aix52134z52925 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z2 = CARRY((i_max3_8_a & ((!stage2_au_max2_anx52134z3) # (!r3_8_a))) # (!i_max3_8_a & (!r3_8_a & !stage2_au_max2_anx52134z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_8_a,
	datab => r3_8_a,
	datad => VCC,
	cin => stage2_au_max2_anx52134z3,
	cout => stage2_au_max2_anx52134z2);

-- Location: LCCOMB_X45_Y31_N30
stage2_au_max2_aix52134z52924 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx52134z1 = (i_max3_9_a & ((stage2_au_max2_anx52134z2) # (!r3_9_a))) # (!i_max3_9_a & (stage2_au_max2_anx52134z2 & !r3_9_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_max3_9_a,
	datad => r3_9_a,
	cin => stage2_au_max2_anx52134z2,
	combout => stage2_au_max2_anx52134z1);

-- Location: LCCOMB_X44_Y31_N24
stage2_au_max2_aix58116z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_3_a = (stage2_au_max2_anx52134z1 & ((i_max3_3_a))) # (!stage2_au_max2_anx52134z1 & (r3_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3_3_a,
	datac => i_max3_3_a,
	datad => stage2_au_max2_anx52134z1,
	combout => stage2_au_max2_ao_max_pix_3_a);

-- Location: LCFF_X44_Y31_N25
reg_r4_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_3_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_3_a);

-- Location: LCFF_X45_Y33_N5
reg_r6_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_0_a);

-- Location: LCCOMB_X45_Y32_N6
sub_out_sub13_0_ix61908z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z14 = CARRY((!r6_1_a & !r6_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r6_1_a,
	datab => r6_0_a,
	datad => VCC,
	cout => nx61908z14);

-- Location: LCCOMB_X45_Y32_N8
sub_out_sub13_0_ix61908z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z13 = CARRY((r6_2_a) # (!nx61908z14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6_2_a,
	datad => VCC,
	cin => nx61908z14,
	cout => nx61908z13);

-- Location: LCCOMB_X45_Y32_N10
sub_out_sub13_0_ix61908z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z12 = CARRY((r6_3_a & (r4_0_a & !nx61908z13)) # (!r6_3_a & ((r4_0_a) # (!nx61908z13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6_3_a,
	datab => r4_0_a,
	datad => VCC,
	cin => nx61908z13,
	cout => nx61908z12);

-- Location: LCCOMB_X45_Y32_N12
sub_out_sub13_0_ix61908z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z11 = CARRY((r4_1_a & (r6_4_a & !nx61908z12)) # (!r4_1_a & ((r6_4_a) # (!nx61908z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_1_a,
	datab => r6_4_a,
	datad => VCC,
	cin => nx61908z12,
	cout => nx61908z11);

-- Location: LCCOMB_X45_Y32_N14
sub_out_sub13_0_ix61908z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z10 = CARRY((r6_5_a & (r4_2_a & !nx61908z11)) # (!r6_5_a & ((r4_2_a) # (!nx61908z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6_5_a,
	datab => r4_2_a,
	datad => VCC,
	cin => nx61908z11,
	cout => nx61908z10);

-- Location: LCCOMB_X45_Y32_N16
sub_out_sub13_0_ix61908z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z9 = CARRY((r6_6_a & ((!nx61908z10) # (!r4_3_a))) # (!r6_6_a & (!r4_3_a & !nx61908z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6_6_a,
	datab => r4_3_a,
	datad => VCC,
	cin => nx61908z10,
	cout => nx61908z9);

-- Location: LCCOMB_X45_Y32_N18
sub_out_sub13_0_ix61908z52930 : cycloneii_lcell_comb
-- Equation(s):
-- sub_out_7_a = ((r4_4_a $ (r6_7_a $ (nx61908z9)))) # (GND)
-- nx61908z8 = CARRY((r4_4_a & ((!nx61908z9) # (!r6_7_a))) # (!r4_4_a & (!r6_7_a & !nx61908z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_4_a,
	datab => r6_7_a,
	datad => VCC,
	cin => nx61908z9,
	combout => sub_out_7_a,
	cout => nx61908z8);

-- Location: LCCOMB_X44_Y33_N26
stage1_aix45057z52923_a1 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_aix45057z52923_a1_cout = CARRY(stage1_ao_add_op12_stage1_8_a0_combout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stage1_ao_add_op12_stage1_8_a0_combout,
	datad => VCC,
	cout => stage1_aix45057z52923_a1_cout);

-- Location: LCCOMB_X44_Y33_N28
stage1_aix45057z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_anx45057z1 = stage1_aix45057z52923_a1_cout

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => stage1_aix45057z52923_a1_cout,
	combout => stage1_anx45057z1);

-- Location: LCFF_X44_Y33_N29
reg_r2_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_anx45057z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r2_8_a);

-- Location: LCFF_X44_Y33_N19
reg_temp_add_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r2_8_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_add_8_a);

-- Location: LCCOMB_X44_Y33_N18
ix28678z52953 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_8_a = (valid_2_a & (temp_add_8_a)) # (!valid_2_a & ((r6_8_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_add_8_a,
	datad => r6_8_a,
	combout => i_add4_8_a);

-- Location: LCCOMB_X45_Y33_N20
stage2_ao_add_op12_stage2_add13_0_ix22301z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_8_a = ((i_add3_8_a $ (i_add4_8_a $ (!stage2_anx22301z5)))) # (GND)
-- stage2_anx22301z4 = CARRY((i_add3_8_a & ((i_add4_8_a) # (!stage2_anx22301z5))) # (!i_add3_8_a & (i_add4_8_a & !stage2_anx22301z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_8_a,
	datab => i_add4_8_a,
	datad => VCC,
	cin => stage2_anx22301z5,
	combout => stage2_ao_add_op12_stage2_8_a,
	cout => stage2_anx22301z4);

-- Location: LCFF_X45_Y33_N21
reg_r6_8_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_8_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_8_a);

-- Location: LCCOMB_X45_Y32_N20
sub_out_sub13_0_ix61908z52929 : cycloneii_lcell_comb
-- Equation(s):
-- sub_out_8_a = (r4_5_a & ((r6_8_a & (!nx61908z8)) # (!r6_8_a & (nx61908z8 & VCC)))) # (!r4_5_a & ((r6_8_a & ((nx61908z8) # (GND))) # (!r6_8_a & (!nx61908z8))))
-- nx61908z7 = CARRY((r4_5_a & (r6_8_a & !nx61908z8)) # (!r4_5_a & ((r6_8_a) # (!nx61908z8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_5_a,
	datab => r6_8_a,
	datad => VCC,
	cin => nx61908z8,
	combout => sub_out_8_a,
	cout => nx61908z7);

-- Location: LCFF_X46_Y33_N25
reg_temp_max_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_6_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_6_a);

-- Location: LCCOMB_X46_Y33_N24
ix28678z52929 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_6_a = (valid_2_a & (temp_max_6_a)) # (!valid_2_a & ((r4_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_max_6_a,
	datad => r4_6_a,
	combout => i_max3_6_a);

-- Location: LCCOMB_X46_Y31_N2
stage2_au_max2_aix55125z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_pix_6_a = (stage2_au_max2_anx52134z1 & ((i_max3_6_a))) # (!stage2_au_max2_anx52134z1 & (r3_6_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stage2_au_max2_anx52134z1,
	datac => r3_6_a,
	datad => i_max3_6_a,
	combout => stage2_au_max2_ao_max_pix_6_a);

-- Location: LCFF_X46_Y31_N3
reg_r4_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_pix_6_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r4_6_a);

-- Location: LCCOMB_X45_Y32_N22
sub_out_sub13_0_ix61908z52928 : cycloneii_lcell_comb
-- Equation(s):
-- sub_out_9_a = ((r6_9_a $ (r4_6_a $ (nx61908z7)))) # (GND)
-- nx61908z6 = CARRY((r6_9_a & (r4_6_a & !nx61908z7)) # (!r6_9_a & ((r4_6_a) # (!nx61908z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6_9_a,
	datab => r4_6_a,
	datad => VCC,
	cin => nx61908z7,
	combout => sub_out_9_a,
	cout => nx61908z6);

-- Location: LCCOMB_X45_Y32_N2
ix61908z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z16 = (sub_out_9_a) # ((sub_out_7_a & sub_out_8_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sub_out_7_a,
	datac => sub_out_8_a,
	datad => sub_out_9_a,
	combout => nx61908z16);

-- Location: LCCOMB_X44_Y33_N4
ix28678z52950 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_11_a = (!valid_2_a & r6_11_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => r6_11_a,
	combout => i_add4_11_a);

-- Location: LCCOMB_X45_Y33_N22
stage2_ao_add_op12_stage2_add13_0_ix22301z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_9_a = (i_add3_9_a & ((i_add4_9_a & (stage2_anx22301z4 & VCC)) # (!i_add4_9_a & (!stage2_anx22301z4)))) # (!i_add3_9_a & ((i_add4_9_a & (!stage2_anx22301z4)) # (!i_add4_9_a & ((stage2_anx22301z4) # (GND)))))
-- stage2_anx22301z3 = CARRY((i_add3_9_a & (!i_add4_9_a & !stage2_anx22301z4)) # (!i_add3_9_a & ((!stage2_anx22301z4) # (!i_add4_9_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_9_a,
	datab => i_add4_9_a,
	datad => VCC,
	cin => stage2_anx22301z4,
	combout => stage2_ao_add_op12_stage2_9_a,
	cout => stage2_anx22301z3);

-- Location: LCFF_X45_Y33_N23
reg_r6_9_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_9_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_9_a);

-- Location: LCCOMB_X44_Y33_N30
ix28678z52952 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_9_a = (!valid_2_a & r6_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_2_a,
	datad => r6_9_a,
	combout => i_add4_9_a);

-- Location: LCCOMB_X45_Y33_N24
stage2_ao_add_op12_stage2_add13_0_ix22301z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_10_a = ((i_add3_10_a $ (i_add4_10_a $ (!stage2_anx22301z3)))) # (GND)
-- stage2_anx22301z2 = CARRY((i_add3_10_a & ((i_add4_10_a) # (!stage2_anx22301z3))) # (!i_add3_10_a & (i_add4_10_a & !stage2_anx22301z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_10_a,
	datab => i_add4_10_a,
	datad => VCC,
	cin => stage2_anx22301z3,
	combout => stage2_ao_add_op12_stage2_10_a,
	cout => stage2_anx22301z2);

-- Location: LCFF_X45_Y33_N25
reg_r6_10_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_10_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_10_a);

-- Location: LCCOMB_X44_Y33_N24
ix28678z52951 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_10_a = (!valid_2_a & r6_10_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_2_a,
	datad => r6_10_a,
	combout => i_add4_10_a);

-- Location: LCCOMB_X45_Y33_N26
stage2_ao_add_op12_stage2_add13_0_ix22301z52925 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_11_a = (i_add3_11_a & ((i_add4_11_a & (stage2_anx22301z2 & VCC)) # (!i_add4_11_a & (!stage2_anx22301z2)))) # (!i_add3_11_a & ((i_add4_11_a & (!stage2_anx22301z2)) # (!i_add4_11_a & ((stage2_anx22301z2) # (GND)))))
-- stage2_anx22301z1 = CARRY((i_add3_11_a & (!i_add4_11_a & !stage2_anx22301z2)) # (!i_add3_11_a & ((!stage2_anx22301z2) # (!i_add4_11_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_add3_11_a,
	datab => i_add4_11_a,
	datad => VCC,
	cin => stage2_anx22301z2,
	combout => stage2_ao_add_op12_stage2_11_a,
	cout => stage2_anx22301z1);

-- Location: LCFF_X45_Y33_N27
reg_r6_11_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_11_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_11_a);

-- Location: LCCOMB_X45_Y32_N24
sub_out_sub13_0_ix61908z52927 : cycloneii_lcell_comb
-- Equation(s):
-- sub_out_10_a = (r6_10_a & ((r4_7_a & (!nx61908z6)) # (!r4_7_a & ((nx61908z6) # (GND))))) # (!r6_10_a & ((r4_7_a & (nx61908z6 & VCC)) # (!r4_7_a & (!nx61908z6))))
-- nx61908z5 = CARRY((r6_10_a & ((!nx61908z6) # (!r4_7_a))) # (!r6_10_a & (!r4_7_a & !nx61908z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r6_10_a,
	datab => r4_7_a,
	datad => VCC,
	cin => nx61908z6,
	combout => sub_out_10_a,
	cout => nx61908z5);

-- Location: LCCOMB_X45_Y32_N26
sub_out_sub13_0_ix61908z52926 : cycloneii_lcell_comb
-- Equation(s):
-- sub_out_11_a = ((r4_8_a $ (r6_11_a $ (nx61908z5)))) # (GND)
-- nx61908z4 = CARRY((r4_8_a & ((!nx61908z5) # (!r6_11_a))) # (!r4_8_a & (!r6_11_a & !nx61908z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r4_8_a,
	datab => r6_11_a,
	datad => VCC,
	cin => nx61908z5,
	combout => sub_out_11_a,
	cout => nx61908z4);

-- Location: LCCOMB_X44_Y33_N22
ix28678z52949 : cycloneii_lcell_comb
-- Equation(s):
-- i_add4_12_a = (!valid_2_a & r6_12_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_2_a,
	datad => r6_12_a,
	combout => i_add4_12_a);

-- Location: LCCOMB_X44_Y33_N14
ix28678z52936 : cycloneii_lcell_comb
-- Equation(s):
-- i_add3_12_a = (r6_11_a & valid_5_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r6_11_a,
	datad => valid_5_a,
	combout => i_add3_12_a);

-- Location: LCCOMB_X45_Y33_N28
stage2_ao_add_op12_stage2_add13_0_ix22301z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_ao_add_op12_stage2_12_a = i_add4_12_a $ (stage2_anx22301z1 $ (!i_add3_12_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_add4_12_a,
	datad => i_add3_12_a,
	cin => stage2_anx22301z1,
	combout => stage2_ao_add_op12_stage2_12_a);

-- Location: LCFF_X45_Y33_N29
reg_r6_12_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_ao_add_op12_stage2_12_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r6_12_a);

-- Location: LCCOMB_X45_Y32_N0
ix61908z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z15 = (sub_out_11_a) # ((sub_out_10_a) # (sub_out_12_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sub_out_11_a,
	datac => sub_out_10_a,
	datad => sub_out_12_a,
	combout => nx61908z15);

-- Location: LCCOMB_X46_Y31_N26
ix61908z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61908z1 = (nx61908z17) # ((nx61908z2 & ((nx61908z16) # (nx61908z15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx61908z2,
	datab => nx61908z17,
	datac => nx61908z16,
	datad => nx61908z15,
	combout => nx61908z1);

-- Location: LCFF_X46_Y31_N27
reg_r9 : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx61908z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_r9_aregout);

-- Location: LCCOMB_X46_Y32_N0
ix28679z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z1 = (valid_0_a) # ((!valid_1_a & !valid_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datac => valid_2_a,
	combout => nx28679z1);

-- Location: LCCOMB_X46_Y32_N24
ix28679z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z2 = (!valid_1_a & !valid_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => valid_1_a,
	datad => valid_0_a,
	combout => nx28679z2);

-- Location: LCCOMB_X48_Y33_N30
ix28679z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z4 = (!valid_1_a & (!valid_2_a & (e_7_a & !valid_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_2_a,
	datac => e_7_a,
	datad => valid_0_a,
	combout => nx28679z4);

-- Location: LCFF_X47_Y33_N13
reg_a_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => b_7_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_7_a);

-- Location: LCCOMB_X47_Y33_N12
ix28679z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z5 = (valid_0_a & (g_7_a)) # (!valid_0_a & (((a_7_a & valid_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => g_7_a,
	datab => valid_0_a,
	datac => a_7_a,
	datad => valid_1_a,
	combout => nx28679z5);

-- Location: LCCOMB_X48_Y33_N16
ix28679z52925 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_7_a = (nx28679z4) # ((nx28679z5) # ((c_7_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_7_a,
	datab => nx28679z4,
	datac => nx28679z3,
	datad => nx28679z5,
	combout => i_max1_7_a);

-- Location: LCCOMB_X49_Y32_N18
ix28679z52955 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z23 = (valid_0_a & (((b_6_a)))) # (!valid_0_a & (valid_1_a & ((d_6_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => b_6_a,
	datad => d_6_a,
	combout => nx28679z23);

-- Location: LCCOMB_X49_Y32_N30
ix28679z52953 : cycloneii_lcell_comb
-- Equation(s):
-- i_max2_6_a = (nx28679z22) # ((nx28679z23) # ((nx28679z3 & f_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx28679z22,
	datab => nx28679z3,
	datac => f_6_a,
	datad => nx28679z23,
	combout => i_max2_6_a);

-- Location: LCCOMB_X48_Y32_N10
ix28679z52945 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z16 = (!valid_1_a & (!valid_0_a & (e_1_a & !valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_1_a,
	datab => valid_0_a,
	datac => e_1_a,
	datad => valid_2_a,
	combout => nx28679z16);

-- Location: LCFF_X49_Y32_N21
reg_g_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => f_1_a,
	sclr => i_reset_acombout,
	sload => VCC,
	ena => nx20492z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => g_1_a);

-- Location: LCCOMB_X48_Y32_N16
ix28679z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx28679z17 = (valid_0_a & (((g_1_a)))) # (!valid_0_a & (a_1_a & (valid_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_1_a,
	datab => valid_0_a,
	datac => valid_1_a,
	datad => g_1_a,
	combout => nx28679z17);

-- Location: LCCOMB_X47_Y32_N6
ix28679z52944 : cycloneii_lcell_comb
-- Equation(s):
-- i_max1_1_a = (nx28679z16) # ((nx28679z17) # ((c_1_a & nx28679z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c_1_a,
	datab => nx28679z16,
	datac => nx28679z17,
	datad => nx28679z3,
	combout => i_max1_1_a);

-- Location: LCCOMB_X46_Y32_N4
stage1_au_max1_aix19309z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z7 = CARRY((i_max2_0_a & !i_max1_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_max2_0_a,
	datab => i_max1_0_a,
	datad => VCC,
	cout => stage1_au_max1_anx19309z7);

-- Location: LCCOMB_X46_Y32_N6
stage1_au_max1_aix19309z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z6 = CARRY((i_max2_1_a & (i_max1_1_a & !stage1_au_max1_anx19309z7)) # (!i_max2_1_a & ((i_max1_1_a) # (!stage1_au_max1_anx19309z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max2_1_a,
	datab => i_max1_1_a,
	datad => VCC,
	cin => stage1_au_max1_anx19309z7,
	cout => stage1_au_max1_anx19309z6);

-- Location: LCCOMB_X46_Y32_N8
stage1_au_max1_aix19309z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z5 = CARRY((i_max2_2_a & ((!stage1_au_max1_anx19309z6) # (!i_max1_2_a))) # (!i_max2_2_a & (!i_max1_2_a & !stage1_au_max1_anx19309z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max2_2_a,
	datab => i_max1_2_a,
	datad => VCC,
	cin => stage1_au_max1_anx19309z6,
	cout => stage1_au_max1_anx19309z5);

-- Location: LCCOMB_X46_Y32_N10
stage1_au_max1_aix19309z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z4 = CARRY((i_max1_3_a & ((!stage1_au_max1_anx19309z5) # (!i_max2_3_a))) # (!i_max1_3_a & (!i_max2_3_a & !stage1_au_max1_anx19309z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_3_a,
	datab => i_max2_3_a,
	datad => VCC,
	cin => stage1_au_max1_anx19309z5,
	cout => stage1_au_max1_anx19309z4);

-- Location: LCCOMB_X46_Y32_N12
stage1_au_max1_aix19309z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z3 = CARRY((i_max2_4_a & ((!stage1_au_max1_anx19309z4) # (!i_max1_4_a))) # (!i_max2_4_a & (!i_max1_4_a & !stage1_au_max1_anx19309z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max2_4_a,
	datab => i_max1_4_a,
	datad => VCC,
	cin => stage1_au_max1_anx19309z4,
	cout => stage1_au_max1_anx19309z3);

-- Location: LCCOMB_X46_Y32_N14
stage1_au_max1_aix19309z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z2 = CARRY((i_max1_5_a & ((!stage1_au_max1_anx19309z3) # (!i_max2_5_a))) # (!i_max1_5_a & (!i_max2_5_a & !stage1_au_max1_anx19309z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_5_a,
	datab => i_max2_5_a,
	datad => VCC,
	cin => stage1_au_max1_anx19309z3,
	cout => stage1_au_max1_anx19309z2);

-- Location: LCCOMB_X46_Y32_N16
stage1_au_max1_aix19309z52925 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_anx19309z1 = CARRY((i_max1_6_a & (i_max2_6_a & !stage1_au_max1_anx19309z2)) # (!i_max1_6_a & ((i_max2_6_a) # (!stage1_au_max1_anx19309z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max1_6_a,
	datab => i_max2_6_a,
	datad => VCC,
	cin => stage1_au_max1_anx19309z2,
	cout => stage1_au_max1_anx19309z1);

-- Location: LCCOMB_X46_Y32_N18
stage1_au_max1_aix19309z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_dir_2_a = (i_max2_7_a & ((stage1_au_max1_anx19309z1) # (!i_max1_7_a))) # (!i_max2_7_a & (stage1_au_max1_anx19309z1 & !i_max1_7_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_max2_7_a,
	datad => i_max1_7_a,
	cin => stage1_au_max1_anx19309z1,
	combout => stage1_au_max1_ao_max_dir_2_a);

-- Location: LCCOMB_X46_Y32_N2
stage1_au_max1_aix17315z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage1_au_max1_ao_max_dir_0_a = (stage1_au_max1_ao_max_dir_2_a & ((nx28679z2))) # (!stage1_au_max1_ao_max_dir_2_a & (nx28679z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx28679z1,
	datac => nx28679z2,
	datad => stage1_au_max1_ao_max_dir_2_a,
	combout => stage1_au_max1_ao_max_dir_0_a);

-- Location: LCFF_X46_Y32_N3
reg_r1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_au_max1_ao_max_dir_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_0_a);

-- Location: LCFF_X46_Y32_N29
reg_temp_dir_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r1_0_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_dir_0_a);

-- Location: LCCOMB_X46_Y32_N28
ix28678z52925 : cycloneii_lcell_comb
-- Equation(s):
-- i_dir3_0_a = (valid_2_a & (temp_dir_0_a)) # (!valid_2_a & ((r5_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_dir_0_a,
	datad => r5_0_a,
	combout => i_dir3_0_a);

-- Location: LCFF_X45_Y31_N11
reg_temp_max_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r3_1_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_max_1_a);

-- Location: LCCOMB_X45_Y31_N10
ix28678z52934 : cycloneii_lcell_comb
-- Equation(s):
-- i_max3_1_a = (valid_2_a & ((temp_max_1_a))) # (!valid_2_a & (r4_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r4_1_a,
	datac => temp_max_1_a,
	datad => valid_2_a,
	combout => i_max3_1_a);

-- Location: LCCOMB_X44_Y31_N4
stage2_au_max2_aix19309z52934 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z10 = CARRY((!i_max3_0_a & r3_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_0_a,
	datab => r3_0_a,
	datad => VCC,
	cout => stage2_au_max2_anx19309z10);

-- Location: LCCOMB_X44_Y31_N6
stage2_au_max2_aix19309z52933 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z9 = CARRY((r3_1_a & (i_max3_1_a & !stage2_au_max2_anx19309z10)) # (!r3_1_a & ((i_max3_1_a) # (!stage2_au_max2_anx19309z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_1_a,
	datab => i_max3_1_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z10,
	cout => stage2_au_max2_anx19309z9);

-- Location: LCCOMB_X44_Y31_N8
stage2_au_max2_aix19309z52932 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z8 = CARRY((r3_2_a & ((!stage2_au_max2_anx19309z9) # (!i_max3_2_a))) # (!r3_2_a & (!i_max3_2_a & !stage2_au_max2_anx19309z9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_2_a,
	datab => i_max3_2_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z9,
	cout => stage2_au_max2_anx19309z8);

-- Location: LCCOMB_X44_Y31_N10
stage2_au_max2_aix19309z52931 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z7 = CARRY((i_max3_3_a & ((!stage2_au_max2_anx19309z8) # (!r3_3_a))) # (!i_max3_3_a & (!r3_3_a & !stage2_au_max2_anx19309z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_3_a,
	datab => r3_3_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z8,
	cout => stage2_au_max2_anx19309z7);

-- Location: LCCOMB_X44_Y31_N12
stage2_au_max2_aix19309z52930 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z6 = CARRY((i_max3_4_a & (r3_4_a & !stage2_au_max2_anx19309z7)) # (!i_max3_4_a & ((r3_4_a) # (!stage2_au_max2_anx19309z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_4_a,
	datab => r3_4_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z7,
	cout => stage2_au_max2_anx19309z6);

-- Location: LCCOMB_X44_Y31_N14
stage2_au_max2_aix19309z52929 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z5 = CARRY((i_max3_5_a & ((!stage2_au_max2_anx19309z6) # (!r3_5_a))) # (!i_max3_5_a & (!r3_5_a & !stage2_au_max2_anx19309z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_5_a,
	datab => r3_5_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z6,
	cout => stage2_au_max2_anx19309z5);

-- Location: LCCOMB_X44_Y31_N16
stage2_au_max2_aix19309z52928 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z4 = CARRY((i_max3_6_a & (r3_6_a & !stage2_au_max2_anx19309z5)) # (!i_max3_6_a & ((r3_6_a) # (!stage2_au_max2_anx19309z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_6_a,
	datab => r3_6_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z5,
	cout => stage2_au_max2_anx19309z4);

-- Location: LCCOMB_X44_Y31_N18
stage2_au_max2_aix19309z52927 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z3 = CARRY((r3_7_a & (i_max3_7_a & !stage2_au_max2_anx19309z4)) # (!r3_7_a & ((i_max3_7_a) # (!stage2_au_max2_anx19309z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3_7_a,
	datab => i_max3_7_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z4,
	cout => stage2_au_max2_anx19309z3);

-- Location: LCCOMB_X44_Y31_N20
stage2_au_max2_aix19309z52926 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z2 = CARRY((i_max3_8_a & (r3_8_a & !stage2_au_max2_anx19309z3)) # (!i_max3_8_a & ((r3_8_a) # (!stage2_au_max2_anx19309z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_max3_8_a,
	datab => r3_8_a,
	datad => VCC,
	cin => stage2_au_max2_anx19309z3,
	cout => stage2_au_max2_anx19309z2);

-- Location: LCCOMB_X44_Y31_N22
stage2_au_max2_aix19309z52924 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_anx19309z1 = (i_max3_9_a & (stage2_au_max2_anx19309z2 & r3_9_a)) # (!i_max3_9_a & ((stage2_au_max2_anx19309z2) # (r3_9_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_max3_9_a,
	datad => r3_9_a,
	cin => stage2_au_max2_anx19309z2,
	combout => stage2_au_max2_anx19309z1);

-- Location: LCCOMB_X46_Y31_N0
stage2_au_max2_aix17315z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_dir_0_a = (stage2_au_max2_anx19309z1 & (r1_0_a)) # (!stage2_au_max2_anx19309z1 & ((i_dir3_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r1_0_a,
	datac => i_dir3_0_a,
	datad => stage2_au_max2_anx19309z1,
	combout => stage2_au_max2_ao_max_dir_0_a);

-- Location: LCFF_X46_Y31_N1
reg_r5_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_dir_0_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_0_a);

-- Location: LCCOMB_X46_Y32_N22
ix24856z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx24856z1 = (valid_6_a & ((r5_0_a))) # (!valid_6_a & (r8_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_6_a,
	datac => r8_0_a,
	datad => r5_0_a,
	combout => nx24856z1);

-- Location: LCFF_X46_Y32_N23
reg_r8_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx24856z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_0_a);

-- Location: LCCOMB_X46_Y32_N30
ix63886z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_0_a = (reg_r9_aregout & r8_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_r9_aregout,
	datad => r8_0_a,
	combout => o_dir_0_a);

-- Location: LCCOMB_X48_Y33_N2
ix35074z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35074z1 = (!valid_0_a & ((valid_1_a) # (!valid_2_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_0_a,
	datab => valid_1_a,
	datad => valid_2_a,
	combout => nx35074z1);

-- Location: LCFF_X48_Y33_N3
reg_r1_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35074z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_1_a);

-- Location: LCFF_X46_Y33_N3
reg_temp_dir_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => r1_1_a,
	sload => VCC,
	ena => valid_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_dir_1_a);

-- Location: LCCOMB_X46_Y33_N2
ix28678z52924 : cycloneii_lcell_comb
-- Equation(s):
-- i_dir3_1_a = (valid_2_a & (temp_dir_1_a)) # (!valid_2_a & ((r5_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => valid_2_a,
	datac => temp_dir_1_a,
	datad => r5_1_a,
	combout => i_dir3_1_a);

-- Location: LCCOMB_X46_Y31_N10
stage2_au_max2_aix18312z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_dir_1_a = (stage2_au_max2_anx19309z1 & ((r1_1_a))) # (!stage2_au_max2_anx19309z1 & (i_dir3_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => stage2_au_max2_anx19309z1,
	datac => i_dir3_1_a,
	datad => r1_1_a,
	combout => stage2_au_max2_ao_max_dir_1_a);

-- Location: LCFF_X46_Y31_N11
reg_r5_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_dir_1_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_1_a);

-- Location: LCCOMB_X46_Y31_N20
ix23859z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx23859z1 = (valid_6_a & ((r5_1_a))) # (!valid_6_a & (r8_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_6_a,
	datac => r8_1_a,
	datad => r5_1_a,
	combout => nx23859z1);

-- Location: LCFF_X46_Y31_N21
reg_r8_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx23859z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_1_a);

-- Location: LCCOMB_X46_Y31_N14
ix62889z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_1_a = (r8_1_a & reg_r9_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r8_1_a,
	datad => reg_r9_aregout,
	combout => o_dir_1_a);

-- Location: LCFF_X46_Y32_N19
reg_r1_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage1_au_max1_ao_max_dir_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r1_2_a);

-- Location: LCCOMB_X46_Y31_N12
stage2_au_max2_aix19309z52923 : cycloneii_lcell_comb
-- Equation(s):
-- stage2_au_max2_ao_max_dir_2_a = (stage2_au_max2_anx19309z1 & ((r1_2_a))) # (!stage2_au_max2_anx19309z1 & (i_dir3_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_dir3_2_a,
	datab => r1_2_a,
	datad => stage2_au_max2_anx19309z1,
	combout => stage2_au_max2_ao_max_dir_2_a);

-- Location: LCFF_X46_Y31_N13
reg_r5_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => stage2_au_max2_ao_max_dir_2_a,
	ena => ALT_INV_valid_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r5_2_a);

-- Location: LCCOMB_X46_Y31_N8
ix22862z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx22862z1 = (valid_6_a & ((r5_2_a))) # (!valid_6_a & (r8_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => valid_6_a,
	datac => r8_2_a,
	datad => r5_2_a,
	combout => nx22862z1);

-- Location: LCFF_X46_Y31_N9
reg_r8_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx22862z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r8_2_a);

-- Location: LCCOMB_X46_Y31_N18
ix61892z52923 : cycloneii_lcell_comb
-- Equation(s):
-- o_dir_2_a = (r8_2_a & reg_r9_aregout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r8_2_a,
	datad => reg_r9_aregout,
	combout => o_dir_2_a);

-- Location: LCCOMB_X50_Y33_N4
column_valid1_6_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_6_afeeder_combout = column_6_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => column_6_a,
	combout => column_valid1_6_afeeder_combout);

-- Location: LCFF_X50_Y33_N5
reg_column_valid1_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_6_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_6_a);

-- Location: LCFF_X50_Y33_N11
reg_column_valid2_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => column_valid1_6_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_6_a);

-- Location: LCCOMB_X50_Y33_N10
ix25376z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z3 = ((!reg_output_valid_reg_aregout) # (!column_valid2_6_a)) # (!column_valid2_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => column_valid2_7_a,
	datac => column_valid2_6_a,
	datad => reg_output_valid_reg_aregout,
	combout => nx25376z3);

-- Location: LCCOMB_X51_Y33_N26
column_valid1_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_0_afeeder_combout = column_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => column_0_a,
	combout => column_valid1_0_afeeder_combout);

-- Location: LCFF_X51_Y33_N27
reg_column_valid1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_0_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_0_a);

-- Location: LCFF_X50_Y33_N19
reg_column_valid2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => column_valid1_0_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_0_a);

-- Location: LCCOMB_X50_Y33_N18
ix25376z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z5 = ((!column_valid2_2_a) # (!column_valid2_0_a)) # (!column_valid2_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => column_valid2_1_a,
	datac => column_valid2_0_a,
	datad => column_valid2_2_a,
	combout => nx25376z5);

-- Location: LCCOMB_X49_Y33_N20
column_valid1_4_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_4_afeeder_combout = column_4_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => column_4_a,
	combout => column_valid1_4_afeeder_combout);

-- Location: LCFF_X49_Y33_N21
reg_column_valid1_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_4_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_4_a);

-- Location: LCFF_X50_Y33_N17
reg_column_valid2_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => column_valid1_4_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_4_a);

-- Location: LCCOMB_X50_Y33_N8
column_valid1_5_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- column_valid1_5_afeeder_combout = column_5_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => column_5_a,
	combout => column_valid1_5_afeeder_combout);

-- Location: LCFF_X50_Y33_N9
reg_column_valid1_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => column_valid1_5_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid1_5_a);

-- Location: LCFF_X50_Y33_N13
reg_column_valid2_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => column_valid1_5_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => column_valid2_5_a);

-- Location: LCCOMB_X50_Y33_N30
ix26373z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z5 = ((!column_valid2_5_a) # (!column_valid2_3_a)) # (!column_valid2_4_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => column_valid2_4_a,
	datac => column_valid2_3_a,
	datad => column_valid2_5_a,
	combout => nx26373z5);

-- Location: LCCOMB_X53_Y33_N8
ix26373z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z3 = (!nx26373z4 & (!nx25376z3 & (!nx25376z5 & !nx26373z5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx26373z4,
	datab => nx25376z3,
	datac => nx25376z5,
	datad => nx26373z5,
	combout => nx26373z3);

-- Location: LCCOMB_X50_Y33_N22
ix25376z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z7 = ((!row_valid2_4_a) # (!row_valid2_2_a)) # (!row_valid2_3_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => row_valid2_3_a,
	datac => row_valid2_2_a,
	datad => row_valid2_4_a,
	combout => nx25376z7);

-- Location: LCCOMB_X51_Y33_N16
row_valid1_0_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- row_valid1_0_afeeder_combout = o_row_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => o_row_0_a,
	combout => row_valid1_0_afeeder_combout);

-- Location: LCFF_X51_Y33_N17
reg_row_valid1_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => row_valid1_0_afeeder_combout,
	ena => valid_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid1_0_a);

-- Location: LCFF_X50_Y33_N25
reg_row_valid2_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => row_valid1_0_a,
	sload => VCC,
	ena => valid_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => row_valid2_0_a);

-- Location: LCCOMB_X50_Y33_N24
ix25376z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z6 = (!nx25376z7 & (row_valid2_0_a & row_valid2_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx25376z7,
	datac => row_valid2_0_a,
	datad => row_valid2_1_a,
	combout => nx25376z6);

-- Location: LCCOMB_X53_Y33_N30
ix26373z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z2 = (o_mode_1_a & !nx25376z9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_mode_1_a,
	datad => nx25376z9,
	combout => nx26373z2);

-- Location: LCCOMB_X53_Y33_N0
ix26373z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26373z1 = (!i_valid_acombout & (((nx26373z3 & nx25376z6)) # (!nx26373z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx26373z3,
	datac => nx25376z6,
	datad => nx26373z2,
	combout => nx26373z1);

-- Location: LCFF_X53_Y33_N1
reg_mode_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx26373z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx25376z9);

-- Location: LCCOMB_X50_Y33_N0
ix25376z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z4 = (row_valid2_7_a & (!nx25376z5 & (row_valid2_5_a & row_valid2_6_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_valid2_7_a,
	datab => nx25376z5,
	datac => row_valid2_5_a,
	datad => row_valid2_6_a,
	combout => nx25376z4);

-- Location: LCCOMB_X53_Y33_N2
ix25376z52930 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z8 = (o_mode_1_a) # ((i_valid_acombout) # (!nx25376z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => o_mode_1_a,
	datab => nx25376z9,
	datad => i_valid_acombout,
	combout => nx25376z8);

-- Location: LCCOMB_X53_Y33_N10
ix25376z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25376z1 = (nx25376z8) # ((nx25376z2 & (nx25376z6 & nx25376z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx25376z2,
	datab => nx25376z6,
	datac => nx25376z4,
	datad => nx25376z8,
	combout => nx25376z1);

-- Location: LCFF_X53_Y33_N11
reg_mode_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx25376z1,
	sclr => i_reset_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_mode_1_a);

-- Location: LCCOMB_X53_Y33_N26
ix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- inc_d_7_a = nx58250z1 $ (o_row_7_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => o_row_7_a,
	cin => nx58250z1,
	combout => inc_d_7_a);

-- Location: LCFF_X53_Y33_N27
reg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => inc_d_7_a,
	sclr => i_reset_acombout,
	ena => nx34903z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => o_row_7_a);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_valid_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => reg_output_valid_reg_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_valid);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_edge_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => reg_r9_aregout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_edge);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_dir_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(0));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_dir_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(1));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_dir_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_dir_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_dir(2));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_nx25376z9,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_mode_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_mode_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_0_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(0));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_1_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(1));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_2_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(2));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_3_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(3));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_4_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(4));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_5_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(5));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_6_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(6));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
o_row_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => o_row_7_a,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_row(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(2));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_key_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_key(3));

-- Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(0));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(1));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(2));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(3));

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(5));

-- Location: PIN_K9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(6));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a8_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(8));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a9_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(9));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a10_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(10));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a11_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(11));

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a12_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(12));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a13_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(13));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a14_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(14));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a15_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(15));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a16_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(16));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
debug_switch_a17_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug_switch(17));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(0));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(2));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(3));

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(4));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(5));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a6_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(6));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a7_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(7));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a8_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a9_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(9));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a10_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(10));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a11_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(11));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a12_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(12));

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a13_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(13));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a14_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(14));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a15_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(15));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a16_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(16));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_red_a17_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_red(17));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(0));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(1));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(2));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(3));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a4_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(4));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_led_grn_a5_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_led_grn(5));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(0));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(1));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(2));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_0_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_0(3));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(0));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(2));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_1_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_1(3));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(0));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_2_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_2(3));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(0));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(1));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(2));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_3_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_3(3));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(0));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(1));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(2));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_4_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_4(3));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a0_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(0));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a1_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(1));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a2_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(2));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
debug_num_5_a3_a_aI : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_debug_num_5(3));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity kirsch is
  generic (
      data_width  : NATURAL := 8
    ; addr_width  : NATURAL := 8
  );
  port (
      i_clock  : in STD_LOGIC
    ; i_reset  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_pixel  : in std_logic_vector (7 downto 0)
    ; o_valid  : out STD_LOGIC
    ; o_edge  : out STD_LOGIC
    ; o_dir  : out std_logic_vector (2 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_row  : out std_logic_vector (7 downto 0)
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (17 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_num_0  : out std_logic_vector (3 downto 0)
    ; debug_num_1  : out std_logic_vector (3 downto 0)
    ; debug_num_2  : out std_logic_vector (3 downto 0)
    ; debug_num_3  : out std_logic_vector (3 downto 0)
    ; debug_num_4  : out std_logic_vector (3 downto 0)
    ; debug_num_5  : out std_logic_vector (3 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.kirsch_chip
    port map (
        i_clock => i_clock
      , i_reset => i_reset
      , i_valid => i_valid
      , i_pixel(7) => i_pixel(7)
      , i_pixel(6) => i_pixel(6)
      , i_pixel(5) => i_pixel(5)
      , i_pixel(4) => i_pixel(4)
      , i_pixel(3) => i_pixel(3)
      , i_pixel(2) => i_pixel(2)
      , i_pixel(1) => i_pixel(1)
      , i_pixel(0) => i_pixel(0)
      , o_valid => o_valid
      , o_edge => o_edge
      , o_dir(2) => o_dir(2)
      , o_dir(1) => o_dir(1)
      , o_dir(0) => o_dir(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_row(7) => o_row(7)
      , o_row(6) => o_row(6)
      , o_row(5) => o_row(5)
      , o_row(4) => o_row(4)
      , o_row(3) => o_row(3)
      , o_row(2) => o_row(2)
      , o_row(1) => o_row(1)
      , o_row(0) => o_row(0)
      , debug_key(3) => debug_key(3)
      , debug_key(2) => debug_key(2)
      , debug_key(1) => debug_key(1)
      , debug_switch(17) => debug_switch(17)
      , debug_switch(16) => debug_switch(16)
      , debug_switch(15) => debug_switch(15)
      , debug_switch(14) => debug_switch(14)
      , debug_switch(13) => debug_switch(13)
      , debug_switch(12) => debug_switch(12)
      , debug_switch(11) => debug_switch(11)
      , debug_switch(10) => debug_switch(10)
      , debug_switch(9) => debug_switch(9)
      , debug_switch(8) => debug_switch(8)
      , debug_switch(7) => debug_switch(7)
      , debug_switch(6) => debug_switch(6)
      , debug_switch(5) => debug_switch(5)
      , debug_switch(4) => debug_switch(4)
      , debug_switch(3) => debug_switch(3)
      , debug_switch(2) => debug_switch(2)
      , debug_switch(1) => debug_switch(1)
      , debug_switch(0) => debug_switch(0)
      , debug_led_red(17) => debug_led_red(17)
      , debug_led_red(16) => debug_led_red(16)
      , debug_led_red(15) => debug_led_red(15)
      , debug_led_red(14) => debug_led_red(14)
      , debug_led_red(13) => debug_led_red(13)
      , debug_led_red(12) => debug_led_red(12)
      , debug_led_red(11) => debug_led_red(11)
      , debug_led_red(10) => debug_led_red(10)
      , debug_led_red(9) => debug_led_red(9)
      , debug_led_red(8) => debug_led_red(8)
      , debug_led_red(7) => debug_led_red(7)
      , debug_led_red(6) => debug_led_red(6)
      , debug_led_red(5) => debug_led_red(5)
      , debug_led_red(4) => debug_led_red(4)
      , debug_led_red(3) => debug_led_red(3)
      , debug_led_red(2) => debug_led_red(2)
      , debug_led_red(1) => debug_led_red(1)
      , debug_led_red(0) => debug_led_red(0)
      , debug_led_grn(5) => debug_led_grn(5)
      , debug_led_grn(4) => debug_led_grn(4)
      , debug_led_grn(3) => debug_led_grn(3)
      , debug_led_grn(2) => debug_led_grn(2)
      , debug_led_grn(1) => debug_led_grn(1)
      , debug_led_grn(0) => debug_led_grn(0)
      , debug_num_0(3) => debug_num_0(3)
      , debug_num_0(2) => debug_num_0(2)
      , debug_num_0(1) => debug_num_0(1)
      , debug_num_0(0) => debug_num_0(0)
      , debug_num_1(3) => debug_num_1(3)
      , debug_num_1(2) => debug_num_1(2)
      , debug_num_1(1) => debug_num_1(1)
      , debug_num_1(0) => debug_num_1(0)
      , debug_num_2(3) => debug_num_2(3)
      , debug_num_2(2) => debug_num_2(2)
      , debug_num_2(1) => debug_num_2(1)
      , debug_num_2(0) => debug_num_2(0)
      , debug_num_3(3) => debug_num_3(3)
      , debug_num_3(2) => debug_num_3(2)
      , debug_num_3(1) => debug_num_3(1)
      , debug_num_3(0) => debug_num_3(0)
      , debug_num_4(3) => debug_num_4(3)
      , debug_num_4(2) => debug_num_4(2)
      , debug_num_4(1) => debug_num_4(1)
      , debug_num_4(0) => debug_num_4(0)
      , debug_num_5(3) => debug_num_5(3)
      , debug_num_5(2) => debug_num_5(2)
      , debug_num_5(1) => debug_num_5(1)
      , debug_num_5(0) => debug_num_5(0)
    );
end architecture;

