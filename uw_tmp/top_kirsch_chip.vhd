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

-- DATE "03/23/2016 21:06:02"

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

ENTITY 	top_kirsch_chip IS
    PORT (
	nrst : IN std_logic;
	clk : IN std_logic;
	rxflex : IN std_logic;
	txflex : OUT std_logic;
	o_sevenseg : OUT std_logic_vector(15 DOWNTO 0);
	o_mode : OUT std_logic_vector(1 DOWNTO 0);
	o_nrst : OUT std_logic;
	debug_key : IN std_logic_vector(3 DOWNTO 1);
	debug_switch : IN std_logic_vector(17 DOWNTO 0);
	debug_led_red : OUT std_logic_vector(16 DOWNTO 0);
	debug_led_grn : OUT std_logic_vector(5 DOWNTO 0);
	debug_sevenseg_0 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_1 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_2 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_3 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_4 : OUT std_logic_vector(7 DOWNTO 0);
	debug_sevenseg_5 : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_kirsch_chip;

-- Design Ports Information
-- txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[7]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[15]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_mode[1]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_nrst	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_switch[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug_led_red[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_red[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_led_grn[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[0]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[1]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[4]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[5]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[6]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_0[7]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[1]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[2]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[4]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[5]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[6]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_1[7]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[1]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[2]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[4]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[6]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_2[7]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[0]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[1]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[2]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[4]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[5]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[6]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_3[7]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[0]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[1]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[2]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[4]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[5]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[6]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_4[7]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[1]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[2]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[4]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[5]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[6]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug_sevenseg_5[7]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_kirsch_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rxflex : std_logic;
SIGNAL ww_txflex : std_logic;
SIGNAL ww_o_sevenseg : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_nrst : std_logic;
SIGNAL ww_debug_key : std_logic_vector(3 DOWNTO 1);
SIGNAL ww_debug_switch : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_debug_led_red : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_debug_led_grn : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_debug_sevenseg_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_debug_sevenseg_5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_uw_uart|ld_sdout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z4\ : std_logic;
SIGNAL \u_kirsch|nx25376z7\ : std_logic;
SIGNAL \u_kirsch|column_valid2_7_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_3_\ : std_logic;
SIGNAL \u_kirsch|nx26373z5\ : std_logic;
SIGNAL \u_kirsch|nx25376z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_11_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_10_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_9_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart|state\ : std_logic;
SIGNAL \u_uw_uart|dsend\ : std_logic;
SIGNAL \u_uw_uart|nx18433z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z3\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx35603z1\ : std_logic;
SIGNAL \u_kirsch|column_7_\ : std_logic;
SIGNAL \u_kirsch|nx62927z3\ : std_logic;
SIGNAL \u_kirsch|nx23902z3\ : std_logic;
SIGNAL \u_kirsch|nx23902z2\ : std_logic;
SIGNAL \u_kirsch|column_valid1_7_\ : std_logic;
SIGNAL \u_kirsch|column_valid1_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_4__dup_103\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_6__dup_107\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_9__dup_113\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_10__dup_114\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_11_\ : std_logic;
SIGNAL \u_uw_uart|nx39865z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxErr\ : std_logic;
SIGNAL \u_uw_uart|ack\ : std_logic;
SIGNAL \u_uw_uart|nx39739z1\ : std_logic;
SIGNAL \u_uw_uart|waitcount_15_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_14_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_13_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_12_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z4\ : std_logic;
SIGNAL \u_uw_uart|waitcount_11_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_10_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_9_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_8_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z5\ : std_logic;
SIGNAL \u_uw_uart|waitcount_7_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_6_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_5_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_4_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z6\ : std_logic;
SIGNAL \u_uw_uart|waitcount_3_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_2_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_1_\ : std_logic;
SIGNAL \u_uw_uart|waitcount_0_\ : std_logic;
SIGNAL \u_uw_uart|nx39480z7\ : std_logic;
SIGNAL \u_uw_uart|nx39480z3\ : std_logic;
SIGNAL \u_uw_uart|nx39739z3\ : std_logic;
SIGNAL \u_uw_uart|nx39739z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_0_\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_3_\ : std_logic;
SIGNAL \u_kirsch|nx19921z1\ : std_logic;
SIGNAL \u_kirsch|inc_d_7__dup_237\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopRx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart|nx39480z2\ : std_logic;
SIGNAL \u_uw_uart|nx39480z1\ : std_logic;
SIGNAL \u_uw_uart|nx22081z15\ : std_logic;
SIGNAL \u_uw_uart|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart|inc_d_1_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart|inc_d_2_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart|inc_d_3_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart|inc_d_4_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart|inc_d_5_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart|inc_d_6_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart|inc_d_7_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z7\ : std_logic;
SIGNAL \u_uw_uart|inc_d_8_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart|inc_d_9_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart|inc_d_10_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart|inc_d_11_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart|inc_d_12_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart|inc_d_13_\ : std_logic;
SIGNAL \u_uw_uart|nx22081z1\ : std_logic;
SIGNAL \u_uw_uart|inc_d_14_\ : std_logic;
SIGNAL \u_uw_uart|inc_d_15_\ : std_logic;
SIGNAL \u_uw_uart|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart|inc_d_0_\ : std_logic;
SIGNAL \u_kirsch|o_edge\ : std_logic;
SIGNAL \u_uw_uart|nx36748z2\ : std_logic;
SIGNAL \u_uw_uart|nx33757z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_1_\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|a_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_10_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_9_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDiv_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z2\ : std_logic;
SIGNAL \u_kirsch|r6_12_\ : std_logic;
SIGNAL \u_kirsch|r4_9_\ : std_logic;
SIGNAL \u_kirsch|r6_11_\ : std_logic;
SIGNAL \u_kirsch|r4_8_\ : std_logic;
SIGNAL \u_kirsch|r6_10_\ : std_logic;
SIGNAL \u_kirsch|r4_7_\ : std_logic;
SIGNAL \u_kirsch|r6_9_\ : std_logic;
SIGNAL \u_kirsch|r4_6_\ : std_logic;
SIGNAL \u_kirsch|r6_8_\ : std_logic;
SIGNAL \u_kirsch|r4_5_\ : std_logic;
SIGNAL \u_kirsch|r6_7_\ : std_logic;
SIGNAL \u_kirsch|r4_4_\ : std_logic;
SIGNAL \u_kirsch|r6_6_\ : std_logic;
SIGNAL \u_kirsch|r4_3_\ : std_logic;
SIGNAL \u_kirsch|r6_5_\ : std_logic;
SIGNAL \u_kirsch|r4_2_\ : std_logic;
SIGNAL \u_kirsch|r6_4_\ : std_logic;
SIGNAL \u_kirsch|r4_1_\ : std_logic;
SIGNAL \u_kirsch|r6_3_\ : std_logic;
SIGNAL \u_kirsch|r4_0_\ : std_logic;
SIGNAL \u_kirsch|r6_2_\ : std_logic;
SIGNAL \u_kirsch|r6_1_\ : std_logic;
SIGNAL \u_kirsch|r6_0_\ : std_logic;
SIGNAL \u_kirsch|nx61908z14\ : std_logic;
SIGNAL \u_kirsch|nx61908z13\ : std_logic;
SIGNAL \u_kirsch|nx61908z12\ : std_logic;
SIGNAL \u_kirsch|nx61908z11\ : std_logic;
SIGNAL \u_kirsch|nx61908z10\ : std_logic;
SIGNAL \u_kirsch|nx61908z9\ : std_logic;
SIGNAL \u_kirsch|nx61908z8\ : std_logic;
SIGNAL \u_kirsch|sub_out_7_\ : std_logic;
SIGNAL \u_kirsch|nx61908z7\ : std_logic;
SIGNAL \u_kirsch|sub_out_8_\ : std_logic;
SIGNAL \u_kirsch|nx61908z6\ : std_logic;
SIGNAL \u_kirsch|sub_out_9_\ : std_logic;
SIGNAL \u_kirsch|nx61908z5\ : std_logic;
SIGNAL \u_kirsch|sub_out_10_\ : std_logic;
SIGNAL \u_kirsch|nx61908z4\ : std_logic;
SIGNAL \u_kirsch|sub_out_11_\ : std_logic;
SIGNAL \u_kirsch|nx61908z3\ : std_logic;
SIGNAL \u_kirsch|sub_out_12_\ : std_logic;
SIGNAL \u_kirsch|nx61908z2\ : std_logic;
SIGNAL \u_kirsch|nx61908z15\ : std_logic;
SIGNAL \u_kirsch|nx61908z16\ : std_logic;
SIGNAL \u_kirsch|nx61908z17\ : std_logic;
SIGNAL \u_kirsch|nx61908z1\ : std_logic;
SIGNAL \u_kirsch|r8_0_\ : std_logic;
SIGNAL \u_kirsch|o_dir_0_\ : std_logic;
SIGNAL \u_uw_uart|nx34754z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_2_\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54262z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx58250z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx58250z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx58250z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx17096z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx17096z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_9_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_10_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx8373z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx9370z1\ : std_logic;
SIGNAL \u_kirsch|i_add4_12_\ : std_logic;
SIGNAL \u_kirsch|i_add3_12_\ : std_logic;
SIGNAL \u_kirsch|i_add4_11_\ : std_logic;
SIGNAL \u_kirsch|i_add3_11_\ : std_logic;
SIGNAL \u_kirsch|i_add4_10_\ : std_logic;
SIGNAL \u_kirsch|i_add3_10_\ : std_logic;
SIGNAL \u_kirsch|i_add4_9_\ : std_logic;
SIGNAL \u_kirsch|i_add3_9_\ : std_logic;
SIGNAL \u_kirsch|temp_add_8_\ : std_logic;
SIGNAL \u_kirsch|i_add4_8_\ : std_logic;
SIGNAL \u_kirsch|r2_8_\ : std_logic;
SIGNAL \u_kirsch|i_add3_8_\ : std_logic;
SIGNAL \u_kirsch|temp_add_7_\ : std_logic;
SIGNAL \u_kirsch|i_add4_7_\ : std_logic;
SIGNAL \u_kirsch|r2_7_\ : std_logic;
SIGNAL \u_kirsch|i_add3_7_\ : std_logic;
SIGNAL \u_kirsch|temp_add_6_\ : std_logic;
SIGNAL \u_kirsch|i_add4_6_\ : std_logic;
SIGNAL \u_kirsch|r2_6_\ : std_logic;
SIGNAL \u_kirsch|i_add3_6_\ : std_logic;
SIGNAL \u_kirsch|temp_add_5_\ : std_logic;
SIGNAL \u_kirsch|i_add4_5_\ : std_logic;
SIGNAL \u_kirsch|r2_5_\ : std_logic;
SIGNAL \u_kirsch|i_add3_5_\ : std_logic;
SIGNAL \u_kirsch|temp_add_4_\ : std_logic;
SIGNAL \u_kirsch|i_add4_4_\ : std_logic;
SIGNAL \u_kirsch|r2_4_\ : std_logic;
SIGNAL \u_kirsch|i_add3_4_\ : std_logic;
SIGNAL \u_kirsch|temp_add_3_\ : std_logic;
SIGNAL \u_kirsch|i_add4_3_\ : std_logic;
SIGNAL \u_kirsch|r2_3_\ : std_logic;
SIGNAL \u_kirsch|i_add3_3_\ : std_logic;
SIGNAL \u_kirsch|temp_add_2_\ : std_logic;
SIGNAL \u_kirsch|i_add4_2_\ : std_logic;
SIGNAL \u_kirsch|r2_2_\ : std_logic;
SIGNAL \u_kirsch|i_add3_2_\ : std_logic;
SIGNAL \u_kirsch|temp_add_1_\ : std_logic;
SIGNAL \u_kirsch|i_add4_1_\ : std_logic;
SIGNAL \u_kirsch|r2_1_\ : std_logic;
SIGNAL \u_kirsch|i_add3_1_\ : std_logic;
SIGNAL \u_kirsch|r2_0_\ : std_logic;
SIGNAL \u_kirsch|i_add3_0_\ : std_logic;
SIGNAL \u_kirsch|temp_add_0_\ : std_logic;
SIGNAL \u_kirsch|i_add4_0_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z12\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_0_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z11\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_1_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z10\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_2_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z9\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_3_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z8\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_4_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z7\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_5_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z6\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_6_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z5\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_7_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z4\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_8_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z3\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_9_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z2\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_10_\ : std_logic;
SIGNAL \u_kirsch|stage2|nx22301z1\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_11_\ : std_logic;
SIGNAL \u_kirsch|stage2|o_add_op12_stage2_12_\ : std_logic;
SIGNAL \u_kirsch|temp_max_9_\ : std_logic;
SIGNAL \u_kirsch|i_max3_9_\ : std_logic;
SIGNAL \u_kirsch|r3_9_\ : std_logic;
SIGNAL \u_kirsch|r3_8_\ : std_logic;
SIGNAL \u_kirsch|temp_max_8_\ : std_logic;
SIGNAL \u_kirsch|i_max3_8_\ : std_logic;
SIGNAL \u_kirsch|r3_7_\ : std_logic;
SIGNAL \u_kirsch|temp_max_7_\ : std_logic;
SIGNAL \u_kirsch|i_max3_7_\ : std_logic;
SIGNAL \u_kirsch|r3_6_\ : std_logic;
SIGNAL \u_kirsch|temp_max_6_\ : std_logic;
SIGNAL \u_kirsch|i_max3_6_\ : std_logic;
SIGNAL \u_kirsch|r3_5_\ : std_logic;
SIGNAL \u_kirsch|temp_max_5_\ : std_logic;
SIGNAL \u_kirsch|i_max3_5_\ : std_logic;
SIGNAL \u_kirsch|r3_4_\ : std_logic;
SIGNAL \u_kirsch|temp_max_4_\ : std_logic;
SIGNAL \u_kirsch|i_max3_4_\ : std_logic;
SIGNAL \u_kirsch|r3_3_\ : std_logic;
SIGNAL \u_kirsch|temp_max_3_\ : std_logic;
SIGNAL \u_kirsch|i_max3_3_\ : std_logic;
SIGNAL \u_kirsch|r3_2_\ : std_logic;
SIGNAL \u_kirsch|temp_max_2_\ : std_logic;
SIGNAL \u_kirsch|i_max3_2_\ : std_logic;
SIGNAL \u_kirsch|r3_1_\ : std_logic;
SIGNAL \u_kirsch|temp_max_1_\ : std_logic;
SIGNAL \u_kirsch|i_max3_1_\ : std_logic;
SIGNAL \u_kirsch|temp_max_0_\ : std_logic;
SIGNAL \u_kirsch|i_max3_0_\ : std_logic;
SIGNAL \u_kirsch|r3_0_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z10\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z9\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z8\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z7\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z6\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z5\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z4\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z3\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z2\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx52134z1\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_9_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_8_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_7_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_6_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_5_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_4_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_3_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_2_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_1_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_pix_0_\ : std_logic;
SIGNAL \u_kirsch|r5_0_\ : std_logic;
SIGNAL \u_kirsch|nx24856z1\ : std_logic;
SIGNAL \u_kirsch|r8_1_\ : std_logic;
SIGNAL \u_kirsch|o_dir_1_\ : std_logic;
SIGNAL \u_uw_uart|nx35751z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_3_\ : std_logic;
SIGNAL \u_uw_uart|sdout_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_6_\ : std_logic;
SIGNAL \u_kirsch|e_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z3\ : std_logic;
SIGNAL \u_kirsch|g_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z52\ : std_logic;
SIGNAL \u_kirsch|c_7_\ : std_logic;
SIGNAL \u_kirsch|h_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z53\ : std_logic;
SIGNAL \u_kirsch|i_add2_7_\ : std_logic;
SIGNAL \u_kirsch|d_7_\ : std_logic;
SIGNAL \u_kirsch|f_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z36\ : std_logic;
SIGNAL \u_kirsch|a_7_\ : std_logic;
SIGNAL \u_kirsch|b_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z37\ : std_logic;
SIGNAL \u_kirsch|i_add1_7_\ : std_logic;
SIGNAL \u_kirsch|e_6_\ : std_logic;
SIGNAL \u_kirsch|g_6_\ : std_logic;
SIGNAL \u_kirsch|nx28679z54\ : std_logic;
SIGNAL \u_kirsch|c_6_\ : std_logic;
SIGNAL \u_kirsch|h_6_\ : std_logic;
SIGNAL \u_kirsch|nx28679z55\ : std_logic;
SIGNAL \u_kirsch|i_add2_6_\ : std_logic;
SIGNAL \u_kirsch|d_6_\ : std_logic;
SIGNAL \u_kirsch|f_6_\ : std_logic;
SIGNAL \u_kirsch|nx28679z38\ : std_logic;
SIGNAL \u_kirsch|a_6_\ : std_logic;
SIGNAL \u_kirsch|b_6_\ : std_logic;
SIGNAL \u_kirsch|nx28679z39\ : std_logic;
SIGNAL \u_kirsch|i_add1_6_\ : std_logic;
SIGNAL \u_kirsch|e_5_\ : std_logic;
SIGNAL \u_kirsch|g_5_\ : std_logic;
SIGNAL \u_kirsch|nx28679z56\ : std_logic;
SIGNAL \u_kirsch|c_5_\ : std_logic;
SIGNAL \u_kirsch|h_5_\ : std_logic;
SIGNAL \u_kirsch|nx28679z57\ : std_logic;
SIGNAL \u_kirsch|i_add2_5_\ : std_logic;
SIGNAL \u_kirsch|d_5_\ : std_logic;
SIGNAL \u_kirsch|f_5_\ : std_logic;
SIGNAL \u_kirsch|nx28679z40\ : std_logic;
SIGNAL \u_kirsch|a_5_\ : std_logic;
SIGNAL \u_kirsch|b_5_\ : std_logic;
SIGNAL \u_kirsch|nx28679z41\ : std_logic;
SIGNAL \u_kirsch|i_add1_5_\ : std_logic;
SIGNAL \u_kirsch|e_4_\ : std_logic;
SIGNAL \u_kirsch|g_4_\ : std_logic;
SIGNAL \u_kirsch|nx28679z58\ : std_logic;
SIGNAL \u_kirsch|c_4_\ : std_logic;
SIGNAL \u_kirsch|h_4_\ : std_logic;
SIGNAL \u_kirsch|nx28679z59\ : std_logic;
SIGNAL \u_kirsch|i_add2_4_\ : std_logic;
SIGNAL \u_kirsch|d_4_\ : std_logic;
SIGNAL \u_kirsch|f_4_\ : std_logic;
SIGNAL \u_kirsch|nx28679z42\ : std_logic;
SIGNAL \u_kirsch|a_4_\ : std_logic;
SIGNAL \u_kirsch|b_4_\ : std_logic;
SIGNAL \u_kirsch|nx28679z43\ : std_logic;
SIGNAL \u_kirsch|i_add1_4_\ : std_logic;
SIGNAL \u_kirsch|e_3_\ : std_logic;
SIGNAL \u_kirsch|g_3_\ : std_logic;
SIGNAL \u_kirsch|nx28679z60\ : std_logic;
SIGNAL \u_kirsch|c_3_\ : std_logic;
SIGNAL \u_kirsch|h_3_\ : std_logic;
SIGNAL \u_kirsch|nx28679z61\ : std_logic;
SIGNAL \u_kirsch|i_add2_3_\ : std_logic;
SIGNAL \u_kirsch|d_3_\ : std_logic;
SIGNAL \u_kirsch|f_3_\ : std_logic;
SIGNAL \u_kirsch|nx28679z44\ : std_logic;
SIGNAL \u_kirsch|a_3_\ : std_logic;
SIGNAL \u_kirsch|b_3_\ : std_logic;
SIGNAL \u_kirsch|nx28679z45\ : std_logic;
SIGNAL \u_kirsch|i_add1_3_\ : std_logic;
SIGNAL \u_kirsch|e_2_\ : std_logic;
SIGNAL \u_kirsch|g_2_\ : std_logic;
SIGNAL \u_kirsch|nx28679z62\ : std_logic;
SIGNAL \u_kirsch|c_2_\ : std_logic;
SIGNAL \u_kirsch|h_2_\ : std_logic;
SIGNAL \u_kirsch|nx28679z63\ : std_logic;
SIGNAL \u_kirsch|i_add2_2_\ : std_logic;
SIGNAL \u_kirsch|d_2_\ : std_logic;
SIGNAL \u_kirsch|f_2_\ : std_logic;
SIGNAL \u_kirsch|nx28679z46\ : std_logic;
SIGNAL \u_kirsch|a_2_\ : std_logic;
SIGNAL \u_kirsch|b_2_\ : std_logic;
SIGNAL \u_kirsch|nx28679z47\ : std_logic;
SIGNAL \u_kirsch|i_add1_2_\ : std_logic;
SIGNAL \u_kirsch|e_1_\ : std_logic;
SIGNAL \u_kirsch|g_1_\ : std_logic;
SIGNAL \u_kirsch|nx28679z64\ : std_logic;
SIGNAL \u_kirsch|c_1_\ : std_logic;
SIGNAL \u_kirsch|h_1_\ : std_logic;
SIGNAL \u_kirsch|nx28679z65\ : std_logic;
SIGNAL \u_kirsch|i_add2_1_\ : std_logic;
SIGNAL \u_kirsch|d_1_\ : std_logic;
SIGNAL \u_kirsch|f_1_\ : std_logic;
SIGNAL \u_kirsch|nx28679z48\ : std_logic;
SIGNAL \u_kirsch|a_1_\ : std_logic;
SIGNAL \u_kirsch|b_1_\ : std_logic;
SIGNAL \u_kirsch|nx28679z49\ : std_logic;
SIGNAL \u_kirsch|i_add1_1_\ : std_logic;
SIGNAL \u_kirsch|d_0_\ : std_logic;
SIGNAL \u_kirsch|f_0_\ : std_logic;
SIGNAL \u_kirsch|nx28679z50\ : std_logic;
SIGNAL \u_kirsch|a_0_\ : std_logic;
SIGNAL \u_kirsch|b_0_\ : std_logic;
SIGNAL \u_kirsch|nx28679z51\ : std_logic;
SIGNAL \u_kirsch|i_add1_0_\ : std_logic;
SIGNAL \u_kirsch|e_0_\ : std_logic;
SIGNAL \u_kirsch|g_0_\ : std_logic;
SIGNAL \u_kirsch|nx28679z66\ : std_logic;
SIGNAL \u_kirsch|c_0_\ : std_logic;
SIGNAL \u_kirsch|h_0_\ : std_logic;
SIGNAL \u_kirsch|nx28679z67\ : std_logic;
SIGNAL \u_kirsch|i_add2_0_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z8\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_0_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z7\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_1_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z6\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_2_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z5\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_3_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z4\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_4_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z3\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_5_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z2\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_6_\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_8_\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_7_\ : std_logic;
SIGNAL \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\ : std_logic;
SIGNAL \u_kirsch|stage1|ix45057z52923~1_cout\ : std_logic;
SIGNAL \u_kirsch|stage1|nx45057z1\ : std_logic;
SIGNAL \u_kirsch|nx28679z4\ : std_logic;
SIGNAL \u_kirsch|nx28679z5\ : std_logic;
SIGNAL \u_kirsch|i_max1_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z20\ : std_logic;
SIGNAL \u_kirsch|nx28679z21\ : std_logic;
SIGNAL \u_kirsch|i_max2_7_\ : std_logic;
SIGNAL \u_kirsch|nx28679z22\ : std_logic;
SIGNAL \u_kirsch|nx28679z23\ : std_logic;
SIGNAL \u_kirsch|i_max2_6_\ : std_logic;
SIGNAL \u_kirsch|nx28679z6\ : std_logic;
SIGNAL \u_kirsch|nx28679z7\ : std_logic;
SIGNAL \u_kirsch|i_max1_6_\ : std_logic;
SIGNAL \u_kirsch|nx28679z24\ : std_logic;
SIGNAL \u_kirsch|nx28679z25\ : std_logic;
SIGNAL \u_kirsch|i_max2_5_\ : std_logic;
SIGNAL \u_kirsch|nx28679z8\ : std_logic;
SIGNAL \u_kirsch|nx28679z9\ : std_logic;
SIGNAL \u_kirsch|i_max1_5_\ : std_logic;
SIGNAL \u_kirsch|nx28679z26\ : std_logic;
SIGNAL \u_kirsch|nx28679z27\ : std_logic;
SIGNAL \u_kirsch|i_max2_4_\ : std_logic;
SIGNAL \u_kirsch|nx28679z10\ : std_logic;
SIGNAL \u_kirsch|nx28679z11\ : std_logic;
SIGNAL \u_kirsch|i_max1_4_\ : std_logic;
SIGNAL \u_kirsch|nx28679z28\ : std_logic;
SIGNAL \u_kirsch|nx28679z29\ : std_logic;
SIGNAL \u_kirsch|i_max2_3_\ : std_logic;
SIGNAL \u_kirsch|nx28679z12\ : std_logic;
SIGNAL \u_kirsch|nx28679z13\ : std_logic;
SIGNAL \u_kirsch|i_max1_3_\ : std_logic;
SIGNAL \u_kirsch|nx28679z30\ : std_logic;
SIGNAL \u_kirsch|nx28679z31\ : std_logic;
SIGNAL \u_kirsch|i_max2_2_\ : std_logic;
SIGNAL \u_kirsch|nx28679z14\ : std_logic;
SIGNAL \u_kirsch|nx28679z15\ : std_logic;
SIGNAL \u_kirsch|i_max1_2_\ : std_logic;
SIGNAL \u_kirsch|nx28679z32\ : std_logic;
SIGNAL \u_kirsch|nx28679z33\ : std_logic;
SIGNAL \u_kirsch|i_max2_1_\ : std_logic;
SIGNAL \u_kirsch|nx28679z16\ : std_logic;
SIGNAL \u_kirsch|nx28679z17\ : std_logic;
SIGNAL \u_kirsch|i_max1_1_\ : std_logic;
SIGNAL \u_kirsch|nx28679z18\ : std_logic;
SIGNAL \u_kirsch|nx28679z19\ : std_logic;
SIGNAL \u_kirsch|i_max1_0_\ : std_logic;
SIGNAL \u_kirsch|nx28679z34\ : std_logic;
SIGNAL \u_kirsch|nx28679z35\ : std_logic;
SIGNAL \u_kirsch|i_max2_0_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z8\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z7\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z6\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z5\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z4\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z3\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z2\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx54128z1\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_7_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_6_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_5_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_4_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_3_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_2_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_1_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_pix_0_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z10\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_0_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z9\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_1_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z8\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_2_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z7\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_3_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z6\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_4_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z5\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_5_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z4\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_6_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z3\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_7_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z2\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_9_\ : std_logic;
SIGNAL \u_kirsch|stage1|o_max_add_stage1_8_\ : std_logic;
SIGNAL \u_kirsch|stage1|nx15254z1\ : std_logic;
SIGNAL \u_kirsch|temp_dir_0_\ : std_logic;
SIGNAL \u_kirsch|i_dir3_0_\ : std_logic;
SIGNAL \u_kirsch|r1_0_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z10\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z9\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z8\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z7\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z6\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z5\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z4\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z3\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z2\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|nx19309z1\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_dir_0_\ : std_logic;
SIGNAL \u_kirsch|r5_1_\ : std_logic;
SIGNAL \u_kirsch|nx23859z1\ : std_logic;
SIGNAL \u_kirsch|r8_2_\ : std_logic;
SIGNAL \u_kirsch|o_dir_2_\ : std_logic;
SIGNAL \u_uw_uart|nx36748z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|rdata_7_\ : std_logic;
SIGNAL \u_uw_uart|datain_7_\ : std_logic;
SIGNAL \u_kirsch|nx20492z1\ : std_logic;
SIGNAL \u_kirsch|i_7_\ : std_logic;
SIGNAL \u_uw_uart|rdata_6_\ : std_logic;
SIGNAL \u_uw_uart|datain_6_\ : std_logic;
SIGNAL \u_kirsch|i_6_\ : std_logic;
SIGNAL \u_uw_uart|rdata_5_\ : std_logic;
SIGNAL \u_uw_uart|datain_5_\ : std_logic;
SIGNAL \u_kirsch|i_5_\ : std_logic;
SIGNAL \u_uw_uart|rdata_4_\ : std_logic;
SIGNAL \u_uw_uart|datain_4_\ : std_logic;
SIGNAL \u_kirsch|i_4_\ : std_logic;
SIGNAL \u_uw_uart|rdata_3_\ : std_logic;
SIGNAL \u_uw_uart|datain_3_\ : std_logic;
SIGNAL \u_kirsch|i_3_\ : std_logic;
SIGNAL \u_uw_uart|rdata_2_\ : std_logic;
SIGNAL \u_uw_uart|datain_2_\ : std_logic;
SIGNAL \u_kirsch|i_2_\ : std_logic;
SIGNAL \u_uw_uart|rdata_1_\ : std_logic;
SIGNAL \u_uw_uart|datain_1_\ : std_logic;
SIGNAL \u_kirsch|i_1_\ : std_logic;
SIGNAL \u_uw_uart|rdata_0_\ : std_logic;
SIGNAL \u_uw_uart|datain_0_\ : std_logic;
SIGNAL \u_kirsch|i_0_\ : std_logic;
SIGNAL \u_kirsch|nx28679z1\ : std_logic;
SIGNAL \u_kirsch|nx28679z2\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z7\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z6\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z5\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z4\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z3\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z2\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|nx19309z1\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_dir_2_\ : std_logic;
SIGNAL \u_kirsch|stage1|u_max1|o_max_dir_0_\ : std_logic;
SIGNAL \u_kirsch|temp_dir_1_\ : std_logic;
SIGNAL \u_kirsch|i_dir3_1_\ : std_logic;
SIGNAL \u_kirsch|r1_1_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_dir_1_\ : std_logic;
SIGNAL \u_kirsch|r5_2_\ : std_logic;
SIGNAL \u_kirsch|nx22862z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_4_\ : std_logic;
SIGNAL \u_uw_uart|sdout_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_7_\ : std_logic;
SIGNAL \u_kirsch|mem_wren_0_\ : std_logic;
SIGNAL \u_kirsch|mem_wren_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_\ : std_logic;
SIGNAL \u_kirsch|nx35074z1\ : std_logic;
SIGNAL \u_kirsch|temp_dir_2_\ : std_logic;
SIGNAL \u_kirsch|i_dir3_2_\ : std_logic;
SIGNAL \u_kirsch|r1_2_\ : std_logic;
SIGNAL \u_kirsch|stage2|u_max2|o_max_dir_2_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_\ : std_logic;
SIGNAL \u_uw_uart|mdata_7n5ss1_6_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54636z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54636z1~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_2_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_4_~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_6_~_wirecell_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid1_7_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|d_0_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|c_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|sdout_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_0__dup_95\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx12704z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_1__dup_97\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z7\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_3__dup_101\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_2__dup_99\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z6\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxDivisor_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z5\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_5__dup_105\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_7__dup_109\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_7_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx28532z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|inc_d_8__dup_111\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxDiv_8_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TopTx\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx5605z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|TxFSM_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx27627z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx18332z1\ : std_logic;
SIGNAL \u_kirsch|nx54262z3\ : std_logic;
SIGNAL \u_kirsch|inc_d_1_\ : std_logic;
SIGNAL \u_kirsch|inc_d_0__dup_223\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart|rawrx\ : std_logic;
SIGNAL \u_uw_uart|rawrx~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx54636z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z3\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx15541z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx53265z2~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx14544z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_2_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx11364z2\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx10367z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx12550z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxFSM_4_\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|nx30017z1\ : std_logic;
SIGNAL \u_uw_uart|i_uarts|RxRDY\ : std_logic;
SIGNAL \u_uw_uart|nx58116z1\ : std_logic;
SIGNAL \u_uw_uart|o_pixavail\ : std_logic;
SIGNAL \u_kirsch|valid_0_\ : std_logic;
SIGNAL \u_kirsch|nx62927z1\ : std_logic;
SIGNAL \u_kirsch|column_0_\ : std_logic;
SIGNAL \u_kirsch|nx25361z1\ : std_logic;
SIGNAL \u_kirsch|nx45393z2\ : std_logic;
SIGNAL \u_kirsch|nx45393z1\ : std_logic;
SIGNAL \u_kirsch|inc_d_3__dup_229\ : std_logic;
SIGNAL \u_kirsch|column_3_\ : std_logic;
SIGNAL \u_kirsch|inc_d_2__dup_227\ : std_logic;
SIGNAL \u_kirsch|column_2_\ : std_logic;
SIGNAL \u_kirsch|nx62927z4\ : std_logic;
SIGNAL \u_kirsch|nx62927z2\ : std_logic;
SIGNAL \u_kirsch|o_row_1_\ : std_logic;
SIGNAL \u_kirsch|inc_d_0_\ : std_logic;
SIGNAL \u_kirsch|o_row_0_\ : std_logic;
SIGNAL \u_kirsch|nx54262z2\ : std_logic;
SIGNAL \u_kirsch|nx54262z1\ : std_logic;
SIGNAL \u_kirsch|inc_d_3_\ : std_logic;
SIGNAL \u_kirsch|o_row_3_\ : std_logic;
SIGNAL nx58136z1 : std_logic;
SIGNAL \o_sevenseg_0_\ : std_logic;
SIGNAL nx59133z1 : std_logic;
SIGNAL \o_sevenseg_1_\ : std_logic;
SIGNAL nx60130z1 : std_logic;
SIGNAL \o_sevenseg_2_\ : std_logic;
SIGNAL nx61127z1 : std_logic;
SIGNAL \o_sevenseg_3_\ : std_logic;
SIGNAL nx62124z1 : std_logic;
SIGNAL \o_sevenseg_4_\ : std_logic;
SIGNAL nx63121z1 : std_logic;
SIGNAL \o_sevenseg_5_\ : std_logic;
SIGNAL nx64118z1 : std_logic;
SIGNAL \o_sevenseg_6_\ : std_logic;
SIGNAL \u_kirsch|nx58250z4\ : std_logic;
SIGNAL \u_kirsch|nx58250z3\ : std_logic;
SIGNAL \u_kirsch|inc_d_5_\ : std_logic;
SIGNAL \u_kirsch|o_row_5_\ : std_logic;
SIGNAL \u_kirsch|inc_d_4_\ : std_logic;
SIGNAL \u_kirsch|o_row_4_\ : std_logic;
SIGNAL \u_kirsch|nx58250z2\ : std_logic;
SIGNAL \u_kirsch|nx58250z1\ : std_logic;
SIGNAL \u_kirsch|inc_d_7_\ : std_logic;
SIGNAL \u_kirsch|o_row_7_\ : std_logic;
SIGNAL nx576z1 : std_logic;
SIGNAL \o_sevenseg_8_\ : std_logic;
SIGNAL \u_kirsch|inc_d_6_\ : std_logic;
SIGNAL \u_kirsch|o_row_6_\ : std_logic;
SIGNAL nx1573z1 : std_logic;
SIGNAL \o_sevenseg_9_\ : std_logic;
SIGNAL nx19779z1 : std_logic;
SIGNAL \o_sevenseg_10_\ : std_logic;
SIGNAL nx18782z1 : std_logic;
SIGNAL \o_sevenseg_11_\ : std_logic;
SIGNAL nx17785z1 : std_logic;
SIGNAL \o_sevenseg_12_\ : std_logic;
SIGNAL nx16788z1 : std_logic;
SIGNAL \o_sevenseg_13_\ : std_logic;
SIGNAL nx15791z1 : std_logic;
SIGNAL \o_sevenseg_14_\ : std_logic;
SIGNAL \u_kirsch|nx25376z8\ : std_logic;
SIGNAL \u_kirsch|row_valid1_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid1_1_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|valid_1_\ : std_logic;
SIGNAL \u_kirsch|valid_2_\ : std_logic;
SIGNAL \u_kirsch|valid_3_\ : std_logic;
SIGNAL \u_kirsch|valid_4_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_1_\ : std_logic;
SIGNAL \u_kirsch|row_valid1_0_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_0_\ : std_logic;
SIGNAL \u_kirsch|nx25376z6\ : std_logic;
SIGNAL \u_kirsch|nx19921z4\ : std_logic;
SIGNAL \u_kirsch|inc_d_4__dup_231\ : std_logic;
SIGNAL \u_kirsch|column_4_\ : std_logic;
SIGNAL \u_kirsch|nx19921z3\ : std_logic;
SIGNAL \u_kirsch|nx19921z2\ : std_logic;
SIGNAL \u_kirsch|inc_d_6__dup_235\ : std_logic;
SIGNAL \u_kirsch|column_6_\ : std_logic;
SIGNAL \u_kirsch|column_valid1_6_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid1_6_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_6_\ : std_logic;
SIGNAL \u_kirsch|valid_5_\ : std_logic;
SIGNAL \u_kirsch|valid_6_\ : std_logic;
SIGNAL \u_kirsch|row_valid1_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid1_4_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_4_\ : std_logic;
SIGNAL \u_kirsch|row_valid1_6_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_6_\ : std_logic;
SIGNAL \u_kirsch|row_valid1_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid1_5_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_5_\ : std_logic;
SIGNAL \u_kirsch|nx23902z5\ : std_logic;
SIGNAL \u_kirsch|inc_d_2_\ : std_logic;
SIGNAL \u_kirsch|o_row_2_\ : std_logic;
SIGNAL \u_kirsch|row_valid1_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid1_2_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid2_2_\ : std_logic;
SIGNAL \u_kirsch|row_valid1_3_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid1_3_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_3_\ : std_logic;
SIGNAL \u_kirsch|nx23902z4\ : std_logic;
SIGNAL \u_kirsch|nx23902z1\ : std_logic;
SIGNAL \u_kirsch|o_valid\ : std_logic;
SIGNAL \u_kirsch|nx25376z3\ : std_logic;
SIGNAL \u_kirsch|column_valid1_4_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid1_4_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_4_\ : std_logic;
SIGNAL \u_kirsch|inc_d_5__dup_233\ : std_logic;
SIGNAL \u_kirsch|column_5_\ : std_logic;
SIGNAL \u_kirsch|column_valid1_5_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid1_5_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_5_\ : std_logic;
SIGNAL \u_kirsch|nx25376z2\ : std_logic;
SIGNAL \u_kirsch|nx25376z1\ : std_logic;
SIGNAL \u_kirsch|o_mode_1_\ : std_logic;
SIGNAL \u_kirsch|nx26373z2\ : std_logic;
SIGNAL \u_kirsch|row_valid1_7_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|row_valid1_7_\ : std_logic;
SIGNAL \u_kirsch|row_valid2_7_\ : std_logic;
SIGNAL \u_kirsch|nx26373z4\ : std_logic;
SIGNAL \u_kirsch|column_valid1_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid1_2_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_2_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid2_2_\ : std_logic;
SIGNAL \u_kirsch|column_valid1_0_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_0_\ : std_logic;
SIGNAL \u_kirsch|inc_d_1__dup_225\ : std_logic;
SIGNAL \u_kirsch|column_1_\ : std_logic;
SIGNAL \u_kirsch|column_valid1_1_\ : std_logic;
SIGNAL \u_kirsch|column_valid2_1_~feeder_combout\ : std_logic;
SIGNAL \u_kirsch|column_valid2_1_\ : std_logic;
SIGNAL \u_kirsch|nx25376z5\ : std_logic;
SIGNAL \u_kirsch|nx26373z3\ : std_logic;
SIGNAL \u_kirsch|nx26373z1\ : std_logic;
SIGNAL \u_kirsch|nx25376z9\ : std_logic;
SIGNAL \u_kirsch|mem|ix64056z29481|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_uw_uart|i_uarts|ALT_INV_nx18332z1\ : std_logic;
SIGNAL \u_kirsch|ALT_INV_nx25376z9\ : std_logic;
SIGNAL \u_kirsch|ALT_INV_valid_5_\ : std_logic;
SIGNAL \ALT_INV_nrst~combout\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk <= clk;
ww_rxflex <= rxflex;
txflex <= ww_txflex;
o_sevenseg <= ww_o_sevenseg;
o_mode <= ww_o_mode;
o_nrst <= ww_o_nrst;
ww_debug_key <= debug_key;
ww_debug_switch <= debug_switch;
debug_led_red <= ww_debug_led_red;
debug_led_grn <= ww_debug_led_grn;
debug_sevenseg_0 <= ww_debug_sevenseg_0;
debug_sevenseg_1 <= ww_debug_sevenseg_1;
debug_sevenseg_2 <= ww_debug_sevenseg_2;
debug_sevenseg_3 <= ww_debug_sevenseg_3;
debug_sevenseg_4 <= ww_debug_sevenseg_4;
debug_sevenseg_5 <= ww_debug_sevenseg_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|column_7_\ & \u_kirsch|column_6_\ & \u_kirsch|column_5_\ & \u_kirsch|column_4_\ & \u_kirsch|column_3_\ & \u_kirsch|column_2_\ & \u_kirsch|column_1_\ & 
\u_kirsch|column_0_\);

\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(0) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(1) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(2) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(3) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(4) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(5) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(6) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(7) <= \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_kirsch|column_7_\ & \u_kirsch|column_6_\ & \u_kirsch|column_5_\ & \u_kirsch|column_4_\ & \u_kirsch|column_3_\ & \u_kirsch|column_2_\ & \u_kirsch|column_1_\ & 
\u_kirsch|column_0_\);

\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(0) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(1) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(2) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(3) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(4) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(5) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(6) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u_kirsch|mem|ix64056z29481|auto_generated|q_a\(7) <= \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\u_uw_uart|i_uarts|ALT_INV_nx18332z1\ <= NOT \u_uw_uart|i_uarts|nx18332z1\;
\u_kirsch|ALT_INV_nx25376z9\ <= NOT \u_kirsch|nx25376z9\;
\u_kirsch|ALT_INV_valid_5_\ <= NOT \u_kirsch|valid_5_\;
\ALT_INV_nrst~combout\ <= NOT \nrst~combout\;

-- Location: LCFF_X38_Y24_N21
\u_uw_uart|reg_ld_sdout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx18433z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ld_sdout\);

-- Location: LCCOMB_X38_Y24_N10
\u_uw_uart|i_uarts|ix27627z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z2\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (((\u_uw_uart|i_uarts|TxFSM_0_\ & !\u_uw_uart|i_uarts|nx18332z1\)))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|ld_sdout\) # 
-- (!\u_uw_uart|i_uarts|nx18332z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|nx18332z1\,
	combout => \u_uw_uart|i_uarts|nx27627z2\);

-- Location: LCFF_X40_Y24_N7
\u_uw_uart|i_uarts|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_0_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx27627z4\);

-- Location: LCCOMB_X44_Y22_N2
\u_kirsch|ix25376z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z7\ = ((!\u_kirsch|row_valid2_3_\) # (!\u_kirsch|row_valid2_4_\)) # (!\u_kirsch|row_valid2_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|row_valid2_2_\,
	datac => \u_kirsch|row_valid2_4_\,
	datad => \u_kirsch|row_valid2_3_\,
	combout => \u_kirsch|nx25376z7\);

-- Location: LCFF_X44_Y22_N21
\u_kirsch|reg_column_valid2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_valid1_7_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_7_\);

-- Location: LCFF_X44_Y22_N13
\u_kirsch|reg_column_valid2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_valid1_3_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_3_\);

-- Location: LCCOMB_X44_Y22_N24
\u_kirsch|ix26373z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z5\ = ((!\u_kirsch|column_valid2_4_\) # (!\u_kirsch|column_valid2_5_\)) # (!\u_kirsch|column_valid2_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_valid2_3_\,
	datac => \u_kirsch|column_valid2_5_\,
	datad => \u_kirsch|column_valid2_4_\,
	combout => \u_kirsch|nx26373z5\);

-- Location: LCCOMB_X44_Y22_N26
\u_kirsch|ix25376z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z4\ = (\u_kirsch|row_valid2_6_\ & (!\u_kirsch|nx25376z5\ & (\u_kirsch|row_valid2_5_\ & \u_kirsch|row_valid2_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|row_valid2_6_\,
	datab => \u_kirsch|nx25376z5\,
	datac => \u_kirsch|row_valid2_5_\,
	datad => \u_kirsch|row_valid2_7_\,
	combout => \u_kirsch|nx25376z4\);

-- Location: LCFF_X35_Y24_N17
\u_uw_uart|i_uarts|reg_q_4__dup_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_4__dup_103\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_4_\);

-- Location: LCFF_X35_Y24_N31
\u_uw_uart|i_uarts|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_11_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_11_\);

-- Location: LCFF_X35_Y24_N29
\u_uw_uart|i_uarts|reg_q_10__dup_0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_10__dup_114\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_10_\);

-- Location: LCFF_X35_Y24_N27
\u_uw_uart|i_uarts|reg_q_9__dup_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_9__dup_113\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_9_\);

-- Location: LCFF_X35_Y24_N21
\u_uw_uart|i_uarts|reg_q_6__dup_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_6__dup_107\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_6_\);

-- Location: LCCOMB_X35_Y24_N6
\u_uw_uart|i_uarts|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z5\ = (!\u_uw_uart|i_uarts|TxDiv_10_\ & (!\u_uw_uart|i_uarts|TxDiv_11_\ & (!\u_uw_uart|i_uarts|TxDiv_6_\ & !\u_uw_uart|i_uarts|TxDiv_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_10_\,
	datab => \u_uw_uart|i_uarts|TxDiv_11_\,
	datac => \u_uw_uart|i_uarts|TxDiv_6_\,
	datad => \u_uw_uart|i_uarts|TxDiv_9_\,
	combout => \u_uw_uart|i_uarts|nx32400z5\);

-- Location: LCFF_X38_Y24_N7
\u_uw_uart|reg_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39865z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|state\);

-- Location: LCFF_X38_Y24_N17
\u_uw_uart|reg_dsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|dsend\);

-- Location: LCCOMB_X38_Y24_N20
\u_uw_uart|ix18433z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx18433z1\ = (!\u_uw_uart|state\ & ((\u_uw_uart|dsend\) # (\u_uw_uart|ld_sdout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|dsend\,
	datac => \u_uw_uart|ld_sdout\,
	datad => \u_uw_uart|state\,
	combout => \u_uw_uart|nx18433z1\);

-- Location: LCFF_X37_Y24_N1
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx51917z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_3_\);

-- Location: LCFF_X37_Y24_N25
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx50920z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_2_\);

-- Location: LCFF_X37_Y24_N27
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx49923z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_1_\);

-- Location: LCFF_X37_Y24_N29
\u_uw_uart|i_uarts|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx48926z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx48926z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxBitCnt_0_\);

-- Location: LCCOMB_X38_Y24_N12
\u_uw_uart|i_uarts|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z3\ = (\u_uw_uart|i_uarts|TxBitCnt_2_\) # (((\u_uw_uart|i_uarts|TxBitCnt_3_\) # (\u_uw_uart|i_uarts|TxBitCnt_1_\)) # (!\u_uw_uart|i_uarts|TxBitCnt_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx4608z3\);

-- Location: LCFF_X40_Y23_N1
\u_uw_uart|reg_sdout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx39865z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_0_\);

-- Location: LCFF_X40_Y24_N17
\u_uw_uart|i_uarts|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_1_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_2_\);

-- Location: LCCOMB_X38_Y24_N22
\u_uw_uart|i_uarts|ix35603z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx35603z1\ = (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TopTx\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx35603z1\);

-- Location: LCFF_X45_Y22_N21
\u_kirsch|reg_q_7__dup_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_7__dup_237\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_7_\);

-- Location: LCCOMB_X43_Y22_N2
\u_kirsch|ix62927z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx62927z3\ = (\u_kirsch|column_5_\ & (\u_kirsch|column_6_\ & (\u_kirsch|column_4_\ & \u_kirsch|column_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_5_\,
	datab => \u_kirsch|column_6_\,
	datac => \u_kirsch|column_4_\,
	datad => \u_kirsch|column_7_\,
	combout => \u_kirsch|nx62927z3\);

-- Location: LCCOMB_X44_Y22_N20
\u_kirsch|ix23902z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23902z3\ = (\u_kirsch|column_valid2_5_\) # ((\u_kirsch|column_valid2_4_\) # ((\u_kirsch|column_valid2_7_\) # (\u_kirsch|column_valid2_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_valid2_5_\,
	datab => \u_kirsch|column_valid2_4_\,
	datac => \u_kirsch|column_valid2_7_\,
	datad => \u_kirsch|column_valid2_6_\,
	combout => \u_kirsch|nx23902z3\);

-- Location: LCCOMB_X44_Y22_N12
\u_kirsch|ix23902z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23902z2\ = (\u_kirsch|column_valid2_1_\) # ((\u_kirsch|column_valid2_2_\) # ((\u_kirsch|column_valid2_3_\) # (\u_kirsch|nx23902z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_valid2_1_\,
	datab => \u_kirsch|column_valid2_2_\,
	datac => \u_kirsch|column_valid2_3_\,
	datad => \u_kirsch|nx23902z3\,
	combout => \u_kirsch|nx23902z2\);

-- Location: LCFF_X43_Y22_N5
\u_kirsch|reg_column_valid1_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid1_7_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_7_\);

-- Location: LCFF_X43_Y22_N7
\u_kirsch|reg_column_valid1_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_3_\,
	sload => VCC,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_3_\);

-- Location: LCCOMB_X35_Y24_N16
\u_uw_uart|i_uarts|ix28532z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_4__dup_103\ = (\u_uw_uart|i_uarts|TxDiv_4_\ & (\u_uw_uart|i_uarts|nx28532z5\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_4_\ & (!\u_uw_uart|i_uarts|nx28532z5\ & VCC))
-- \u_uw_uart|i_uarts|nx28532z4\ = CARRY((\u_uw_uart|i_uarts|TxDiv_4_\ & !\u_uw_uart|i_uarts|nx28532z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_4_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z5\,
	combout => \u_uw_uart|i_uarts|inc_d_4__dup_103\,
	cout => \u_uw_uart|i_uarts|nx28532z4\);

-- Location: LCCOMB_X35_Y24_N20
\u_uw_uart|i_uarts|ix28532z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_6__dup_107\ = (\u_uw_uart|i_uarts|TxDiv_6_\ & (\u_uw_uart|i_uarts|nx28532z3\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_6_\ & (!\u_uw_uart|i_uarts|nx28532z3\ & VCC))
-- \u_uw_uart|i_uarts|nx28532z2\ = CARRY((\u_uw_uart|i_uarts|TxDiv_6_\ & !\u_uw_uart|i_uarts|nx28532z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_6_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z3\,
	combout => \u_uw_uart|i_uarts|inc_d_6__dup_107\,
	cout => \u_uw_uart|i_uarts|nx28532z2\);

-- Location: LCCOMB_X35_Y24_N24
\u_uw_uart|i_uarts|ix28532z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_8__dup_111\ = (\u_uw_uart|i_uarts|TxDiv_8_\ & (\u_uw_uart|i_uarts|nx28532z1\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_8_\ & (!\u_uw_uart|i_uarts|nx28532z1\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z3\ = CARRY((\u_uw_uart|i_uarts|TxDiv_8_\ & !\u_uw_uart|i_uarts|nx28532z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_8_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z1\,
	combout => \u_uw_uart|i_uarts|inc_d_8__dup_111\,
	cout => \u_uw_uart|i_uarts|nx18093z3\);

-- Location: LCCOMB_X35_Y24_N26
\u_uw_uart|i_uarts|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_9__dup_113\ = (\u_uw_uart|i_uarts|TxDiv_9_\ & (!\u_uw_uart|i_uarts|nx18093z3\)) # (!\u_uw_uart|i_uarts|TxDiv_9_\ & ((\u_uw_uart|i_uarts|nx18093z3\) # (GND)))
-- \u_uw_uart|i_uarts|nx18093z2\ = CARRY((!\u_uw_uart|i_uarts|nx18093z3\) # (!\u_uw_uart|i_uarts|TxDiv_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_9_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z3\,
	combout => \u_uw_uart|i_uarts|inc_d_9__dup_113\,
	cout => \u_uw_uart|i_uarts|nx18093z2\);

-- Location: LCCOMB_X35_Y24_N28
\u_uw_uart|i_uarts|ix18093z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_10__dup_114\ = (\u_uw_uart|i_uarts|TxDiv_10_\ & (\u_uw_uart|i_uarts|nx18093z2\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_10_\ & (!\u_uw_uart|i_uarts|nx18093z2\ & VCC))
-- \u_uw_uart|i_uarts|nx18093z1\ = CARRY((\u_uw_uart|i_uarts|TxDiv_10_\ & !\u_uw_uart|i_uarts|nx18093z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_10_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx18093z2\,
	combout => \u_uw_uart|i_uarts|inc_d_10__dup_114\,
	cout => \u_uw_uart|i_uarts|nx18093z1\);

-- Location: LCCOMB_X35_Y24_N30
\u_uw_uart|i_uarts|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_11_\ = \u_uw_uart|i_uarts|nx18093z1\ $ (\u_uw_uart|i_uarts|TxDiv_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|TxDiv_11_\,
	cin => \u_uw_uart|i_uarts|nx18093z1\,
	combout => \u_uw_uart|i_uarts|inc_d_11_\);

-- Location: LCCOMB_X38_Y24_N6
\u_uw_uart|ix39865z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39865z1\ = (\u_uw_uart|dsend\ & !\u_uw_uart|state\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|dsend\,
	datac => \u_uw_uart|state\,
	combout => \u_uw_uart|nx39865z1\);

-- Location: LCFF_X41_Y23_N5
\u_uw_uart|i_uarts|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx15376z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxErr\);

-- Location: LCFF_X41_Y23_N7
\u_uw_uart|reg_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39480z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ack\);

-- Location: LCCOMB_X38_Y23_N8
\u_uw_uart|ix39739z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39739z1\ = (\u_uw_uart|ack\) # (\u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|ack\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|nx39739z1\);

-- Location: LCFF_X37_Y23_N31
\u_uw_uart|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_15_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_15_\);

-- Location: LCFF_X37_Y23_N29
\u_uw_uart|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_14_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_14_\);

-- Location: LCFF_X37_Y23_N27
\u_uw_uart|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_13_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_13_\);

-- Location: LCFF_X37_Y23_N25
\u_uw_uart|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_12_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_12_\);

-- Location: LCCOMB_X38_Y23_N10
\u_uw_uart|ix39480z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z4\ = (!\u_uw_uart|waitcount_13_\ & (!\u_uw_uart|waitcount_14_\ & (!\u_uw_uart|waitcount_15_\ & !\u_uw_uart|waitcount_12_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_13_\,
	datab => \u_uw_uart|waitcount_14_\,
	datac => \u_uw_uart|waitcount_15_\,
	datad => \u_uw_uart|waitcount_12_\,
	combout => \u_uw_uart|nx39480z4\);

-- Location: LCFF_X37_Y23_N23
\u_uw_uart|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_11_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_11_\);

-- Location: LCFF_X37_Y23_N21
\u_uw_uart|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_10_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_10_\);

-- Location: LCFF_X37_Y23_N19
\u_uw_uart|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_9_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_9_\);

-- Location: LCFF_X37_Y23_N17
\u_uw_uart|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_8_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_8_\);

-- Location: LCCOMB_X38_Y23_N28
\u_uw_uart|ix39480z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z5\ = (!\u_uw_uart|waitcount_11_\ & (!\u_uw_uart|waitcount_8_\ & (!\u_uw_uart|waitcount_10_\ & !\u_uw_uart|waitcount_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_11_\,
	datab => \u_uw_uart|waitcount_8_\,
	datac => \u_uw_uart|waitcount_10_\,
	datad => \u_uw_uart|waitcount_9_\,
	combout => \u_uw_uart|nx39480z5\);

-- Location: LCFF_X37_Y23_N15
\u_uw_uart|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_7_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_7_\);

-- Location: LCFF_X37_Y23_N13
\u_uw_uart|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_6_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_6_\);

-- Location: LCFF_X37_Y23_N11
\u_uw_uart|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_5_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_5_\);

-- Location: LCFF_X37_Y23_N9
\u_uw_uart|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_4_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_4_\);

-- Location: LCCOMB_X38_Y23_N14
\u_uw_uart|ix39480z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z6\ = (!\u_uw_uart|waitcount_7_\ & (\u_uw_uart|waitcount_6_\ & (\u_uw_uart|waitcount_5_\ & !\u_uw_uart|waitcount_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_7_\,
	datab => \u_uw_uart|waitcount_6_\,
	datac => \u_uw_uart|waitcount_5_\,
	datad => \u_uw_uart|waitcount_4_\,
	combout => \u_uw_uart|nx39480z6\);

-- Location: LCFF_X37_Y23_N7
\u_uw_uart|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_3_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_3_\);

-- Location: LCFF_X37_Y23_N5
\u_uw_uart|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_2_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_2_\);

-- Location: LCFF_X37_Y23_N3
\u_uw_uart|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_1_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_1_\);

-- Location: LCFF_X38_Y23_N1
\u_uw_uart|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|inc_d_0_\,
	sclr => \u_uw_uart|nx39480z2\,
	ena => \u_uw_uart|nx21084z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|waitcount_0_\);

-- Location: LCCOMB_X38_Y23_N26
\u_uw_uart|ix39480z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z7\ = (!\u_uw_uart|waitcount_1_\ & (!\u_uw_uart|waitcount_3_\ & (\u_uw_uart|waitcount_2_\ & !\u_uw_uart|waitcount_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_1_\,
	datab => \u_uw_uart|waitcount_3_\,
	datac => \u_uw_uart|waitcount_2_\,
	datad => \u_uw_uart|waitcount_0_\,
	combout => \u_uw_uart|nx39480z7\);

-- Location: LCCOMB_X38_Y23_N20
\u_uw_uart|ix39480z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z3\ = (\u_uw_uart|nx39480z4\ & (\u_uw_uart|nx39480z5\ & (\u_uw_uart|nx39480z6\ & \u_uw_uart|nx39480z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z4\,
	datab => \u_uw_uart|nx39480z5\,
	datac => \u_uw_uart|nx39480z6\,
	datad => \u_uw_uart|nx39480z7\,
	combout => \u_uw_uart|nx39480z3\);

-- Location: LCCOMB_X38_Y23_N30
\u_uw_uart|ix39739z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39739z3\ = (\u_uw_uart|nx39739z1\ & (((\u_uw_uart|nx39480z3\) # (\u_kirsch|o_valid\)))) # (!\u_uw_uart|nx39739z1\ & (\u_uw_uart|i_uarts|RxErr\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxErr\,
	datab => \u_uw_uart|nx39739z1\,
	datac => \u_uw_uart|nx39480z3\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|nx39739z3\);

-- Location: LCCOMB_X38_Y24_N16
\u_uw_uart|ix39739z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39739z2\ = (\nrst~combout\ & ((\u_uw_uart|nx39739z3\) # ((!\u_kirsch|nx25376z9\ & !\u_kirsch|o_mode_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx25376z9\,
	datab => \u_kirsch|o_mode_1_\,
	datac => \u_uw_uart|nx39739z3\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|nx39739z2\);

-- Location: LCCOMB_X38_Y24_N24
\u_uw_uart|i_uarts|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z2\ = (!\u_uw_uart|i_uarts|TxBitCnt_0_\ & (!\u_uw_uart|i_uarts|TxBitCnt_2_\ & !\u_uw_uart|i_uarts|TxBitCnt_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx51917z2\);

-- Location: LCCOMB_X37_Y24_N0
\u_uw_uart|i_uarts|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx51917z1\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TxBitCnt_3_\ $ (\u_uw_uart|i_uarts|nx51917z2\)))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & ((\u_uw_uart|i_uarts|TopTx\) # (\u_uw_uart|i_uarts|TxBitCnt_3_\ $ 
-- (\u_uw_uart|i_uarts|nx51917z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|nx51917z2\,
	combout => \u_uw_uart|i_uarts|nx51917z1\);

-- Location: LCCOMB_X38_Y24_N26
\u_uw_uart|i_uarts|ix48926z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z2\ = (\u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxFSM_0_\ $ (\u_uw_uart|i_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx48926z2\);

-- Location: LCCOMB_X38_Y24_N4
\u_uw_uart|i_uarts|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z2\ = (\u_uw_uart|i_uarts|TopTx\ & !\u_uw_uart|i_uarts|TxFSM_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TopTx\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx50920z2\);

-- Location: LCCOMB_X37_Y24_N24
\u_uw_uart|i_uarts|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx50920z1\ = (!\u_uw_uart|i_uarts|nx50920z2\ & (\u_uw_uart|i_uarts|TxBitCnt_2_\ $ (((!\u_uw_uart|i_uarts|TxBitCnt_0_\ & !\u_uw_uart|i_uarts|TxBitCnt_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx50920z2\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx50920z1\);

-- Location: LCCOMB_X37_Y24_N26
\u_uw_uart|i_uarts|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx49923z1\ = (\u_uw_uart|i_uarts|TxFSM_1_\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ ((!\u_uw_uart|i_uarts|TxBitCnt_1_\)))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & (!\u_uw_uart|i_uarts|TopTx\ & (\u_uw_uart|i_uarts|TxBitCnt_0_\ $ 
-- (!\u_uw_uart|i_uarts|TxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx49923z1\);

-- Location: LCCOMB_X37_Y24_N28
\u_uw_uart|i_uarts|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx48926z1\ = ((!\u_uw_uart|i_uarts|TxFSM_1_\ & \u_uw_uart|i_uarts|TopTx\)) # (!\u_uw_uart|i_uarts|TxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxFSM_1_\,
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx48926z1\);

-- Location: LCFF_X38_Y23_N25
\u_uw_uart|reg_mdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx33757z1\,
	ena => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_0_\);

-- Location: LCFF_X40_Y23_N3
\u_uw_uart|reg_sdout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx39865z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_1_\);

-- Location: LCFF_X40_Y24_N15
\u_uw_uart|i_uarts|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_2_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_3_\);

-- Location: LCCOMB_X45_Y22_N18
\u_kirsch|ix19921z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_6__dup_235\ = (\u_kirsch|column_6_\ & (\u_kirsch|nx19921z2\ $ (GND))) # (!\u_kirsch|column_6_\ & (!\u_kirsch|nx19921z2\ & VCC))
-- \u_kirsch|nx19921z1\ = CARRY((\u_kirsch|column_6_\ & !\u_kirsch|nx19921z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|column_6_\,
	datad => VCC,
	cin => \u_kirsch|nx19921z2\,
	combout => \u_kirsch|inc_d_6__dup_235\,
	cout => \u_kirsch|nx19921z1\);

-- Location: LCCOMB_X45_Y22_N20
\u_kirsch|ix19921z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_7__dup_237\ = \u_kirsch|column_7_\ $ (\u_kirsch|nx19921z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_7_\,
	cin => \u_kirsch|nx19921z1\,
	combout => \u_kirsch|inc_d_7__dup_237\);

-- Location: LCFF_X36_Y24_N21
\u_uw_uart|i_uarts|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx34394z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopRx\);

-- Location: LCCOMB_X41_Y23_N4
\u_uw_uart|i_uarts|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15376z1\ = (\u_uw_uart|i_uarts|RxFSM_5_\) # ((\u_uw_uart|i_uarts|RxErr\ & !\u_uw_uart|i_uarts|RxRDY\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxFSM_5_\,
	datac => \u_uw_uart|i_uarts|RxErr\,
	datad => \u_uw_uart|i_uarts|RxRDY\,
	combout => \u_uw_uart|i_uarts|nx15376z1\);

-- Location: LCCOMB_X38_Y23_N2
\u_uw_uart|ix39480z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z2\ = ((\u_uw_uart|nx39480z3\) # (\u_kirsch|o_valid\)) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datac => \u_uw_uart|nx39480z3\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|nx39480z2\);

-- Location: LCCOMB_X41_Y23_N6
\u_uw_uart|ix39480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z1\ = (!\u_uw_uart|nx39480z2\ & ((\u_uw_uart|ack\) # (\u_uw_uart|o_pixavail\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx39480z2\,
	datac => \u_uw_uart|ack\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|nx39480z1\);

-- Location: LCCOMB_X37_Y23_N0
\u_uw_uart|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx22081z15\ = CARRY(\u_uw_uart|waitcount_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_0_\,
	datad => VCC,
	cout => \u_uw_uart|nx22081z15\);

-- Location: LCCOMB_X37_Y23_N2
\u_uw_uart|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_1_\ = (\u_uw_uart|waitcount_1_\ & (!\u_uw_uart|nx22081z15\)) # (!\u_uw_uart|waitcount_1_\ & ((\u_uw_uart|nx22081z15\) # (GND)))
-- \u_uw_uart|nx22081z14\ = CARRY((!\u_uw_uart|nx22081z15\) # (!\u_uw_uart|waitcount_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_1_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z15\,
	combout => \u_uw_uart|inc_d_1_\,
	cout => \u_uw_uart|nx22081z14\);

-- Location: LCCOMB_X37_Y23_N4
\u_uw_uart|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_2_\ = (\u_uw_uart|waitcount_2_\ & (\u_uw_uart|nx22081z14\ $ (GND))) # (!\u_uw_uart|waitcount_2_\ & (!\u_uw_uart|nx22081z14\ & VCC))
-- \u_uw_uart|nx22081z13\ = CARRY((\u_uw_uart|waitcount_2_\ & !\u_uw_uart|nx22081z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_2_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z14\,
	combout => \u_uw_uart|inc_d_2_\,
	cout => \u_uw_uart|nx22081z13\);

-- Location: LCCOMB_X37_Y23_N6
\u_uw_uart|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_3_\ = (\u_uw_uart|waitcount_3_\ & (!\u_uw_uart|nx22081z13\)) # (!\u_uw_uart|waitcount_3_\ & ((\u_uw_uart|nx22081z13\) # (GND)))
-- \u_uw_uart|nx22081z12\ = CARRY((!\u_uw_uart|nx22081z13\) # (!\u_uw_uart|waitcount_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_3_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z13\,
	combout => \u_uw_uart|inc_d_3_\,
	cout => \u_uw_uart|nx22081z12\);

-- Location: LCCOMB_X37_Y23_N8
\u_uw_uart|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_4_\ = (\u_uw_uart|waitcount_4_\ & (\u_uw_uart|nx22081z12\ $ (GND))) # (!\u_uw_uart|waitcount_4_\ & (!\u_uw_uart|nx22081z12\ & VCC))
-- \u_uw_uart|nx22081z11\ = CARRY((\u_uw_uart|waitcount_4_\ & !\u_uw_uart|nx22081z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_4_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z12\,
	combout => \u_uw_uart|inc_d_4_\,
	cout => \u_uw_uart|nx22081z11\);

-- Location: LCCOMB_X37_Y23_N10
\u_uw_uart|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_5_\ = (\u_uw_uart|waitcount_5_\ & (!\u_uw_uart|nx22081z11\)) # (!\u_uw_uart|waitcount_5_\ & ((\u_uw_uart|nx22081z11\) # (GND)))
-- \u_uw_uart|nx22081z10\ = CARRY((!\u_uw_uart|nx22081z11\) # (!\u_uw_uart|waitcount_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_5_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z11\,
	combout => \u_uw_uart|inc_d_5_\,
	cout => \u_uw_uart|nx22081z10\);

-- Location: LCCOMB_X37_Y23_N12
\u_uw_uart|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_6_\ = (\u_uw_uart|waitcount_6_\ & (\u_uw_uart|nx22081z10\ $ (GND))) # (!\u_uw_uart|waitcount_6_\ & (!\u_uw_uart|nx22081z10\ & VCC))
-- \u_uw_uart|nx22081z9\ = CARRY((\u_uw_uart|waitcount_6_\ & !\u_uw_uart|nx22081z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_6_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z10\,
	combout => \u_uw_uart|inc_d_6_\,
	cout => \u_uw_uart|nx22081z9\);

-- Location: LCCOMB_X37_Y23_N14
\u_uw_uart|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_7_\ = (\u_uw_uart|waitcount_7_\ & (!\u_uw_uart|nx22081z9\)) # (!\u_uw_uart|waitcount_7_\ & ((\u_uw_uart|nx22081z9\) # (GND)))
-- \u_uw_uart|nx22081z8\ = CARRY((!\u_uw_uart|nx22081z9\) # (!\u_uw_uart|waitcount_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_7_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z9\,
	combout => \u_uw_uart|inc_d_7_\,
	cout => \u_uw_uart|nx22081z8\);

-- Location: LCCOMB_X37_Y23_N16
\u_uw_uart|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_8_\ = (\u_uw_uart|waitcount_8_\ & (\u_uw_uart|nx22081z8\ $ (GND))) # (!\u_uw_uart|waitcount_8_\ & (!\u_uw_uart|nx22081z8\ & VCC))
-- \u_uw_uart|nx22081z7\ = CARRY((\u_uw_uart|waitcount_8_\ & !\u_uw_uart|nx22081z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_8_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z8\,
	combout => \u_uw_uart|inc_d_8_\,
	cout => \u_uw_uart|nx22081z7\);

-- Location: LCCOMB_X37_Y23_N18
\u_uw_uart|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_9_\ = (\u_uw_uart|waitcount_9_\ & (!\u_uw_uart|nx22081z7\)) # (!\u_uw_uart|waitcount_9_\ & ((\u_uw_uart|nx22081z7\) # (GND)))
-- \u_uw_uart|nx22081z6\ = CARRY((!\u_uw_uart|nx22081z7\) # (!\u_uw_uart|waitcount_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_9_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z7\,
	combout => \u_uw_uart|inc_d_9_\,
	cout => \u_uw_uart|nx22081z6\);

-- Location: LCCOMB_X37_Y23_N20
\u_uw_uart|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_10_\ = (\u_uw_uart|waitcount_10_\ & (\u_uw_uart|nx22081z6\ $ (GND))) # (!\u_uw_uart|waitcount_10_\ & (!\u_uw_uart|nx22081z6\ & VCC))
-- \u_uw_uart|nx22081z5\ = CARRY((\u_uw_uart|waitcount_10_\ & !\u_uw_uart|nx22081z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_10_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z6\,
	combout => \u_uw_uart|inc_d_10_\,
	cout => \u_uw_uart|nx22081z5\);

-- Location: LCCOMB_X37_Y23_N22
\u_uw_uart|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_11_\ = (\u_uw_uart|waitcount_11_\ & (!\u_uw_uart|nx22081z5\)) # (!\u_uw_uart|waitcount_11_\ & ((\u_uw_uart|nx22081z5\) # (GND)))
-- \u_uw_uart|nx22081z4\ = CARRY((!\u_uw_uart|nx22081z5\) # (!\u_uw_uart|waitcount_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_11_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z5\,
	combout => \u_uw_uart|inc_d_11_\,
	cout => \u_uw_uart|nx22081z4\);

-- Location: LCCOMB_X37_Y23_N24
\u_uw_uart|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_12_\ = (\u_uw_uart|waitcount_12_\ & (\u_uw_uart|nx22081z4\ $ (GND))) # (!\u_uw_uart|waitcount_12_\ & (!\u_uw_uart|nx22081z4\ & VCC))
-- \u_uw_uart|nx22081z3\ = CARRY((\u_uw_uart|waitcount_12_\ & !\u_uw_uart|nx22081z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|waitcount_12_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z4\,
	combout => \u_uw_uart|inc_d_12_\,
	cout => \u_uw_uart|nx22081z3\);

-- Location: LCCOMB_X37_Y23_N26
\u_uw_uart|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_13_\ = (\u_uw_uart|waitcount_13_\ & (!\u_uw_uart|nx22081z3\)) # (!\u_uw_uart|waitcount_13_\ & ((\u_uw_uart|nx22081z3\) # (GND)))
-- \u_uw_uart|nx22081z2\ = CARRY((!\u_uw_uart|nx22081z3\) # (!\u_uw_uart|waitcount_13_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_13_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z3\,
	combout => \u_uw_uart|inc_d_13_\,
	cout => \u_uw_uart|nx22081z2\);

-- Location: LCCOMB_X37_Y23_N28
\u_uw_uart|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_14_\ = (\u_uw_uart|waitcount_14_\ & (\u_uw_uart|nx22081z2\ $ (GND))) # (!\u_uw_uart|waitcount_14_\ & (!\u_uw_uart|nx22081z2\ & VCC))
-- \u_uw_uart|nx22081z1\ = CARRY((\u_uw_uart|waitcount_14_\ & !\u_uw_uart|nx22081z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|waitcount_14_\,
	datad => VCC,
	cin => \u_uw_uart|nx22081z2\,
	combout => \u_uw_uart|inc_d_14_\,
	cout => \u_uw_uart|nx22081z1\);

-- Location: LCCOMB_X37_Y23_N30
\u_uw_uart|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_15_\ = \u_uw_uart|nx22081z1\ $ (\u_uw_uart|waitcount_15_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|waitcount_15_\,
	cin => \u_uw_uart|nx22081z1\,
	combout => \u_uw_uart|inc_d_15_\);

-- Location: LCCOMB_X38_Y23_N4
\u_uw_uart|ix21084z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx21084z1\ = (\u_uw_uart|o_pixavail\) # ((\u_uw_uart|ack\) # (!\nrst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \nrst~combout\,
	datac => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx21084z1\);

-- Location: LCCOMB_X38_Y23_N0
\u_uw_uart|ix51271z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|inc_d_0_\ = !\u_uw_uart|waitcount_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|waitcount_0_\,
	combout => \u_uw_uart|inc_d_0_\);

-- Location: LCFF_X45_Y24_N23
\u_kirsch|reg_r9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx61908z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_edge\);

-- Location: LCCOMB_X38_Y23_N6
\u_uw_uart|ix36748z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx36748z2\ = (\u_uw_uart|o_pixavail\ & ((\u_kirsch|o_mode_1_\) # ((\u_kirsch|nx25376z9\)))) # (!\u_uw_uart|o_pixavail\ & (\u_uw_uart|ack\ & ((\u_kirsch|o_mode_1_\) # (\u_kirsch|nx25376z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|o_mode_1_\,
	datac => \u_uw_uart|ack\,
	datad => \u_kirsch|nx25376z9\,
	combout => \u_uw_uart|nx36748z2\);

-- Location: LCCOMB_X38_Y23_N24
\u_uw_uart|ix33757z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33757z1\ = (\u_uw_uart|nx36748z2\ & ((\u_kirsch|o_edge\) # (!\u_kirsch|o_valid\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx36748z2\,
	datab => \u_kirsch|o_edge\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|nx33757z1\);

-- Location: LCFF_X38_Y23_N17
\u_uw_uart|reg_mdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx34754z1\,
	ena => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_1_\);

-- Location: LCFF_X40_Y23_N29
\u_uw_uart|reg_sdout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|mdata_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|nx39865z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_2_\);

-- Location: LCFF_X40_Y24_N21
\u_uw_uart|i_uarts|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_3_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_4_\);

-- Location: LCFF_X37_Y24_N9
\u_uw_uart|i_uarts|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_3_\);

-- Location: LCCOMB_X36_Y24_N26
\u_uw_uart|i_uarts|ix34394z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|a_3_\ = \u_uw_uart|i_uarts|RxDivisor_4_\ $ (!\u_uw_uart|i_uarts|RxDiv_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datac => \u_uw_uart|i_uarts|RxDiv_3_\,
	combout => \u_uw_uart|i_uarts|a_3_\);

-- Location: LCFF_X37_Y24_N17
\u_uw_uart|i_uarts|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_7_\);

-- Location: LCFF_X37_Y24_N15
\u_uw_uart|i_uarts|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_6_\);

-- Location: LCFF_X37_Y24_N11
\u_uw_uart|i_uarts|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_4_\);

-- Location: LCCOMB_X36_Y24_N28
\u_uw_uart|i_uarts|ix53265z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx53265z5\ = (\u_uw_uart|i_uarts|RxDiv_7_\ & (\u_uw_uart|i_uarts|RxDivisor_4_\ & (\u_uw_uart|i_uarts|RxDiv_6_\ & \u_uw_uart|i_uarts|RxDiv_4_\))) # (!\u_uw_uart|i_uarts|RxDiv_7_\ & (!\u_uw_uart|i_uarts|RxDivisor_4_\ & 
-- (!\u_uw_uart|i_uarts|RxDiv_6_\ & !\u_uw_uart|i_uarts|RxDiv_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_7_\,
	datab => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datac => \u_uw_uart|i_uarts|RxDiv_6_\,
	datad => \u_uw_uart|i_uarts|RxDiv_4_\,
	combout => \u_uw_uart|i_uarts|nx53265z5\);

-- Location: LCFF_X37_Y24_N23
\u_uw_uart|i_uarts|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_10_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_10_\);

-- Location: LCFF_X37_Y24_N21
\u_uw_uart|i_uarts|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_9_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_9_\);

-- Location: LCFF_X37_Y24_N19
\u_uw_uart|i_uarts|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_8_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_8_\);

-- Location: LCFF_X37_Y24_N13
\u_uw_uart|i_uarts|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_5_\);

-- Location: LCCOMB_X36_Y24_N14
\u_uw_uart|i_uarts|ix53265z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx53265z6\ = (!\u_uw_uart|i_uarts|RxDiv_9_\ & (!\u_uw_uart|i_uarts|RxDiv_8_\ & (!\u_uw_uart|i_uarts|RxDiv_5_\ & !\u_uw_uart|i_uarts|RxDiv_10_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_9_\,
	datab => \u_uw_uart|i_uarts|RxDiv_8_\,
	datac => \u_uw_uart|i_uarts|RxDiv_5_\,
	datad => \u_uw_uart|i_uarts|RxDiv_10_\,
	combout => \u_uw_uart|i_uarts|nx53265z6\);

-- Location: LCFF_X37_Y24_N7
\u_uw_uart|i_uarts|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_2_\);

-- Location: LCFF_X37_Y24_N5
\u_uw_uart|i_uarts|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_1_\);

-- Location: LCFF_X36_Y24_N25
\u_uw_uart|i_uarts|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_0_\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx53265z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDiv_0_\);

-- Location: LCCOMB_X36_Y24_N12
\u_uw_uart|i_uarts|ix34394z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z2\ = (!\u_uw_uart|i_uarts|RxDiv_1_\ & (!\u_uw_uart|i_uarts|RxDiv_2_\ & (!\u_uw_uart|i_uarts|RxDiv_0_\ & \u_uw_uart|i_uarts|nx53265z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_1_\,
	datab => \u_uw_uart|i_uarts|RxDiv_2_\,
	datac => \u_uw_uart|i_uarts|RxDiv_0_\,
	datad => \u_uw_uart|i_uarts|nx53265z2\,
	combout => \u_uw_uart|i_uarts|nx34394z2\);

-- Location: LCCOMB_X36_Y24_N20
\u_uw_uart|i_uarts|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx34394z1\ = (\u_uw_uart|i_uarts|nx34394z2\ & (\u_uw_uart|i_uarts|nx53265z5\ & (\u_uw_uart|i_uarts|nx53265z6\ & \u_uw_uart|i_uarts|a_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx34394z2\,
	datab => \u_uw_uart|i_uarts|nx53265z5\,
	datac => \u_uw_uart|i_uarts|nx53265z6\,
	datad => \u_uw_uart|i_uarts|a_3_\,
	combout => \u_uw_uart|i_uarts|nx34394z1\);

-- Location: LCFF_X40_Y24_N29
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx8373z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_3_\);

-- Location: LCFF_X40_Y24_N1
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx9370z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_2_\);

-- Location: LCCOMB_X40_Y24_N26
\u_uw_uart|i_uarts|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z2\ = (!\u_uw_uart|i_uarts|RxBitCnt_2_\ & \u_uw_uart|i_uarts|RxBitCnt_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	combout => \u_uw_uart|i_uarts|nx13547z2\);

-- Location: LCCOMB_X41_Y23_N24
\u_uw_uart|i_uarts|ix15541z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z2\ = (\u_uw_uart|rawrx\) # (!\u_uw_uart|i_uarts|RxFSM_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxFSM_5_\,
	datac => \u_uw_uart|rawrx\,
	combout => \u_uw_uart|i_uarts|nx15541z2\);

-- Location: LCFF_X44_Y24_N25
\u_kirsch|reg_r6_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_12_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_12_\);

-- Location: LCFF_X43_Y23_N25
\u_kirsch|reg_r4_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_9_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_9_\);

-- Location: LCFF_X44_Y24_N23
\u_kirsch|reg_r6_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_11_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_11_\);

-- Location: LCFF_X42_Y23_N1
\u_kirsch|reg_r4_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_8_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_8_\);

-- Location: LCFF_X44_Y24_N21
\u_kirsch|reg_r6_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_10_\);

-- Location: LCFF_X42_Y23_N3
\u_kirsch|reg_r4_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_7_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_7_\);

-- Location: LCFF_X44_Y24_N19
\u_kirsch|reg_r6_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_9_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_9_\);

-- Location: LCFF_X42_Y23_N29
\u_kirsch|reg_r4_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_6_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_6_\);

-- Location: LCFF_X44_Y24_N17
\u_kirsch|reg_r6_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_8_\);

-- Location: LCFF_X42_Y23_N31
\u_kirsch|reg_r4_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_5_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_5_\);

-- Location: LCFF_X44_Y24_N15
\u_kirsch|reg_r6_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_7_\);

-- Location: LCFF_X42_Y23_N5
\u_kirsch|reg_r4_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_4_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_4_\);

-- Location: LCFF_X44_Y24_N13
\u_kirsch|reg_r6_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_6_\);

-- Location: LCFF_X43_Y23_N23
\u_kirsch|reg_r4_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_3_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_3_\);

-- Location: LCFF_X44_Y24_N11
\u_kirsch|reg_r6_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_5_\);

-- Location: LCFF_X43_Y23_N1
\u_kirsch|reg_r4_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_2_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_2_\);

-- Location: LCFF_X44_Y24_N9
\u_kirsch|reg_r6_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_4_\);

-- Location: LCFF_X43_Y23_N27
\u_kirsch|reg_r4_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_1_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_1_\);

-- Location: LCFF_X44_Y24_N7
\u_kirsch|reg_r6_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_3_\);

-- Location: LCFF_X42_Y23_N7
\u_kirsch|reg_r4_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_pix_0_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r4_0_\);

-- Location: LCFF_X44_Y24_N5
\u_kirsch|reg_r6_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_2_\);

-- Location: LCFF_X44_Y24_N3
\u_kirsch|reg_r6_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_1_\);

-- Location: LCFF_X44_Y24_N1
\u_kirsch|reg_r6_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|o_add_op12_stage2_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r6_0_\);

-- Location: LCCOMB_X44_Y23_N2
\u_kirsch|sub_out_sub13_0_ix61908z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z14\ = CARRY((!\u_kirsch|r6_0_\ & !\u_kirsch|r6_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_0_\,
	datab => \u_kirsch|r6_1_\,
	datad => VCC,
	cout => \u_kirsch|nx61908z14\);

-- Location: LCCOMB_X44_Y23_N4
\u_kirsch|sub_out_sub13_0_ix61908z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z13\ = CARRY((\u_kirsch|r6_2_\) # (!\u_kirsch|nx61908z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r6_2_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z14\,
	cout => \u_kirsch|nx61908z13\);

-- Location: LCCOMB_X44_Y23_N6
\u_kirsch|sub_out_sub13_0_ix61908z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z12\ = CARRY((\u_kirsch|r6_3_\ & (\u_kirsch|r4_0_\ & !\u_kirsch|nx61908z13\)) # (!\u_kirsch|r6_3_\ & ((\u_kirsch|r4_0_\) # (!\u_kirsch|nx61908z13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_3_\,
	datab => \u_kirsch|r4_0_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z13\,
	cout => \u_kirsch|nx61908z12\);

-- Location: LCCOMB_X44_Y23_N8
\u_kirsch|sub_out_sub13_0_ix61908z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z11\ = CARRY((\u_kirsch|r6_4_\ & ((!\u_kirsch|nx61908z12\) # (!\u_kirsch|r4_1_\))) # (!\u_kirsch|r6_4_\ & (!\u_kirsch|r4_1_\ & !\u_kirsch|nx61908z12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_4_\,
	datab => \u_kirsch|r4_1_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z12\,
	cout => \u_kirsch|nx61908z11\);

-- Location: LCCOMB_X44_Y23_N10
\u_kirsch|sub_out_sub13_0_ix61908z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z10\ = CARRY((\u_kirsch|r6_5_\ & (\u_kirsch|r4_2_\ & !\u_kirsch|nx61908z11\)) # (!\u_kirsch|r6_5_\ & ((\u_kirsch|r4_2_\) # (!\u_kirsch|nx61908z11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_5_\,
	datab => \u_kirsch|r4_2_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z11\,
	cout => \u_kirsch|nx61908z10\);

-- Location: LCCOMB_X44_Y23_N12
\u_kirsch|sub_out_sub13_0_ix61908z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z9\ = CARRY((\u_kirsch|r6_6_\ & ((!\u_kirsch|nx61908z10\) # (!\u_kirsch|r4_3_\))) # (!\u_kirsch|r6_6_\ & (!\u_kirsch|r4_3_\ & !\u_kirsch|nx61908z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_6_\,
	datab => \u_kirsch|r4_3_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z10\,
	cout => \u_kirsch|nx61908z9\);

-- Location: LCCOMB_X44_Y23_N14
\u_kirsch|sub_out_sub13_0_ix61908z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_out_7_\ = ((\u_kirsch|r6_7_\ $ (\u_kirsch|r4_4_\ $ (\u_kirsch|nx61908z9\)))) # (GND)
-- \u_kirsch|nx61908z8\ = CARRY((\u_kirsch|r6_7_\ & (\u_kirsch|r4_4_\ & !\u_kirsch|nx61908z9\)) # (!\u_kirsch|r6_7_\ & ((\u_kirsch|r4_4_\) # (!\u_kirsch|nx61908z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_7_\,
	datab => \u_kirsch|r4_4_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z9\,
	combout => \u_kirsch|sub_out_7_\,
	cout => \u_kirsch|nx61908z8\);

-- Location: LCCOMB_X44_Y23_N16
\u_kirsch|sub_out_sub13_0_ix61908z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_out_8_\ = (\u_kirsch|r6_8_\ & ((\u_kirsch|r4_5_\ & (!\u_kirsch|nx61908z8\)) # (!\u_kirsch|r4_5_\ & ((\u_kirsch|nx61908z8\) # (GND))))) # (!\u_kirsch|r6_8_\ & ((\u_kirsch|r4_5_\ & (\u_kirsch|nx61908z8\ & VCC)) # (!\u_kirsch|r4_5_\ & 
-- (!\u_kirsch|nx61908z8\))))
-- \u_kirsch|nx61908z7\ = CARRY((\u_kirsch|r6_8_\ & ((!\u_kirsch|nx61908z8\) # (!\u_kirsch|r4_5_\))) # (!\u_kirsch|r6_8_\ & (!\u_kirsch|r4_5_\ & !\u_kirsch|nx61908z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_8_\,
	datab => \u_kirsch|r4_5_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z8\,
	combout => \u_kirsch|sub_out_8_\,
	cout => \u_kirsch|nx61908z7\);

-- Location: LCCOMB_X44_Y23_N18
\u_kirsch|sub_out_sub13_0_ix61908z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_out_9_\ = ((\u_kirsch|r4_6_\ $ (\u_kirsch|r6_9_\ $ (\u_kirsch|nx61908z7\)))) # (GND)
-- \u_kirsch|nx61908z6\ = CARRY((\u_kirsch|r4_6_\ & ((!\u_kirsch|nx61908z7\) # (!\u_kirsch|r6_9_\))) # (!\u_kirsch|r4_6_\ & (!\u_kirsch|r6_9_\ & !\u_kirsch|nx61908z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_6_\,
	datab => \u_kirsch|r6_9_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z7\,
	combout => \u_kirsch|sub_out_9_\,
	cout => \u_kirsch|nx61908z6\);

-- Location: LCCOMB_X44_Y23_N20
\u_kirsch|sub_out_sub13_0_ix61908z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_out_10_\ = (\u_kirsch|r4_7_\ & ((\u_kirsch|r6_10_\ & (!\u_kirsch|nx61908z6\)) # (!\u_kirsch|r6_10_\ & (\u_kirsch|nx61908z6\ & VCC)))) # (!\u_kirsch|r4_7_\ & ((\u_kirsch|r6_10_\ & ((\u_kirsch|nx61908z6\) # (GND))) # (!\u_kirsch|r6_10_\ & 
-- (!\u_kirsch|nx61908z6\))))
-- \u_kirsch|nx61908z5\ = CARRY((\u_kirsch|r4_7_\ & (\u_kirsch|r6_10_\ & !\u_kirsch|nx61908z6\)) # (!\u_kirsch|r4_7_\ & ((\u_kirsch|r6_10_\) # (!\u_kirsch|nx61908z6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_7_\,
	datab => \u_kirsch|r6_10_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z6\,
	combout => \u_kirsch|sub_out_10_\,
	cout => \u_kirsch|nx61908z5\);

-- Location: LCCOMB_X44_Y23_N22
\u_kirsch|sub_out_sub13_0_ix61908z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_out_11_\ = ((\u_kirsch|r6_11_\ $ (\u_kirsch|r4_8_\ $ (\u_kirsch|nx61908z5\)))) # (GND)
-- \u_kirsch|nx61908z4\ = CARRY((\u_kirsch|r6_11_\ & (\u_kirsch|r4_8_\ & !\u_kirsch|nx61908z5\)) # (!\u_kirsch|r6_11_\ & ((\u_kirsch|r4_8_\) # (!\u_kirsch|nx61908z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_11_\,
	datab => \u_kirsch|r4_8_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z5\,
	combout => \u_kirsch|sub_out_11_\,
	cout => \u_kirsch|nx61908z4\);

-- Location: LCCOMB_X44_Y23_N24
\u_kirsch|sub_out_sub13_0_ix61908z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|sub_out_12_\ = (\u_kirsch|r4_9_\ & ((\u_kirsch|r6_12_\ & (!\u_kirsch|nx61908z4\)) # (!\u_kirsch|r6_12_\ & (\u_kirsch|nx61908z4\ & VCC)))) # (!\u_kirsch|r4_9_\ & ((\u_kirsch|r6_12_\ & ((\u_kirsch|nx61908z4\) # (GND))) # (!\u_kirsch|r6_12_\ & 
-- (!\u_kirsch|nx61908z4\))))
-- \u_kirsch|nx61908z3\ = CARRY((\u_kirsch|r4_9_\ & (\u_kirsch|r6_12_\ & !\u_kirsch|nx61908z4\)) # (!\u_kirsch|r4_9_\ & ((\u_kirsch|r6_12_\) # (!\u_kirsch|nx61908z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_9_\,
	datab => \u_kirsch|r6_12_\,
	datad => VCC,
	cin => \u_kirsch|nx61908z4\,
	combout => \u_kirsch|sub_out_12_\,
	cout => \u_kirsch|nx61908z3\);

-- Location: LCCOMB_X44_Y23_N26
\u_kirsch|ix61908z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z2\ = (!\u_kirsch|nx61908z3\ & \u_kirsch|valid_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|valid_6_\,
	cin => \u_kirsch|nx61908z3\,
	combout => \u_kirsch|nx61908z2\);

-- Location: LCCOMB_X44_Y23_N0
\u_kirsch|ix61908z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z15\ = (\u_kirsch|sub_out_10_\) # ((\u_kirsch|sub_out_12_\) # (\u_kirsch|sub_out_11_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|sub_out_10_\,
	datac => \u_kirsch|sub_out_12_\,
	datad => \u_kirsch|sub_out_11_\,
	combout => \u_kirsch|nx61908z15\);

-- Location: LCCOMB_X44_Y23_N28
\u_kirsch|ix61908z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z16\ = (\u_kirsch|sub_out_9_\) # ((\u_kirsch|sub_out_7_\ & \u_kirsch|sub_out_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|sub_out_7_\,
	datac => \u_kirsch|sub_out_8_\,
	datad => \u_kirsch|sub_out_9_\,
	combout => \u_kirsch|nx61908z16\);

-- Location: LCCOMB_X44_Y23_N30
\u_kirsch|ix61908z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z17\ = (!\u_kirsch|valid_6_\ & \u_kirsch|o_edge\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_6_\,
	datad => \u_kirsch|o_edge\,
	combout => \u_kirsch|nx61908z17\);

-- Location: LCCOMB_X45_Y24_N22
\u_kirsch|ix61908z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx61908z1\ = (\u_kirsch|nx61908z17\) # ((\u_kirsch|nx61908z2\ & ((\u_kirsch|nx61908z16\) # (\u_kirsch|nx61908z15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx61908z16\,
	datab => \u_kirsch|nx61908z17\,
	datac => \u_kirsch|nx61908z2\,
	datad => \u_kirsch|nx61908z15\,
	combout => \u_kirsch|nx61908z1\);

-- Location: LCFF_X46_Y23_N1
\u_kirsch|reg_r8_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx24856z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_0_\);

-- Location: LCCOMB_X46_Y23_N12
\u_kirsch|ix63886z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_dir_0_\ = (\u_kirsch|o_edge\ & \u_kirsch|r8_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|o_edge\,
	datad => \u_kirsch|r8_0_\,
	combout => \u_kirsch|o_dir_0_\);

-- Location: LCCOMB_X38_Y23_N16
\u_uw_uart|ix34754z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx34754z1\ = (\u_uw_uart|nx36748z2\ & ((\u_kirsch|o_dir_0_\) # (!\u_kirsch|o_valid\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx36748z2\,
	datab => \u_kirsch|o_dir_0_\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|nx34754z1\);

-- Location: LCFF_X38_Y23_N19
\u_uw_uart|reg_mdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx35751z1\,
	ena => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_2_\);

-- Location: LCFF_X40_Y23_N23
\u_uw_uart|reg_sdout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx39865z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_3_\);

-- Location: LCFF_X40_Y24_N23
\u_uw_uart|i_uarts|reg_Tx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_4_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_5_\);

-- Location: LCCOMB_X37_Y24_N2
\u_uw_uart|i_uarts|ix52268z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx52268z1\ = CARRY(\u_uw_uart|i_uarts|RxDiv_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_0_\,
	datad => VCC,
	cout => \u_uw_uart|i_uarts|nx52268z1\);

-- Location: LCCOMB_X37_Y24_N4
\u_uw_uart|i_uarts|ix52268z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_1_\ = (\u_uw_uart|i_uarts|RxDiv_1_\ & (!\u_uw_uart|i_uarts|nx52268z1\)) # (!\u_uw_uart|i_uarts|RxDiv_1_\ & ((\u_uw_uart|i_uarts|nx52268z1\) # (GND)))
-- \u_uw_uart|i_uarts|nx54262z2\ = CARRY((!\u_uw_uart|i_uarts|nx52268z1\) # (!\u_uw_uart|i_uarts|RxDiv_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_1_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx52268z1\,
	combout => \u_uw_uart|i_uarts|inc_d_1_\,
	cout => \u_uw_uart|i_uarts|nx54262z2\);

-- Location: LCCOMB_X37_Y24_N6
\u_uw_uart|i_uarts|ix54262z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_2_\ = (\u_uw_uart|i_uarts|RxDiv_2_\ & (\u_uw_uart|i_uarts|nx54262z2\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_2_\ & (!\u_uw_uart|i_uarts|nx54262z2\ & VCC))
-- \u_uw_uart|i_uarts|nx54262z1\ = CARRY((\u_uw_uart|i_uarts|RxDiv_2_\ & !\u_uw_uart|i_uarts|nx54262z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_2_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx54262z2\,
	combout => \u_uw_uart|i_uarts|inc_d_2_\,
	cout => \u_uw_uart|i_uarts|nx54262z1\);

-- Location: LCCOMB_X37_Y24_N8
\u_uw_uart|i_uarts|ix54262z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_3_\ = (\u_uw_uart|i_uarts|RxDiv_3_\ & (!\u_uw_uart|i_uarts|nx54262z1\)) # (!\u_uw_uart|i_uarts|RxDiv_3_\ & ((\u_uw_uart|i_uarts|nx54262z1\) # (GND)))
-- \u_uw_uart|i_uarts|nx58250z4\ = CARRY((!\u_uw_uart|i_uarts|nx54262z1\) # (!\u_uw_uart|i_uarts|RxDiv_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_3_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx54262z1\,
	combout => \u_uw_uart|i_uarts|inc_d_3_\,
	cout => \u_uw_uart|i_uarts|nx58250z4\);

-- Location: LCCOMB_X36_Y24_N30
\u_uw_uart|i_uarts|ix53265z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx53265z4\ = (!\u_uw_uart|i_uarts|RxDiv_1_\ & !\u_uw_uart|i_uarts|RxDiv_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_1_\,
	datad => \u_uw_uart|i_uarts|RxDiv_2_\,
	combout => \u_uw_uart|i_uarts|nx53265z4\);

-- Location: LCCOMB_X36_Y24_N0
\u_uw_uart|i_uarts|ix53265z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx53265z3\ = (!\u_uw_uart|i_uarts|RxDiv_0_\ & (\u_uw_uart|i_uarts|nx53265z4\ & (\u_uw_uart|i_uarts|RxDivisor_4_\ $ (!\u_uw_uart|i_uarts|RxDiv_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_0_\,
	datab => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datac => \u_uw_uart|i_uarts|RxDiv_3_\,
	datad => \u_uw_uart|i_uarts|nx53265z4\,
	combout => \u_uw_uart|i_uarts|nx53265z3\);

-- Location: LCCOMB_X36_Y24_N2
\u_uw_uart|i_uarts|ix53265z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx53265z1\ = ((\u_uw_uart|i_uarts|nx53265z5\ & (\u_uw_uart|i_uarts|nx53265z6\ & \u_uw_uart|i_uarts|nx53265z3\))) # (!\u_uw_uart|i_uarts|nx53265z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx53265z2\,
	datab => \u_uw_uart|i_uarts|nx53265z5\,
	datac => \u_uw_uart|i_uarts|nx53265z6\,
	datad => \u_uw_uart|i_uarts|nx53265z3\,
	combout => \u_uw_uart|i_uarts|nx53265z1\);

-- Location: LCCOMB_X37_Y24_N10
\u_uw_uart|i_uarts|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_4_\ = (\u_uw_uart|i_uarts|RxDiv_4_\ & (\u_uw_uart|i_uarts|nx58250z4\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_4_\ & (!\u_uw_uart|i_uarts|nx58250z4\ & VCC))
-- \u_uw_uart|i_uarts|nx58250z3\ = CARRY((\u_uw_uart|i_uarts|RxDiv_4_\ & !\u_uw_uart|i_uarts|nx58250z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_4_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx58250z4\,
	combout => \u_uw_uart|i_uarts|inc_d_4_\,
	cout => \u_uw_uart|i_uarts|nx58250z3\);

-- Location: LCCOMB_X37_Y24_N12
\u_uw_uart|i_uarts|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_5_\ = (\u_uw_uart|i_uarts|RxDiv_5_\ & (!\u_uw_uart|i_uarts|nx58250z3\)) # (!\u_uw_uart|i_uarts|RxDiv_5_\ & ((\u_uw_uart|i_uarts|nx58250z3\) # (GND)))
-- \u_uw_uart|i_uarts|nx58250z2\ = CARRY((!\u_uw_uart|i_uarts|nx58250z3\) # (!\u_uw_uart|i_uarts|RxDiv_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_5_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx58250z3\,
	combout => \u_uw_uart|i_uarts|inc_d_5_\,
	cout => \u_uw_uart|i_uarts|nx58250z2\);

-- Location: LCCOMB_X37_Y24_N14
\u_uw_uart|i_uarts|ix58250z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_6_\ = (\u_uw_uart|i_uarts|RxDiv_6_\ & (\u_uw_uart|i_uarts|nx58250z2\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_6_\ & (!\u_uw_uart|i_uarts|nx58250z2\ & VCC))
-- \u_uw_uart|i_uarts|nx58250z1\ = CARRY((\u_uw_uart|i_uarts|RxDiv_6_\ & !\u_uw_uart|i_uarts|nx58250z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_6_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx58250z2\,
	combout => \u_uw_uart|i_uarts|inc_d_6_\,
	cout => \u_uw_uart|i_uarts|nx58250z1\);

-- Location: LCCOMB_X37_Y24_N16
\u_uw_uart|i_uarts|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_7_\ = (\u_uw_uart|i_uarts|RxDiv_7_\ & (!\u_uw_uart|i_uarts|nx58250z1\)) # (!\u_uw_uart|i_uarts|RxDiv_7_\ & ((\u_uw_uart|i_uarts|nx58250z1\) # (GND)))
-- \u_uw_uart|i_uarts|nx17096z3\ = CARRY((!\u_uw_uart|i_uarts|nx58250z1\) # (!\u_uw_uart|i_uarts|RxDiv_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_7_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx58250z1\,
	combout => \u_uw_uart|i_uarts|inc_d_7_\,
	cout => \u_uw_uart|i_uarts|nx17096z3\);

-- Location: LCCOMB_X37_Y24_N18
\u_uw_uart|i_uarts|ix17096z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_8_\ = (\u_uw_uart|i_uarts|RxDiv_8_\ & (\u_uw_uart|i_uarts|nx17096z3\ $ (GND))) # (!\u_uw_uart|i_uarts|RxDiv_8_\ & (!\u_uw_uart|i_uarts|nx17096z3\ & VCC))
-- \u_uw_uart|i_uarts|nx17096z2\ = CARRY((\u_uw_uart|i_uarts|RxDiv_8_\ & !\u_uw_uart|i_uarts|nx17096z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxDiv_8_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx17096z3\,
	combout => \u_uw_uart|i_uarts|inc_d_8_\,
	cout => \u_uw_uart|i_uarts|nx17096z2\);

-- Location: LCCOMB_X37_Y24_N20
\u_uw_uart|i_uarts|ix17096z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_9_\ = (\u_uw_uart|i_uarts|RxDiv_9_\ & (!\u_uw_uart|i_uarts|nx17096z2\)) # (!\u_uw_uart|i_uarts|RxDiv_9_\ & ((\u_uw_uart|i_uarts|nx17096z2\) # (GND)))
-- \u_uw_uart|i_uarts|nx17096z1\ = CARRY((!\u_uw_uart|i_uarts|nx17096z2\) # (!\u_uw_uart|i_uarts|RxDiv_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxDiv_9_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx17096z2\,
	combout => \u_uw_uart|i_uarts|inc_d_9_\,
	cout => \u_uw_uart|i_uarts|nx17096z1\);

-- Location: LCCOMB_X37_Y24_N22
\u_uw_uart|i_uarts|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_10_\ = \u_uw_uart|i_uarts|nx17096z1\ $ (!\u_uw_uart|i_uarts|RxDiv_10_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|RxDiv_10_\,
	cin => \u_uw_uart|i_uarts|nx17096z1\,
	combout => \u_uw_uart|i_uarts|inc_d_10_\);

-- Location: LCCOMB_X36_Y24_N24
\u_uw_uart|i_uarts|ix51271z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_0_\ = !\u_uw_uart|i_uarts|RxDiv_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxDiv_0_\,
	combout => \u_uw_uart|i_uarts|inc_d_0_\);

-- Location: LCCOMB_X36_Y24_N6
\u_uw_uart|i_uarts|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z2\ = (!\u_uw_uart|i_uarts|RxBitCnt_1_\) # (!\u_uw_uart|i_uarts|RxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx8373z2\);

-- Location: LCCOMB_X40_Y24_N28
\u_uw_uart|i_uarts|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx8373z1\ = (\u_uw_uart|i_uarts|nx53265z2\ & (\u_uw_uart|i_uarts|RxBitCnt_3_\ $ (((!\u_uw_uart|i_uarts|nx8373z2\ & \u_uw_uart|i_uarts|RxBitCnt_2_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx8373z2\,
	datab => \u_uw_uart|i_uarts|nx53265z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_3_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	combout => \u_uw_uart|i_uarts|nx8373z1\);

-- Location: LCCOMB_X40_Y24_N0
\u_uw_uart|i_uarts|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx9370z1\ = (\u_uw_uart|i_uarts|nx53265z2\ & (\u_uw_uart|i_uarts|RxBitCnt_2_\ $ (((\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxBitCnt_1_\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datab => \u_uw_uart|i_uarts|nx53265z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_2_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	combout => \u_uw_uart|i_uarts|nx9370z1\);

-- Location: LCCOMB_X43_Y24_N12
\u_kirsch|ix28678z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_12_\ = (!\u_kirsch|valid_2_\ & \u_kirsch|r6_12_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datad => \u_kirsch|r6_12_\,
	combout => \u_kirsch|i_add4_12_\);

-- Location: LCCOMB_X43_Y24_N18
\u_kirsch|ix28678z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_12_\ = (\u_kirsch|r6_11_\ & \u_kirsch|valid_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r6_11_\,
	datac => \u_kirsch|valid_5_\,
	combout => \u_kirsch|i_add3_12_\);

-- Location: LCCOMB_X43_Y24_N8
\u_kirsch|ix28678z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_11_\ = (!\u_kirsch|valid_2_\ & \u_kirsch|r6_11_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datad => \u_kirsch|r6_11_\,
	combout => \u_kirsch|i_add4_11_\);

-- Location: LCCOMB_X43_Y24_N16
\u_kirsch|ix28678z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_11_\ = (\u_kirsch|r6_10_\ & \u_kirsch|valid_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r6_10_\,
	datac => \u_kirsch|valid_5_\,
	combout => \u_kirsch|i_add3_11_\);

-- Location: LCCOMB_X43_Y24_N20
\u_kirsch|ix28678z52951\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_10_\ = (!\u_kirsch|valid_2_\ & \u_kirsch|r6_10_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datad => \u_kirsch|r6_10_\,
	combout => \u_kirsch|i_add4_10_\);

-- Location: LCCOMB_X43_Y24_N4
\u_kirsch|ix28678z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_10_\ = (\u_kirsch|r6_9_\ & \u_kirsch|valid_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r6_9_\,
	datac => \u_kirsch|valid_5_\,
	combout => \u_kirsch|i_add3_10_\);

-- Location: LCCOMB_X43_Y24_N10
\u_kirsch|ix28678z52952\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_9_\ = (!\u_kirsch|valid_2_\ & \u_kirsch|r6_9_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datad => \u_kirsch|r6_9_\,
	combout => \u_kirsch|i_add4_9_\);

-- Location: LCCOMB_X43_Y24_N22
\u_kirsch|ix28678z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_9_\ = (\u_kirsch|valid_5_\ & \u_kirsch|r6_8_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r6_8_\,
	combout => \u_kirsch|i_add3_9_\);

-- Location: LCFF_X43_Y24_N7
\u_kirsch|reg_temp_add_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_8_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_8_\);

-- Location: LCCOMB_X43_Y24_N6
\u_kirsch|ix28678z52953\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_8_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_add_8_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r6_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_8_\,
	datac => \u_kirsch|temp_add_8_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_add4_8_\);

-- Location: LCFF_X43_Y24_N3
\u_kirsch|reg_r2_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|nx45057z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_8_\);

-- Location: LCCOMB_X43_Y24_N24
\u_kirsch|ix28678z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_8_\ = (\u_kirsch|valid_5_\ & ((\u_kirsch|r6_7_\))) # (!\u_kirsch|valid_5_\ & (\u_kirsch|r2_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_5_\,
	datab => \u_kirsch|r2_8_\,
	datac => \u_kirsch|r6_7_\,
	combout => \u_kirsch|i_add3_8_\);

-- Location: LCFF_X43_Y24_N15
\u_kirsch|reg_temp_add_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_7_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_7_\);

-- Location: LCCOMB_X43_Y24_N14
\u_kirsch|ix28678z52954\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_7_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_add_7_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r6_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r6_7_\,
	datac => \u_kirsch|temp_add_7_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_add4_7_\);

-- Location: LCFF_X48_Y24_N15
\u_kirsch|reg_r2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_7_\);

-- Location: LCCOMB_X43_Y24_N26
\u_kirsch|ix28678z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_7_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_6_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_6_\,
	datac => \u_kirsch|valid_5_\,
	datad => \u_kirsch|r2_7_\,
	combout => \u_kirsch|i_add3_7_\);

-- Location: LCFF_X43_Y24_N31
\u_kirsch|reg_temp_add_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_6_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_6_\);

-- Location: LCCOMB_X43_Y24_N30
\u_kirsch|ix28678z52955\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_6_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_add_6_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r6_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_add_6_\,
	datad => \u_kirsch|r6_6_\,
	combout => \u_kirsch|i_add4_6_\);

-- Location: LCFF_X48_Y24_N13
\u_kirsch|reg_r2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_6_\);

-- Location: LCCOMB_X43_Y24_N28
\u_kirsch|ix28678z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_6_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_5_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r6_5_\,
	datad => \u_kirsch|r2_6_\,
	combout => \u_kirsch|i_add3_6_\);

-- Location: LCFF_X44_Y24_N27
\u_kirsch|reg_temp_add_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_5_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_5_\);

-- Location: LCCOMB_X44_Y24_N26
\u_kirsch|ix28678z52956\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_5_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_add_5_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r6_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_add_5_\,
	datad => \u_kirsch|r6_5_\,
	combout => \u_kirsch|i_add4_5_\);

-- Location: LCFF_X48_Y24_N11
\u_kirsch|reg_r2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_5_\);

-- Location: LCCOMB_X45_Y24_N14
\u_kirsch|ix28678z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_5_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_4_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r6_4_\,
	datad => \u_kirsch|r2_5_\,
	combout => \u_kirsch|i_add3_5_\);

-- Location: LCFF_X45_Y23_N17
\u_kirsch|reg_temp_add_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_4_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_4_\);

-- Location: LCCOMB_X45_Y23_N16
\u_kirsch|ix28678z52957\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_4_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_add_4_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r6_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_add_4_\,
	datad => \u_kirsch|r6_4_\,
	combout => \u_kirsch|i_add4_4_\);

-- Location: LCFF_X48_Y24_N9
\u_kirsch|reg_r2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_4_\);

-- Location: LCCOMB_X45_Y24_N10
\u_kirsch|ix28678z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_4_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_3_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r6_3_\,
	datad => \u_kirsch|r2_4_\,
	combout => \u_kirsch|i_add3_4_\);

-- Location: LCFF_X45_Y23_N3
\u_kirsch|reg_temp_add_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_3_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_3_\);

-- Location: LCCOMB_X45_Y23_N2
\u_kirsch|ix28678z52958\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_3_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_add_3_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r6_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_3_\,
	datac => \u_kirsch|temp_add_3_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_add4_3_\);

-- Location: LCFF_X48_Y24_N7
\u_kirsch|reg_r2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_3_\);

-- Location: LCCOMB_X45_Y24_N2
\u_kirsch|ix28678z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_3_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_2_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r6_2_\,
	datad => \u_kirsch|r2_3_\,
	combout => \u_kirsch|i_add3_3_\);

-- Location: LCFF_X45_Y23_N5
\u_kirsch|reg_temp_add_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_2_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_2_\);

-- Location: LCCOMB_X45_Y23_N4
\u_kirsch|ix28678z52959\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_2_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_add_2_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r6_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_add_2_\,
	datad => \u_kirsch|r6_2_\,
	combout => \u_kirsch|i_add4_2_\);

-- Location: LCFF_X48_Y24_N5
\u_kirsch|reg_r2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_2_\);

-- Location: LCCOMB_X45_Y24_N6
\u_kirsch|ix28678z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_2_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_1_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_1_\,
	datab => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r2_2_\,
	combout => \u_kirsch|i_add3_2_\);

-- Location: LCFF_X45_Y23_N23
\u_kirsch|reg_temp_add_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_1_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_1_\);

-- Location: LCCOMB_X45_Y23_N22
\u_kirsch|ix28678z52960\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_1_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_add_1_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r6_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r6_1_\,
	datac => \u_kirsch|temp_add_1_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_add4_1_\);

-- Location: LCFF_X48_Y24_N3
\u_kirsch|reg_r2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_1_\);

-- Location: LCCOMB_X45_Y24_N18
\u_kirsch|ix28678z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_1_\ = (\u_kirsch|valid_5_\ & (\u_kirsch|r6_0_\)) # (!\u_kirsch|valid_5_\ & ((\u_kirsch|r2_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_5_\,
	datac => \u_kirsch|r6_0_\,
	datad => \u_kirsch|r2_1_\,
	combout => \u_kirsch|i_add3_1_\);

-- Location: LCFF_X48_Y24_N1
\u_kirsch|reg_r2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_add_op12_stage1_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r2_0_\);

-- Location: LCCOMB_X45_Y24_N26
\u_kirsch|ix28678z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add3_0_\ = (!\u_kirsch|valid_5_\ & \u_kirsch|r2_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|valid_5_\,
	datad => \u_kirsch|r2_0_\,
	combout => \u_kirsch|i_add3_0_\);

-- Location: LCFF_X45_Y23_N9
\u_kirsch|reg_temp_add_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r2_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_add_0_\);

-- Location: LCCOMB_X45_Y23_N8
\u_kirsch|ix28678z52961\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add4_0_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_add_0_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r6_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_add_0_\,
	datad => \u_kirsch|r6_0_\,
	combout => \u_kirsch|i_add4_0_\);

-- Location: LCCOMB_X44_Y24_N0
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_0_\ = (\u_kirsch|i_add4_0_\ & (\u_kirsch|i_add3_0_\ $ (VCC))) # (!\u_kirsch|i_add4_0_\ & (\u_kirsch|i_add3_0_\ & VCC))
-- \u_kirsch|stage2|nx22301z12\ = CARRY((\u_kirsch|i_add4_0_\ & \u_kirsch|i_add3_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_0_\,
	datab => \u_kirsch|i_add3_0_\,
	datad => VCC,
	combout => \u_kirsch|stage2|o_add_op12_stage2_0_\,
	cout => \u_kirsch|stage2|nx22301z12\);

-- Location: LCCOMB_X44_Y24_N2
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_1_\ = (\u_kirsch|i_add4_1_\ & ((\u_kirsch|i_add3_1_\ & (\u_kirsch|stage2|nx22301z12\ & VCC)) # (!\u_kirsch|i_add3_1_\ & (!\u_kirsch|stage2|nx22301z12\)))) # (!\u_kirsch|i_add4_1_\ & ((\u_kirsch|i_add3_1_\ & 
-- (!\u_kirsch|stage2|nx22301z12\)) # (!\u_kirsch|i_add3_1_\ & ((\u_kirsch|stage2|nx22301z12\) # (GND)))))
-- \u_kirsch|stage2|nx22301z11\ = CARRY((\u_kirsch|i_add4_1_\ & (!\u_kirsch|i_add3_1_\ & !\u_kirsch|stage2|nx22301z12\)) # (!\u_kirsch|i_add4_1_\ & ((!\u_kirsch|stage2|nx22301z12\) # (!\u_kirsch|i_add3_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_1_\,
	datab => \u_kirsch|i_add3_1_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z12\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_1_\,
	cout => \u_kirsch|stage2|nx22301z11\);

-- Location: LCCOMB_X44_Y24_N4
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_2_\ = ((\u_kirsch|i_add3_2_\ $ (\u_kirsch|i_add4_2_\ $ (!\u_kirsch|stage2|nx22301z11\)))) # (GND)
-- \u_kirsch|stage2|nx22301z10\ = CARRY((\u_kirsch|i_add3_2_\ & ((\u_kirsch|i_add4_2_\) # (!\u_kirsch|stage2|nx22301z11\))) # (!\u_kirsch|i_add3_2_\ & (\u_kirsch|i_add4_2_\ & !\u_kirsch|stage2|nx22301z11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add3_2_\,
	datab => \u_kirsch|i_add4_2_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z11\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_2_\,
	cout => \u_kirsch|stage2|nx22301z10\);

-- Location: LCCOMB_X44_Y24_N6
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_3_\ = (\u_kirsch|i_add3_3_\ & ((\u_kirsch|i_add4_3_\ & (\u_kirsch|stage2|nx22301z10\ & VCC)) # (!\u_kirsch|i_add4_3_\ & (!\u_kirsch|stage2|nx22301z10\)))) # (!\u_kirsch|i_add3_3_\ & ((\u_kirsch|i_add4_3_\ & 
-- (!\u_kirsch|stage2|nx22301z10\)) # (!\u_kirsch|i_add4_3_\ & ((\u_kirsch|stage2|nx22301z10\) # (GND)))))
-- \u_kirsch|stage2|nx22301z9\ = CARRY((\u_kirsch|i_add3_3_\ & (!\u_kirsch|i_add4_3_\ & !\u_kirsch|stage2|nx22301z10\)) # (!\u_kirsch|i_add3_3_\ & ((!\u_kirsch|stage2|nx22301z10\) # (!\u_kirsch|i_add4_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add3_3_\,
	datab => \u_kirsch|i_add4_3_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z10\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_3_\,
	cout => \u_kirsch|stage2|nx22301z9\);

-- Location: LCCOMB_X44_Y24_N8
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_4_\ = ((\u_kirsch|i_add4_4_\ $ (\u_kirsch|i_add3_4_\ $ (!\u_kirsch|stage2|nx22301z9\)))) # (GND)
-- \u_kirsch|stage2|nx22301z8\ = CARRY((\u_kirsch|i_add4_4_\ & ((\u_kirsch|i_add3_4_\) # (!\u_kirsch|stage2|nx22301z9\))) # (!\u_kirsch|i_add4_4_\ & (\u_kirsch|i_add3_4_\ & !\u_kirsch|stage2|nx22301z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_4_\,
	datab => \u_kirsch|i_add3_4_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z9\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_4_\,
	cout => \u_kirsch|stage2|nx22301z8\);

-- Location: LCCOMB_X44_Y24_N10
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_5_\ = (\u_kirsch|i_add3_5_\ & ((\u_kirsch|i_add4_5_\ & (\u_kirsch|stage2|nx22301z8\ & VCC)) # (!\u_kirsch|i_add4_5_\ & (!\u_kirsch|stage2|nx22301z8\)))) # (!\u_kirsch|i_add3_5_\ & ((\u_kirsch|i_add4_5_\ & 
-- (!\u_kirsch|stage2|nx22301z8\)) # (!\u_kirsch|i_add4_5_\ & ((\u_kirsch|stage2|nx22301z8\) # (GND)))))
-- \u_kirsch|stage2|nx22301z7\ = CARRY((\u_kirsch|i_add3_5_\ & (!\u_kirsch|i_add4_5_\ & !\u_kirsch|stage2|nx22301z8\)) # (!\u_kirsch|i_add3_5_\ & ((!\u_kirsch|stage2|nx22301z8\) # (!\u_kirsch|i_add4_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add3_5_\,
	datab => \u_kirsch|i_add4_5_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z8\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_5_\,
	cout => \u_kirsch|stage2|nx22301z7\);

-- Location: LCCOMB_X44_Y24_N12
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_6_\ = ((\u_kirsch|i_add4_6_\ $ (\u_kirsch|i_add3_6_\ $ (!\u_kirsch|stage2|nx22301z7\)))) # (GND)
-- \u_kirsch|stage2|nx22301z6\ = CARRY((\u_kirsch|i_add4_6_\ & ((\u_kirsch|i_add3_6_\) # (!\u_kirsch|stage2|nx22301z7\))) # (!\u_kirsch|i_add4_6_\ & (\u_kirsch|i_add3_6_\ & !\u_kirsch|stage2|nx22301z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_6_\,
	datab => \u_kirsch|i_add3_6_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z7\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_6_\,
	cout => \u_kirsch|stage2|nx22301z6\);

-- Location: LCCOMB_X44_Y24_N14
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_7_\ = (\u_kirsch|i_add4_7_\ & ((\u_kirsch|i_add3_7_\ & (\u_kirsch|stage2|nx22301z6\ & VCC)) # (!\u_kirsch|i_add3_7_\ & (!\u_kirsch|stage2|nx22301z6\)))) # (!\u_kirsch|i_add4_7_\ & ((\u_kirsch|i_add3_7_\ & 
-- (!\u_kirsch|stage2|nx22301z6\)) # (!\u_kirsch|i_add3_7_\ & ((\u_kirsch|stage2|nx22301z6\) # (GND)))))
-- \u_kirsch|stage2|nx22301z5\ = CARRY((\u_kirsch|i_add4_7_\ & (!\u_kirsch|i_add3_7_\ & !\u_kirsch|stage2|nx22301z6\)) # (!\u_kirsch|i_add4_7_\ & ((!\u_kirsch|stage2|nx22301z6\) # (!\u_kirsch|i_add3_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_7_\,
	datab => \u_kirsch|i_add3_7_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z6\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_7_\,
	cout => \u_kirsch|stage2|nx22301z5\);

-- Location: LCCOMB_X44_Y24_N16
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_8_\ = ((\u_kirsch|i_add4_8_\ $ (\u_kirsch|i_add3_8_\ $ (!\u_kirsch|stage2|nx22301z5\)))) # (GND)
-- \u_kirsch|stage2|nx22301z4\ = CARRY((\u_kirsch|i_add4_8_\ & ((\u_kirsch|i_add3_8_\) # (!\u_kirsch|stage2|nx22301z5\))) # (!\u_kirsch|i_add4_8_\ & (\u_kirsch|i_add3_8_\ & !\u_kirsch|stage2|nx22301z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_8_\,
	datab => \u_kirsch|i_add3_8_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z5\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_8_\,
	cout => \u_kirsch|stage2|nx22301z4\);

-- Location: LCCOMB_X44_Y24_N18
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_9_\ = (\u_kirsch|i_add4_9_\ & ((\u_kirsch|i_add3_9_\ & (\u_kirsch|stage2|nx22301z4\ & VCC)) # (!\u_kirsch|i_add3_9_\ & (!\u_kirsch|stage2|nx22301z4\)))) # (!\u_kirsch|i_add4_9_\ & ((\u_kirsch|i_add3_9_\ & 
-- (!\u_kirsch|stage2|nx22301z4\)) # (!\u_kirsch|i_add3_9_\ & ((\u_kirsch|stage2|nx22301z4\) # (GND)))))
-- \u_kirsch|stage2|nx22301z3\ = CARRY((\u_kirsch|i_add4_9_\ & (!\u_kirsch|i_add3_9_\ & !\u_kirsch|stage2|nx22301z4\)) # (!\u_kirsch|i_add4_9_\ & ((!\u_kirsch|stage2|nx22301z4\) # (!\u_kirsch|i_add3_9_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_9_\,
	datab => \u_kirsch|i_add3_9_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z4\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_9_\,
	cout => \u_kirsch|stage2|nx22301z3\);

-- Location: LCCOMB_X44_Y24_N20
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_10_\ = ((\u_kirsch|i_add3_10_\ $ (\u_kirsch|i_add4_10_\ $ (!\u_kirsch|stage2|nx22301z3\)))) # (GND)
-- \u_kirsch|stage2|nx22301z2\ = CARRY((\u_kirsch|i_add3_10_\ & ((\u_kirsch|i_add4_10_\) # (!\u_kirsch|stage2|nx22301z3\))) # (!\u_kirsch|i_add3_10_\ & (\u_kirsch|i_add4_10_\ & !\u_kirsch|stage2|nx22301z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add3_10_\,
	datab => \u_kirsch|i_add4_10_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z3\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_10_\,
	cout => \u_kirsch|stage2|nx22301z2\);

-- Location: LCCOMB_X44_Y24_N22
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_11_\ = (\u_kirsch|i_add4_11_\ & ((\u_kirsch|i_add3_11_\ & (\u_kirsch|stage2|nx22301z2\ & VCC)) # (!\u_kirsch|i_add3_11_\ & (!\u_kirsch|stage2|nx22301z2\)))) # (!\u_kirsch|i_add4_11_\ & ((\u_kirsch|i_add3_11_\ & 
-- (!\u_kirsch|stage2|nx22301z2\)) # (!\u_kirsch|i_add3_11_\ & ((\u_kirsch|stage2|nx22301z2\) # (GND)))))
-- \u_kirsch|stage2|nx22301z1\ = CARRY((\u_kirsch|i_add4_11_\ & (!\u_kirsch|i_add3_11_\ & !\u_kirsch|stage2|nx22301z2\)) # (!\u_kirsch|i_add4_11_\ & ((!\u_kirsch|stage2|nx22301z2\) # (!\u_kirsch|i_add3_11_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add4_11_\,
	datab => \u_kirsch|i_add3_11_\,
	datad => VCC,
	cin => \u_kirsch|stage2|nx22301z2\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_11_\,
	cout => \u_kirsch|stage2|nx22301z1\);

-- Location: LCCOMB_X44_Y24_N24
\u_kirsch|stage2|o_add_op12_stage2_add13_0_ix22301z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|o_add_op12_stage2_12_\ = \u_kirsch|i_add3_12_\ $ (\u_kirsch|stage2|nx22301z1\ $ (!\u_kirsch|i_add4_12_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_add3_12_\,
	datad => \u_kirsch|i_add4_12_\,
	cin => \u_kirsch|stage2|nx22301z1\,
	combout => \u_kirsch|stage2|o_add_op12_stage2_12_\);

-- Location: LCFF_X45_Y23_N19
\u_kirsch|reg_temp_max_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_9_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_9_\);

-- Location: LCCOMB_X45_Y23_N18
\u_kirsch|ix28678z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_9_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_max_9_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r4_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_max_9_\,
	datad => \u_kirsch|r4_9_\,
	combout => \u_kirsch|i_max3_9_\);

-- Location: LCFF_X47_Y23_N27
\u_kirsch|reg_r3_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|nx15254z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_9_\);

-- Location: LCFF_X47_Y23_N25
\u_kirsch|reg_r3_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_8_\);

-- Location: LCFF_X45_Y23_N29
\u_kirsch|reg_temp_max_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_8_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_8_\);

-- Location: LCCOMB_X45_Y23_N28
\u_kirsch|ix28678z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_8_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_max_8_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r4_8_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_max_8_\,
	datad => \u_kirsch|r4_8_\,
	combout => \u_kirsch|i_max3_8_\);

-- Location: LCFF_X47_Y23_N15
\u_kirsch|reg_r3_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_7_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_7_\);

-- Location: LCFF_X45_Y23_N31
\u_kirsch|reg_temp_max_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_7_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_7_\);

-- Location: LCCOMB_X45_Y23_N30
\u_kirsch|ix28678z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_7_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_max_7_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r4_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_max_7_\,
	datad => \u_kirsch|r4_7_\,
	combout => \u_kirsch|i_max3_7_\);

-- Location: LCFF_X47_Y23_N13
\u_kirsch|reg_r3_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_6_\);

-- Location: LCFF_X45_Y23_N25
\u_kirsch|reg_temp_max_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_6_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_6_\);

-- Location: LCCOMB_X45_Y23_N24
\u_kirsch|ix28678z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_6_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_max_6_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r4_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_6_\,
	datac => \u_kirsch|temp_max_6_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_max3_6_\);

-- Location: LCFF_X47_Y23_N11
\u_kirsch|reg_r3_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_5_\);

-- Location: LCFF_X45_Y23_N11
\u_kirsch|reg_temp_max_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_5_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_5_\);

-- Location: LCCOMB_X45_Y23_N10
\u_kirsch|ix28678z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_5_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_max_5_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r4_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_max_5_\,
	datad => \u_kirsch|r4_5_\,
	combout => \u_kirsch|i_max3_5_\);

-- Location: LCFF_X47_Y23_N9
\u_kirsch|reg_r3_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_4_\);

-- Location: LCFF_X45_Y23_N21
\u_kirsch|reg_temp_max_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_4_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_4_\);

-- Location: LCCOMB_X45_Y23_N20
\u_kirsch|ix28678z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_4_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_max_4_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r4_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r4_4_\,
	datac => \u_kirsch|temp_max_4_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_max3_4_\);

-- Location: LCFF_X47_Y23_N7
\u_kirsch|reg_r3_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_3_\);

-- Location: LCFF_X43_Y23_N29
\u_kirsch|reg_temp_max_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_3_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_3_\);

-- Location: LCCOMB_X43_Y23_N28
\u_kirsch|ix28678z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_3_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_max_3_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r4_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_3_\,
	datac => \u_kirsch|temp_max_3_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_max3_3_\);

-- Location: LCFF_X47_Y23_N5
\u_kirsch|reg_r3_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_2_\);

-- Location: LCFF_X45_Y23_N7
\u_kirsch|reg_temp_max_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_2_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_2_\);

-- Location: LCCOMB_X45_Y23_N6
\u_kirsch|ix28678z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_2_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_max_2_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r4_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_2_\,
	datac => \u_kirsch|temp_max_2_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_max3_2_\);

-- Location: LCFF_X47_Y23_N3
\u_kirsch|reg_r3_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_1_\);

-- Location: LCFF_X44_Y24_N29
\u_kirsch|reg_temp_max_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_1_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_1_\);

-- Location: LCCOMB_X44_Y24_N28
\u_kirsch|ix28678z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_1_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_max_1_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r4_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_max_1_\,
	datad => \u_kirsch|r4_1_\,
	combout => \u_kirsch|i_max3_1_\);

-- Location: LCFF_X43_Y23_N31
\u_kirsch|reg_temp_max_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r3_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_max_0_\);

-- Location: LCCOMB_X43_Y23_N30
\u_kirsch|ix28678z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max3_0_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_max_0_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r4_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r4_0_\,
	datac => \u_kirsch|temp_max_0_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_max3_0_\);

-- Location: LCFF_X47_Y23_N1
\u_kirsch|reg_r3_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|o_max_add_stage1_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r3_0_\);

-- Location: LCCOMB_X43_Y23_N2
\u_kirsch|stage2|u_max2|ix52134z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z10\ = CARRY((!\u_kirsch|r3_0_\ & \u_kirsch|i_max3_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_0_\,
	datab => \u_kirsch|i_max3_0_\,
	datad => VCC,
	cout => \u_kirsch|stage2|u_max2|nx52134z10\);

-- Location: LCCOMB_X43_Y23_N4
\u_kirsch|stage2|u_max2|ix52134z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z9\ = CARRY((\u_kirsch|i_max3_1_\ & (\u_kirsch|r3_1_\ & !\u_kirsch|stage2|u_max2|nx52134z10\)) # (!\u_kirsch|i_max3_1_\ & ((\u_kirsch|r3_1_\) # (!\u_kirsch|stage2|u_max2|nx52134z10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_1_\,
	datab => \u_kirsch|r3_1_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z10\,
	cout => \u_kirsch|stage2|u_max2|nx52134z9\);

-- Location: LCCOMB_X43_Y23_N6
\u_kirsch|stage2|u_max2|ix52134z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z8\ = CARRY((\u_kirsch|r3_2_\ & (\u_kirsch|i_max3_2_\ & !\u_kirsch|stage2|u_max2|nx52134z9\)) # (!\u_kirsch|r3_2_\ & ((\u_kirsch|i_max3_2_\) # (!\u_kirsch|stage2|u_max2|nx52134z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_2_\,
	datab => \u_kirsch|i_max3_2_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z9\,
	cout => \u_kirsch|stage2|u_max2|nx52134z8\);

-- Location: LCCOMB_X43_Y23_N8
\u_kirsch|stage2|u_max2|ix52134z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z7\ = CARRY((\u_kirsch|r3_3_\ & ((!\u_kirsch|stage2|u_max2|nx52134z8\) # (!\u_kirsch|i_max3_3_\))) # (!\u_kirsch|r3_3_\ & (!\u_kirsch|i_max3_3_\ & !\u_kirsch|stage2|u_max2|nx52134z8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_3_\,
	datab => \u_kirsch|i_max3_3_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z8\,
	cout => \u_kirsch|stage2|u_max2|nx52134z7\);

-- Location: LCCOMB_X43_Y23_N10
\u_kirsch|stage2|u_max2|ix52134z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z6\ = CARRY((\u_kirsch|r3_4_\ & (\u_kirsch|i_max3_4_\ & !\u_kirsch|stage2|u_max2|nx52134z7\)) # (!\u_kirsch|r3_4_\ & ((\u_kirsch|i_max3_4_\) # (!\u_kirsch|stage2|u_max2|nx52134z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_4_\,
	datab => \u_kirsch|i_max3_4_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z7\,
	cout => \u_kirsch|stage2|u_max2|nx52134z6\);

-- Location: LCCOMB_X43_Y23_N12
\u_kirsch|stage2|u_max2|ix52134z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z5\ = CARRY((\u_kirsch|i_max3_5_\ & (\u_kirsch|r3_5_\ & !\u_kirsch|stage2|u_max2|nx52134z6\)) # (!\u_kirsch|i_max3_5_\ & ((\u_kirsch|r3_5_\) # (!\u_kirsch|stage2|u_max2|nx52134z6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_5_\,
	datab => \u_kirsch|r3_5_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z6\,
	cout => \u_kirsch|stage2|u_max2|nx52134z5\);

-- Location: LCCOMB_X43_Y23_N14
\u_kirsch|stage2|u_max2|ix52134z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z4\ = CARRY((\u_kirsch|r3_6_\ & (\u_kirsch|i_max3_6_\ & !\u_kirsch|stage2|u_max2|nx52134z5\)) # (!\u_kirsch|r3_6_\ & ((\u_kirsch|i_max3_6_\) # (!\u_kirsch|stage2|u_max2|nx52134z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_6_\,
	datab => \u_kirsch|i_max3_6_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z5\,
	cout => \u_kirsch|stage2|u_max2|nx52134z4\);

-- Location: LCCOMB_X43_Y23_N16
\u_kirsch|stage2|u_max2|ix52134z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z3\ = CARRY((\u_kirsch|i_max3_7_\ & (\u_kirsch|r3_7_\ & !\u_kirsch|stage2|u_max2|nx52134z4\)) # (!\u_kirsch|i_max3_7_\ & ((\u_kirsch|r3_7_\) # (!\u_kirsch|stage2|u_max2|nx52134z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_7_\,
	datab => \u_kirsch|r3_7_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z4\,
	cout => \u_kirsch|stage2|u_max2|nx52134z3\);

-- Location: LCCOMB_X43_Y23_N18
\u_kirsch|stage2|u_max2|ix52134z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z2\ = CARRY((\u_kirsch|r3_8_\ & (\u_kirsch|i_max3_8_\ & !\u_kirsch|stage2|u_max2|nx52134z3\)) # (!\u_kirsch|r3_8_\ & ((\u_kirsch|i_max3_8_\) # (!\u_kirsch|stage2|u_max2|nx52134z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_8_\,
	datab => \u_kirsch|i_max3_8_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx52134z3\,
	cout => \u_kirsch|stage2|u_max2|nx52134z2\);

-- Location: LCCOMB_X43_Y23_N20
\u_kirsch|stage2|u_max2|ix52134z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx52134z1\ = (\u_kirsch|i_max3_9_\ & ((\u_kirsch|stage2|u_max2|nx52134z2\) # (!\u_kirsch|r3_9_\))) # (!\u_kirsch|i_max3_9_\ & (\u_kirsch|stage2|u_max2|nx52134z2\ & !\u_kirsch|r3_9_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_9_\,
	datad => \u_kirsch|r3_9_\,
	cin => \u_kirsch|stage2|u_max2|nx52134z2\,
	combout => \u_kirsch|stage2|u_max2|nx52134z1\);

-- Location: LCCOMB_X43_Y23_N24
\u_kirsch|stage2|u_max2|ix52134z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_9_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_9_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_9_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_9_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	datad => \u_kirsch|r3_9_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_9_\);

-- Location: LCCOMB_X42_Y23_N0
\u_kirsch|stage2|u_max2|ix53131z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_8_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|i_max3_8_\))) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|r3_8_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_8_\,
	datab => \u_kirsch|i_max3_8_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_8_\);

-- Location: LCCOMB_X42_Y23_N2
\u_kirsch|stage2|u_max2|ix54128z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_7_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_7_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max3_7_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	datad => \u_kirsch|r3_7_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_7_\);

-- Location: LCCOMB_X42_Y23_N28
\u_kirsch|stage2|u_max2|ix55125z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_6_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_6_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_6_\,
	datab => \u_kirsch|r3_6_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_6_\);

-- Location: LCCOMB_X42_Y23_N30
\u_kirsch|stage2|u_max2|ix56122z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_5_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_5_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max3_5_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	datad => \u_kirsch|r3_5_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_5_\);

-- Location: LCCOMB_X42_Y23_N4
\u_kirsch|stage2|u_max2|ix57119z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_4_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_4_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max3_4_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	datad => \u_kirsch|r3_4_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_4_\);

-- Location: LCCOMB_X43_Y23_N22
\u_kirsch|stage2|u_max2|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_3_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_3_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max3_3_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	datad => \u_kirsch|r3_3_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_3_\);

-- Location: LCCOMB_X43_Y23_N0
\u_kirsch|stage2|u_max2|ix59113z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_2_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|i_max3_2_\))) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|r3_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage2|u_max2|nx52134z1\,
	datac => \u_kirsch|r3_2_\,
	datad => \u_kirsch|i_max3_2_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_2_\);

-- Location: LCCOMB_X43_Y23_N26
\u_kirsch|stage2|u_max2|ix60110z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_1_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_1_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage2|u_max2|nx52134z1\,
	datab => \u_kirsch|i_max3_1_\,
	datac => \u_kirsch|r3_1_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_1_\);

-- Location: LCCOMB_X42_Y23_N6
\u_kirsch|stage2|u_max2|ix61107z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_pix_0_\ = (\u_kirsch|stage2|u_max2|nx52134z1\ & (\u_kirsch|i_max3_0_\)) # (!\u_kirsch|stage2|u_max2|nx52134z1\ & ((\u_kirsch|r3_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max3_0_\,
	datac => \u_kirsch|stage2|u_max2|nx52134z1\,
	datad => \u_kirsch|r3_0_\,
	combout => \u_kirsch|stage2|u_max2|o_max_pix_0_\);

-- Location: LCFF_X45_Y24_N25
\u_kirsch|reg_r5_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_dir_0_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_0_\);

-- Location: LCCOMB_X46_Y23_N0
\u_kirsch|ix24856z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx24856z1\ = (\u_kirsch|valid_6_\ & ((\u_kirsch|r5_0_\))) # (!\u_kirsch|valid_6_\ & (\u_kirsch|r8_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_6_\,
	datac => \u_kirsch|r8_0_\,
	datad => \u_kirsch|r5_0_\,
	combout => \u_kirsch|nx24856z1\);

-- Location: LCFF_X45_Y24_N31
\u_kirsch|reg_r8_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx23859z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_1_\);

-- Location: LCCOMB_X45_Y24_N8
\u_kirsch|ix62889z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_dir_1_\ = (\u_kirsch|r8_1_\ & \u_kirsch|o_edge\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r8_1_\,
	datad => \u_kirsch|o_edge\,
	combout => \u_kirsch|o_dir_1_\);

-- Location: LCCOMB_X38_Y23_N18
\u_uw_uart|ix35751z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx35751z1\ = (\u_uw_uart|nx36748z2\ & ((\u_kirsch|o_dir_1_\) # (!\u_kirsch|o_valid\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx36748z2\,
	datab => \u_kirsch|o_dir_1_\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|nx35751z1\);

-- Location: LCFF_X38_Y24_N15
\u_uw_uart|reg_mdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx36748z1\,
	ena => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_3_\);

-- Location: LCFF_X40_Y23_N9
\u_uw_uart|reg_sdout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx39865z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_4_\);

-- Location: LCFF_X40_Y24_N25
\u_uw_uart|i_uarts|reg_Tx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_6_\);

-- Location: LCFF_X46_Y24_N3
\u_kirsch|reg_e_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_7_\);

-- Location: LCCOMB_X49_Y24_N16
\u_kirsch|ix28679z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z3\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & \u_kirsch|valid_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z3\);

-- Location: LCFF_X50_Y24_N29
\u_kirsch|reg_g_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_7_\);

-- Location: LCCOMB_X50_Y24_N28
\u_kirsch|ix28679z52999\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z52\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|g_7_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|g_7_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z52\);

-- Location: LCFF_X51_Y24_N9
\u_kirsch|reg_c_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_7_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(7),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_7_\);

-- Location: LCFF_X46_Y24_N27
\u_kirsch|reg_h_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_7_\);

-- Location: LCCOMB_X46_Y24_N12
\u_kirsch|ix28679z53000\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z53\ = (\u_kirsch|valid_0_\ & (\u_kirsch|h_7_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|c_7_\ & \u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|h_7_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|c_7_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z53\);

-- Location: LCCOMB_X46_Y24_N24
\u_kirsch|ix28679z52998\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_7_\ = (\u_kirsch|nx28679z52\) # ((\u_kirsch|nx28679z53\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|e_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|nx28679z52\,
	datac => \u_kirsch|e_7_\,
	datad => \u_kirsch|nx28679z53\,
	combout => \u_kirsch|i_add2_7_\);

-- Location: LCFF_X51_Y24_N3
\u_kirsch|reg_d_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_7_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(7),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_7_\);

-- Location: LCFF_X46_Y24_N31
\u_kirsch|reg_f_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_7_\);

-- Location: LCCOMB_X50_Y24_N22
\u_kirsch|ix28679z52975\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z36\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_0_\ & \u_kirsch|f_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|f_7_\,
	combout => \u_kirsch|nx28679z36\);

-- Location: LCFF_X50_Y24_N25
\u_kirsch|reg_a_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_7_\);

-- Location: LCFF_X46_Y24_N1
\u_kirsch|reg_b_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_7_\);

-- Location: LCCOMB_X50_Y24_N6
\u_kirsch|ix28679z52976\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z37\ = (\u_kirsch|valid_0_\ & (\u_kirsch|a_7_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|b_7_\ & \u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|a_7_\,
	datab => \u_kirsch|b_7_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z37\);

-- Location: LCCOMB_X50_Y24_N12
\u_kirsch|ix28679z52974\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_7_\ = (\u_kirsch|nx28679z36\) # ((\u_kirsch|nx28679z37\) # ((\u_kirsch|d_7_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_7_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z36\,
	datad => \u_kirsch|nx28679z37\,
	combout => \u_kirsch|i_add1_7_\);

-- Location: LCFF_X48_Y24_N27
\u_kirsch|reg_e_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_6_\);

-- Location: LCFF_X49_Y23_N17
\u_kirsch|reg_g_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_6_\);

-- Location: LCCOMB_X49_Y23_N16
\u_kirsch|ix28679z53002\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z54\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|g_6_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|g_6_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z54\);

-- Location: LCFF_X51_Y24_N5
\u_kirsch|reg_c_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_6_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(6),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_6_\);

-- Location: LCFF_X50_Y23_N29
\u_kirsch|reg_h_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_6_\);

-- Location: LCCOMB_X48_Y24_N20
\u_kirsch|ix28679z53003\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z55\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|h_6_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & (\u_kirsch|c_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|c_6_\,
	datad => \u_kirsch|h_6_\,
	combout => \u_kirsch|nx28679z55\);

-- Location: LCCOMB_X48_Y24_N22
\u_kirsch|ix28679z53001\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_6_\ = (\u_kirsch|nx28679z55\) # ((\u_kirsch|nx28679z54\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|e_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|e_6_\,
	datac => \u_kirsch|nx28679z55\,
	datad => \u_kirsch|nx28679z54\,
	combout => \u_kirsch|i_add2_6_\);

-- Location: LCFF_X51_Y24_N23
\u_kirsch|reg_d_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_6_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(6),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_6_\);

-- Location: LCFF_X50_Y23_N21
\u_kirsch|reg_f_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_6_\);

-- Location: LCCOMB_X50_Y23_N24
\u_kirsch|ix28679z52978\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z38\ = (!\u_kirsch|valid_2_\ & (\u_kirsch|f_6_\ & (!\u_kirsch|valid_0_\ & !\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|f_6_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z38\);

-- Location: LCFF_X49_Y23_N29
\u_kirsch|reg_a_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_6_\);

-- Location: LCFF_X50_Y23_N27
\u_kirsch|reg_b_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_6_\);

-- Location: LCCOMB_X50_Y23_N22
\u_kirsch|ix28679z52979\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z39\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|a_6_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|b_6_\ & (\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|b_6_\,
	datac => \u_kirsch|valid_1_\,
	datad => \u_kirsch|a_6_\,
	combout => \u_kirsch|nx28679z39\);

-- Location: LCCOMB_X50_Y23_N8
\u_kirsch|ix28679z52977\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_6_\ = (\u_kirsch|nx28679z39\) # ((\u_kirsch|nx28679z38\) # ((\u_kirsch|d_6_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_6_\,
	datab => \u_kirsch|nx28679z39\,
	datac => \u_kirsch|nx28679z38\,
	datad => \u_kirsch|nx28679z3\,
	combout => \u_kirsch|i_add1_6_\);

-- Location: LCFF_X47_Y24_N5
\u_kirsch|reg_e_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_5_\);

-- Location: LCFF_X47_Y24_N1
\u_kirsch|reg_g_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_5_\);

-- Location: LCCOMB_X47_Y24_N0
\u_kirsch|ix28679z53005\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z56\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_2_\ & (\u_kirsch|g_5_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|g_5_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z56\);

-- Location: LCFF_X51_Y24_N25
\u_kirsch|reg_c_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_5_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(5),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_5_\);

-- Location: LCFF_X47_Y24_N27
\u_kirsch|reg_h_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_5_\);

-- Location: LCCOMB_X47_Y24_N18
\u_kirsch|ix28679z53006\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z57\ = (\u_kirsch|valid_0_\ & (\u_kirsch|h_5_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|valid_1_\ & \u_kirsch|c_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|h_5_\,
	datac => \u_kirsch|valid_1_\,
	datad => \u_kirsch|c_5_\,
	combout => \u_kirsch|nx28679z57\);

-- Location: LCCOMB_X47_Y24_N28
\u_kirsch|ix28679z53004\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_5_\ = (\u_kirsch|nx28679z56\) # ((\u_kirsch|nx28679z57\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|e_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z56\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|e_5_\,
	datad => \u_kirsch|nx28679z57\,
	combout => \u_kirsch|i_add2_5_\);

-- Location: LCFF_X51_Y24_N27
\u_kirsch|reg_d_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_5_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(5),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_5_\);

-- Location: LCFF_X47_Y24_N25
\u_kirsch|reg_f_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_5_\);

-- Location: LCCOMB_X47_Y24_N10
\u_kirsch|ix28679z52981\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z40\ = (\u_kirsch|f_5_\ & (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_5_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|valid_1_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z40\);

-- Location: LCFF_X47_Y24_N9
\u_kirsch|reg_a_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_5_\);

-- Location: LCFF_X47_Y24_N3
\u_kirsch|reg_b_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_5_\);

-- Location: LCCOMB_X47_Y24_N6
\u_kirsch|ix28679z52982\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z41\ = (\u_kirsch|valid_0_\ & (\u_kirsch|a_5_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|valid_1_\ & \u_kirsch|b_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|a_5_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|b_5_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z41\);

-- Location: LCCOMB_X47_Y24_N12
\u_kirsch|ix28679z52980\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_5_\ = (\u_kirsch|nx28679z41\) # ((\u_kirsch|nx28679z40\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|d_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z41\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|d_5_\,
	datad => \u_kirsch|nx28679z40\,
	combout => \u_kirsch|i_add1_5_\);

-- Location: LCFF_X49_Y24_N13
\u_kirsch|reg_e_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_4_\);

-- Location: LCFF_X50_Y23_N3
\u_kirsch|reg_g_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_4_\);

-- Location: LCCOMB_X50_Y23_N2
\u_kirsch|ix28679z53008\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z58\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_2_\ & (\u_kirsch|g_4_\ & !\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|g_4_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z58\);

-- Location: LCFF_X51_Y24_N21
\u_kirsch|reg_c_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_4_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(4),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_4_\);

-- Location: LCFF_X50_Y23_N13
\u_kirsch|reg_h_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_4_\);

-- Location: LCCOMB_X50_Y23_N14
\u_kirsch|ix28679z53009\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z59\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|h_4_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|c_4_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_4_\,
	datab => \u_kirsch|h_4_\,
	datac => \u_kirsch|valid_1_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z59\);

-- Location: LCCOMB_X50_Y23_N10
\u_kirsch|ix28679z53007\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_4_\ = (\u_kirsch|nx28679z58\) # ((\u_kirsch|nx28679z59\) # ((\u_kirsch|e_4_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|e_4_\,
	datab => \u_kirsch|nx28679z58\,
	datac => \u_kirsch|nx28679z59\,
	datad => \u_kirsch|nx28679z3\,
	combout => \u_kirsch|i_add2_4_\);

-- Location: LCFF_X51_Y24_N7
\u_kirsch|reg_d_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_4_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(4),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_4_\);

-- Location: LCFF_X50_Y23_N5
\u_kirsch|reg_f_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_4_\);

-- Location: LCCOMB_X50_Y23_N16
\u_kirsch|ix28679z52984\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z42\ = (!\u_kirsch|valid_2_\ & (\u_kirsch|f_4_\ & (!\u_kirsch|valid_0_\ & !\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|f_4_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z42\);

-- Location: LCFF_X50_Y23_N19
\u_kirsch|reg_a_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_4_\);

-- Location: LCFF_X50_Y23_N1
\u_kirsch|reg_b_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_4_\);

-- Location: LCCOMB_X50_Y23_N18
\u_kirsch|ix28679z52985\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z43\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|a_4_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|b_4_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|b_4_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|a_4_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z43\);

-- Location: LCCOMB_X50_Y23_N6
\u_kirsch|ix28679z52983\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_4_\ = (\u_kirsch|nx28679z42\) # ((\u_kirsch|nx28679z43\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|d_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|d_4_\,
	datac => \u_kirsch|nx28679z42\,
	datad => \u_kirsch|nx28679z43\,
	combout => \u_kirsch|i_add1_4_\);

-- Location: LCFF_X49_Y23_N1
\u_kirsch|reg_e_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_3_\);

-- Location: LCFF_X49_Y23_N3
\u_kirsch|reg_g_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_3_\);

-- Location: LCCOMB_X49_Y23_N2
\u_kirsch|ix28679z53011\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z60\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|g_3_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|g_3_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z60\);

-- Location: LCFF_X51_Y24_N17
\u_kirsch|reg_c_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_3_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(3),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_3_\);

-- Location: LCFF_X49_Y23_N7
\u_kirsch|reg_h_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_3_\);

-- Location: LCCOMB_X49_Y23_N22
\u_kirsch|ix28679z53012\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z61\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|h_3_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|c_3_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_3_\,
	datab => \u_kirsch|h_3_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z61\);

-- Location: LCCOMB_X49_Y23_N8
\u_kirsch|ix28679z53010\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_3_\ = (\u_kirsch|nx28679z60\) # ((\u_kirsch|nx28679z61\) # ((\u_kirsch|e_3_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|e_3_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z60\,
	datad => \u_kirsch|nx28679z61\,
	combout => \u_kirsch|i_add2_3_\);

-- Location: LCFF_X51_Y24_N11
\u_kirsch|reg_d_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_3_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(3),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_3_\);

-- Location: LCFF_X49_Y23_N25
\u_kirsch|reg_f_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_3_\);

-- Location: LCCOMB_X49_Y23_N10
\u_kirsch|ix28679z52987\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z44\ = (\u_kirsch|f_3_\ & (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|f_3_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z44\);

-- Location: LCFF_X49_Y23_N15
\u_kirsch|reg_a_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_3_\);

-- Location: LCFF_X49_Y23_N27
\u_kirsch|reg_b_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_3_\);

-- Location: LCCOMB_X49_Y23_N30
\u_kirsch|ix28679z52988\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z45\ = (\u_kirsch|valid_0_\ & (\u_kirsch|a_3_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|b_3_\ & \u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|a_3_\,
	datab => \u_kirsch|b_3_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z45\);

-- Location: LCCOMB_X49_Y23_N12
\u_kirsch|ix28679z52986\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_3_\ = (\u_kirsch|nx28679z44\) # ((\u_kirsch|nx28679z45\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|d_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z44\,
	datab => \u_kirsch|nx28679z45\,
	datac => \u_kirsch|nx28679z3\,
	datad => \u_kirsch|d_3_\,
	combout => \u_kirsch|i_add1_3_\);

-- Location: LCFF_X49_Y24_N7
\u_kirsch|reg_e_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_2_\);

-- Location: LCFF_X50_Y24_N31
\u_kirsch|reg_g_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_2_\);

-- Location: LCCOMB_X50_Y24_N26
\u_kirsch|ix28679z53014\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z62\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & \u_kirsch|g_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|g_2_\,
	combout => \u_kirsch|nx28679z62\);

-- Location: LCFF_X51_Y24_N13
\u_kirsch|reg_c_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_2_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(2),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_2_\);

-- Location: LCFF_X50_Y24_N11
\u_kirsch|reg_h_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_2_\);

-- Location: LCCOMB_X50_Y24_N18
\u_kirsch|ix28679z53015\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z63\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|h_2_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|c_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|h_2_\,
	datac => \u_kirsch|c_2_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z63\);

-- Location: LCCOMB_X50_Y24_N4
\u_kirsch|ix28679z53013\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_2_\ = (\u_kirsch|nx28679z62\) # ((\u_kirsch|nx28679z63\) # ((\u_kirsch|e_2_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z62\,
	datab => \u_kirsch|nx28679z63\,
	datac => \u_kirsch|e_2_\,
	datad => \u_kirsch|nx28679z3\,
	combout => \u_kirsch|i_add2_2_\);

-- Location: LCFF_X51_Y24_N31
\u_kirsch|reg_d_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_2_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(2),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_2_\);

-- Location: LCFF_X50_Y24_N17
\u_kirsch|reg_f_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_2_\);

-- Location: LCCOMB_X50_Y24_N0
\u_kirsch|ix28679z52990\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z46\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|f_2_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|f_2_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z46\);

-- Location: LCFF_X50_Y24_N21
\u_kirsch|reg_a_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_2_\);

-- Location: LCFF_X50_Y24_N3
\u_kirsch|reg_b_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_2_\);

-- Location: LCCOMB_X50_Y24_N20
\u_kirsch|ix28679z52991\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z47\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|a_2_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & (\u_kirsch|b_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|b_2_\,
	datac => \u_kirsch|a_2_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z47\);

-- Location: LCCOMB_X50_Y24_N14
\u_kirsch|ix28679z52989\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_2_\ = (\u_kirsch|nx28679z47\) # ((\u_kirsch|nx28679z46\) # ((\u_kirsch|d_2_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_2_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z47\,
	datad => \u_kirsch|nx28679z46\,
	combout => \u_kirsch|i_add1_2_\);

-- Location: LCFF_X49_Y24_N9
\u_kirsch|reg_e_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_1_\);

-- Location: LCFF_X49_Y24_N15
\u_kirsch|reg_g_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_1_\);

-- Location: LCCOMB_X47_Y24_N20
\u_kirsch|ix28679z53017\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z64\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|g_1_\ & !\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|g_1_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z64\);

-- Location: LCFF_X51_Y24_N1
\u_kirsch|reg_c_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_1_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(1),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_1_\);

-- Location: LCFF_X49_Y24_N27
\u_kirsch|reg_h_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_1_\);

-- Location: LCCOMB_X47_Y24_N30
\u_kirsch|ix28679z53018\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z65\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|h_1_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & (\u_kirsch|c_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|c_1_\,
	datad => \u_kirsch|h_1_\,
	combout => \u_kirsch|nx28679z65\);

-- Location: LCCOMB_X47_Y24_N22
\u_kirsch|ix28679z53016\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_1_\ = (\u_kirsch|nx28679z64\) # ((\u_kirsch|nx28679z65\) # ((\u_kirsch|e_1_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|e_1_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z64\,
	datad => \u_kirsch|nx28679z65\,
	combout => \u_kirsch|i_add2_1_\);

-- Location: LCFF_X51_Y24_N19
\u_kirsch|reg_d_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_1_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(1),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_1_\);

-- Location: LCFF_X48_Y23_N1
\u_kirsch|reg_f_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_1_\);

-- Location: LCCOMB_X48_Y24_N24
\u_kirsch|ix28679z52993\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z48\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & \u_kirsch|f_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|f_1_\,
	combout => \u_kirsch|nx28679z48\);

-- Location: LCFF_X49_Y24_N11
\u_kirsch|reg_a_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_1_\);

-- Location: LCFF_X49_Y24_N1
\u_kirsch|reg_b_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_1_\);

-- Location: LCCOMB_X49_Y24_N10
\u_kirsch|ix28679z52994\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z49\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|a_1_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|b_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|a_1_\,
	datad => \u_kirsch|b_1_\,
	combout => \u_kirsch|nx28679z49\);

-- Location: LCCOMB_X48_Y24_N18
\u_kirsch|ix28679z52992\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_1_\ = (\u_kirsch|nx28679z49\) # ((\u_kirsch|nx28679z48\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|d_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|nx28679z49\,
	datac => \u_kirsch|nx28679z48\,
	datad => \u_kirsch|d_1_\,
	combout => \u_kirsch|i_add1_1_\);

-- Location: LCFF_X51_Y24_N29
\u_kirsch|reg_d_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|d_0_~feeder_combout\,
	sdata => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(0),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|d_0_\);

-- Location: LCFF_X48_Y23_N27
\u_kirsch|reg_f_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|e_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|f_0_\);

-- Location: LCCOMB_X48_Y24_N28
\u_kirsch|ix28679z52996\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z50\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & \u_kirsch|f_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|valid_0_\,
	datad => \u_kirsch|f_0_\,
	combout => \u_kirsch|nx28679z50\);

-- Location: LCFF_X49_Y24_N31
\u_kirsch|reg_a_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|b_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|a_0_\);

-- Location: LCFF_X48_Y23_N29
\u_kirsch|reg_b_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|c_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|b_0_\);

-- Location: LCCOMB_X49_Y24_N30
\u_kirsch|ix28679z52997\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z51\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|a_0_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|b_0_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|b_0_\,
	datac => \u_kirsch|a_0_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z51\);

-- Location: LCCOMB_X48_Y24_N30
\u_kirsch|ix28679z52995\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add1_0_\ = (\u_kirsch|nx28679z50\) # ((\u_kirsch|nx28679z51\) # ((\u_kirsch|d_0_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_0_\,
	datab => \u_kirsch|nx28679z50\,
	datac => \u_kirsch|nx28679z3\,
	datad => \u_kirsch|nx28679z51\,
	combout => \u_kirsch|i_add1_0_\);

-- Location: LCFF_X49_Y24_N23
\u_kirsch|reg_e_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|datain_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|e_0_\);

-- Location: LCFF_X49_Y24_N25
\u_kirsch|reg_g_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|f_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|g_0_\);

-- Location: LCCOMB_X49_Y24_N2
\u_kirsch|ix28679z53020\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z66\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_2_\ & \u_kirsch|g_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|valid_2_\,
	datad => \u_kirsch|g_0_\,
	combout => \u_kirsch|nx28679z66\);

-- Location: LCFF_X51_Y24_N15
\u_kirsch|reg_c_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|c_0_~feeder_combout\,
	sdata => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(0),
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_kirsch|o_row_0_\,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|c_0_\);

-- Location: LCFF_X49_Y24_N29
\u_kirsch|reg_h_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|i_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|h_0_\);

-- Location: LCCOMB_X46_Y24_N4
\u_kirsch|ix28679z53021\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z67\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|h_0_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|c_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|h_0_\,
	datad => \u_kirsch|c_0_\,
	combout => \u_kirsch|nx28679z67\);

-- Location: LCCOMB_X46_Y24_N10
\u_kirsch|ix28679z53019\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_add2_0_\ = (\u_kirsch|nx28679z67\) # ((\u_kirsch|nx28679z66\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|e_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|e_0_\,
	datac => \u_kirsch|nx28679z67\,
	datad => \u_kirsch|nx28679z66\,
	combout => \u_kirsch|i_add2_0_\);

-- Location: LCCOMB_X48_Y24_N0
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_0_\ = (\u_kirsch|i_add2_0_\ & (\u_kirsch|i_add1_0_\ $ (VCC))) # (!\u_kirsch|i_add2_0_\ & (\u_kirsch|i_add1_0_\ & VCC))
-- \u_kirsch|stage1|nx45057z8\ = CARRY((\u_kirsch|i_add2_0_\ & \u_kirsch|i_add1_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add2_0_\,
	datab => \u_kirsch|i_add1_0_\,
	datad => VCC,
	combout => \u_kirsch|stage1|o_add_op12_stage1_0_\,
	cout => \u_kirsch|stage1|nx45057z8\);

-- Location: LCCOMB_X48_Y24_N2
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_1_\ = (\u_kirsch|i_add1_1_\ & ((\u_kirsch|i_add2_1_\ & (\u_kirsch|stage1|nx45057z8\ & VCC)) # (!\u_kirsch|i_add2_1_\ & (!\u_kirsch|stage1|nx45057z8\)))) # (!\u_kirsch|i_add1_1_\ & ((\u_kirsch|i_add2_1_\ & 
-- (!\u_kirsch|stage1|nx45057z8\)) # (!\u_kirsch|i_add2_1_\ & ((\u_kirsch|stage1|nx45057z8\) # (GND)))))
-- \u_kirsch|stage1|nx45057z7\ = CARRY((\u_kirsch|i_add1_1_\ & (!\u_kirsch|i_add2_1_\ & !\u_kirsch|stage1|nx45057z8\)) # (!\u_kirsch|i_add1_1_\ & ((!\u_kirsch|stage1|nx45057z8\) # (!\u_kirsch|i_add2_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add1_1_\,
	datab => \u_kirsch|i_add2_1_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z8\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_1_\,
	cout => \u_kirsch|stage1|nx45057z7\);

-- Location: LCCOMB_X48_Y24_N4
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_2_\ = ((\u_kirsch|i_add2_2_\ $ (\u_kirsch|i_add1_2_\ $ (!\u_kirsch|stage1|nx45057z7\)))) # (GND)
-- \u_kirsch|stage1|nx45057z6\ = CARRY((\u_kirsch|i_add2_2_\ & ((\u_kirsch|i_add1_2_\) # (!\u_kirsch|stage1|nx45057z7\))) # (!\u_kirsch|i_add2_2_\ & (\u_kirsch|i_add1_2_\ & !\u_kirsch|stage1|nx45057z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add2_2_\,
	datab => \u_kirsch|i_add1_2_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z7\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_2_\,
	cout => \u_kirsch|stage1|nx45057z6\);

-- Location: LCCOMB_X48_Y24_N6
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_3_\ = (\u_kirsch|i_add2_3_\ & ((\u_kirsch|i_add1_3_\ & (\u_kirsch|stage1|nx45057z6\ & VCC)) # (!\u_kirsch|i_add1_3_\ & (!\u_kirsch|stage1|nx45057z6\)))) # (!\u_kirsch|i_add2_3_\ & ((\u_kirsch|i_add1_3_\ & 
-- (!\u_kirsch|stage1|nx45057z6\)) # (!\u_kirsch|i_add1_3_\ & ((\u_kirsch|stage1|nx45057z6\) # (GND)))))
-- \u_kirsch|stage1|nx45057z5\ = CARRY((\u_kirsch|i_add2_3_\ & (!\u_kirsch|i_add1_3_\ & !\u_kirsch|stage1|nx45057z6\)) # (!\u_kirsch|i_add2_3_\ & ((!\u_kirsch|stage1|nx45057z6\) # (!\u_kirsch|i_add1_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add2_3_\,
	datab => \u_kirsch|i_add1_3_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z6\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_3_\,
	cout => \u_kirsch|stage1|nx45057z5\);

-- Location: LCCOMB_X48_Y24_N8
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_4_\ = ((\u_kirsch|i_add1_4_\ $ (\u_kirsch|i_add2_4_\ $ (!\u_kirsch|stage1|nx45057z5\)))) # (GND)
-- \u_kirsch|stage1|nx45057z4\ = CARRY((\u_kirsch|i_add1_4_\ & ((\u_kirsch|i_add2_4_\) # (!\u_kirsch|stage1|nx45057z5\))) # (!\u_kirsch|i_add1_4_\ & (\u_kirsch|i_add2_4_\ & !\u_kirsch|stage1|nx45057z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add1_4_\,
	datab => \u_kirsch|i_add2_4_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z5\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_4_\,
	cout => \u_kirsch|stage1|nx45057z4\);

-- Location: LCCOMB_X48_Y24_N10
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_5_\ = (\u_kirsch|i_add1_5_\ & ((\u_kirsch|i_add2_5_\ & (\u_kirsch|stage1|nx45057z4\ & VCC)) # (!\u_kirsch|i_add2_5_\ & (!\u_kirsch|stage1|nx45057z4\)))) # (!\u_kirsch|i_add1_5_\ & ((\u_kirsch|i_add2_5_\ & 
-- (!\u_kirsch|stage1|nx45057z4\)) # (!\u_kirsch|i_add2_5_\ & ((\u_kirsch|stage1|nx45057z4\) # (GND)))))
-- \u_kirsch|stage1|nx45057z3\ = CARRY((\u_kirsch|i_add1_5_\ & (!\u_kirsch|i_add2_5_\ & !\u_kirsch|stage1|nx45057z4\)) # (!\u_kirsch|i_add1_5_\ & ((!\u_kirsch|stage1|nx45057z4\) # (!\u_kirsch|i_add2_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add1_5_\,
	datab => \u_kirsch|i_add2_5_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z4\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_5_\,
	cout => \u_kirsch|stage1|nx45057z3\);

-- Location: LCCOMB_X48_Y24_N12
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_6_\ = ((\u_kirsch|i_add1_6_\ $ (\u_kirsch|i_add2_6_\ $ (!\u_kirsch|stage1|nx45057z3\)))) # (GND)
-- \u_kirsch|stage1|nx45057z2\ = CARRY((\u_kirsch|i_add1_6_\ & ((\u_kirsch|i_add2_6_\) # (!\u_kirsch|stage1|nx45057z3\))) # (!\u_kirsch|i_add1_6_\ & (\u_kirsch|i_add2_6_\ & !\u_kirsch|stage1|nx45057z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add1_6_\,
	datab => \u_kirsch|i_add2_6_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z3\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_6_\,
	cout => \u_kirsch|stage1|nx45057z2\);

-- Location: LCCOMB_X48_Y24_N14
\u_kirsch|stage1|o_add_op12_stage1_add8_0_ix45057z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_7_\ = (\u_kirsch|i_add1_7_\ & ((\u_kirsch|i_add2_7_\ & (\u_kirsch|stage1|nx45057z2\ & VCC)) # (!\u_kirsch|i_add2_7_\ & (!\u_kirsch|stage1|nx45057z2\)))) # (!\u_kirsch|i_add1_7_\ & ((\u_kirsch|i_add2_7_\ & 
-- (!\u_kirsch|stage1|nx45057z2\)) # (!\u_kirsch|i_add2_7_\ & ((\u_kirsch|stage1|nx45057z2\) # (GND)))))
-- \u_kirsch|stage1|o_add_op12_stage1_8_\ = CARRY((\u_kirsch|i_add1_7_\ & (!\u_kirsch|i_add2_7_\ & !\u_kirsch|stage1|nx45057z2\)) # (!\u_kirsch|i_add1_7_\ & ((!\u_kirsch|stage1|nx45057z2\) # (!\u_kirsch|i_add2_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_add1_7_\,
	datab => \u_kirsch|i_add2_7_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx45057z2\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_7_\,
	cout => \u_kirsch|stage1|o_add_op12_stage1_8_\);

-- Location: LCCOMB_X48_Y24_N16
\u_kirsch|stage1|o_add_op12_stage1_8_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\ = !\u_kirsch|stage1|o_add_op12_stage1_8_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|stage1|o_add_op12_stage1_8_\,
	combout => \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\);

-- Location: LCCOMB_X43_Y24_N0
\u_kirsch|stage1|ix45057z52923~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|ix45057z52923~1_cout\ = CARRY(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\,
	datad => VCC,
	cout => \u_kirsch|stage1|ix45057z52923~1_cout\);

-- Location: LCCOMB_X43_Y24_N2
\u_kirsch|stage1|ix45057z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|nx45057z1\ = \u_kirsch|stage1|ix45057z52923~1_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|stage1|ix45057z52923~1_cout\,
	combout => \u_kirsch|stage1|nx45057z1\);

-- Location: LCCOMB_X46_Y24_N2
\u_kirsch|ix28679z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z4\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|e_7_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|e_7_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z4\);

-- Location: LCCOMB_X50_Y24_N24
\u_kirsch|ix28679z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z5\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|g_7_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|a_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|g_7_\,
	datac => \u_kirsch|a_7_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z5\);

-- Location: LCCOMB_X46_Y24_N20
\u_kirsch|ix28679z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_7_\ = (\u_kirsch|nx28679z5\) # ((\u_kirsch|nx28679z4\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|c_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|c_7_\,
	datac => \u_kirsch|nx28679z5\,
	datad => \u_kirsch|nx28679z4\,
	combout => \u_kirsch|i_max1_7_\);

-- Location: LCCOMB_X46_Y24_N26
\u_kirsch|ix28679z52951\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z20\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|h_7_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|h_7_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z20\);

-- Location: LCCOMB_X46_Y24_N0
\u_kirsch|ix28679z52952\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z21\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_7_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|d_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|b_7_\,
	datad => \u_kirsch|d_7_\,
	combout => \u_kirsch|nx28679z21\);

-- Location: LCCOMB_X46_Y24_N30
\u_kirsch|ix28679z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_7_\ = (\u_kirsch|nx28679z20\) # ((\u_kirsch|nx28679z21\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|nx28679z20\,
	datac => \u_kirsch|f_7_\,
	datad => \u_kirsch|nx28679z21\,
	combout => \u_kirsch|i_max2_7_\);

-- Location: LCCOMB_X50_Y23_N28
\u_kirsch|ix28679z52954\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z22\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|h_6_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|h_6_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z22\);

-- Location: LCCOMB_X50_Y23_N26
\u_kirsch|ix28679z52955\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z23\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_6_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|d_6_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_6_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|b_6_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z23\);

-- Location: LCCOMB_X50_Y23_N20
\u_kirsch|ix28679z52953\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_6_\ = (\u_kirsch|nx28679z22\) # ((\u_kirsch|nx28679z23\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_6_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|nx28679z22\,
	datac => \u_kirsch|f_6_\,
	datad => \u_kirsch|nx28679z23\,
	combout => \u_kirsch|i_max2_6_\);

-- Location: LCCOMB_X48_Y24_N26
\u_kirsch|ix28679z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z6\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|e_6_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|e_6_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z6\);

-- Location: LCCOMB_X49_Y23_N28
\u_kirsch|ix28679z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z7\ = (\u_kirsch|valid_0_\ & (\u_kirsch|g_6_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|valid_1_\ & \u_kirsch|a_6_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|g_6_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|a_6_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z7\);

-- Location: LCCOMB_X49_Y23_N20
\u_kirsch|ix28679z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_6_\ = (\u_kirsch|nx28679z6\) # ((\u_kirsch|nx28679z7\) # ((\u_kirsch|c_6_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_6_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z6\,
	datad => \u_kirsch|nx28679z7\,
	combout => \u_kirsch|i_max1_6_\);

-- Location: LCCOMB_X47_Y24_N26
\u_kirsch|ix28679z52957\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z24\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|h_5_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|h_5_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z24\);

-- Location: LCCOMB_X47_Y24_N2
\u_kirsch|ix28679z52958\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z25\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_5_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|d_5_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|d_5_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|b_5_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z25\);

-- Location: LCCOMB_X47_Y24_N24
\u_kirsch|ix28679z52956\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_5_\ = (\u_kirsch|nx28679z24\) # ((\u_kirsch|nx28679z25\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|nx28679z24\,
	datac => \u_kirsch|f_5_\,
	datad => \u_kirsch|nx28679z25\,
	combout => \u_kirsch|i_max2_5_\);

-- Location: LCCOMB_X47_Y24_N4
\u_kirsch|ix28679z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z8\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|e_5_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|e_5_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z8\);

-- Location: LCCOMB_X47_Y24_N8
\u_kirsch|ix28679z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z9\ = (\u_kirsch|valid_0_\ & (\u_kirsch|g_5_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|a_5_\ & \u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|g_5_\,
	datac => \u_kirsch|a_5_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z9\);

-- Location: LCCOMB_X47_Y24_N16
\u_kirsch|ix28679z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_5_\ = (\u_kirsch|nx28679z9\) # ((\u_kirsch|nx28679z8\) # ((\u_kirsch|c_5_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z9\,
	datab => \u_kirsch|c_5_\,
	datac => \u_kirsch|nx28679z8\,
	datad => \u_kirsch|nx28679z3\,
	combout => \u_kirsch|i_max1_5_\);

-- Location: LCCOMB_X50_Y23_N12
\u_kirsch|ix28679z52960\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z26\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|h_4_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|h_4_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z26\);

-- Location: LCCOMB_X50_Y23_N0
\u_kirsch|ix28679z52961\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z27\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_4_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & (\u_kirsch|d_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|d_4_\,
	datac => \u_kirsch|b_4_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z27\);

-- Location: LCCOMB_X50_Y23_N4
\u_kirsch|ix28679z52959\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_4_\ = (\u_kirsch|nx28679z26\) # ((\u_kirsch|nx28679z27\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z26\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|f_4_\,
	datad => \u_kirsch|nx28679z27\,
	combout => \u_kirsch|i_max2_4_\);

-- Location: LCCOMB_X49_Y24_N12
\u_kirsch|ix28679z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z10\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|e_4_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|e_4_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z10\);

-- Location: LCCOMB_X49_Y24_N20
\u_kirsch|ix28679z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z11\ = (\u_kirsch|valid_0_\ & (\u_kirsch|g_4_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|valid_1_\ & \u_kirsch|a_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|g_4_\,
	datac => \u_kirsch|valid_1_\,
	datad => \u_kirsch|a_4_\,
	combout => \u_kirsch|nx28679z11\);

-- Location: LCCOMB_X49_Y24_N18
\u_kirsch|ix28679z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_4_\ = (\u_kirsch|nx28679z11\) # ((\u_kirsch|nx28679z10\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|c_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z11\,
	datab => \u_kirsch|nx28679z10\,
	datac => \u_kirsch|nx28679z3\,
	datad => \u_kirsch|c_4_\,
	combout => \u_kirsch|i_max1_4_\);

-- Location: LCCOMB_X49_Y23_N6
\u_kirsch|ix28679z52963\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z28\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_2_\ & (\u_kirsch|h_3_\ & !\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|h_3_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z28\);

-- Location: LCCOMB_X49_Y23_N26
\u_kirsch|ix28679z52964\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z29\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_3_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|d_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|b_3_\,
	datad => \u_kirsch|d_3_\,
	combout => \u_kirsch|nx28679z29\);

-- Location: LCCOMB_X49_Y23_N24
\u_kirsch|ix28679z52962\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_3_\ = (\u_kirsch|nx28679z28\) # ((\u_kirsch|nx28679z29\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z28\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|f_3_\,
	datad => \u_kirsch|nx28679z29\,
	combout => \u_kirsch|i_max2_3_\);

-- Location: LCCOMB_X49_Y23_N0
\u_kirsch|ix28679z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z12\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|e_3_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|e_3_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z12\);

-- Location: LCCOMB_X49_Y23_N14
\u_kirsch|ix28679z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z13\ = (\u_kirsch|valid_0_\ & (\u_kirsch|g_3_\)) # (!\u_kirsch|valid_0_\ & (((\u_kirsch|a_3_\ & \u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|g_3_\,
	datac => \u_kirsch|a_3_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z13\);

-- Location: LCCOMB_X49_Y23_N18
\u_kirsch|ix28679z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_3_\ = (\u_kirsch|nx28679z13\) # ((\u_kirsch|nx28679z12\) # ((\u_kirsch|c_3_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_3_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z13\,
	datad => \u_kirsch|nx28679z12\,
	combout => \u_kirsch|i_max1_3_\);

-- Location: LCCOMB_X50_Y24_N10
\u_kirsch|ix28679z52966\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z30\ = (!\u_kirsch|valid_2_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|h_2_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|h_2_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z30\);

-- Location: LCCOMB_X50_Y24_N2
\u_kirsch|ix28679z52967\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z31\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_2_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|d_2_\ & ((\u_kirsch|valid_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|d_2_\,
	datac => \u_kirsch|b_2_\,
	datad => \u_kirsch|valid_1_\,
	combout => \u_kirsch|nx28679z31\);

-- Location: LCCOMB_X50_Y24_N16
\u_kirsch|ix28679z52965\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_2_\ = (\u_kirsch|nx28679z30\) # ((\u_kirsch|nx28679z31\) # ((\u_kirsch|f_2_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z30\,
	datab => \u_kirsch|nx28679z31\,
	datac => \u_kirsch|f_2_\,
	datad => \u_kirsch|nx28679z3\,
	combout => \u_kirsch|i_max2_2_\);

-- Location: LCCOMB_X49_Y24_N6
\u_kirsch|ix28679z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z14\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_2_\ & (\u_kirsch|e_2_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|e_2_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z14\);

-- Location: LCCOMB_X50_Y24_N30
\u_kirsch|ix28679z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z15\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|g_2_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|a_2_\ & (\u_kirsch|valid_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|a_2_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|g_2_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z15\);

-- Location: LCCOMB_X49_Y24_N4
\u_kirsch|ix28679z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_2_\ = (\u_kirsch|nx28679z14\) # ((\u_kirsch|nx28679z15\) # ((\u_kirsch|c_2_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_2_\,
	datab => \u_kirsch|nx28679z14\,
	datac => \u_kirsch|nx28679z3\,
	datad => \u_kirsch|nx28679z15\,
	combout => \u_kirsch|i_max1_2_\);

-- Location: LCCOMB_X49_Y24_N26
\u_kirsch|ix28679z52969\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z32\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_2_\ & (\u_kirsch|h_1_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|h_1_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z32\);

-- Location: LCCOMB_X49_Y24_N0
\u_kirsch|ix28679z52970\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z33\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_1_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|d_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|b_1_\,
	datad => \u_kirsch|d_1_\,
	combout => \u_kirsch|nx28679z33\);

-- Location: LCCOMB_X48_Y23_N0
\u_kirsch|ix28679z52968\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_1_\ = (\u_kirsch|nx28679z32\) # ((\u_kirsch|nx28679z33\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z32\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|f_1_\,
	datad => \u_kirsch|nx28679z33\,
	combout => \u_kirsch|i_max2_1_\);

-- Location: LCCOMB_X49_Y24_N8
\u_kirsch|ix28679z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z16\ = (!\u_kirsch|valid_0_\ & (!\u_kirsch|valid_1_\ & (\u_kirsch|e_1_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|e_1_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z16\);

-- Location: LCCOMB_X49_Y24_N14
\u_kirsch|ix28679z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z17\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|g_1_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|a_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|g_1_\,
	datad => \u_kirsch|a_1_\,
	combout => \u_kirsch|nx28679z17\);

-- Location: LCCOMB_X48_Y23_N30
\u_kirsch|ix28679z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_1_\ = (\u_kirsch|nx28679z17\) # ((\u_kirsch|nx28679z16\) # ((\u_kirsch|c_1_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z17\,
	datab => \u_kirsch|c_1_\,
	datac => \u_kirsch|nx28679z3\,
	datad => \u_kirsch|nx28679z16\,
	combout => \u_kirsch|i_max1_1_\);

-- Location: LCCOMB_X49_Y24_N22
\u_kirsch|ix28679z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z18\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_2_\ & (\u_kirsch|e_0_\ & !\u_kirsch|valid_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|e_0_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z18\);

-- Location: LCCOMB_X49_Y24_N24
\u_kirsch|ix28679z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z19\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|g_0_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|a_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|g_0_\,
	datad => \u_kirsch|a_0_\,
	combout => \u_kirsch|nx28679z19\);

-- Location: LCCOMB_X48_Y23_N24
\u_kirsch|ix28679z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max1_0_\ = (\u_kirsch|nx28679z19\) # ((\u_kirsch|nx28679z18\) # ((\u_kirsch|c_0_\ & \u_kirsch|nx28679z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|c_0_\,
	datab => \u_kirsch|nx28679z3\,
	datac => \u_kirsch|nx28679z19\,
	datad => \u_kirsch|nx28679z18\,
	combout => \u_kirsch|i_max1_0_\);

-- Location: LCCOMB_X49_Y24_N28
\u_kirsch|ix28679z52972\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z34\ = (!\u_kirsch|valid_1_\ & (!\u_kirsch|valid_0_\ & (\u_kirsch|h_0_\ & !\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_1_\,
	datab => \u_kirsch|valid_0_\,
	datac => \u_kirsch|h_0_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx28679z34\);

-- Location: LCCOMB_X48_Y23_N28
\u_kirsch|ix28679z52973\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z35\ = (\u_kirsch|valid_0_\ & (((\u_kirsch|b_0_\)))) # (!\u_kirsch|valid_0_\ & (\u_kirsch|valid_1_\ & ((\u_kirsch|d_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datab => \u_kirsch|valid_1_\,
	datac => \u_kirsch|b_0_\,
	datad => \u_kirsch|d_0_\,
	combout => \u_kirsch|nx28679z35\);

-- Location: LCCOMB_X48_Y23_N26
\u_kirsch|ix28679z52971\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_max2_0_\ = (\u_kirsch|nx28679z34\) # ((\u_kirsch|nx28679z35\) # ((\u_kirsch|nx28679z3\ & \u_kirsch|f_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx28679z3\,
	datab => \u_kirsch|nx28679z34\,
	datac => \u_kirsch|f_0_\,
	datad => \u_kirsch|nx28679z35\,
	combout => \u_kirsch|i_max2_0_\);

-- Location: LCCOMB_X48_Y23_N2
\u_kirsch|stage1|u_max1|ix54128z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z8\ = CARRY((\u_kirsch|i_max1_0_\ & !\u_kirsch|i_max2_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_0_\,
	datab => \u_kirsch|i_max2_0_\,
	datad => VCC,
	cout => \u_kirsch|stage1|u_max1|nx54128z8\);

-- Location: LCCOMB_X48_Y23_N4
\u_kirsch|stage1|u_max1|ix54128z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z7\ = CARRY((\u_kirsch|i_max1_1_\ & (\u_kirsch|i_max2_1_\ & !\u_kirsch|stage1|u_max1|nx54128z8\)) # (!\u_kirsch|i_max1_1_\ & ((\u_kirsch|i_max2_1_\) # (!\u_kirsch|stage1|u_max1|nx54128z8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_1_\,
	datab => \u_kirsch|i_max2_1_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx54128z8\,
	cout => \u_kirsch|stage1|u_max1|nx54128z7\);

-- Location: LCCOMB_X48_Y23_N6
\u_kirsch|stage1|u_max1|ix54128z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z6\ = CARRY((\u_kirsch|i_max1_2_\ & ((!\u_kirsch|stage1|u_max1|nx54128z7\) # (!\u_kirsch|i_max2_2_\))) # (!\u_kirsch|i_max1_2_\ & (!\u_kirsch|i_max2_2_\ & !\u_kirsch|stage1|u_max1|nx54128z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_2_\,
	datab => \u_kirsch|i_max2_2_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx54128z7\,
	cout => \u_kirsch|stage1|u_max1|nx54128z6\);

-- Location: LCCOMB_X48_Y23_N8
\u_kirsch|stage1|u_max1|ix54128z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z5\ = CARRY((\u_kirsch|i_max2_3_\ & ((!\u_kirsch|stage1|u_max1|nx54128z6\) # (!\u_kirsch|i_max1_3_\))) # (!\u_kirsch|i_max2_3_\ & (!\u_kirsch|i_max1_3_\ & !\u_kirsch|stage1|u_max1|nx54128z6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_3_\,
	datab => \u_kirsch|i_max1_3_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx54128z6\,
	cout => \u_kirsch|stage1|u_max1|nx54128z5\);

-- Location: LCCOMB_X48_Y23_N10
\u_kirsch|stage1|u_max1|ix54128z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z4\ = CARRY((\u_kirsch|i_max1_4_\ & ((!\u_kirsch|stage1|u_max1|nx54128z5\) # (!\u_kirsch|i_max2_4_\))) # (!\u_kirsch|i_max1_4_\ & (!\u_kirsch|i_max2_4_\ & !\u_kirsch|stage1|u_max1|nx54128z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_4_\,
	datab => \u_kirsch|i_max2_4_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx54128z5\,
	cout => \u_kirsch|stage1|u_max1|nx54128z4\);

-- Location: LCCOMB_X48_Y23_N12
\u_kirsch|stage1|u_max1|ix54128z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z3\ = CARRY((\u_kirsch|i_max2_5_\ & ((!\u_kirsch|stage1|u_max1|nx54128z4\) # (!\u_kirsch|i_max1_5_\))) # (!\u_kirsch|i_max2_5_\ & (!\u_kirsch|i_max1_5_\ & !\u_kirsch|stage1|u_max1|nx54128z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_5_\,
	datab => \u_kirsch|i_max1_5_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx54128z4\,
	cout => \u_kirsch|stage1|u_max1|nx54128z3\);

-- Location: LCCOMB_X48_Y23_N14
\u_kirsch|stage1|u_max1|ix54128z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z2\ = CARRY((\u_kirsch|i_max2_6_\ & (\u_kirsch|i_max1_6_\ & !\u_kirsch|stage1|u_max1|nx54128z3\)) # (!\u_kirsch|i_max2_6_\ & ((\u_kirsch|i_max1_6_\) # (!\u_kirsch|stage1|u_max1|nx54128z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_6_\,
	datab => \u_kirsch|i_max1_6_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx54128z3\,
	cout => \u_kirsch|stage1|u_max1|nx54128z2\);

-- Location: LCCOMB_X48_Y23_N16
\u_kirsch|stage1|u_max1|ix54128z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx54128z1\ = (\u_kirsch|i_max1_7_\ & ((\u_kirsch|stage1|u_max1|nx54128z2\) # (!\u_kirsch|i_max2_7_\))) # (!\u_kirsch|i_max1_7_\ & (\u_kirsch|stage1|u_max1|nx54128z2\ & !\u_kirsch|i_max2_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_7_\,
	datad => \u_kirsch|i_max2_7_\,
	cin => \u_kirsch|stage1|u_max1|nx54128z2\,
	combout => \u_kirsch|stage1|u_max1|nx54128z1\);

-- Location: LCCOMB_X46_Y23_N6
\u_kirsch|stage1|u_max1|ix54128z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_7_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max1_7_\))) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max2_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_7_\,
	datab => \u_kirsch|i_max1_7_\,
	datad => \u_kirsch|stage1|u_max1|nx54128z1\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_7_\);

-- Location: LCCOMB_X48_Y23_N18
\u_kirsch|stage1|u_max1|ix55125z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_6_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max1_6_\))) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max2_6_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_6_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max1_6_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_6_\);

-- Location: LCCOMB_X48_Y23_N20
\u_kirsch|stage1|u_max1|ix56122z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_5_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max1_5_\))) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max2_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_5_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max1_5_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_5_\);

-- Location: LCCOMB_X48_Y23_N22
\u_kirsch|stage1|u_max1|ix57119z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_4_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max1_4_\))) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max2_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max2_4_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max1_4_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_4_\);

-- Location: LCCOMB_X47_Y23_N18
\u_kirsch|stage1|u_max1|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_3_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max1_3_\)) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max2_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max1_3_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max2_3_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_3_\);

-- Location: LCCOMB_X47_Y23_N20
\u_kirsch|stage1|u_max1|ix59113z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_2_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max1_2_\)) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max2_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_2_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max2_2_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_2_\);

-- Location: LCCOMB_X47_Y23_N28
\u_kirsch|stage1|u_max1|ix60110z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_1_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max1_1_\))) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max2_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max2_1_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max1_1_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_1_\);

-- Location: LCCOMB_X47_Y23_N30
\u_kirsch|stage1|u_max1|ix61107z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_pix_0_\ = (\u_kirsch|stage1|u_max1|nx54128z1\ & ((\u_kirsch|i_max1_0_\))) # (!\u_kirsch|stage1|u_max1|nx54128z1\ & (\u_kirsch|i_max2_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_0_\,
	datac => \u_kirsch|stage1|u_max1|nx54128z1\,
	datad => \u_kirsch|i_max1_0_\,
	combout => \u_kirsch|stage1|u_max1|o_max_pix_0_\);

-- Location: LCCOMB_X47_Y23_N0
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_0_\ = (\u_kirsch|stage1|o_add_op12_stage1_0_\ & (\u_kirsch|stage1|u_max1|o_max_pix_0_\ $ (VCC))) # (!\u_kirsch|stage1|o_add_op12_stage1_0_\ & (\u_kirsch|stage1|u_max1|o_max_pix_0_\ & VCC))
-- \u_kirsch|stage1|nx15254z10\ = CARRY((\u_kirsch|stage1|o_add_op12_stage1_0_\ & \u_kirsch|stage1|u_max1|o_max_pix_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_0_\,
	datab => \u_kirsch|stage1|u_max1|o_max_pix_0_\,
	datad => VCC,
	combout => \u_kirsch|stage1|o_max_add_stage1_0_\,
	cout => \u_kirsch|stage1|nx15254z10\);

-- Location: LCCOMB_X47_Y23_N2
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_1_\ = (\u_kirsch|stage1|o_add_op12_stage1_1_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_1_\ & (\u_kirsch|stage1|nx15254z10\ & VCC)) # (!\u_kirsch|stage1|u_max1|o_max_pix_1_\ & (!\u_kirsch|stage1|nx15254z10\)))) # 
-- (!\u_kirsch|stage1|o_add_op12_stage1_1_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_1_\ & (!\u_kirsch|stage1|nx15254z10\)) # (!\u_kirsch|stage1|u_max1|o_max_pix_1_\ & ((\u_kirsch|stage1|nx15254z10\) # (GND)))))
-- \u_kirsch|stage1|nx15254z9\ = CARRY((\u_kirsch|stage1|o_add_op12_stage1_1_\ & (!\u_kirsch|stage1|u_max1|o_max_pix_1_\ & !\u_kirsch|stage1|nx15254z10\)) # (!\u_kirsch|stage1|o_add_op12_stage1_1_\ & ((!\u_kirsch|stage1|nx15254z10\) # 
-- (!\u_kirsch|stage1|u_max1|o_max_pix_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_1_\,
	datab => \u_kirsch|stage1|u_max1|o_max_pix_1_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z10\,
	combout => \u_kirsch|stage1|o_max_add_stage1_1_\,
	cout => \u_kirsch|stage1|nx15254z9\);

-- Location: LCCOMB_X47_Y23_N4
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_2_\ = ((\u_kirsch|stage1|u_max1|o_max_pix_2_\ $ (\u_kirsch|stage1|o_add_op12_stage1_2_\ $ (!\u_kirsch|stage1|nx15254z9\)))) # (GND)
-- \u_kirsch|stage1|nx15254z8\ = CARRY((\u_kirsch|stage1|u_max1|o_max_pix_2_\ & ((\u_kirsch|stage1|o_add_op12_stage1_2_\) # (!\u_kirsch|stage1|nx15254z9\))) # (!\u_kirsch|stage1|u_max1|o_max_pix_2_\ & (\u_kirsch|stage1|o_add_op12_stage1_2_\ & 
-- !\u_kirsch|stage1|nx15254z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|u_max1|o_max_pix_2_\,
	datab => \u_kirsch|stage1|o_add_op12_stage1_2_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z9\,
	combout => \u_kirsch|stage1|o_max_add_stage1_2_\,
	cout => \u_kirsch|stage1|nx15254z8\);

-- Location: LCCOMB_X47_Y23_N6
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_3_\ = (\u_kirsch|stage1|u_max1|o_max_pix_3_\ & ((\u_kirsch|stage1|o_add_op12_stage1_3_\ & (\u_kirsch|stage1|nx15254z8\ & VCC)) # (!\u_kirsch|stage1|o_add_op12_stage1_3_\ & (!\u_kirsch|stage1|nx15254z8\)))) # 
-- (!\u_kirsch|stage1|u_max1|o_max_pix_3_\ & ((\u_kirsch|stage1|o_add_op12_stage1_3_\ & (!\u_kirsch|stage1|nx15254z8\)) # (!\u_kirsch|stage1|o_add_op12_stage1_3_\ & ((\u_kirsch|stage1|nx15254z8\) # (GND)))))
-- \u_kirsch|stage1|nx15254z7\ = CARRY((\u_kirsch|stage1|u_max1|o_max_pix_3_\ & (!\u_kirsch|stage1|o_add_op12_stage1_3_\ & !\u_kirsch|stage1|nx15254z8\)) # (!\u_kirsch|stage1|u_max1|o_max_pix_3_\ & ((!\u_kirsch|stage1|nx15254z8\) # 
-- (!\u_kirsch|stage1|o_add_op12_stage1_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|u_max1|o_max_pix_3_\,
	datab => \u_kirsch|stage1|o_add_op12_stage1_3_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z8\,
	combout => \u_kirsch|stage1|o_max_add_stage1_3_\,
	cout => \u_kirsch|stage1|nx15254z7\);

-- Location: LCCOMB_X47_Y23_N8
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_4_\ = ((\u_kirsch|stage1|o_add_op12_stage1_4_\ $ (\u_kirsch|stage1|u_max1|o_max_pix_4_\ $ (!\u_kirsch|stage1|nx15254z7\)))) # (GND)
-- \u_kirsch|stage1|nx15254z6\ = CARRY((\u_kirsch|stage1|o_add_op12_stage1_4_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_4_\) # (!\u_kirsch|stage1|nx15254z7\))) # (!\u_kirsch|stage1|o_add_op12_stage1_4_\ & (\u_kirsch|stage1|u_max1|o_max_pix_4_\ & 
-- !\u_kirsch|stage1|nx15254z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_4_\,
	datab => \u_kirsch|stage1|u_max1|o_max_pix_4_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z7\,
	combout => \u_kirsch|stage1|o_max_add_stage1_4_\,
	cout => \u_kirsch|stage1|nx15254z6\);

-- Location: LCCOMB_X47_Y23_N10
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_5_\ = (\u_kirsch|stage1|o_add_op12_stage1_5_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_5_\ & (\u_kirsch|stage1|nx15254z6\ & VCC)) # (!\u_kirsch|stage1|u_max1|o_max_pix_5_\ & (!\u_kirsch|stage1|nx15254z6\)))) # 
-- (!\u_kirsch|stage1|o_add_op12_stage1_5_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_5_\ & (!\u_kirsch|stage1|nx15254z6\)) # (!\u_kirsch|stage1|u_max1|o_max_pix_5_\ & ((\u_kirsch|stage1|nx15254z6\) # (GND)))))
-- \u_kirsch|stage1|nx15254z5\ = CARRY((\u_kirsch|stage1|o_add_op12_stage1_5_\ & (!\u_kirsch|stage1|u_max1|o_max_pix_5_\ & !\u_kirsch|stage1|nx15254z6\)) # (!\u_kirsch|stage1|o_add_op12_stage1_5_\ & ((!\u_kirsch|stage1|nx15254z6\) # 
-- (!\u_kirsch|stage1|u_max1|o_max_pix_5_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_5_\,
	datab => \u_kirsch|stage1|u_max1|o_max_pix_5_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z6\,
	combout => \u_kirsch|stage1|o_max_add_stage1_5_\,
	cout => \u_kirsch|stage1|nx15254z5\);

-- Location: LCCOMB_X47_Y23_N12
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_6_\ = ((\u_kirsch|stage1|o_add_op12_stage1_6_\ $ (\u_kirsch|stage1|u_max1|o_max_pix_6_\ $ (!\u_kirsch|stage1|nx15254z5\)))) # (GND)
-- \u_kirsch|stage1|nx15254z4\ = CARRY((\u_kirsch|stage1|o_add_op12_stage1_6_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_6_\) # (!\u_kirsch|stage1|nx15254z5\))) # (!\u_kirsch|stage1|o_add_op12_stage1_6_\ & (\u_kirsch|stage1|u_max1|o_max_pix_6_\ & 
-- !\u_kirsch|stage1|nx15254z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_6_\,
	datab => \u_kirsch|stage1|u_max1|o_max_pix_6_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z5\,
	combout => \u_kirsch|stage1|o_max_add_stage1_6_\,
	cout => \u_kirsch|stage1|nx15254z4\);

-- Location: LCCOMB_X47_Y23_N14
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_7_\ = (\u_kirsch|stage1|o_add_op12_stage1_7_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_7_\ & (\u_kirsch|stage1|nx15254z4\ & VCC)) # (!\u_kirsch|stage1|u_max1|o_max_pix_7_\ & (!\u_kirsch|stage1|nx15254z4\)))) # 
-- (!\u_kirsch|stage1|o_add_op12_stage1_7_\ & ((\u_kirsch|stage1|u_max1|o_max_pix_7_\ & (!\u_kirsch|stage1|nx15254z4\)) # (!\u_kirsch|stage1|u_max1|o_max_pix_7_\ & ((\u_kirsch|stage1|nx15254z4\) # (GND)))))
-- \u_kirsch|stage1|nx15254z3\ = CARRY((\u_kirsch|stage1|o_add_op12_stage1_7_\ & (!\u_kirsch|stage1|u_max1|o_max_pix_7_\ & !\u_kirsch|stage1|nx15254z4\)) # (!\u_kirsch|stage1|o_add_op12_stage1_7_\ & ((!\u_kirsch|stage1|nx15254z4\) # 
-- (!\u_kirsch|stage1|u_max1|o_max_pix_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|o_add_op12_stage1_7_\,
	datab => \u_kirsch|stage1|u_max1|o_max_pix_7_\,
	datad => VCC,
	cin => \u_kirsch|stage1|nx15254z4\,
	combout => \u_kirsch|stage1|o_max_add_stage1_7_\,
	cout => \u_kirsch|stage1|nx15254z3\);

-- Location: LCCOMB_X47_Y23_N16
\u_kirsch|stage1|ix15254z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|nx15254z2\ = !\u_kirsch|stage1|nx15254z3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|stage1|nx15254z3\,
	combout => \u_kirsch|stage1|nx15254z2\);

-- Location: LCCOMB_X47_Y23_N22
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\ = CARRY(\u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|stage1|o_add_op12_stage1_8_~0_combout\,
	datad => VCC,
	cout => \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\);

-- Location: LCCOMB_X47_Y23_N24
\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|o_max_add_stage1_8_\ = (\u_kirsch|stage1|nx15254z2\ & (!\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\)) # (!\u_kirsch|stage1|nx15254z2\ & ((\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\) # (GND)))
-- \u_kirsch|stage1|o_max_add_stage1_9_\ = CARRY((!\u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\) # (!\u_kirsch|stage1|nx15254z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|stage1|nx15254z2\,
	datad => VCC,
	cin => \u_kirsch|stage1|o_max_add_stage1_add9_1_ix15254z52924~1_cout\,
	combout => \u_kirsch|stage1|o_max_add_stage1_8_\,
	cout => \u_kirsch|stage1|o_max_add_stage1_9_\);

-- Location: LCCOMB_X47_Y23_N26
\u_kirsch|stage1|ix15254z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|nx15254z1\ = !\u_kirsch|stage1|o_max_add_stage1_9_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_kirsch|stage1|o_max_add_stage1_9_\,
	combout => \u_kirsch|stage1|nx15254z1\);

-- Location: LCFF_X46_Y23_N5
\u_kirsch|reg_temp_dir_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r1_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_dir_0_\);

-- Location: LCCOMB_X46_Y23_N4
\u_kirsch|ix28678z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_dir3_0_\ = (\u_kirsch|valid_2_\ & ((\u_kirsch|temp_dir_0_\))) # (!\u_kirsch|valid_2_\ & (\u_kirsch|r5_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r5_0_\,
	datac => \u_kirsch|temp_dir_0_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|i_dir3_0_\);

-- Location: LCFF_X46_Y23_N31
\u_kirsch|reg_r1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|u_max1|o_max_dir_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_0_\);

-- Location: LCCOMB_X42_Y23_N8
\u_kirsch|stage2|u_max2|ix19309z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z10\ = CARRY((\u_kirsch|r3_0_\ & !\u_kirsch|i_max3_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_0_\,
	datab => \u_kirsch|i_max3_0_\,
	datad => VCC,
	cout => \u_kirsch|stage2|u_max2|nx19309z10\);

-- Location: LCCOMB_X42_Y23_N10
\u_kirsch|stage2|u_max2|ix19309z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z9\ = CARRY((\u_kirsch|i_max3_1_\ & ((!\u_kirsch|stage2|u_max2|nx19309z10\) # (!\u_kirsch|r3_1_\))) # (!\u_kirsch|i_max3_1_\ & (!\u_kirsch|r3_1_\ & !\u_kirsch|stage2|u_max2|nx19309z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_1_\,
	datab => \u_kirsch|r3_1_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z10\,
	cout => \u_kirsch|stage2|u_max2|nx19309z9\);

-- Location: LCCOMB_X42_Y23_N12
\u_kirsch|stage2|u_max2|ix19309z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z8\ = CARRY((\u_kirsch|r3_2_\ & ((!\u_kirsch|stage2|u_max2|nx19309z9\) # (!\u_kirsch|i_max3_2_\))) # (!\u_kirsch|r3_2_\ & (!\u_kirsch|i_max3_2_\ & !\u_kirsch|stage2|u_max2|nx19309z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_2_\,
	datab => \u_kirsch|i_max3_2_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z9\,
	cout => \u_kirsch|stage2|u_max2|nx19309z8\);

-- Location: LCCOMB_X42_Y23_N14
\u_kirsch|stage2|u_max2|ix19309z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z7\ = CARRY((\u_kirsch|r3_3_\ & (\u_kirsch|i_max3_3_\ & !\u_kirsch|stage2|u_max2|nx19309z8\)) # (!\u_kirsch|r3_3_\ & ((\u_kirsch|i_max3_3_\) # (!\u_kirsch|stage2|u_max2|nx19309z8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_3_\,
	datab => \u_kirsch|i_max3_3_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z8\,
	cout => \u_kirsch|stage2|u_max2|nx19309z7\);

-- Location: LCCOMB_X42_Y23_N16
\u_kirsch|stage2|u_max2|ix19309z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z6\ = CARRY((\u_kirsch|r3_4_\ & ((!\u_kirsch|stage2|u_max2|nx19309z7\) # (!\u_kirsch|i_max3_4_\))) # (!\u_kirsch|r3_4_\ & (!\u_kirsch|i_max3_4_\ & !\u_kirsch|stage2|u_max2|nx19309z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_4_\,
	datab => \u_kirsch|i_max3_4_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z7\,
	cout => \u_kirsch|stage2|u_max2|nx19309z6\);

-- Location: LCCOMB_X42_Y23_N18
\u_kirsch|stage2|u_max2|ix19309z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z5\ = CARRY((\u_kirsch|r3_5_\ & (\u_kirsch|i_max3_5_\ & !\u_kirsch|stage2|u_max2|nx19309z6\)) # (!\u_kirsch|r3_5_\ & ((\u_kirsch|i_max3_5_\) # (!\u_kirsch|stage2|u_max2|nx19309z6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_5_\,
	datab => \u_kirsch|i_max3_5_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z6\,
	cout => \u_kirsch|stage2|u_max2|nx19309z5\);

-- Location: LCCOMB_X42_Y23_N20
\u_kirsch|stage2|u_max2|ix19309z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z4\ = CARRY((\u_kirsch|i_max3_6_\ & (\u_kirsch|r3_6_\ & !\u_kirsch|stage2|u_max2|nx19309z5\)) # (!\u_kirsch|i_max3_6_\ & ((\u_kirsch|r3_6_\) # (!\u_kirsch|stage2|u_max2|nx19309z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max3_6_\,
	datab => \u_kirsch|r3_6_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z5\,
	cout => \u_kirsch|stage2|u_max2|nx19309z4\);

-- Location: LCCOMB_X42_Y23_N22
\u_kirsch|stage2|u_max2|ix19309z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z3\ = CARRY((\u_kirsch|r3_7_\ & (\u_kirsch|i_max3_7_\ & !\u_kirsch|stage2|u_max2|nx19309z4\)) # (!\u_kirsch|r3_7_\ & ((\u_kirsch|i_max3_7_\) # (!\u_kirsch|stage2|u_max2|nx19309z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_7_\,
	datab => \u_kirsch|i_max3_7_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z4\,
	cout => \u_kirsch|stage2|u_max2|nx19309z3\);

-- Location: LCCOMB_X42_Y23_N24
\u_kirsch|stage2|u_max2|ix19309z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z2\ = CARRY((\u_kirsch|r3_8_\ & ((!\u_kirsch|stage2|u_max2|nx19309z3\) # (!\u_kirsch|i_max3_8_\))) # (!\u_kirsch|r3_8_\ & (!\u_kirsch|i_max3_8_\ & !\u_kirsch|stage2|u_max2|nx19309z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_8_\,
	datab => \u_kirsch|i_max3_8_\,
	datad => VCC,
	cin => \u_kirsch|stage2|u_max2|nx19309z3\,
	cout => \u_kirsch|stage2|u_max2|nx19309z2\);

-- Location: LCCOMB_X42_Y23_N26
\u_kirsch|stage2|u_max2|ix19309z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|nx19309z1\ = (\u_kirsch|r3_9_\ & ((\u_kirsch|stage2|u_max2|nx19309z2\) # (!\u_kirsch|i_max3_9_\))) # (!\u_kirsch|r3_9_\ & (!\u_kirsch|i_max3_9_\ & \u_kirsch|stage2|u_max2|nx19309z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r3_9_\,
	datab => \u_kirsch|i_max3_9_\,
	cin => \u_kirsch|stage2|u_max2|nx19309z2\,
	combout => \u_kirsch|stage2|u_max2|nx19309z1\);

-- Location: LCCOMB_X45_Y24_N24
\u_kirsch|stage2|u_max2|ix17315z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_dir_0_\ = (\u_kirsch|stage2|u_max2|nx19309z1\ & (\u_kirsch|r1_0_\)) # (!\u_kirsch|stage2|u_max2|nx19309z1\ & ((\u_kirsch|i_dir3_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|r1_0_\,
	datab => \u_kirsch|i_dir3_0_\,
	datad => \u_kirsch|stage2|u_max2|nx19309z1\,
	combout => \u_kirsch|stage2|u_max2|o_max_dir_0_\);

-- Location: LCFF_X45_Y24_N13
\u_kirsch|reg_r5_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_dir_1_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_1_\);

-- Location: LCCOMB_X45_Y24_N30
\u_kirsch|ix23859z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23859z1\ = (\u_kirsch|valid_6_\ & ((\u_kirsch|r5_1_\))) # (!\u_kirsch|valid_6_\ & (\u_kirsch|r8_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_6_\,
	datac => \u_kirsch|r8_1_\,
	datad => \u_kirsch|r5_1_\,
	combout => \u_kirsch|nx23859z1\);

-- Location: LCFF_X45_Y24_N29
\u_kirsch|reg_r8_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx22862z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r8_2_\);

-- Location: LCCOMB_X45_Y24_N4
\u_kirsch|ix61892z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|o_dir_2_\ = (\u_kirsch|r8_2_\ & \u_kirsch|o_edge\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|r8_2_\,
	datad => \u_kirsch|o_edge\,
	combout => \u_kirsch|o_dir_2_\);

-- Location: LCCOMB_X38_Y24_N14
\u_uw_uart|ix36748z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx36748z1\ = (\u_uw_uart|nx36748z2\ & ((\u_kirsch|o_dir_2_\) # (!\u_kirsch|o_valid\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|o_dir_2_\,
	datac => \u_kirsch|o_valid\,
	datad => \u_uw_uart|nx36748z2\,
	combout => \u_uw_uart|nx36748z1\);

-- Location: LCFF_X38_Y23_N13
\u_uw_uart|reg_mdata_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_4_\,
	ena => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_5_\);

-- Location: LCFF_X40_Y24_N5
\u_uw_uart|i_uarts|reg_Tx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_6_~_wirecell_combout\,
	sdata => \u_uw_uart|i_uarts|NOT_Tx_Reg_8_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|i_uarts|TxFSM_1_\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_7_\);

-- Location: LCFF_X41_Y23_N1
\u_uw_uart|reg_rdata_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_7_\);

-- Location: LCCOMB_X41_Y23_N0
\u_uw_uart|ix47405z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_7_\ = (\u_uw_uart|rdata_7_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_7_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_7_\);

-- Location: LCCOMB_X46_Y24_N28
\u_kirsch|ix20492z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx20492z1\ = (\u_uw_uart|o_pixavail\) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|o_pixavail\,
	datad => \nrst~combout\,
	combout => \u_kirsch|nx20492z1\);

-- Location: LCFF_X46_Y24_N17
\u_kirsch|reg_i_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_7_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_7_\);

-- Location: LCFF_X41_Y23_N3
\u_uw_uart|reg_rdata_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_6_\);

-- Location: LCCOMB_X41_Y23_N2
\u_uw_uart|ix46408z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_6_\ = (\u_uw_uart|rdata_6_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_6_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_6_\);

-- Location: LCFF_X46_Y24_N23
\u_kirsch|reg_i_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_6_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_6_\);

-- Location: LCFF_X41_Y23_N21
\u_uw_uart|reg_rdata_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_5_\);

-- Location: LCCOMB_X41_Y23_N20
\u_uw_uart|ix45411z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_5_\ = (\u_uw_uart|rdata_5_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_5_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_5_\);

-- Location: LCFF_X47_Y24_N15
\u_kirsch|reg_i_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_5_\);

-- Location: LCFF_X41_Y23_N15
\u_uw_uart|reg_rdata_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_4_\);

-- Location: LCCOMB_X41_Y23_N14
\u_uw_uart|ix44414z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_4_\ = (\u_uw_uart|rdata_4_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_4_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_4_\);

-- Location: LCFF_X50_Y23_N31
\u_kirsch|reg_i_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_4_\);

-- Location: LCFF_X41_Y23_N17
\u_uw_uart|reg_rdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_3_\);

-- Location: LCCOMB_X41_Y23_N16
\u_uw_uart|ix43417z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_3_\ = (\u_uw_uart|rdata_3_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_3_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_3_\);

-- Location: LCFF_X49_Y23_N5
\u_kirsch|reg_i_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_3_\);

-- Location: LCFF_X41_Y23_N11
\u_uw_uart|reg_rdata_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_2_\);

-- Location: LCCOMB_X41_Y23_N10
\u_uw_uart|ix42420z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_2_\ = (\u_uw_uart|rdata_2_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_2_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_2_\);

-- Location: LCFF_X50_Y24_N9
\u_kirsch|reg_i_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_2_\);

-- Location: LCFF_X41_Y23_N29
\u_uw_uart|reg_rdata_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_1_\);

-- Location: LCCOMB_X41_Y23_N28
\u_uw_uart|ix41423z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_1_\ = (\u_uw_uart|rdata_1_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_1_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_1_\);

-- Location: LCFF_X46_Y24_N19
\u_kirsch|reg_i_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_1_\);

-- Location: M4K_X52_Y23
\u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch_8_8:u_kirsch|ram_dq_8_1:mem_0|altsyncram:ix64056z29482|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => \u_kirsch|mem_wren_1_\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|mem_0|ix64056z29482|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y24
\u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "kirsch_8_8:u_kirsch|ram_dq_8_0:mem|altsyncram:ix64056z29481|altsyncram_jpg2:auto_generated|ALTSYNCRAM",
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
	portawe => \u_kirsch|mem_wren_0_\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u_kirsch|mem|ix64056z29481|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X41_Y23_N31
\u_uw_uart|reg_rdata_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Dout_0_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|rdata_0_\);

-- Location: LCCOMB_X41_Y23_N30
\u_uw_uart|ix40426z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_0_\ = (\u_uw_uart|rdata_0_\ & \u_uw_uart|o_pixavail\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rdata_0_\,
	datad => \u_uw_uart|o_pixavail\,
	combout => \u_uw_uart|datain_0_\);

-- Location: LCFF_X46_Y24_N7
\u_kirsch|reg_i_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|d_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_kirsch|nx20492z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|i_0_\);

-- Location: LCCOMB_X46_Y23_N10
\u_kirsch|ix28679z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z1\ = (\u_kirsch|valid_0_\) # ((!\u_kirsch|valid_2_\ & !\u_kirsch|valid_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datab => \u_kirsch|valid_1_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z1\);

-- Location: LCCOMB_X46_Y23_N8
\u_kirsch|ix28679z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx28679z2\ = (!\u_kirsch|valid_1_\ & !\u_kirsch|valid_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_1_\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx28679z2\);

-- Location: LCCOMB_X46_Y23_N14
\u_kirsch|stage1|u_max1|ix19309z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z7\ = CARRY((!\u_kirsch|i_max1_0_\ & \u_kirsch|i_max2_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_0_\,
	datab => \u_kirsch|i_max2_0_\,
	datad => VCC,
	cout => \u_kirsch|stage1|u_max1|nx19309z7\);

-- Location: LCCOMB_X46_Y23_N16
\u_kirsch|stage1|u_max1|ix19309z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z6\ = CARRY((\u_kirsch|i_max2_1_\ & (\u_kirsch|i_max1_1_\ & !\u_kirsch|stage1|u_max1|nx19309z7\)) # (!\u_kirsch|i_max2_1_\ & ((\u_kirsch|i_max1_1_\) # (!\u_kirsch|stage1|u_max1|nx19309z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_1_\,
	datab => \u_kirsch|i_max1_1_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx19309z7\,
	cout => \u_kirsch|stage1|u_max1|nx19309z6\);

-- Location: LCCOMB_X46_Y23_N18
\u_kirsch|stage1|u_max1|ix19309z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z5\ = CARRY((\u_kirsch|i_max2_2_\ & ((!\u_kirsch|stage1|u_max1|nx19309z6\) # (!\u_kirsch|i_max1_2_\))) # (!\u_kirsch|i_max2_2_\ & (!\u_kirsch|i_max1_2_\ & !\u_kirsch|stage1|u_max1|nx19309z6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_2_\,
	datab => \u_kirsch|i_max1_2_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx19309z6\,
	cout => \u_kirsch|stage1|u_max1|nx19309z5\);

-- Location: LCCOMB_X46_Y23_N20
\u_kirsch|stage1|u_max1|ix19309z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z4\ = CARRY((\u_kirsch|i_max2_3_\ & (\u_kirsch|i_max1_3_\ & !\u_kirsch|stage1|u_max1|nx19309z5\)) # (!\u_kirsch|i_max2_3_\ & ((\u_kirsch|i_max1_3_\) # (!\u_kirsch|stage1|u_max1|nx19309z5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_3_\,
	datab => \u_kirsch|i_max1_3_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx19309z5\,
	cout => \u_kirsch|stage1|u_max1|nx19309z4\);

-- Location: LCCOMB_X46_Y23_N22
\u_kirsch|stage1|u_max1|ix19309z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z3\ = CARRY((\u_kirsch|i_max2_4_\ & ((!\u_kirsch|stage1|u_max1|nx19309z4\) # (!\u_kirsch|i_max1_4_\))) # (!\u_kirsch|i_max2_4_\ & (!\u_kirsch|i_max1_4_\ & !\u_kirsch|stage1|u_max1|nx19309z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_4_\,
	datab => \u_kirsch|i_max1_4_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx19309z4\,
	cout => \u_kirsch|stage1|u_max1|nx19309z3\);

-- Location: LCCOMB_X46_Y23_N24
\u_kirsch|stage1|u_max1|ix19309z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z2\ = CARRY((\u_kirsch|i_max1_5_\ & ((!\u_kirsch|stage1|u_max1|nx19309z3\) # (!\u_kirsch|i_max2_5_\))) # (!\u_kirsch|i_max1_5_\ & (!\u_kirsch|i_max2_5_\ & !\u_kirsch|stage1|u_max1|nx19309z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max1_5_\,
	datab => \u_kirsch|i_max2_5_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx19309z3\,
	cout => \u_kirsch|stage1|u_max1|nx19309z2\);

-- Location: LCCOMB_X46_Y23_N26
\u_kirsch|stage1|u_max1|ix19309z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|nx19309z1\ = CARRY((\u_kirsch|i_max2_6_\ & ((!\u_kirsch|stage1|u_max1|nx19309z2\) # (!\u_kirsch|i_max1_6_\))) # (!\u_kirsch|i_max2_6_\ & (!\u_kirsch|i_max1_6_\ & !\u_kirsch|stage1|u_max1|nx19309z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|i_max2_6_\,
	datab => \u_kirsch|i_max1_6_\,
	datad => VCC,
	cin => \u_kirsch|stage1|u_max1|nx19309z2\,
	cout => \u_kirsch|stage1|u_max1|nx19309z1\);

-- Location: LCCOMB_X46_Y23_N28
\u_kirsch|stage1|u_max1|ix19309z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_dir_2_\ = (\u_kirsch|i_max1_7_\ & (\u_kirsch|stage1|u_max1|nx19309z1\ & \u_kirsch|i_max2_7_\)) # (!\u_kirsch|i_max1_7_\ & ((\u_kirsch|stage1|u_max1|nx19309z1\) # (\u_kirsch|i_max2_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_max1_7_\,
	datad => \u_kirsch|i_max2_7_\,
	cin => \u_kirsch|stage1|u_max1|nx19309z1\,
	combout => \u_kirsch|stage1|u_max1|o_max_dir_2_\);

-- Location: LCCOMB_X46_Y23_N30
\u_kirsch|stage1|u_max1|ix17315z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage1|u_max1|o_max_dir_0_\ = (\u_kirsch|stage1|u_max1|o_max_dir_2_\ & (\u_kirsch|nx28679z2\)) # (!\u_kirsch|stage1|u_max1|o_max_dir_2_\ & ((\u_kirsch|nx28679z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|stage1|u_max1|o_max_dir_2_\,
	datac => \u_kirsch|nx28679z2\,
	datad => \u_kirsch|nx28679z1\,
	combout => \u_kirsch|stage1|u_max1|o_max_dir_0_\);

-- Location: LCFF_X45_Y23_N1
\u_kirsch|reg_temp_dir_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r1_1_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_dir_1_\);

-- Location: LCCOMB_X45_Y23_N0
\u_kirsch|ix28678z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_dir3_1_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_dir_1_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r5_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_dir_1_\,
	datad => \u_kirsch|r5_1_\,
	combout => \u_kirsch|i_dir3_1_\);

-- Location: LCFF_X46_Y24_N15
\u_kirsch|reg_r1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx35074z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_1_\);

-- Location: LCCOMB_X45_Y24_N12
\u_kirsch|stage2|u_max2|ix18312z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_dir_1_\ = (\u_kirsch|stage2|u_max2|nx19309z1\ & ((\u_kirsch|r1_1_\))) # (!\u_kirsch|stage2|u_max2|nx19309z1\ & (\u_kirsch|i_dir3_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_dir3_1_\,
	datac => \u_kirsch|r1_1_\,
	datad => \u_kirsch|stage2|u_max2|nx19309z1\,
	combout => \u_kirsch|stage2|u_max2|o_max_dir_1_\);

-- Location: LCFF_X45_Y24_N1
\u_kirsch|reg_r5_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage2|u_max2|o_max_dir_2_\,
	ena => \u_kirsch|ALT_INV_valid_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r5_2_\);

-- Location: LCCOMB_X45_Y24_N28
\u_kirsch|ix22862z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx22862z1\ = (\u_kirsch|valid_6_\ & ((\u_kirsch|r5_2_\))) # (!\u_kirsch|valid_6_\ & (\u_kirsch|r8_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|valid_6_\,
	datac => \u_kirsch|r8_2_\,
	datad => \u_kirsch|r5_2_\,
	combout => \u_kirsch|nx22862z1\);

-- Location: LCCOMB_X38_Y23_N12
\u_uw_uart|ix37745z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_4_\ = (((!\u_kirsch|nx25376z9\ & !\u_kirsch|o_mode_1_\)) # (!\u_kirsch|o_valid\)) # (!\u_uw_uart|nx39739z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx25376z9\,
	datab => \u_kirsch|o_mode_1_\,
	datac => \u_uw_uart|nx39739z1\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|mdata_7n5ss1_4_\);

-- Location: LCFF_X40_Y23_N27
\u_uw_uart|reg_sdout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|sdout_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|nx39865z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_6_\);

-- Location: LCFF_X40_Y24_N9
\u_uw_uart|i_uarts|reg_Tx_Reg_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx35603z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|NOT_Tx_Reg_8_\);

-- Location: LCFF_X40_Y23_N21
\u_uw_uart|i_uarts|reg_Dout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_7_\);

-- Location: LCCOMB_X42_Y22_N4
\u_kirsch|ix51243z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|mem_wren_0_\ = (\u_uw_uart|o_pixavail\ & !\u_kirsch|o_row_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|o_row_0_\,
	combout => \u_kirsch|mem_wren_0_\);

-- Location: LCCOMB_X42_Y22_N30
\u_kirsch|ix54114z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|mem_wren_1_\ = (\u_uw_uart|o_pixavail\ & \u_kirsch|o_row_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|o_row_0_\,
	combout => \u_kirsch|mem_wren_1_\);

-- Location: LCFF_X40_Y23_N31
\u_uw_uart|i_uarts|reg_Dout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_6_\);

-- Location: LCFF_X40_Y23_N17
\u_uw_uart|i_uarts|reg_Dout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_5_\);

-- Location: LCFF_X40_Y23_N11
\u_uw_uart|i_uarts|reg_Dout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_4_\);

-- Location: LCFF_X40_Y23_N5
\u_uw_uart|i_uarts|reg_Dout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_3_\);

-- Location: LCFF_X40_Y23_N7
\u_uw_uart|i_uarts|reg_Dout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_2_\);

-- Location: LCFF_X40_Y23_N25
\u_uw_uart|i_uarts|reg_Dout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_1_\);

-- Location: LCFF_X40_Y23_N19
\u_uw_uart|i_uarts|reg_Dout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Dout_0_\);

-- Location: LCCOMB_X46_Y24_N14
\u_kirsch|ix35074z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx35074z1\ = (!\u_kirsch|valid_0_\ & ((\u_kirsch|valid_1_\) # (!\u_kirsch|valid_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_0_\,
	datac => \u_kirsch|valid_1_\,
	datad => \u_kirsch|valid_2_\,
	combout => \u_kirsch|nx35074z1\);

-- Location: LCFF_X46_Y23_N3
\u_kirsch|reg_temp_dir_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|r1_2_\,
	sload => VCC,
	ena => \u_kirsch|valid_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|temp_dir_2_\);

-- Location: LCCOMB_X46_Y23_N2
\u_kirsch|ix28678z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|i_dir3_2_\ = (\u_kirsch|valid_2_\ & (\u_kirsch|temp_dir_2_\)) # (!\u_kirsch|valid_2_\ & ((\u_kirsch|r5_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|valid_2_\,
	datac => \u_kirsch|temp_dir_2_\,
	datad => \u_kirsch|r5_2_\,
	combout => \u_kirsch|i_dir3_2_\);

-- Location: LCFF_X46_Y23_N29
\u_kirsch|reg_r1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|stage1|u_max1|o_max_dir_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|r1_2_\);

-- Location: LCCOMB_X45_Y24_N0
\u_kirsch|stage2|u_max2|ix19309z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|stage2|u_max2|o_max_dir_2_\ = (\u_kirsch|stage2|u_max2|nx19309z1\ & ((\u_kirsch|r1_2_\))) # (!\u_kirsch|stage2|u_max2|nx19309z1\ & (\u_kirsch|i_dir3_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|i_dir3_2_\,
	datac => \u_kirsch|r1_2_\,
	datad => \u_kirsch|stage2|u_max2|nx19309z1\,
	combout => \u_kirsch|stage2|u_max2|o_max_dir_2_\);

-- Location: LCFF_X38_Y23_N23
\u_uw_uart|reg_mdata_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|mdata_7n5ss1_6_\,
	ena => \u_uw_uart|nx39739z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_7_\);

-- Location: LCCOMB_X40_Y24_N8
\u_uw_uart|i_uarts|ix35603z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\ = (!\u_uw_uart|i_uarts|TxFSM_1_\ & !\u_uw_uart|sdout_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|sdout_6_\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_14n6ss1_8_\);

-- Location: LCFF_X41_Y24_N15
\u_uw_uart|i_uarts|reg_Rx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx54636z1~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_7_\);

-- Location: LCFF_X41_Y24_N1
\u_uw_uart|i_uarts|reg_Rx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_6_\);

-- Location: LCFF_X41_Y24_N11
\u_uw_uart|i_uarts|reg_Rx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_5_\);

-- Location: LCFF_X41_Y24_N5
\u_uw_uart|i_uarts|reg_Rx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_4_\);

-- Location: LCFF_X41_Y24_N7
\u_uw_uart|i_uarts|reg_Rx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_3_\);

-- Location: LCFF_X41_Y24_N17
\u_uw_uart|i_uarts|reg_Rx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_2_\);

-- Location: LCFF_X41_Y24_N19
\u_uw_uart|i_uarts|reg_Rx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|i_uarts|Rx_Reg_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_1_\);

-- Location: LCFF_X41_Y24_N29
\u_uw_uart|i_uarts|reg_Rx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx54636z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|Rx_Reg_0_\);

-- Location: LCCOMB_X38_Y23_N22
\u_uw_uart|ix39739z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|mdata_7n5ss1_6_\ = (\u_kirsch|nx25376z9\ & (((!\u_kirsch|o_valid\) # (!\u_uw_uart|nx39739z1\)))) # (!\u_kirsch|nx25376z9\ & (\u_kirsch|o_mode_1_\ & ((!\u_kirsch|o_valid\) # (!\u_uw_uart|nx39739z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx25376z9\,
	datab => \u_kirsch|o_mode_1_\,
	datac => \u_uw_uart|nx39739z1\,
	datad => \u_kirsch|o_valid\,
	combout => \u_uw_uart|mdata_7n5ss1_6_\);

-- Location: LCCOMB_X41_Y24_N22
\u_uw_uart|i_uarts|ix54636z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx54636z2\ = (\u_uw_uart|i_uarts|RxFSM_3_\ & \u_uw_uart|i_uarts|TopRx\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|TopRx\,
	combout => \u_uw_uart|i_uarts|nx54636z2\);

-- Location: LCCOMB_X41_Y24_N14
\u_uw_uart|i_uarts|nx54636z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx54636z1~_wirecell_combout\ = !\u_uw_uart|i_uarts|nx54636z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|nx54636z1\,
	combout => \u_uw_uart|i_uarts|nx54636z1~_wirecell_combout\);

-- Location: LCCOMB_X40_Y24_N6
\u_uw_uart|sdout_0_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_0_~_wirecell_combout\ = !\u_uw_uart|sdout_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_0_\,
	combout => \u_uw_uart|sdout_0_~_wirecell_combout\);

-- Location: LCCOMB_X40_Y24_N16
\u_uw_uart|sdout_1_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_1_~_wirecell_combout\ = !\u_uw_uart|sdout_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_1_\,
	combout => \u_uw_uart|sdout_1_~_wirecell_combout\);

-- Location: LCCOMB_X40_Y24_N14
\u_uw_uart|sdout_2_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_2_~_wirecell_combout\ = !\u_uw_uart|sdout_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_2_\,
	combout => \u_uw_uart|sdout_2_~_wirecell_combout\);

-- Location: LCCOMB_X40_Y24_N20
\u_uw_uart|sdout_3_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_3_~_wirecell_combout\ = !\u_uw_uart|sdout_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_3_\,
	combout => \u_uw_uart|sdout_3_~_wirecell_combout\);

-- Location: LCCOMB_X40_Y24_N22
\u_uw_uart|sdout_4_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_4_~_wirecell_combout\ = !\u_uw_uart|sdout_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|sdout_4_\,
	combout => \u_uw_uart|sdout_4_~_wirecell_combout\);

-- Location: LCCOMB_X40_Y24_N4
\u_uw_uart|sdout_6_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_6_~_wirecell_combout\ = !\u_uw_uart|sdout_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_6_\,
	combout => \u_uw_uart|sdout_6_~_wirecell_combout\);

-- Location: LCCOMB_X43_Y22_N4
\u_kirsch|column_valid1_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid1_7_~feeder_combout\ = \u_kirsch|column_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|column_7_\,
	combout => \u_kirsch|column_valid1_7_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N0
\u_uw_uart|sdout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_0_~feeder_combout\ = \u_uw_uart|mdata_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_0_\,
	combout => \u_uw_uart|sdout_0_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N2
\u_uw_uart|sdout_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_1_~feeder_combout\ = \u_uw_uart|mdata_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_1_\,
	combout => \u_uw_uart|sdout_1_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N22
\u_uw_uart|sdout_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_3_~feeder_combout\ = \u_uw_uart|mdata_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_3_\,
	combout => \u_uw_uart|sdout_3_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N8
\u_uw_uart|sdout_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_4_~feeder_combout\ = \u_uw_uart|mdata_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_5_\,
	combout => \u_uw_uart|sdout_4_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N8
\u_kirsch|c_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_7_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(7),
	combout => \u_kirsch|c_7_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N2
\u_kirsch|d_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_7_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(7),
	combout => \u_kirsch|d_7_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N4
\u_kirsch|c_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_6_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(6),
	combout => \u_kirsch|c_6_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N22
\u_kirsch|d_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_6_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(6),
	combout => \u_kirsch|d_6_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N24
\u_kirsch|c_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_5_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(5),
	combout => \u_kirsch|c_5_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N26
\u_kirsch|d_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_5_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(5),
	combout => \u_kirsch|d_5_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N20
\u_kirsch|c_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_4_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(4),
	combout => \u_kirsch|c_4_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N6
\u_kirsch|d_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_4_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(4),
	combout => \u_kirsch|d_4_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N16
\u_kirsch|c_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_3_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(3),
	combout => \u_kirsch|c_3_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N10
\u_kirsch|d_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_3_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(3),
	combout => \u_kirsch|d_3_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N12
\u_kirsch|c_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_2_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(2),
	combout => \u_kirsch|c_2_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N30
\u_kirsch|d_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_2_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(2),
	combout => \u_kirsch|d_2_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N0
\u_kirsch|c_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_1_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(1),
	combout => \u_kirsch|c_1_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N18
\u_kirsch|d_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_1_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(1),
	combout => \u_kirsch|d_1_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N28
\u_kirsch|d_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|d_0_~feeder_combout\ = \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem_0|ix64056z29482|auto_generated|q_a\(0),
	combout => \u_kirsch|d_0_~feeder_combout\);

-- Location: LCCOMB_X51_Y24_N14
\u_kirsch|c_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|c_0_~feeder_combout\ = \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|mem|ix64056z29481|auto_generated|q_a\(0),
	combout => \u_kirsch|c_0_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N26
\u_uw_uart|sdout_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|sdout_6_~feeder_combout\ = \u_uw_uart|mdata_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|mdata_7_\,
	combout => \u_uw_uart|sdout_6_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N30
\u_uw_uart|i_uarts|Dout_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_6_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_6_\,
	combout => \u_uw_uart|i_uarts|Dout_6_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N4
\u_uw_uart|i_uarts|Rx_Reg_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_5_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_4_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N4
\u_uw_uart|i_uarts|Dout_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_3_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_3_\,
	combout => \u_uw_uart|i_uarts|Dout_3_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N6
\u_uw_uart|i_uarts|Dout_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_2_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_2_\,
	combout => \u_uw_uart|i_uarts|Dout_2_~feeder_combout\);

-- Location: LCCOMB_X41_Y24_N28
\u_uw_uart|i_uarts|Rx_Reg_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	combout => \u_uw_uart|i_uarts|Rx_Reg_0_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N24
\u_uw_uart|i_uarts|Dout_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_1_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_1_\,
	combout => \u_uw_uart|i_uarts|Dout_1_~feeder_combout\);

-- Location: LCCOMB_X40_Y23_N18
\u_uw_uart|i_uarts|Dout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|Dout_0_~feeder_combout\ = \u_uw_uart|i_uarts|Rx_Reg_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|Rx_Reg_0_\,
	combout => \u_uw_uart|i_uarts|Dout_0_~feeder_combout\);

-- Location: LCCOMB_X40_Y24_N24
\u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout\ = \u_uw_uart|sdout_4_~_wirecell_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|sdout_4_~_wirecell_combout\,
	combout => \u_uw_uart|i_uarts|NOT_Tx_Reg_6_~feeder_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y24_N0
\u_uw_uart|i_uarts|ix17415z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_0__dup_95\ = !\u_uw_uart|i_uarts|TxDiv_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|i_uarts|TxDiv_0_\,
	combout => \u_uw_uart|i_uarts|inc_d_0__dup_95\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nrst~I\ : cycloneii_io
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
	padio => ww_nrst,
	combout => \nrst~combout\);

-- Location: LCFF_X35_Y24_N1
\u_uw_uart|i_uarts|reg_q_0__dup_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_0__dup_95\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_0_\);

-- Location: LCCOMB_X35_Y24_N8
\u_uw_uart|i_uarts|ix12704z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx12704z1\ = CARRY(\u_uw_uart|i_uarts|TxDiv_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_0_\,
	datad => VCC,
	cout => \u_uw_uart|i_uarts|nx12704z1\);

-- Location: LCCOMB_X35_Y24_N10
\u_uw_uart|i_uarts|ix12704z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_1__dup_97\ = (\u_uw_uart|i_uarts|TxDiv_1_\ & (!\u_uw_uart|i_uarts|nx12704z1\)) # (!\u_uw_uart|i_uarts|TxDiv_1_\ & ((\u_uw_uart|i_uarts|nx12704z1\) # (GND)))
-- \u_uw_uart|i_uarts|nx28532z7\ = CARRY((!\u_uw_uart|i_uarts|nx12704z1\) # (!\u_uw_uart|i_uarts|TxDiv_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_1_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx12704z1\,
	combout => \u_uw_uart|i_uarts|inc_d_1__dup_97\,
	cout => \u_uw_uart|i_uarts|nx28532z7\);

-- Location: LCFF_X35_Y24_N11
\u_uw_uart|i_uarts|reg_q_1__dup_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_1__dup_97\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_1_\);

-- Location: LCCOMB_X35_Y24_N12
\u_uw_uart|i_uarts|ix28532z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_2__dup_99\ = (\u_uw_uart|i_uarts|TxDiv_2_\ & (\u_uw_uart|i_uarts|nx28532z7\ $ (GND))) # (!\u_uw_uart|i_uarts|TxDiv_2_\ & (!\u_uw_uart|i_uarts|nx28532z7\ & VCC))
-- \u_uw_uart|i_uarts|nx28532z6\ = CARRY((\u_uw_uart|i_uarts|TxDiv_2_\ & !\u_uw_uart|i_uarts|nx28532z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_2_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z7\,
	combout => \u_uw_uart|i_uarts|inc_d_2__dup_99\,
	cout => \u_uw_uart|i_uarts|nx28532z6\);

-- Location: LCCOMB_X35_Y24_N14
\u_uw_uart|i_uarts|ix28532z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_3__dup_101\ = (\u_uw_uart|i_uarts|TxDiv_3_\ & (!\u_uw_uart|i_uarts|nx28532z6\)) # (!\u_uw_uart|i_uarts|TxDiv_3_\ & ((\u_uw_uart|i_uarts|nx28532z6\) # (GND)))
-- \u_uw_uart|i_uarts|nx28532z5\ = CARRY((!\u_uw_uart|i_uarts|nx28532z6\) # (!\u_uw_uart|i_uarts|TxDiv_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_3_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z6\,
	combout => \u_uw_uart|i_uarts|inc_d_3__dup_101\,
	cout => \u_uw_uart|i_uarts|nx28532z5\);

-- Location: LCFF_X35_Y24_N15
\u_uw_uart|i_uarts|reg_q_3__dup_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_3__dup_101\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_3_\);

-- Location: LCFF_X35_Y24_N13
\u_uw_uart|i_uarts|reg_q_2__dup_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_2__dup_99\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_2_\);

-- Location: LCCOMB_X34_Y24_N16
\u_uw_uart|i_uarts|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z6\ = (!\u_uw_uart|i_uarts|TxDiv_3_\ & !\u_uw_uart|i_uarts|TxDiv_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_3_\,
	datac => \u_uw_uart|i_uarts|TxDiv_2_\,
	combout => \u_uw_uart|i_uarts|nx32400z6\);

-- Location: LCCOMB_X36_Y24_N8
\u_uw_uart|i_uarts|RxDivisor_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\);

-- Location: LCFF_X36_Y24_N9
\u_uw_uart|i_uarts|reg_RxDivisor_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|RxDivisor_4_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxDivisor_4_\);

-- Location: LCCOMB_X35_Y24_N18
\u_uw_uart|i_uarts|ix28532z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_5__dup_105\ = (\u_uw_uart|i_uarts|TxDiv_5_\ & (!\u_uw_uart|i_uarts|nx28532z4\)) # (!\u_uw_uart|i_uarts|TxDiv_5_\ & ((\u_uw_uart|i_uarts|nx28532z4\) # (GND)))
-- \u_uw_uart|i_uarts|nx28532z3\ = CARRY((!\u_uw_uart|i_uarts|nx28532z4\) # (!\u_uw_uart|i_uarts|TxDiv_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_5_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z4\,
	combout => \u_uw_uart|i_uarts|inc_d_5__dup_105\,
	cout => \u_uw_uart|i_uarts|nx28532z3\);

-- Location: LCFF_X35_Y24_N19
\u_uw_uart|i_uarts|reg_q_5__dup_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_5__dup_105\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_5_\);

-- Location: LCCOMB_X35_Y24_N22
\u_uw_uart|i_uarts|ix28532z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|inc_d_7__dup_109\ = (\u_uw_uart|i_uarts|TxDiv_7_\ & (!\u_uw_uart|i_uarts|nx28532z2\)) # (!\u_uw_uart|i_uarts|TxDiv_7_\ & ((\u_uw_uart|i_uarts|nx28532z2\) # (GND)))
-- \u_uw_uart|i_uarts|nx28532z1\ = CARRY((!\u_uw_uart|i_uarts|nx28532z2\) # (!\u_uw_uart|i_uarts|TxDiv_7_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxDiv_7_\,
	datad => VCC,
	cin => \u_uw_uart|i_uarts|nx28532z2\,
	combout => \u_uw_uart|i_uarts|inc_d_7__dup_109\,
	cout => \u_uw_uart|i_uarts|nx28532z1\);

-- Location: LCFF_X35_Y24_N23
\u_uw_uart|i_uarts|reg_q_7__dup_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_7__dup_109\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_7_\);

-- Location: LCFF_X35_Y24_N25
\u_uw_uart|i_uarts|reg_q_8__dup_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|inc_d_8__dup_111\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|i_uarts|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxDiv_8_\);

-- Location: LCCOMB_X35_Y24_N4
\u_uw_uart|i_uarts|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z4\ = (!\u_uw_uart|i_uarts|TxDiv_4_\ & (!\u_uw_uart|i_uarts|TxDiv_7_\ & (!\u_uw_uart|i_uarts|TxDiv_8_\ & !\u_uw_uart|i_uarts|TxDiv_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_4_\,
	datab => \u_uw_uart|i_uarts|TxDiv_7_\,
	datac => \u_uw_uart|i_uarts|TxDiv_8_\,
	datad => \u_uw_uart|i_uarts|TxDiv_5_\,
	combout => \u_uw_uart|i_uarts|nx32400z4\);

-- Location: LCCOMB_X35_Y24_N2
\u_uw_uart|i_uarts|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z3\ = (\u_uw_uart|i_uarts|TxDiv_4_\ & (\u_uw_uart|i_uarts|TxDiv_7_\ & (\u_uw_uart|i_uarts|TxDiv_8_\ & \u_uw_uart|i_uarts|TxDiv_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_4_\,
	datab => \u_uw_uart|i_uarts|TxDiv_7_\,
	datac => \u_uw_uart|i_uarts|TxDiv_8_\,
	datad => \u_uw_uart|i_uarts|TxDiv_5_\,
	combout => \u_uw_uart|i_uarts|nx32400z3\);

-- Location: LCCOMB_X36_Y24_N18
\u_uw_uart|i_uarts|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z2\ = (\u_uw_uart|i_uarts|TxDiv_0_\ & (\u_uw_uart|i_uarts|RxDivisor_4_\ & ((\u_uw_uart|i_uarts|nx32400z3\)))) # (!\u_uw_uart|i_uarts|TxDiv_0_\ & (!\u_uw_uart|i_uarts|RxDivisor_4_\ & (\u_uw_uart|i_uarts|nx32400z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TxDiv_0_\,
	datab => \u_uw_uart|i_uarts|RxDivisor_4_\,
	datac => \u_uw_uart|i_uarts|nx32400z4\,
	datad => \u_uw_uart|i_uarts|nx32400z3\,
	combout => \u_uw_uart|i_uarts|nx32400z2\);

-- Location: LCCOMB_X38_Y24_N18
\u_uw_uart|i_uarts|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx32400z1\ = (\u_uw_uart|i_uarts|nx32400z5\ & (!\u_uw_uart|i_uarts|TxDiv_1_\ & (\u_uw_uart|i_uarts|nx32400z6\ & \u_uw_uart|i_uarts|nx32400z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx32400z5\,
	datab => \u_uw_uart|i_uarts|TxDiv_1_\,
	datac => \u_uw_uart|i_uarts|nx32400z6\,
	datad => \u_uw_uart|i_uarts|nx32400z2\,
	combout => \u_uw_uart|i_uarts|nx32400z1\);

-- Location: LCFF_X38_Y24_N19
\u_uw_uart|i_uarts|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx32400z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TopTx\);

-- Location: LCCOMB_X38_Y24_N30
\u_uw_uart|i_uarts|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx5605z1\ = \u_uw_uart|i_uarts|TxFSM_1_\ $ (((\u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TopTx\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|TxFSM_0_\,
	datac => \u_uw_uart|i_uarts|TxFSM_1_\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx5605z1\);

-- Location: LCFF_X38_Y24_N31
\u_uw_uart|i_uarts|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx5605z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_1_\);

-- Location: LCCOMB_X38_Y24_N2
\u_uw_uart|i_uarts|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z2\ = (\u_uw_uart|i_uarts|TxFSM_0_\ & (((!\u_uw_uart|i_uarts|TopTx\)))) # (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((\u_uw_uart|i_uarts|TxFSM_1_\ & ((!\u_uw_uart|i_uarts|TopTx\))) # (!\u_uw_uart|i_uarts|TxFSM_1_\ & 
-- (!\u_uw_uart|ld_sdout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|ld_sdout\,
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx4608z2\);

-- Location: LCCOMB_X38_Y24_N8
\u_uw_uart|i_uarts|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx4608z1\ = (\u_uw_uart|i_uarts|nx4608z2\ & (((\u_uw_uart|i_uarts|TxFSM_0_\)))) # (!\u_uw_uart|i_uarts|nx4608z2\ & (!\u_uw_uart|i_uarts|TxFSM_0_\ & ((!\u_uw_uart|i_uarts|TxFSM_1_\) # (!\u_uw_uart|i_uarts|nx4608z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx4608z3\,
	datab => \u_uw_uart|i_uarts|nx4608z2\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx4608z1\);

-- Location: LCFF_X38_Y24_N9
\u_uw_uart|i_uarts|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx4608z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|TxFSM_0_\);

-- Location: LCCOMB_X38_Y24_N28
\u_uw_uart|i_uarts|ix27627z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z3\ = (!\u_uw_uart|i_uarts|nx27627z4\ & (\u_uw_uart|i_uarts|TopTx\ & (!\u_uw_uart|i_uarts|TxFSM_0_\ & \u_uw_uart|i_uarts|TxFSM_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx27627z4\,
	datab => \u_uw_uart|i_uarts|TopTx\,
	datac => \u_uw_uart|i_uarts|TxFSM_0_\,
	datad => \u_uw_uart|i_uarts|TxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx27627z3\);

-- Location: LCCOMB_X38_Y24_N0
\u_uw_uart|i_uarts|ix27627z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx27627z1\ = (!\u_uw_uart|i_uarts|nx27627z2\ & (!\u_uw_uart|i_uarts|nx27627z3\ & ((\u_uw_uart|i_uarts|nx18332z1\) # (\u_uw_uart|i_uarts|TopTx\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx27627z2\,
	datab => \u_uw_uart|i_uarts|nx27627z3\,
	datac => \u_uw_uart|i_uarts|nx18332z1\,
	datad => \u_uw_uart|i_uarts|TopTx\,
	combout => \u_uw_uart|i_uarts|nx27627z1\);

-- Location: LCFF_X38_Y24_N1
\u_uw_uart|i_uarts|reg_Tx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx27627z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx18332z1\);

-- Location: LCCOMB_X42_Y22_N8
\u_kirsch|ix54262z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx54262z3\ = CARRY(\u_kirsch|o_row_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_0_\,
	datad => VCC,
	cout => \u_kirsch|nx54262z3\);

-- Location: LCCOMB_X42_Y22_N10
\u_kirsch|ix54262z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_1_\ = (\u_kirsch|o_row_1_\ & (!\u_kirsch|nx54262z3\)) # (!\u_kirsch|o_row_1_\ & ((\u_kirsch|nx54262z3\) # (GND)))
-- \u_kirsch|nx54262z2\ = CARRY((!\u_kirsch|nx54262z3\) # (!\u_kirsch|o_row_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|o_row_1_\,
	datad => VCC,
	cin => \u_kirsch|nx54262z3\,
	combout => \u_kirsch|inc_d_1_\,
	cout => \u_kirsch|nx54262z2\);

-- Location: LCCOMB_X45_Y22_N0
\u_kirsch|ix17423z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_0__dup_223\ = !\u_kirsch|column_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|column_0_\,
	combout => \u_kirsch|inc_d_0__dup_223\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rxflex~I\ : cycloneii_io
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
	padio => ww_rxflex,
	combout => \rxflex~combout\);

-- Location: LCCOMB_X41_Y24_N24
\u_uw_uart|ix15671z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx\ = (\rxflex~combout\ & \nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rxflex~combout\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|rawrx\);

-- Location: LCCOMB_X37_Y24_N30
\u_uw_uart|rawrx~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|rawrx~_wirecell_combout\ = !\u_uw_uart|rawrx\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|rawrx\,
	combout => \u_uw_uart|rawrx~_wirecell_combout\);

-- Location: LCFF_X37_Y24_N31
\u_uw_uart|i_uarts|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|rawrx~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx54636z1\);

-- Location: LCCOMB_X36_Y24_N16
\u_uw_uart|i_uarts|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11553z1\ = (\u_uw_uart|i_uarts|nx54636z1\ & ((\u_uw_uart|i_uarts|RxFSM_4_\))) # (!\u_uw_uart|i_uarts|nx54636z1\ & (\u_uw_uart|i_uarts|RxFSM_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|RxFSM_1_\,
	datab => \u_uw_uart|i_uarts|RxFSM_4_\,
	datad => \u_uw_uart|i_uarts|nx54636z1\,
	combout => \u_uw_uart|i_uarts|nx11553z1\);

-- Location: LCCOMB_X41_Y23_N26
\u_uw_uart|i_uarts|ix15541z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z3\ = (\u_uw_uart|i_uarts|nx53265z2\ & ((\u_uw_uart|i_uarts|RxFSM_5_\ & ((\u_uw_uart|rawrx\))) # (!\u_uw_uart|i_uarts|RxFSM_5_\ & (\u_uw_uart|i_uarts|TopRx\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datab => \u_uw_uart|i_uarts|RxFSM_5_\,
	datac => \u_uw_uart|rawrx\,
	datad => \u_uw_uart|i_uarts|nx53265z2\,
	combout => \u_uw_uart|i_uarts|nx15541z3\);

-- Location: LCCOMB_X41_Y23_N12
\u_uw_uart|i_uarts|ix15541z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx15541z1\ = (\u_uw_uart|i_uarts|nx15541z3\) # ((\u_uw_uart|i_uarts|nx15541z2\ & (!\u_uw_uart|i_uarts|nx53265z2\ & \u_uw_uart|i_uarts|nx54636z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx15541z2\,
	datab => \u_uw_uart|i_uarts|nx53265z2\,
	datac => \u_uw_uart|i_uarts|nx54636z1\,
	datad => \u_uw_uart|i_uarts|nx15541z3\,
	combout => \u_uw_uart|i_uarts|nx15541z1\);

-- Location: LCFF_X36_Y24_N17
\u_uw_uart|i_uarts|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11553z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_5_\);

-- Location: LCCOMB_X36_Y24_N10
\u_uw_uart|i_uarts|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx16538z1\ = (!\u_uw_uart|i_uarts|RxFSM_5_\ & ((\u_uw_uart|i_uarts|nx54636z1\) # (!\u_uw_uart|i_uarts|RxFSM_4_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|RxFSM_4_\,
	datac => \u_uw_uart|i_uarts|RxFSM_5_\,
	datad => \u_uw_uart|i_uarts|nx54636z1\,
	combout => \u_uw_uart|i_uarts|nx16538z1\);

-- Location: LCFF_X36_Y24_N11
\u_uw_uart|i_uarts|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx16538z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|nx53265z2\);

-- Location: LCCOMB_X40_Y24_N10
\u_uw_uart|i_uarts|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z1\ = (\u_uw_uart|i_uarts|nx53265z2\ & !\u_uw_uart|i_uarts|RxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx53265z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx11364z1\);

-- Location: LCCOMB_X41_Y24_N12
\u_uw_uart|i_uarts|nx53265z2~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx53265z2~_wirecell_combout\ = !\u_uw_uart|i_uarts|nx53265z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|i_uarts|nx53265z2\,
	combout => \u_uw_uart|i_uarts|nx53265z2~_wirecell_combout\);

-- Location: LCFF_X41_Y24_N13
\u_uw_uart|i_uarts|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx53265z2~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_1_\);

-- Location: LCCOMB_X41_Y24_N26
\u_uw_uart|i_uarts|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx14544z1\ = (\u_uw_uart|i_uarts|RxFSM_3_\) # ((\u_uw_uart|i_uarts|nx54636z1\ & \u_uw_uart|i_uarts|RxFSM_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx54636z1\,
	datac => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|RxFSM_1_\,
	combout => \u_uw_uart|i_uarts|nx14544z1\);

-- Location: LCFF_X41_Y24_N27
\u_uw_uart|i_uarts|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx14544z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_2_\);

-- Location: LCCOMB_X36_Y24_N4
\u_uw_uart|i_uarts|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx13547z1\ = (\u_uw_uart|i_uarts|RxFSM_2_\ & (((\u_uw_uart|i_uarts|RxBitCnt_1_\) # (\u_uw_uart|i_uarts|RxBitCnt_0_\)) # (!\u_uw_uart|i_uarts|nx13547z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx13547z2\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx13547z1\);

-- Location: LCFF_X36_Y24_N5
\u_uw_uart|i_uarts|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx13547z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_3_\);

-- Location: LCCOMB_X41_Y23_N22
\u_uw_uart|i_uarts|ix11364z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx11364z2\ = (\u_uw_uart|i_uarts|RxFSM_3_\ & (\u_uw_uart|i_uarts|TopRx\)) # (!\u_uw_uart|i_uarts|RxFSM_3_\ & ((!\u_uw_uart|i_uarts|nx53265z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datab => \u_uw_uart|i_uarts|RxFSM_3_\,
	datad => \u_uw_uart|i_uarts|nx53265z2\,
	combout => \u_uw_uart|i_uarts|nx11364z2\);

-- Location: LCFF_X40_Y24_N11
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx11364z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_0_\);

-- Location: LCCOMB_X40_Y24_N2
\u_uw_uart|i_uarts|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx10367z1\ = (\u_uw_uart|i_uarts|nx53265z2\ & (\u_uw_uart|i_uarts|RxBitCnt_1_\ $ (\u_uw_uart|i_uarts|RxBitCnt_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|i_uarts|nx53265z2\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datad => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	combout => \u_uw_uart|i_uarts|nx10367z1\);

-- Location: LCFF_X40_Y24_N3
\u_uw_uart|i_uarts|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx10367z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx11364z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxBitCnt_1_\);

-- Location: LCCOMB_X36_Y24_N22
\u_uw_uart|i_uarts|ix12550z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx12550z1\ = (\u_uw_uart|i_uarts|nx13547z2\ & (!\u_uw_uart|i_uarts|RxBitCnt_1_\ & (!\u_uw_uart|i_uarts|RxBitCnt_0_\ & \u_uw_uart|i_uarts|RxFSM_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|nx13547z2\,
	datab => \u_uw_uart|i_uarts|RxBitCnt_1_\,
	datac => \u_uw_uart|i_uarts|RxBitCnt_0_\,
	datad => \u_uw_uart|i_uarts|RxFSM_2_\,
	combout => \u_uw_uart|i_uarts|nx12550z1\);

-- Location: LCFF_X36_Y24_N23
\u_uw_uart|i_uarts|reg_RxFSM_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx12550z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|i_uarts|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxFSM_4_\);

-- Location: LCCOMB_X41_Y23_N18
\u_uw_uart|i_uarts|ix30017z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|i_uarts|nx30017z1\ = (\u_uw_uart|i_uarts|TopRx\ & (!\u_uw_uart|i_uarts|nx54636z1\ & \u_uw_uart|i_uarts|RxFSM_4_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|i_uarts|TopRx\,
	datac => \u_uw_uart|i_uarts|nx54636z1\,
	datad => \u_uw_uart|i_uarts|RxFSM_4_\,
	combout => \u_uw_uart|i_uarts|nx30017z1\);

-- Location: LCFF_X41_Y23_N19
\u_uw_uart|i_uarts|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|i_uarts|nx30017z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|i_uarts|RxRDY\);

-- Location: LCCOMB_X41_Y23_N8
\u_uw_uart|ix58116z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx58116z1\ = (!\u_uw_uart|o_pixavail\ & \u_uw_uart|i_uarts|RxRDY\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|i_uarts|RxRDY\,
	combout => \u_uw_uart|nx58116z1\);

-- Location: LCFF_X41_Y23_N9
\u_uw_uart|reg_charavail\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx58116z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|o_pixavail\);

-- Location: LCFF_X49_Y24_N17
\u_kirsch|reg_valid_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|o_pixavail\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_0_\);

-- Location: LCCOMB_X45_Y22_N24
\u_kirsch|ix62927z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx62927z1\ = (\u_kirsch|valid_0_\) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|valid_0_\,
	datad => \nrst~combout\,
	combout => \u_kirsch|nx62927z1\);

-- Location: LCFF_X45_Y22_N1
\u_kirsch|reg_q_0__dup_18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_0__dup_223\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_0_\);

-- Location: LCCOMB_X45_Y22_N6
\u_kirsch|ix25361z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25361z1\ = CARRY(\u_kirsch|column_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|column_0_\,
	datad => VCC,
	cout => \u_kirsch|nx25361z1\);

-- Location: LCCOMB_X45_Y22_N8
\u_kirsch|ix25361z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_1__dup_225\ = (\u_kirsch|column_1_\ & (!\u_kirsch|nx25361z1\)) # (!\u_kirsch|column_1_\ & ((\u_kirsch|nx25361z1\) # (GND)))
-- \u_kirsch|nx45393z2\ = CARRY((!\u_kirsch|nx25361z1\) # (!\u_kirsch|column_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_1_\,
	datad => VCC,
	cin => \u_kirsch|nx25361z1\,
	combout => \u_kirsch|inc_d_1__dup_225\,
	cout => \u_kirsch|nx45393z2\);

-- Location: LCCOMB_X45_Y22_N10
\u_kirsch|ix45393z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_2__dup_227\ = (\u_kirsch|column_2_\ & (\u_kirsch|nx45393z2\ $ (GND))) # (!\u_kirsch|column_2_\ & (!\u_kirsch|nx45393z2\ & VCC))
-- \u_kirsch|nx45393z1\ = CARRY((\u_kirsch|column_2_\ & !\u_kirsch|nx45393z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_2_\,
	datad => VCC,
	cin => \u_kirsch|nx45393z2\,
	combout => \u_kirsch|inc_d_2__dup_227\,
	cout => \u_kirsch|nx45393z1\);

-- Location: LCCOMB_X45_Y22_N12
\u_kirsch|ix45393z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_3__dup_229\ = (\u_kirsch|column_3_\ & (!\u_kirsch|nx45393z1\)) # (!\u_kirsch|column_3_\ & ((\u_kirsch|nx45393z1\) # (GND)))
-- \u_kirsch|nx19921z4\ = CARRY((!\u_kirsch|nx45393z1\) # (!\u_kirsch|column_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_3_\,
	datad => VCC,
	cin => \u_kirsch|nx45393z1\,
	combout => \u_kirsch|inc_d_3__dup_229\,
	cout => \u_kirsch|nx19921z4\);

-- Location: LCFF_X45_Y22_N13
\u_kirsch|reg_q_3__dup_15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_3__dup_229\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_3_\);

-- Location: LCFF_X45_Y22_N11
\u_kirsch|reg_q_2__dup_16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_2__dup_227\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_2_\);

-- Location: LCCOMB_X43_Y22_N28
\u_kirsch|ix62927z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx62927z4\ = (\u_kirsch|column_1_\ & (\u_kirsch|column_0_\ & (\u_kirsch|column_3_\ & \u_kirsch|column_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_1_\,
	datab => \u_kirsch|column_0_\,
	datac => \u_kirsch|column_3_\,
	datad => \u_kirsch|column_2_\,
	combout => \u_kirsch|nx62927z4\);

-- Location: LCCOMB_X46_Y24_N8
\u_kirsch|ix62927z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx62927z2\ = ((\u_kirsch|nx62927z3\ & (\u_kirsch|nx62927z4\ & \u_kirsch|valid_0_\))) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx62927z3\,
	datab => \nrst~combout\,
	datac => \u_kirsch|nx62927z4\,
	datad => \u_kirsch|valid_0_\,
	combout => \u_kirsch|nx62927z2\);

-- Location: LCFF_X42_Y22_N11
\u_kirsch|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_1_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_1_\);

-- Location: LCCOMB_X42_Y22_N6
\u_kirsch|ix51271z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_0_\ = !\u_kirsch|o_row_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|o_row_0_\,
	combout => \u_kirsch|inc_d_0_\);

-- Location: LCFF_X42_Y22_N7
\u_kirsch|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_0_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_0_\);

-- Location: LCCOMB_X42_Y22_N12
\u_kirsch|ix54262z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_2_\ = (\u_kirsch|o_row_2_\ & (\u_kirsch|nx54262z2\ $ (GND))) # (!\u_kirsch|o_row_2_\ & (!\u_kirsch|nx54262z2\ & VCC))
-- \u_kirsch|nx54262z1\ = CARRY((\u_kirsch|o_row_2_\ & !\u_kirsch|nx54262z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datad => VCC,
	cin => \u_kirsch|nx54262z2\,
	combout => \u_kirsch|inc_d_2_\,
	cout => \u_kirsch|nx54262z1\);

-- Location: LCCOMB_X42_Y22_N14
\u_kirsch|ix54262z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_3_\ = (\u_kirsch|o_row_3_\ & (!\u_kirsch|nx54262z1\)) # (!\u_kirsch|o_row_3_\ & ((\u_kirsch|nx54262z1\) # (GND)))
-- \u_kirsch|nx58250z4\ = CARRY((!\u_kirsch|nx54262z1\) # (!\u_kirsch|o_row_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|o_row_3_\,
	datad => VCC,
	cin => \u_kirsch|nx54262z1\,
	combout => \u_kirsch|inc_d_3_\,
	cout => \u_kirsch|nx58250z4\);

-- Location: LCFF_X42_Y22_N15
\u_kirsch|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_3_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_3_\);

-- Location: LCCOMB_X11_Y22_N0
ix58136z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58136z1 = (\u_kirsch|o_row_0_\ & (!\u_kirsch|o_row_3_\ & (\u_kirsch|o_row_2_\ $ (!\u_kirsch|o_row_1_\)))) # (!\u_kirsch|o_row_0_\ & (!\u_kirsch|o_row_1_\ & (\u_kirsch|o_row_2_\ $ (!\u_kirsch|o_row_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx58136z1);

-- Location: LCFF_X11_Y22_N1
\reg_o_sevenseg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx58136z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_0_\);

-- Location: LCCOMB_X11_Y22_N2
ix59133z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59133z1 = (\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_0_\ & (\u_kirsch|o_row_1_\ $ (\u_kirsch|o_row_3_\)))) # (!\u_kirsch|o_row_2_\ & (!\u_kirsch|o_row_3_\ & ((\u_kirsch|o_row_1_\) # (\u_kirsch|o_row_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx59133z1);

-- Location: LCFF_X11_Y22_N3
\reg_o_sevenseg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx59133z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_1_\);

-- Location: LCCOMB_X11_Y22_N12
ix60130z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60130z1 = (\u_kirsch|o_row_1_\ & (((\u_kirsch|o_row_0_\ & !\u_kirsch|o_row_3_\)))) # (!\u_kirsch|o_row_1_\ & ((\u_kirsch|o_row_2_\ & ((!\u_kirsch|o_row_3_\))) # (!\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx60130z1);

-- Location: LCFF_X11_Y22_N13
\reg_o_sevenseg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx60130z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_2_\);

-- Location: LCCOMB_X11_Y22_N6
ix61127z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61127z1 = (\u_kirsch|o_row_0_\ & (\u_kirsch|o_row_2_\ $ ((!\u_kirsch|o_row_1_\)))) # (!\u_kirsch|o_row_0_\ & ((\u_kirsch|o_row_2_\ & (!\u_kirsch|o_row_1_\ & !\u_kirsch|o_row_3_\)) # (!\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_1_\ & \u_kirsch|o_row_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx61127z1);

-- Location: LCFF_X11_Y22_N7
\reg_o_sevenseg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx61127z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_3_\);

-- Location: LCCOMB_X11_Y22_N16
ix62124z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62124z1 = (\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_3_\ & ((\u_kirsch|o_row_1_\) # (!\u_kirsch|o_row_0_\)))) # (!\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_1_\ & (!\u_kirsch|o_row_0_\ & !\u_kirsch|o_row_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx62124z1);

-- Location: LCFF_X11_Y22_N17
\reg_o_sevenseg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx62124z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_4_\);

-- Location: LCCOMB_X11_Y22_N26
ix63121z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx63121z1 = (\u_kirsch|o_row_1_\ & ((\u_kirsch|o_row_0_\ & ((\u_kirsch|o_row_3_\))) # (!\u_kirsch|o_row_0_\ & (\u_kirsch|o_row_2_\)))) # (!\u_kirsch|o_row_1_\ & (\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_0_\ $ (\u_kirsch|o_row_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx63121z1);

-- Location: LCFF_X11_Y22_N27
\reg_o_sevenseg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx63121z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_5_\);

-- Location: LCCOMB_X11_Y22_N28
ix64118z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx64118z1 = (\u_kirsch|o_row_2_\ & (!\u_kirsch|o_row_1_\ & (\u_kirsch|o_row_0_\ $ (!\u_kirsch|o_row_3_\)))) # (!\u_kirsch|o_row_2_\ & (\u_kirsch|o_row_0_\ & (\u_kirsch|o_row_1_\ $ (!\u_kirsch|o_row_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_2_\,
	datab => \u_kirsch|o_row_1_\,
	datac => \u_kirsch|o_row_0_\,
	datad => \u_kirsch|o_row_3_\,
	combout => nx64118z1);

-- Location: LCFF_X11_Y22_N29
\reg_o_sevenseg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx64118z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_6_\);

-- Location: LCCOMB_X42_Y22_N16
\u_kirsch|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_4_\ = (\u_kirsch|o_row_4_\ & (\u_kirsch|nx58250z4\ $ (GND))) # (!\u_kirsch|o_row_4_\ & (!\u_kirsch|nx58250z4\ & VCC))
-- \u_kirsch|nx58250z3\ = CARRY((\u_kirsch|o_row_4_\ & !\u_kirsch|nx58250z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datad => VCC,
	cin => \u_kirsch|nx58250z4\,
	combout => \u_kirsch|inc_d_4_\,
	cout => \u_kirsch|nx58250z3\);

-- Location: LCCOMB_X42_Y22_N18
\u_kirsch|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_5_\ = (\u_kirsch|o_row_5_\ & (!\u_kirsch|nx58250z3\)) # (!\u_kirsch|o_row_5_\ & ((\u_kirsch|nx58250z3\) # (GND)))
-- \u_kirsch|nx58250z2\ = CARRY((!\u_kirsch|nx58250z3\) # (!\u_kirsch|o_row_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|o_row_5_\,
	datad => VCC,
	cin => \u_kirsch|nx58250z3\,
	combout => \u_kirsch|inc_d_5_\,
	cout => \u_kirsch|nx58250z2\);

-- Location: LCFF_X42_Y22_N19
\u_kirsch|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_5_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_5_\);

-- Location: LCFF_X42_Y22_N17
\u_kirsch|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_4_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_4_\);

-- Location: LCCOMB_X42_Y22_N20
\u_kirsch|ix58250z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_6_\ = (\u_kirsch|o_row_6_\ & (\u_kirsch|nx58250z2\ $ (GND))) # (!\u_kirsch|o_row_6_\ & (!\u_kirsch|nx58250z2\ & VCC))
-- \u_kirsch|nx58250z1\ = CARRY((\u_kirsch|o_row_6_\ & !\u_kirsch|nx58250z2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_6_\,
	datad => VCC,
	cin => \u_kirsch|nx58250z2\,
	combout => \u_kirsch|inc_d_6_\,
	cout => \u_kirsch|nx58250z1\);

-- Location: LCCOMB_X42_Y22_N22
\u_kirsch|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_7_\ = \u_kirsch|nx58250z1\ $ (\u_kirsch|o_row_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_7_\,
	cin => \u_kirsch|nx58250z1\,
	combout => \u_kirsch|inc_d_7_\);

-- Location: LCFF_X42_Y22_N23
\u_kirsch|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_7_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_7_\);

-- Location: LCCOMB_X42_Y22_N24
ix576z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx576z1 = (\u_kirsch|o_row_4_\ & (!\u_kirsch|o_row_7_\ & (\u_kirsch|o_row_6_\ $ (!\u_kirsch|o_row_5_\)))) # (!\u_kirsch|o_row_4_\ & (!\u_kirsch|o_row_5_\ & (\u_kirsch|o_row_6_\ $ (!\u_kirsch|o_row_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_6_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_4_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx576z1);

-- Location: LCFF_X42_Y22_N25
\reg_o_sevenseg_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx576z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_8_\);

-- Location: LCFF_X42_Y22_N21
\u_kirsch|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_6_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_6_\);

-- Location: LCCOMB_X8_Y22_N8
ix1573z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx1573z1 = (\u_kirsch|o_row_4_\ & (\u_kirsch|o_row_7_\ $ (((\u_kirsch|o_row_5_\) # (!\u_kirsch|o_row_6_\))))) # (!\u_kirsch|o_row_4_\ & (\u_kirsch|o_row_5_\ & (!\u_kirsch|o_row_6_\ & !\u_kirsch|o_row_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_6_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx1573z1);

-- Location: LCFF_X8_Y22_N9
\reg_o_sevenseg_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx1573z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_9_\);

-- Location: LCCOMB_X8_Y22_N2
ix19779z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx19779z1 = (\u_kirsch|o_row_5_\ & (\u_kirsch|o_row_4_\ & ((!\u_kirsch|o_row_7_\)))) # (!\u_kirsch|o_row_5_\ & ((\u_kirsch|o_row_6_\ & ((!\u_kirsch|o_row_7_\))) # (!\u_kirsch|o_row_6_\ & (\u_kirsch|o_row_4_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_6_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx19779z1);

-- Location: LCFF_X8_Y22_N3
\reg_o_sevenseg_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx19779z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_10_\);

-- Location: LCCOMB_X8_Y22_N12
ix18782z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx18782z1 = (\u_kirsch|o_row_4_\ & (\u_kirsch|o_row_5_\ $ ((!\u_kirsch|o_row_6_\)))) # (!\u_kirsch|o_row_4_\ & ((\u_kirsch|o_row_5_\ & (!\u_kirsch|o_row_6_\ & \u_kirsch|o_row_7_\)) # (!\u_kirsch|o_row_5_\ & (\u_kirsch|o_row_6_\ & !\u_kirsch|o_row_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_6_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx18782z1);

-- Location: LCFF_X8_Y22_N13
\reg_o_sevenseg_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx18782z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_11_\);

-- Location: LCCOMB_X8_Y22_N6
ix17785z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx17785z1 = (\u_kirsch|o_row_6_\ & (\u_kirsch|o_row_7_\ & ((\u_kirsch|o_row_5_\) # (!\u_kirsch|o_row_4_\)))) # (!\u_kirsch|o_row_6_\ & (!\u_kirsch|o_row_4_\ & (\u_kirsch|o_row_5_\ & !\u_kirsch|o_row_7_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_6_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx17785z1);

-- Location: LCFF_X8_Y22_N7
\reg_o_sevenseg_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx17785z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_12_\);

-- Location: LCCOMB_X8_Y22_N0
ix16788z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx16788z1 = (\u_kirsch|o_row_5_\ & ((\u_kirsch|o_row_4_\ & ((\u_kirsch|o_row_7_\))) # (!\u_kirsch|o_row_4_\ & (\u_kirsch|o_row_6_\)))) # (!\u_kirsch|o_row_5_\ & (\u_kirsch|o_row_6_\ & (\u_kirsch|o_row_4_\ $ (\u_kirsch|o_row_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_6_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx16788z1);

-- Location: LCFF_X8_Y22_N1
\reg_o_sevenseg_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx16788z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_13_\);

-- Location: LCCOMB_X8_Y22_N18
ix15791z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx15791z1 = (\u_kirsch|o_row_6_\ & (!\u_kirsch|o_row_5_\ & (\u_kirsch|o_row_4_\ $ (!\u_kirsch|o_row_7_\)))) # (!\u_kirsch|o_row_6_\ & (\u_kirsch|o_row_4_\ & (\u_kirsch|o_row_5_\ $ (!\u_kirsch|o_row_7_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|o_row_4_\,
	datab => \u_kirsch|o_row_5_\,
	datac => \u_kirsch|o_row_6_\,
	datad => \u_kirsch|o_row_7_\,
	combout => nx15791z1);

-- Location: LCFF_X8_Y22_N19
\reg_o_sevenseg_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx15791z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \o_sevenseg_14_\);

-- Location: LCCOMB_X42_Y22_N26
\u_kirsch|ix25376z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z8\ = (\u_kirsch|o_mode_1_\) # ((\u_uw_uart|o_pixavail\) # (!\u_kirsch|nx25376z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|o_mode_1_\,
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_kirsch|nx25376z9\,
	combout => \u_kirsch|nx25376z8\);

-- Location: LCCOMB_X43_Y22_N14
\u_kirsch|row_valid1_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid1_1_~feeder_combout\ = \u_kirsch|o_row_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_1_\,
	combout => \u_kirsch|row_valid1_1_~feeder_combout\);

-- Location: LCFF_X43_Y22_N15
\u_kirsch|reg_row_valid1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid1_1_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_1_\);

-- Location: LCCOMB_X44_Y22_N0
\u_kirsch|row_valid2_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid2_1_~feeder_combout\ = \u_kirsch|row_valid1_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|row_valid1_1_\,
	combout => \u_kirsch|row_valid2_1_~feeder_combout\);

-- Location: LCFF_X49_Y24_N21
\u_kirsch|reg_valid_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|valid_0_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_1_\);

-- Location: LCFF_X49_Y24_N3
\u_kirsch|reg_valid_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|valid_1_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_2_\);

-- Location: LCFF_X42_Y24_N25
\u_kirsch|reg_valid_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|valid_2_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_3_\);

-- Location: LCFF_X45_Y24_N21
\u_kirsch|reg_valid_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|valid_3_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_4_\);

-- Location: LCFF_X44_Y22_N1
\u_kirsch|reg_row_valid2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid2_1_~feeder_combout\,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_1_\);

-- Location: LCFF_X43_Y22_N17
\u_kirsch|reg_row_valid1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|o_row_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_0_\);

-- Location: LCFF_X43_Y22_N11
\u_kirsch|reg_row_valid2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|row_valid1_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_0_\);

-- Location: LCCOMB_X43_Y22_N10
\u_kirsch|ix25376z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z6\ = (!\u_kirsch|nx25376z7\ & (\u_kirsch|row_valid2_1_\ & \u_kirsch|row_valid2_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx25376z7\,
	datab => \u_kirsch|row_valid2_1_\,
	datac => \u_kirsch|row_valid2_0_\,
	combout => \u_kirsch|nx25376z6\);

-- Location: LCCOMB_X45_Y22_N14
\u_kirsch|ix19921z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_4__dup_231\ = (\u_kirsch|column_4_\ & (\u_kirsch|nx19921z4\ $ (GND))) # (!\u_kirsch|column_4_\ & (!\u_kirsch|nx19921z4\ & VCC))
-- \u_kirsch|nx19921z3\ = CARRY((\u_kirsch|column_4_\ & !\u_kirsch|nx19921z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|column_4_\,
	datad => VCC,
	cin => \u_kirsch|nx19921z4\,
	combout => \u_kirsch|inc_d_4__dup_231\,
	cout => \u_kirsch|nx19921z3\);

-- Location: LCFF_X45_Y22_N15
\u_kirsch|reg_q_4__dup_14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_4__dup_231\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_4_\);

-- Location: LCCOMB_X45_Y22_N16
\u_kirsch|ix19921z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|inc_d_5__dup_233\ = (\u_kirsch|column_5_\ & (!\u_kirsch|nx19921z3\)) # (!\u_kirsch|column_5_\ & ((\u_kirsch|nx19921z3\) # (GND)))
-- \u_kirsch|nx19921z2\ = CARRY((!\u_kirsch|nx19921z3\) # (!\u_kirsch|column_5_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_5_\,
	datad => VCC,
	cin => \u_kirsch|nx19921z3\,
	combout => \u_kirsch|inc_d_5__dup_233\,
	cout => \u_kirsch|nx19921z2\);

-- Location: LCFF_X45_Y22_N19
\u_kirsch|reg_q_6__dup_12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_6__dup_235\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_6_\);

-- Location: LCCOMB_X45_Y22_N26
\u_kirsch|column_valid1_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid1_6_~feeder_combout\ = \u_kirsch|column_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|column_6_\,
	combout => \u_kirsch|column_valid1_6_~feeder_combout\);

-- Location: LCFF_X45_Y22_N27
\u_kirsch|reg_column_valid1_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid1_6_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_6_\);

-- Location: LCFF_X44_Y22_N31
\u_kirsch|reg_column_valid2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_valid1_6_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_6_\);

-- Location: LCFF_X45_Y24_N27
\u_kirsch|reg_valid_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|valid_4_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_5_\);

-- Location: LCFF_X44_Y23_N27
\u_kirsch|reg_valid_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|valid_5_\,
	sclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|valid_6_\);

-- Location: LCCOMB_X43_Y22_N0
\u_kirsch|row_valid1_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid1_4_~feeder_combout\ = \u_kirsch|o_row_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_4_\,
	combout => \u_kirsch|row_valid1_4_~feeder_combout\);

-- Location: LCFF_X43_Y22_N1
\u_kirsch|reg_row_valid1_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid1_4_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_4_\);

-- Location: LCFF_X44_Y22_N3
\u_kirsch|reg_row_valid2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|row_valid1_4_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_4_\);

-- Location: LCFF_X43_Y22_N25
\u_kirsch|reg_row_valid1_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|o_row_6_\,
	sload => VCC,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_6_\);

-- Location: LCFF_X44_Y22_N17
\u_kirsch|reg_row_valid2_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|row_valid1_6_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_6_\);

-- Location: LCCOMB_X43_Y22_N20
\u_kirsch|row_valid1_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid1_5_~feeder_combout\ = \u_kirsch|o_row_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_5_\,
	combout => \u_kirsch|row_valid1_5_~feeder_combout\);

-- Location: LCFF_X43_Y22_N21
\u_kirsch|reg_row_valid1_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid1_5_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_5_\);

-- Location: LCFF_X44_Y22_N27
\u_kirsch|reg_row_valid2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|row_valid1_5_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_5_\);

-- Location: LCCOMB_X44_Y22_N16
\u_kirsch|ix23902z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23902z5\ = (\u_kirsch|row_valid2_7_\) # ((\u_kirsch|row_valid2_4_\) # ((\u_kirsch|row_valid2_6_\) # (\u_kirsch|row_valid2_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|row_valid2_7_\,
	datab => \u_kirsch|row_valid2_4_\,
	datac => \u_kirsch|row_valid2_6_\,
	datad => \u_kirsch|row_valid2_5_\,
	combout => \u_kirsch|nx23902z5\);

-- Location: LCFF_X42_Y22_N13
\u_kirsch|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_2_\,
	sclr => \ALT_INV_nrst~combout\,
	ena => \u_kirsch|nx62927z2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_row_2_\);

-- Location: LCCOMB_X43_Y22_N26
\u_kirsch|row_valid1_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid1_2_~feeder_combout\ = \u_kirsch|o_row_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_2_\,
	combout => \u_kirsch|row_valid1_2_~feeder_combout\);

-- Location: LCFF_X43_Y22_N27
\u_kirsch|reg_row_valid1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid1_2_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_2_\);

-- Location: LCCOMB_X44_Y22_N22
\u_kirsch|row_valid2_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid2_2_~feeder_combout\ = \u_kirsch|row_valid1_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|row_valid1_2_\,
	combout => \u_kirsch|row_valid2_2_~feeder_combout\);

-- Location: LCFF_X44_Y22_N23
\u_kirsch|reg_row_valid2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid2_2_~feeder_combout\,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_2_\);

-- Location: LCCOMB_X43_Y22_N30
\u_kirsch|row_valid1_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid1_3_~feeder_combout\ = \u_kirsch|o_row_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_3_\,
	combout => \u_kirsch|row_valid1_3_~feeder_combout\);

-- Location: LCFF_X43_Y22_N31
\u_kirsch|reg_row_valid1_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid1_3_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_3_\);

-- Location: LCFF_X44_Y22_N29
\u_kirsch|reg_row_valid2_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|row_valid1_3_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_3_\);

-- Location: LCCOMB_X44_Y22_N28
\u_kirsch|ix23902z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23902z4\ = (\u_kirsch|row_valid2_2_\) # ((\u_kirsch|row_valid2_3_\) # (\u_kirsch|row_valid2_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|row_valid2_2_\,
	datac => \u_kirsch|row_valid2_3_\,
	datad => \u_kirsch|row_valid2_1_\,
	combout => \u_kirsch|nx23902z4\);

-- Location: LCCOMB_X45_Y24_N16
\u_kirsch|ix23902z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx23902z1\ = (\u_kirsch|nx23902z2\ & (\u_kirsch|valid_6_\ & ((\u_kirsch|nx23902z5\) # (\u_kirsch|nx23902z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx23902z2\,
	datab => \u_kirsch|valid_6_\,
	datac => \u_kirsch|nx23902z5\,
	datad => \u_kirsch|nx23902z4\,
	combout => \u_kirsch|nx23902z1\);

-- Location: LCFF_X45_Y24_N17
\u_kirsch|reg_output_valid_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx23902z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_valid\);

-- Location: LCCOMB_X44_Y22_N30
\u_kirsch|ix25376z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z3\ = ((!\u_kirsch|o_valid\) # (!\u_kirsch|column_valid2_6_\)) # (!\u_kirsch|column_valid2_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_valid2_7_\,
	datac => \u_kirsch|column_valid2_6_\,
	datad => \u_kirsch|o_valid\,
	combout => \u_kirsch|nx25376z3\);

-- Location: LCCOMB_X45_Y22_N22
\u_kirsch|column_valid1_4_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid1_4_~feeder_combout\ = \u_kirsch|column_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|column_4_\,
	combout => \u_kirsch|column_valid1_4_~feeder_combout\);

-- Location: LCFF_X45_Y22_N23
\u_kirsch|reg_column_valid1_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid1_4_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_4_\);

-- Location: LCFF_X44_Y22_N19
\u_kirsch|reg_column_valid2_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_valid1_4_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_4_\);

-- Location: LCFF_X45_Y22_N17
\u_kirsch|reg_q_5__dup_13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_5__dup_233\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_5_\);

-- Location: LCCOMB_X45_Y22_N28
\u_kirsch|column_valid1_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid1_5_~feeder_combout\ = \u_kirsch|column_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_kirsch|column_5_\,
	combout => \u_kirsch|column_valid1_5_~feeder_combout\);

-- Location: LCFF_X45_Y22_N29
\u_kirsch|reg_column_valid1_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid1_5_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_5_\);

-- Location: LCFF_X44_Y22_N25
\u_kirsch|reg_column_valid2_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_valid1_5_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_5_\);

-- Location: LCCOMB_X44_Y22_N18
\u_kirsch|ix25376z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z2\ = (\u_kirsch|column_valid2_3_\ & (!\u_kirsch|nx25376z3\ & (\u_kirsch|column_valid2_4_\ & \u_kirsch|column_valid2_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|column_valid2_3_\,
	datab => \u_kirsch|nx25376z3\,
	datac => \u_kirsch|column_valid2_4_\,
	datad => \u_kirsch|column_valid2_5_\,
	combout => \u_kirsch|nx25376z2\);

-- Location: LCCOMB_X42_Y22_N28
\u_kirsch|ix25376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z1\ = (\u_kirsch|nx25376z8\) # ((\u_kirsch|nx25376z4\ & (\u_kirsch|nx25376z6\ & \u_kirsch|nx25376z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx25376z4\,
	datab => \u_kirsch|nx25376z8\,
	datac => \u_kirsch|nx25376z6\,
	datad => \u_kirsch|nx25376z2\,
	combout => \u_kirsch|nx25376z1\);

-- Location: LCFF_X42_Y22_N29
\u_kirsch|reg_mode_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx25376z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|o_mode_1_\);

-- Location: LCCOMB_X42_Y22_N0
\u_kirsch|ix26373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z2\ = (\u_kirsch|o_mode_1_\ & !\u_kirsch|nx25376z9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|o_mode_1_\,
	datad => \u_kirsch|nx25376z9\,
	combout => \u_kirsch|nx26373z2\);

-- Location: LCCOMB_X43_Y22_N8
\u_kirsch|row_valid1_7_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|row_valid1_7_~feeder_combout\ = \u_kirsch|o_row_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|o_row_7_\,
	combout => \u_kirsch|row_valid1_7_~feeder_combout\);

-- Location: LCFF_X43_Y22_N9
\u_kirsch|reg_row_valid1_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|row_valid1_7_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid1_7_\);

-- Location: LCFF_X44_Y22_N15
\u_kirsch|reg_row_valid2_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|row_valid1_7_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|row_valid2_7_\);

-- Location: LCCOMB_X44_Y22_N14
\u_kirsch|ix26373z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z4\ = ((!\u_kirsch|row_valid2_5_\) # (!\u_kirsch|row_valid2_7_\)) # (!\u_kirsch|row_valid2_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|row_valid2_6_\,
	datac => \u_kirsch|row_valid2_7_\,
	datad => \u_kirsch|row_valid2_5_\,
	combout => \u_kirsch|nx26373z4\);

-- Location: LCCOMB_X43_Y22_N22
\u_kirsch|column_valid1_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid1_2_~feeder_combout\ = \u_kirsch|column_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|column_2_\,
	combout => \u_kirsch|column_valid1_2_~feeder_combout\);

-- Location: LCFF_X43_Y22_N23
\u_kirsch|reg_column_valid1_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid1_2_~feeder_combout\,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_2_\);

-- Location: LCCOMB_X44_Y22_N8
\u_kirsch|column_valid2_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid2_2_~feeder_combout\ = \u_kirsch|column_valid1_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|column_valid1_2_\,
	combout => \u_kirsch|column_valid2_2_~feeder_combout\);

-- Location: LCFF_X44_Y22_N9
\u_kirsch|reg_column_valid2_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid2_2_~feeder_combout\,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_2_\);

-- Location: LCFF_X43_Y22_N13
\u_kirsch|reg_column_valid1_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_0_\);

-- Location: LCFF_X44_Y22_N5
\u_kirsch|reg_column_valid2_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_valid1_0_\,
	sload => VCC,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_0_\);

-- Location: LCFF_X45_Y22_N9
\u_kirsch|reg_q_1__dup_17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|inc_d_1__dup_225\,
	sclr => \u_kirsch|nx62927z2\,
	ena => \u_kirsch|nx62927z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_1_\);

-- Location: LCFF_X43_Y22_N19
\u_kirsch|reg_column_valid1_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_kirsch|column_1_\,
	sload => VCC,
	ena => \u_kirsch|valid_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid1_1_\);

-- Location: LCCOMB_X44_Y22_N10
\u_kirsch|column_valid2_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|column_valid2_1_~feeder_combout\ = \u_kirsch|column_valid1_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_kirsch|column_valid1_1_\,
	combout => \u_kirsch|column_valid2_1_~feeder_combout\);

-- Location: LCFF_X44_Y22_N11
\u_kirsch|reg_column_valid2_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|column_valid2_1_~feeder_combout\,
	ena => \u_kirsch|valid_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|column_valid2_1_\);

-- Location: LCCOMB_X44_Y22_N4
\u_kirsch|ix25376z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx25376z5\ = ((!\u_kirsch|column_valid2_1_\) # (!\u_kirsch|column_valid2_0_\)) # (!\u_kirsch|column_valid2_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_kirsch|column_valid2_2_\,
	datac => \u_kirsch|column_valid2_0_\,
	datad => \u_kirsch|column_valid2_1_\,
	combout => \u_kirsch|nx25376z5\);

-- Location: LCCOMB_X44_Y22_N6
\u_kirsch|ix26373z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z3\ = (!\u_kirsch|nx26373z5\ & (!\u_kirsch|nx25376z3\ & (!\u_kirsch|nx26373z4\ & !\u_kirsch|nx25376z5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_kirsch|nx26373z5\,
	datab => \u_kirsch|nx25376z3\,
	datac => \u_kirsch|nx26373z4\,
	datad => \u_kirsch|nx25376z5\,
	combout => \u_kirsch|nx26373z3\);

-- Location: LCCOMB_X42_Y22_N2
\u_kirsch|ix26373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_kirsch|nx26373z1\ = (!\u_uw_uart|o_pixavail\ & (((\u_kirsch|nx25376z6\ & \u_kirsch|nx26373z3\)) # (!\u_kirsch|nx26373z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_kirsch|nx26373z2\,
	datac => \u_kirsch|nx25376z6\,
	datad => \u_kirsch|nx26373z3\,
	combout => \u_kirsch|nx26373z1\);

-- Location: LCFF_X42_Y22_N3
\u_kirsch|reg_mode_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_kirsch|nx26373z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_kirsch|nx25376z9\);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\txflex~I\ : cycloneii_io
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
	datain => \u_uw_uart|i_uarts|ALT_INV_nx18332z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txflex);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[0]~I\ : cycloneii_io
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
	datain => \o_sevenseg_0_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[1]~I\ : cycloneii_io
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
	datain => \o_sevenseg_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[2]~I\ : cycloneii_io
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
	datain => \o_sevenseg_2_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[3]~I\ : cycloneii_io
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
	datain => \o_sevenseg_3_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[4]~I\ : cycloneii_io
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
	datain => \o_sevenseg_4_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[5]~I\ : cycloneii_io
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
	datain => \o_sevenseg_5_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[6]~I\ : cycloneii_io
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
	datain => \o_sevenseg_6_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(6));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[7]~I\ : cycloneii_io
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
	padio => ww_o_sevenseg(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[8]~I\ : cycloneii_io
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
	datain => \o_sevenseg_8_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(8));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[9]~I\ : cycloneii_io
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
	datain => \o_sevenseg_9_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(9));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[10]~I\ : cycloneii_io
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
	datain => \o_sevenseg_10_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(10));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[11]~I\ : cycloneii_io
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
	datain => \o_sevenseg_11_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(11));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[12]~I\ : cycloneii_io
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
	datain => \o_sevenseg_12_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(12));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[13]~I\ : cycloneii_io
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
	datain => \o_sevenseg_13_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(13));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[14]~I\ : cycloneii_io
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
	datain => \o_sevenseg_14_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(14));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg[15]~I\ : cycloneii_io
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
	padio => ww_o_sevenseg(15));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_mode[0]~I\ : cycloneii_io
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
	datain => \u_kirsch|ALT_INV_nx25376z9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(0));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_mode[1]~I\ : cycloneii_io
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
	datain => \u_kirsch|o_mode_1_\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_mode(1));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_nrst~I\ : cycloneii_io
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
	datain => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_nrst);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[1]~I\ : cycloneii_io
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

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[2]~I\ : cycloneii_io
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

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_key[3]~I\ : cycloneii_io
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

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[0]~I\ : cycloneii_io
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

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[1]~I\ : cycloneii_io
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

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[2]~I\ : cycloneii_io
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

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[3]~I\ : cycloneii_io
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

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[4]~I\ : cycloneii_io
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

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[5]~I\ : cycloneii_io
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

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[6]~I\ : cycloneii_io
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[7]~I\ : cycloneii_io
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[8]~I\ : cycloneii_io
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

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[9]~I\ : cycloneii_io
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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[10]~I\ : cycloneii_io
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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[11]~I\ : cycloneii_io
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

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[12]~I\ : cycloneii_io
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

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[13]~I\ : cycloneii_io
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

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[14]~I\ : cycloneii_io
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

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[15]~I\ : cycloneii_io
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

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[16]~I\ : cycloneii_io
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

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug_switch[17]~I\ : cycloneii_io
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

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[0]~I\ : cycloneii_io
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

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[1]~I\ : cycloneii_io
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

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[2]~I\ : cycloneii_io
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

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[3]~I\ : cycloneii_io
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

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[4]~I\ : cycloneii_io
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

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[5]~I\ : cycloneii_io
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

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[6]~I\ : cycloneii_io
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

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[7]~I\ : cycloneii_io
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

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[8]~I\ : cycloneii_io
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

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[9]~I\ : cycloneii_io
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

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[10]~I\ : cycloneii_io
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

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[11]~I\ : cycloneii_io
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

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[12]~I\ : cycloneii_io
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

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[13]~I\ : cycloneii_io
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

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[14]~I\ : cycloneii_io
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

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[15]~I\ : cycloneii_io
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

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_red[16]~I\ : cycloneii_io
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

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[0]~I\ : cycloneii_io
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

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[1]~I\ : cycloneii_io
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

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[2]~I\ : cycloneii_io
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

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[3]~I\ : cycloneii_io
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

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[4]~I\ : cycloneii_io
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

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_led_grn[5]~I\ : cycloneii_io
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

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[0]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(0));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[1]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(1));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[2]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[3]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(3));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[4]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(4));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[5]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(5));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[6]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(6));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_0[7]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_0(7));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[0]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(0));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[1]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(1));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[2]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[3]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(3));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[4]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(4));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[5]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(5));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[6]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(6));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_1[7]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_1(7));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[0]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(0));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[1]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(1));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[2]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[3]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(3));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[4]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(4));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[5]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(5));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[6]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(6));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_2[7]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_2(7));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[0]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(0));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[1]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(1));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[2]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[3]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(3));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[4]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(4));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[5]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(5));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[6]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(6));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_3[7]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_3(7));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[0]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(0));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[1]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(1));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[2]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[3]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(3));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[4]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(4));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[5]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(5));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[6]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(6));

-- Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_4[7]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_4(7));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[0]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(0));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[1]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[2]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[3]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(3));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[4]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(4));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[5]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(5));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[6]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(6));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\debug_sevenseg_5[7]~I\ : cycloneii_io
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
	padio => ww_debug_sevenseg_5(7));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.kirsch_synth_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_kirsch is
  port (
      nrst  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; rxflex  : in STD_LOGIC
    ; txflex  : out STD_LOGIC
    ; o_sevenseg  : out std_logic_vector (15 downto 0)
    ; o_mode  : out std_logic_vector (1 downto 0)
    ; o_nrst  : out STD_LOGIC
    ; debug_key  : in std_logic_vector (3 downto 1)
    ; debug_switch  : in std_logic_vector (17 downto 0)
    ; debug_led_red  : out std_logic_vector (16 downto 0)
    ; debug_led_grn  : out std_logic_vector (5 downto 0)
    ; debug_sevenseg_0  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_1  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_2  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_3  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_4  : out std_logic_vector (7 downto 0)
    ; debug_sevenseg_5  : out std_logic_vector (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of top_kirsch is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.top_kirsch_chip
    port map (
        nrst => nrst
      , clk => clk
      , rxflex => rxflex
      , txflex => txflex
      , o_sevenseg(15) => o_sevenseg(15)
      , o_sevenseg(14) => o_sevenseg(14)
      , o_sevenseg(13) => o_sevenseg(13)
      , o_sevenseg(12) => o_sevenseg(12)
      , o_sevenseg(11) => o_sevenseg(11)
      , o_sevenseg(10) => o_sevenseg(10)
      , o_sevenseg(9) => o_sevenseg(9)
      , o_sevenseg(8) => o_sevenseg(8)
      , o_sevenseg(7) => o_sevenseg(7)
      , o_sevenseg(6) => o_sevenseg(6)
      , o_sevenseg(5) => o_sevenseg(5)
      , o_sevenseg(4) => o_sevenseg(4)
      , o_sevenseg(3) => o_sevenseg(3)
      , o_sevenseg(2) => o_sevenseg(2)
      , o_sevenseg(1) => o_sevenseg(1)
      , o_sevenseg(0) => o_sevenseg(0)
      , o_mode(1) => o_mode(1)
      , o_mode(0) => o_mode(0)
      , o_nrst => o_nrst
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
      , debug_sevenseg_0(7) => debug_sevenseg_0(7)
      , debug_sevenseg_0(6) => debug_sevenseg_0(6)
      , debug_sevenseg_0(5) => debug_sevenseg_0(5)
      , debug_sevenseg_0(4) => debug_sevenseg_0(4)
      , debug_sevenseg_0(3) => debug_sevenseg_0(3)
      , debug_sevenseg_0(2) => debug_sevenseg_0(2)
      , debug_sevenseg_0(1) => debug_sevenseg_0(1)
      , debug_sevenseg_0(0) => debug_sevenseg_0(0)
      , debug_sevenseg_1(7) => debug_sevenseg_1(7)
      , debug_sevenseg_1(6) => debug_sevenseg_1(6)
      , debug_sevenseg_1(5) => debug_sevenseg_1(5)
      , debug_sevenseg_1(4) => debug_sevenseg_1(4)
      , debug_sevenseg_1(3) => debug_sevenseg_1(3)
      , debug_sevenseg_1(2) => debug_sevenseg_1(2)
      , debug_sevenseg_1(1) => debug_sevenseg_1(1)
      , debug_sevenseg_1(0) => debug_sevenseg_1(0)
      , debug_sevenseg_2(7) => debug_sevenseg_2(7)
      , debug_sevenseg_2(6) => debug_sevenseg_2(6)
      , debug_sevenseg_2(5) => debug_sevenseg_2(5)
      , debug_sevenseg_2(4) => debug_sevenseg_2(4)
      , debug_sevenseg_2(3) => debug_sevenseg_2(3)
      , debug_sevenseg_2(2) => debug_sevenseg_2(2)
      , debug_sevenseg_2(1) => debug_sevenseg_2(1)
      , debug_sevenseg_2(0) => debug_sevenseg_2(0)
      , debug_sevenseg_3(7) => debug_sevenseg_3(7)
      , debug_sevenseg_3(6) => debug_sevenseg_3(6)
      , debug_sevenseg_3(5) => debug_sevenseg_3(5)
      , debug_sevenseg_3(4) => debug_sevenseg_3(4)
      , debug_sevenseg_3(3) => debug_sevenseg_3(3)
      , debug_sevenseg_3(2) => debug_sevenseg_3(2)
      , debug_sevenseg_3(1) => debug_sevenseg_3(1)
      , debug_sevenseg_3(0) => debug_sevenseg_3(0)
      , debug_sevenseg_4(7) => debug_sevenseg_4(7)
      , debug_sevenseg_4(6) => debug_sevenseg_4(6)
      , debug_sevenseg_4(5) => debug_sevenseg_4(5)
      , debug_sevenseg_4(4) => debug_sevenseg_4(4)
      , debug_sevenseg_4(3) => debug_sevenseg_4(3)
      , debug_sevenseg_4(2) => debug_sevenseg_4(2)
      , debug_sevenseg_4(1) => debug_sevenseg_4(1)
      , debug_sevenseg_4(0) => debug_sevenseg_4(0)
      , debug_sevenseg_5(7) => debug_sevenseg_5(7)
      , debug_sevenseg_5(6) => debug_sevenseg_5(6)
      , debug_sevenseg_5(5) => debug_sevenseg_5(5)
      , debug_sevenseg_5(4) => debug_sevenseg_5(4)
      , debug_sevenseg_5(3) => debug_sevenseg_5(3)
      , debug_sevenseg_5(2) => debug_sevenseg_5(2)
      , debug_sevenseg_5(1) => debug_sevenseg_5(1)
      , debug_sevenseg_5(0) => debug_sevenseg_5(0)
    );
end architecture;

