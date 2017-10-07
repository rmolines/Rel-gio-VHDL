-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/07/2017 19:28:36"

-- 
-- Device: Altera 5CSXFC6C6U23C7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	TESTE : OUT std_logic_vector(3 DOWNTO 0);
	muxteste : OUT std_logic_vector(2 DOWNTO 0);
	enbteste : OUT std_logic_vector(5 DOWNTO 0);
	rstteste : OUT std_logic_vector(5 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE[0]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxteste[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxteste[1]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- muxteste[2]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enbteste[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enbteste[1]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enbteste[2]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enbteste[3]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enbteste[4]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enbteste[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstteste[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstteste[1]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstteste[2]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstteste[3]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstteste[4]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rstteste[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_TESTE : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_muxteste : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enbteste : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_rstteste : std_logic_vector(5 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \FD|ULA|Add0~2_combout\ : std_logic;
SIGNAL \FD|REG_H_D|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~0_combout\ : std_logic;
SIGNAL \relogio|Selector0~0_combout\ : std_logic;
SIGNAL \relogio|LessThan1~0_combout\ : std_logic;
SIGNAL \relogio|Selector1~1_combout\ : std_logic;
SIGNAL \relogio|Selector3~0_combout\ : std_logic;
SIGNAL \relogio|fstate.state4~q\ : std_logic;
SIGNAL \relogio|Selector0~1_combout\ : std_logic;
SIGNAL \relogio|Selector0~2_combout\ : std_logic;
SIGNAL \relogio|fstate.state1~q\ : std_logic;
SIGNAL \relogio|Selector1~0_combout\ : std_logic;
SIGNAL \relogio|fstate.state2~q\ : std_logic;
SIGNAL \relogio|mux~0_combout\ : std_logic;
SIGNAL \FD|REG_SEC_D|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \relogio|WideOr5~combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[3]~4_combout\ : std_logic;
SIGNAL \relogio|mux~1_combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[3]~5_combout\ : std_logic;
SIGNAL \relogio|reg_fstate~0_combout\ : std_logic;
SIGNAL \relogio|fstate.state7~q\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[1]~8_combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[1]~9_combout\ : std_logic;
SIGNAL \relogio|Selector4~0_combout\ : std_logic;
SIGNAL \relogio|fstate.state5~q\ : std_logic;
SIGNAL \relogio|Selector5~0_combout\ : std_logic;
SIGNAL \relogio|fstate.state6~q\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[3]~3_combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[2]~6_combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[2]~7_combout\ : std_logic;
SIGNAL \relogio|Selector2~0_combout\ : std_logic;
SIGNAL \relogio|fstate.state3~q\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[3]~1_combout\ : std_logic;
SIGNAL \FD|REG_MIN_D|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FD|REG_MIN_U|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FD|REG_SEC_U|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FD|REG_SEC_D|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \FD|REG_H_D|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FD|REG_H_U|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FD|MUX6|SAIDA[0]~2_combout\ : std_logic;
SIGNAL \FD|ULA|Add0~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \FD|REG_H_U|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_SEC_U|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_SEC_D|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_MIN_U|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_MIN_D|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_H_D|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|MUX6|SAIDA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|MUX6|ALT_INV_SAIDA[1]~9_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[1]~8_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[2]~7_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[2]~6_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[3]~5_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[3]~4_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[3]~3_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[0]~2_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[3]~1_combout\ : std_logic;
SIGNAL \FD|MUX6|ALT_INV_SAIDA[0]~0_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \FD|ULA|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \FD|ULA|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state7~q\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state1~q\ : std_logic;
SIGNAL \relogio|ALT_INV_mux~1_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state5~q\ : std_logic;
SIGNAL \relogio|ALT_INV_mux~0_combout\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state3~q\ : std_logic;
SIGNAL \relogio|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state4~q\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state2~q\ : std_logic;
SIGNAL \relogio|ALT_INV_fstate.state6~q\ : std_logic;
SIGNAL \FD|REG_H_D|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_H_U|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_MIN_D|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_MIN_U|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_SEC_D|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|REG_SEC_U|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|MUX6|ALT_INV_SAIDA\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
TESTE <= ww_TESTE;
muxteste <= ww_muxteste;
enbteste <= ww_enbteste;
rstteste <= ww_rstteste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\FD|MUX6|ALT_INV_SAIDA[1]~9_combout\ <= NOT \FD|MUX6|SAIDA[1]~9_combout\;
\FD|MUX6|ALT_INV_SAIDA[1]~8_combout\ <= NOT \FD|MUX6|SAIDA[1]~8_combout\;
\FD|MUX6|ALT_INV_SAIDA[2]~7_combout\ <= NOT \FD|MUX6|SAIDA[2]~7_combout\;
\FD|MUX6|ALT_INV_SAIDA[2]~6_combout\ <= NOT \FD|MUX6|SAIDA[2]~6_combout\;
\FD|MUX6|ALT_INV_SAIDA[3]~5_combout\ <= NOT \FD|MUX6|SAIDA[3]~5_combout\;
\FD|MUX6|ALT_INV_SAIDA[3]~4_combout\ <= NOT \FD|MUX6|SAIDA[3]~4_combout\;
\FD|MUX6|ALT_INV_SAIDA[3]~3_combout\ <= NOT \FD|MUX6|SAIDA[3]~3_combout\;
\FD|MUX6|ALT_INV_SAIDA[0]~2_combout\ <= NOT \FD|MUX6|SAIDA[0]~2_combout\;
\FD|MUX6|ALT_INV_SAIDA[3]~1_combout\ <= NOT \FD|MUX6|SAIDA[3]~1_combout\;
\FD|MUX6|ALT_INV_SAIDA[0]~0_combout\ <= NOT \FD|MUX6|SAIDA[0]~0_combout\;
\relogio|ALT_INV_Selector0~1_combout\ <= NOT \relogio|Selector0~1_combout\;
\relogio|ALT_INV_Selector0~0_combout\ <= NOT \relogio|Selector0~0_combout\;
\relogio|ALT_INV_Selector1~1_combout\ <= NOT \relogio|Selector1~1_combout\;
\relogio|ALT_INV_LessThan1~0_combout\ <= NOT \relogio|LessThan1~0_combout\;
\FD|ULA|ALT_INV_Add0~2_combout\ <= NOT \FD|ULA|Add0~2_combout\;
\FD|ULA|ALT_INV_Add0~0_combout\ <= NOT \FD|ULA|Add0~0_combout\;
\relogio|ALT_INV_fstate.state7~q\ <= NOT \relogio|fstate.state7~q\;
\relogio|ALT_INV_fstate.state1~q\ <= NOT \relogio|fstate.state1~q\;
\relogio|ALT_INV_mux~1_combout\ <= NOT \relogio|mux~1_combout\;
\relogio|ALT_INV_fstate.state5~q\ <= NOT \relogio|fstate.state5~q\;
\relogio|ALT_INV_mux~0_combout\ <= NOT \relogio|mux~0_combout\;
\relogio|ALT_INV_fstate.state3~q\ <= NOT \relogio|fstate.state3~q\;
\relogio|ALT_INV_WideOr5~combout\ <= NOT \relogio|WideOr5~combout\;
\relogio|ALT_INV_fstate.state4~q\ <= NOT \relogio|fstate.state4~q\;
\relogio|ALT_INV_fstate.state2~q\ <= NOT \relogio|fstate.state2~q\;
\relogio|ALT_INV_fstate.state6~q\ <= NOT \relogio|fstate.state6~q\;
\FD|REG_H_D|ALT_INV_DOUT\(1) <= NOT \FD|REG_H_D|DOUT\(1);
\FD|REG_H_D|ALT_INV_DOUT\(2) <= NOT \FD|REG_H_D|DOUT\(2);
\FD|REG_H_D|ALT_INV_DOUT\(3) <= NOT \FD|REG_H_D|DOUT\(3);
\FD|REG_H_D|ALT_INV_DOUT\(0) <= NOT \FD|REG_H_D|DOUT\(0);
\FD|REG_H_U|ALT_INV_DOUT\(1) <= NOT \FD|REG_H_U|DOUT\(1);
\FD|REG_H_U|ALT_INV_DOUT\(2) <= NOT \FD|REG_H_U|DOUT\(2);
\FD|REG_H_U|ALT_INV_DOUT\(3) <= NOT \FD|REG_H_U|DOUT\(3);
\FD|REG_H_U|ALT_INV_DOUT\(0) <= NOT \FD|REG_H_U|DOUT\(0);
\FD|REG_MIN_D|ALT_INV_DOUT\(1) <= NOT \FD|REG_MIN_D|DOUT\(1);
\FD|REG_MIN_D|ALT_INV_DOUT\(2) <= NOT \FD|REG_MIN_D|DOUT\(2);
\FD|REG_MIN_D|ALT_INV_DOUT\(3) <= NOT \FD|REG_MIN_D|DOUT\(3);
\FD|REG_MIN_D|ALT_INV_DOUT\(0) <= NOT \FD|REG_MIN_D|DOUT\(0);
\FD|REG_MIN_U|ALT_INV_DOUT\(1) <= NOT \FD|REG_MIN_U|DOUT\(1);
\FD|REG_MIN_U|ALT_INV_DOUT\(2) <= NOT \FD|REG_MIN_U|DOUT\(2);
\FD|REG_MIN_U|ALT_INV_DOUT\(3) <= NOT \FD|REG_MIN_U|DOUT\(3);
\FD|REG_MIN_U|ALT_INV_DOUT\(0) <= NOT \FD|REG_MIN_U|DOUT\(0);
\FD|REG_SEC_D|ALT_INV_DOUT\(1) <= NOT \FD|REG_SEC_D|DOUT\(1);
\FD|REG_SEC_D|ALT_INV_DOUT\(2) <= NOT \FD|REG_SEC_D|DOUT\(2);
\FD|REG_SEC_D|ALT_INV_DOUT\(3) <= NOT \FD|REG_SEC_D|DOUT\(3);
\FD|REG_SEC_D|ALT_INV_DOUT\(0) <= NOT \FD|REG_SEC_D|DOUT\(0);
\FD|REG_SEC_U|ALT_INV_DOUT\(1) <= NOT \FD|REG_SEC_U|DOUT\(1);
\FD|REG_SEC_U|ALT_INV_DOUT\(2) <= NOT \FD|REG_SEC_U|DOUT\(2);
\FD|REG_SEC_U|ALT_INV_DOUT\(3) <= NOT \FD|REG_SEC_U|DOUT\(3);
\FD|REG_SEC_U|ALT_INV_DOUT\(0) <= NOT \FD|REG_SEC_U|DOUT\(0);
\FD|MUX6|ALT_INV_SAIDA\(1) <= NOT \FD|MUX6|SAIDA\(1);
\FD|MUX6|ALT_INV_SAIDA\(2) <= NOT \FD|MUX6|SAIDA\(2);
\FD|MUX6|ALT_INV_SAIDA\(3) <= NOT \FD|MUX6|SAIDA\(3);
\FD|MUX6|ALT_INV_SAIDA\(0) <= NOT \FD|MUX6|SAIDA\(0);

-- Location: IOOBUF_X52_Y0_N36
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X54_Y0_N36
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X52_Y0_N2
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N42
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X54_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X70_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y0_N19
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X56_Y0_N19
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X78_Y0_N53
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X60_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X54_Y0_N19
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X56_Y0_N36
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X78_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X70_Y0_N19
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X66_Y0_N59
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y0_N2
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X76_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X72_Y0_N36
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X68_Y0_N36
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X54_Y0_N2
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X56_Y0_N53
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X74_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X74_Y0_N76
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X70_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X70_Y0_N53
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X66_Y0_N42
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X82_Y0_N42
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X68_Y0_N2
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X76_Y0_N53
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X66_Y0_N76
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X64_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X64_Y0_N19
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X68_Y0_N53
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X68_Y0_N19
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X56_Y0_N2
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X72_Y0_N53
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X64_Y0_N36
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X52_Y0_N19
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X64_Y0_N53
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X50_Y0_N93
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X34_Y0_N59
\HEX6[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(0));

-- Location: IOOBUF_X6_Y0_N2
\HEX6[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(1));

-- Location: IOOBUF_X28_Y0_N53
\HEX6[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(2));

-- Location: IOOBUF_X86_Y0_N53
\HEX6[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(3));

-- Location: IOOBUF_X82_Y0_N76
\HEX6[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(4));

-- Location: IOOBUF_X8_Y0_N53
\HEX6[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(5));

-- Location: IOOBUF_X82_Y0_N59
\HEX6[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX6(6));

-- Location: IOOBUF_X28_Y0_N2
\HEX7[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(0));

-- Location: IOOBUF_X40_Y0_N53
\HEX7[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(1));

-- Location: IOOBUF_X26_Y0_N76
\HEX7[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(2));

-- Location: IOOBUF_X88_Y0_N54
\HEX7[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(3));

-- Location: IOOBUF_X36_Y0_N19
\HEX7[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(4));

-- Location: IOOBUF_X86_Y0_N19
\HEX7[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(5));

-- Location: IOOBUF_X6_Y0_N36
\HEX7[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX7(6));

-- Location: IOOBUF_X62_Y0_N53
\TESTE[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|REG_SEC_U|DOUT\(0),
	devoe => ww_devoe,
	o => ww_TESTE(0));

-- Location: IOOBUF_X60_Y0_N19
\TESTE[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|REG_SEC_U|DOUT\(1),
	devoe => ww_devoe,
	o => ww_TESTE(1));

-- Location: IOOBUF_X58_Y0_N76
\TESTE[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|REG_SEC_U|DOUT\(2),
	devoe => ww_devoe,
	o => ww_TESTE(2));

-- Location: IOOBUF_X62_Y0_N19
\TESTE[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|REG_SEC_U|DOUT\(3),
	devoe => ww_devoe,
	o => ww_TESTE(3));

-- Location: IOOBUF_X62_Y0_N2
\muxteste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|WideOr5~combout\,
	devoe => ww_devoe,
	o => ww_muxteste(0));

-- Location: IOOBUF_X62_Y0_N36
\muxteste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|mux~0_combout\,
	devoe => ww_devoe,
	o => ww_muxteste(1));

-- Location: IOOBUF_X89_Y4_N96
\muxteste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|mux~1_combout\,
	devoe => ww_devoe,
	o => ww_muxteste(2));

-- Location: IOOBUF_X89_Y4_N45
\enbteste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|ALT_INV_fstate.state1~q\,
	devoe => ww_devoe,
	o => ww_enbteste(0));

-- Location: IOOBUF_X89_Y4_N79
\enbteste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state2~q\,
	devoe => ww_devoe,
	o => ww_enbteste(1));

-- Location: IOOBUF_X58_Y0_N59
\enbteste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state3~q\,
	devoe => ww_devoe,
	o => ww_enbteste(2));

-- Location: IOOBUF_X74_Y0_N59
\enbteste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state4~q\,
	devoe => ww_devoe,
	o => ww_enbteste(3));

-- Location: IOOBUF_X80_Y0_N53
\enbteste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state5~q\,
	devoe => ww_devoe,
	o => ww_enbteste(4));

-- Location: IOOBUF_X60_Y0_N2
\enbteste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state6~q\,
	devoe => ww_devoe,
	o => ww_enbteste(5));

-- Location: IOOBUF_X89_Y4_N62
\rstteste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state2~q\,
	devoe => ww_devoe,
	o => ww_rstteste(0));

-- Location: IOOBUF_X58_Y0_N42
\rstteste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state3~q\,
	devoe => ww_devoe,
	o => ww_rstteste(1));

-- Location: IOOBUF_X76_Y0_N2
\rstteste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state4~q\,
	devoe => ww_devoe,
	o => ww_rstteste(2));

-- Location: IOOBUF_X80_Y0_N36
\rstteste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state5~q\,
	devoe => ww_devoe,
	o => ww_rstteste(3));

-- Location: IOOBUF_X60_Y0_N53
\rstteste[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state6~q\,
	devoe => ww_devoe,
	o => ww_rstteste(4));

-- Location: IOOBUF_X50_Y0_N59
\rstteste[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \relogio|fstate.state7~q\,
	devoe => ww_devoe,
	o => ww_rstteste(5));

-- Location: IOIBUF_X89_Y25_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X62_Y4_N36
\FD|ULA|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~2_combout\ = ( \FD|MUX6|SAIDA\(0) & ( !\FD|MUX6|SAIDA\(1) ) ) # ( !\FD|MUX6|SAIDA\(0) & ( \FD|MUX6|SAIDA\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX6|ALT_INV_SAIDA\(1),
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|ULA|Add0~2_combout\);

-- Location: MLABCELL_X59_Y4_N12
\FD|REG_H_D|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_H_D|DOUT[1]~feeder_combout\ = ( \FD|ULA|Add0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|ULA|ALT_INV_Add0~2_combout\,
	combout => \FD|REG_H_D|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X62_Y4_N30
\FD|ULA|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~0_combout\ = ( \FD|MUX6|SAIDA\(0) & ( !\FD|MUX6|SAIDA\(3) $ (((!\FD|MUX6|SAIDA\(2)) # (!\FD|MUX6|SAIDA\(1)))) ) ) # ( !\FD|MUX6|SAIDA\(0) & ( \FD|MUX6|SAIDA\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|MUX6|ALT_INV_SAIDA\(2),
	datac => \FD|MUX6|ALT_INV_SAIDA\(1),
	datad => \FD|MUX6|ALT_INV_SAIDA\(3),
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|ULA|Add0~0_combout\);

-- Location: FF_X62_Y4_N17
\FD|REG_H_U|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state6~q\,
	sload => VCC,
	ena => \relogio|fstate.state5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_U|DOUT\(3));

-- Location: LABCELL_X60_Y4_N21
\relogio|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector0~0_combout\ = ( !\relogio|fstate.state3~q\ & ( !\relogio|fstate.state5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \relogio|ALT_INV_fstate.state5~q\,
	dataf => \relogio|ALT_INV_fstate.state3~q\,
	combout => \relogio|Selector0~0_combout\);

-- Location: LABCELL_X61_Y4_N57
\relogio|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|LessThan1~0_combout\ = ( \FD|MUX6|SAIDA\(2) & ( (\FD|MUX6|SAIDA\(1) & \FD|MUX6|SAIDA\(0)) ) ) # ( !\FD|MUX6|SAIDA\(2) & ( (!\FD|MUX6|SAIDA\(1) & !\FD|MUX6|SAIDA\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX6|ALT_INV_SAIDA\(1),
	datad => \FD|MUX6|ALT_INV_SAIDA\(0),
	dataf => \FD|MUX6|ALT_INV_SAIDA\(2),
	combout => \relogio|LessThan1~0_combout\);

-- Location: LABCELL_X60_Y4_N57
\relogio|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector1~1_combout\ = ( \FD|MUX6|SAIDA\(3) & ( \FD|MUX6|SAIDA\(0) & ( (!\FD|MUX6|SAIDA\(2) & (!\FD|MUX6|SAIDA\(1) & !\relogio|fstate.state1~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(2),
	datab => \FD|MUX6|ALT_INV_SAIDA\(1),
	datad => \relogio|ALT_INV_fstate.state1~q\,
	datae => \FD|MUX6|ALT_INV_SAIDA\(3),
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \relogio|Selector1~1_combout\);

-- Location: LABCELL_X61_Y4_N6
\relogio|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector3~0_combout\ = ( \relogio|fstate.state4~q\ & ( \relogio|fstate.state3~q\ & ( (!\FD|MUX6|SAIDA\(1) & (((\FD|MUX6|SAIDA\(3))))) # (\FD|MUX6|SAIDA\(1) & ((!\FD|MUX6|SAIDA\(2) & ((\FD|MUX6|SAIDA\(3)))) # (\FD|MUX6|SAIDA\(2) & 
-- ((!\FD|MUX6|SAIDA\(0)) # (!\FD|MUX6|SAIDA\(3)))))) ) ) ) # ( !\relogio|fstate.state4~q\ & ( \relogio|fstate.state3~q\ & ( (!\FD|MUX6|SAIDA\(1) & (\FD|MUX6|SAIDA\(0) & (!\FD|MUX6|SAIDA\(2) & \FD|MUX6|SAIDA\(3)))) ) ) ) # ( \relogio|fstate.state4~q\ & ( 
-- !\relogio|fstate.state3~q\ & ( (!\FD|MUX6|SAIDA\(1) & (((\FD|MUX6|SAIDA\(3))))) # (\FD|MUX6|SAIDA\(1) & ((!\FD|MUX6|SAIDA\(2) & ((\FD|MUX6|SAIDA\(3)))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0)) # (!\FD|MUX6|SAIDA\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011111111000000000001000000000010111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(1),
	datab => \FD|MUX6|ALT_INV_SAIDA\(0),
	datac => \FD|MUX6|ALT_INV_SAIDA\(2),
	datad => \FD|MUX6|ALT_INV_SAIDA\(3),
	datae => \relogio|ALT_INV_fstate.state4~q\,
	dataf => \relogio|ALT_INV_fstate.state3~q\,
	combout => \relogio|Selector3~0_combout\);

-- Location: FF_X61_Y4_N8
\relogio|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \relogio|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state4~q\);

-- Location: LABCELL_X60_Y4_N39
\relogio|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector0~1_combout\ = ( \relogio|fstate.state4~q\ & ( \relogio|fstate.state2~q\ & ( (!\FD|MUX6|SAIDA\(2) & (((\FD|MUX6|SAIDA\(3))))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0) & ((\FD|MUX6|SAIDA\(3)) # (\FD|MUX6|SAIDA\(1)))) # 
-- (\FD|MUX6|SAIDA\(0) & ((!\FD|MUX6|SAIDA\(1)) # (!\FD|MUX6|SAIDA\(3)))))) ) ) ) # ( !\relogio|fstate.state4~q\ & ( \relogio|fstate.state2~q\ & ( (!\FD|MUX6|SAIDA\(2) & (((\FD|MUX6|SAIDA\(3))))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0) & 
-- ((\FD|MUX6|SAIDA\(3)) # (\FD|MUX6|SAIDA\(1)))) # (\FD|MUX6|SAIDA\(0) & ((!\FD|MUX6|SAIDA\(1)) # (!\FD|MUX6|SAIDA\(3)))))) ) ) ) # ( \relogio|fstate.state4~q\ & ( !\relogio|fstate.state2~q\ & ( (!\FD|MUX6|SAIDA\(2) & (((\FD|MUX6|SAIDA\(3))))) # 
-- (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0) & ((\FD|MUX6|SAIDA\(3)) # (\FD|MUX6|SAIDA\(1)))) # (\FD|MUX6|SAIDA\(0) & ((!\FD|MUX6|SAIDA\(1)) # (!\FD|MUX6|SAIDA\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111111111000000111111111100000011111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(0),
	datab => \FD|MUX6|ALT_INV_SAIDA\(1),
	datac => \FD|MUX6|ALT_INV_SAIDA\(2),
	datad => \FD|MUX6|ALT_INV_SAIDA\(3),
	datae => \relogio|ALT_INV_fstate.state4~q\,
	dataf => \relogio|ALT_INV_fstate.state2~q\,
	combout => \relogio|Selector0~1_combout\);

-- Location: LABCELL_X60_Y4_N48
\relogio|Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector0~2_combout\ = ( \relogio|Selector1~1_combout\ & ( \relogio|Selector0~1_combout\ ) ) # ( !\relogio|Selector1~1_combout\ & ( \relogio|Selector0~1_combout\ ) ) # ( \relogio|Selector1~1_combout\ & ( !\relogio|Selector0~1_combout\ ) ) # ( 
-- !\relogio|Selector1~1_combout\ & ( !\relogio|Selector0~1_combout\ & ( (!\FD|ULA|Add0~0_combout\ & (((!\relogio|LessThan1~0_combout\ & \relogio|fstate.state6~q\)))) # (\FD|ULA|Add0~0_combout\ & (((!\relogio|Selector0~0_combout\ & 
-- !\relogio|LessThan1~0_combout\)) # (\relogio|fstate.state6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|ALT_INV_Selector0~0_combout\,
	datab => \FD|ULA|ALT_INV_Add0~0_combout\,
	datac => \relogio|ALT_INV_LessThan1~0_combout\,
	datad => \relogio|ALT_INV_fstate.state6~q\,
	datae => \relogio|ALT_INV_Selector1~1_combout\,
	dataf => \relogio|ALT_INV_Selector0~1_combout\,
	combout => \relogio|Selector0~2_combout\);

-- Location: FF_X60_Y4_N50
\relogio|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \relogio|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state1~q\);

-- Location: LABCELL_X61_Y4_N12
\relogio|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector1~0_combout\ = ( \relogio|fstate.state2~q\ & ( \FD|MUX6|SAIDA\(3) & ( (!\FD|MUX6|SAIDA\(0)) # ((!\FD|MUX6|SAIDA\(1)) # (!\FD|MUX6|SAIDA\(2))) ) ) ) # ( !\relogio|fstate.state2~q\ & ( \FD|MUX6|SAIDA\(3) & ( (!\relogio|fstate.state1~q\ & 
-- (\FD|MUX6|SAIDA\(0) & (!\FD|MUX6|SAIDA\(1) & !\FD|MUX6|SAIDA\(2)))) ) ) ) # ( \relogio|fstate.state2~q\ & ( !\FD|MUX6|SAIDA\(3) & ( (\FD|MUX6|SAIDA\(1) & \FD|MUX6|SAIDA\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100100000000000001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|ALT_INV_fstate.state1~q\,
	datab => \FD|MUX6|ALT_INV_SAIDA\(0),
	datac => \FD|MUX6|ALT_INV_SAIDA\(1),
	datad => \FD|MUX6|ALT_INV_SAIDA\(2),
	datae => \relogio|ALT_INV_fstate.state2~q\,
	dataf => \FD|MUX6|ALT_INV_SAIDA\(3),
	combout => \relogio|Selector1~0_combout\);

-- Location: FF_X61_Y4_N14
\relogio|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \relogio|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state2~q\);

-- Location: FF_X61_Y4_N35
\FD|REG_SEC_U|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state2~q\,
	sload => VCC,
	ena => \relogio|ALT_INV_fstate.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_U|DOUT\(3));

-- Location: LABCELL_X61_Y4_N39
\relogio|mux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|mux~0_combout\ = ( \relogio|fstate.state4~q\ ) # ( !\relogio|fstate.state4~q\ & ( \relogio|fstate.state3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \relogio|ALT_INV_fstate.state3~q\,
	dataf => \relogio|ALT_INV_fstate.state4~q\,
	combout => \relogio|mux~0_combout\);

-- Location: FF_X63_Y4_N11
\FD|REG_MIN_U|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state4~q\,
	sload => VCC,
	ena => \relogio|fstate.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_U|DOUT\(3));

-- Location: FF_X60_Y4_N56
\FD|REG_MIN_D|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state5~q\,
	sload => VCC,
	ena => \relogio|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_D|DOUT\(3));

-- Location: LABCELL_X62_Y3_N33
\FD|REG_SEC_D|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_SEC_D|DOUT[3]~feeder_combout\ = \FD|ULA|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|ULA|ALT_INV_Add0~0_combout\,
	combout => \FD|REG_SEC_D|DOUT[3]~feeder_combout\);

-- Location: FF_X62_Y3_N35
\FD|REG_SEC_D|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|REG_SEC_D|DOUT[3]~feeder_combout\,
	clrn => \relogio|ALT_INV_fstate.state3~q\,
	ena => \relogio|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_D|DOUT\(3));

-- Location: LABCELL_X61_Y4_N0
\relogio|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|WideOr5~combout\ = ( \relogio|fstate.state4~q\ ) # ( !\relogio|fstate.state4~q\ & ( (\relogio|fstate.state6~q\) # (\relogio|fstate.state2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \relogio|ALT_INV_fstate.state2~q\,
	datac => \relogio|ALT_INV_fstate.state6~q\,
	dataf => \relogio|ALT_INV_fstate.state4~q\,
	combout => \relogio|WideOr5~combout\);

-- Location: LABCELL_X62_Y4_N18
\FD|MUX6|SAIDA[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[3]~4_combout\ = ( \FD|REG_SEC_D|DOUT\(3) & ( \relogio|WideOr5~combout\ & ( (!\relogio|mux~0_combout\) # (\FD|REG_MIN_D|DOUT\(3)) ) ) ) # ( !\FD|REG_SEC_D|DOUT\(3) & ( \relogio|WideOr5~combout\ & ( (\relogio|mux~0_combout\ & 
-- \FD|REG_MIN_D|DOUT\(3)) ) ) ) # ( \FD|REG_SEC_D|DOUT\(3) & ( !\relogio|WideOr5~combout\ & ( (!\relogio|mux~0_combout\ & (\FD|REG_SEC_U|DOUT\(3))) # (\relogio|mux~0_combout\ & ((\FD|REG_MIN_U|DOUT\(3)))) ) ) ) # ( !\FD|REG_SEC_D|DOUT\(3) & ( 
-- !\relogio|WideOr5~combout\ & ( (!\relogio|mux~0_combout\ & (\FD|REG_SEC_U|DOUT\(3))) # (\relogio|mux~0_combout\ & ((\FD|REG_MIN_U|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datab => \relogio|ALT_INV_mux~0_combout\,
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datad => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datae => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	dataf => \relogio|ALT_INV_WideOr5~combout\,
	combout => \FD|MUX6|SAIDA[3]~4_combout\);

-- Location: FF_X59_Y4_N11
\FD|REG_H_D|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state7~q\,
	sload => VCC,
	ena => \relogio|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_D|DOUT\(3));

-- Location: LABCELL_X61_Y4_N24
\relogio|mux~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|mux~1_combout\ = (\relogio|fstate.state5~q\) # (\relogio|fstate.state6~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \relogio|ALT_INV_fstate.state6~q\,
	datad => \relogio|ALT_INV_fstate.state5~q\,
	combout => \relogio|mux~1_combout\);

-- Location: LABCELL_X62_Y4_N3
\FD|MUX6|SAIDA[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[3]~5_combout\ = ( \relogio|mux~1_combout\ & ( (!\FD|MUX6|SAIDA[3]~1_combout\ & ((\FD|REG_H_D|DOUT\(3)))) # (\FD|MUX6|SAIDA[3]~1_combout\ & (\FD|REG_H_U|DOUT\(3))) ) ) # ( !\relogio|mux~1_combout\ & ( \FD|MUX6|SAIDA[3]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(3),
	datab => \FD|MUX6|ALT_INV_SAIDA[3]~4_combout\,
	datac => \FD|MUX6|ALT_INV_SAIDA[3]~1_combout\,
	datad => \FD|REG_H_D|ALT_INV_DOUT\(3),
	dataf => \relogio|ALT_INV_mux~1_combout\,
	combout => \FD|MUX6|SAIDA[3]~5_combout\);

-- Location: LABCELL_X62_Y4_N57
\FD|MUX6|SAIDA[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA\(3) = ( \FD|MUX6|SAIDA[3]~5_combout\ & ( (\FD|MUX6|SAIDA\(3)) # (\FD|MUX6|SAIDA[3]~3_combout\) ) ) # ( !\FD|MUX6|SAIDA[3]~5_combout\ & ( (!\FD|MUX6|SAIDA[3]~3_combout\ & \FD|MUX6|SAIDA\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX6|ALT_INV_SAIDA[3]~3_combout\,
	datad => \FD|MUX6|ALT_INV_SAIDA\(3),
	dataf => \FD|MUX6|ALT_INV_SAIDA[3]~5_combout\,
	combout => \FD|MUX6|SAIDA\(3));

-- Location: LABCELL_X60_Y4_N27
\relogio|reg_fstate~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|reg_fstate~0_combout\ = ( \relogio|fstate.state6~q\ & ( (!\FD|MUX6|SAIDA\(3) & (!\FD|MUX6|SAIDA\(2) & (!\FD|MUX6|SAIDA\(1) & \FD|MUX6|SAIDA\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(3),
	datab => \FD|MUX6|ALT_INV_SAIDA\(2),
	datac => \FD|MUX6|ALT_INV_SAIDA\(1),
	datad => \FD|MUX6|ALT_INV_SAIDA\(0),
	dataf => \relogio|ALT_INV_fstate.state6~q\,
	combout => \relogio|reg_fstate~0_combout\);

-- Location: FF_X59_Y4_N44
\relogio|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \relogio|reg_fstate~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state7~q\);

-- Location: FF_X59_Y4_N14
\FD|REG_H_D|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|REG_H_D|DOUT[1]~feeder_combout\,
	clrn => \relogio|ALT_INV_fstate.state7~q\,
	ena => \relogio|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_D|DOUT\(1));

-- Location: FF_X63_Y4_N23
\FD|REG_MIN_U|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~2_combout\,
	clrn => \relogio|ALT_INV_fstate.state4~q\,
	sload => VCC,
	ena => \relogio|fstate.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_U|DOUT\(1));

-- Location: FF_X60_Y4_N17
\FD|REG_MIN_D|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~2_combout\,
	clrn => \relogio|ALT_INV_fstate.state5~q\,
	sload => VCC,
	ena => \relogio|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_D|DOUT\(1));

-- Location: FF_X61_Y4_N32
\FD|REG_SEC_U|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~2_combout\,
	clrn => \relogio|ALT_INV_fstate.state2~q\,
	sload => VCC,
	ena => \relogio|ALT_INV_fstate.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_U|DOUT\(1));

-- Location: FF_X62_Y3_N38
\FD|REG_SEC_D|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~2_combout\,
	clrn => \relogio|ALT_INV_fstate.state3~q\,
	sload => VCC,
	ena => \relogio|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_D|DOUT\(1));

-- Location: LABCELL_X62_Y4_N15
\FD|MUX6|SAIDA[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[1]~8_combout\ = ( \FD|REG_SEC_D|DOUT\(1) & ( \relogio|WideOr5~combout\ & ( (!\relogio|mux~0_combout\) # (\FD|REG_MIN_D|DOUT\(1)) ) ) ) # ( !\FD|REG_SEC_D|DOUT\(1) & ( \relogio|WideOr5~combout\ & ( (\relogio|mux~0_combout\ & 
-- \FD|REG_MIN_D|DOUT\(1)) ) ) ) # ( \FD|REG_SEC_D|DOUT\(1) & ( !\relogio|WideOr5~combout\ & ( (!\relogio|mux~0_combout\ & ((\FD|REG_SEC_U|DOUT\(1)))) # (\relogio|mux~0_combout\ & (\FD|REG_MIN_U|DOUT\(1))) ) ) ) # ( !\FD|REG_SEC_D|DOUT\(1) & ( 
-- !\relogio|WideOr5~combout\ & ( (!\relogio|mux~0_combout\ & ((\FD|REG_SEC_U|DOUT\(1)))) # (\relogio|mux~0_combout\ & (\FD|REG_MIN_U|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	datab => \relogio|ALT_INV_mux~0_combout\,
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	datad => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	datae => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	dataf => \relogio|ALT_INV_WideOr5~combout\,
	combout => \FD|MUX6|SAIDA[1]~8_combout\);

-- Location: FF_X62_Y4_N41
\FD|REG_H_U|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~2_combout\,
	clrn => \relogio|ALT_INV_fstate.state6~q\,
	sload => VCC,
	ena => \relogio|fstate.state5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_U|DOUT\(1));

-- Location: LABCELL_X62_Y4_N39
\FD|MUX6|SAIDA[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[1]~9_combout\ = ( \relogio|mux~1_combout\ & ( (!\FD|MUX6|SAIDA[3]~1_combout\ & (\FD|REG_H_D|DOUT\(1))) # (\FD|MUX6|SAIDA[3]~1_combout\ & ((\FD|REG_H_U|DOUT\(1)))) ) ) # ( !\relogio|mux~1_combout\ & ( \FD|MUX6|SAIDA[1]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_D|ALT_INV_DOUT\(1),
	datab => \FD|MUX6|ALT_INV_SAIDA[1]~8_combout\,
	datac => \FD|MUX6|ALT_INV_SAIDA[3]~1_combout\,
	datad => \FD|REG_H_U|ALT_INV_DOUT\(1),
	dataf => \relogio|ALT_INV_mux~1_combout\,
	combout => \FD|MUX6|SAIDA[1]~9_combout\);

-- Location: LABCELL_X62_Y4_N6
\FD|MUX6|SAIDA[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA\(1) = ( \FD|MUX6|SAIDA[3]~3_combout\ & ( \FD|MUX6|SAIDA[1]~9_combout\ ) ) # ( !\FD|MUX6|SAIDA[3]~3_combout\ & ( \FD|MUX6|SAIDA\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|MUX6|ALT_INV_SAIDA[1]~9_combout\,
	datad => \FD|MUX6|ALT_INV_SAIDA\(1),
	dataf => \FD|MUX6|ALT_INV_SAIDA[3]~3_combout\,
	combout => \FD|MUX6|SAIDA\(1));

-- Location: LABCELL_X60_Y4_N42
\relogio|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector4~0_combout\ = ( \relogio|fstate.state5~q\ & ( \relogio|fstate.state4~q\ & ( (!\FD|MUX6|SAIDA\(2) & (((\FD|MUX6|SAIDA\(1) & \FD|MUX6|SAIDA\(3))))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0) & ((\FD|MUX6|SAIDA\(3)))) # 
-- (\FD|MUX6|SAIDA\(0) & (!\FD|MUX6|SAIDA\(1))))) ) ) ) # ( !\relogio|fstate.state5~q\ & ( \relogio|fstate.state4~q\ & ( (\FD|MUX6|SAIDA\(2) & (\FD|MUX6|SAIDA\(0) & (!\FD|MUX6|SAIDA\(1) & !\FD|MUX6|SAIDA\(3)))) ) ) ) # ( \relogio|fstate.state5~q\ & ( 
-- !\relogio|fstate.state4~q\ & ( (\FD|MUX6|SAIDA\(3) & ((!\FD|MUX6|SAIDA\(2) & ((\FD|MUX6|SAIDA\(1)))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0)) # (!\FD|MUX6|SAIDA\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101111000010000000000000001000001011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(2),
	datab => \FD|MUX6|ALT_INV_SAIDA\(0),
	datac => \FD|MUX6|ALT_INV_SAIDA\(1),
	datad => \FD|MUX6|ALT_INV_SAIDA\(3),
	datae => \relogio|ALT_INV_fstate.state5~q\,
	dataf => \relogio|ALT_INV_fstate.state4~q\,
	combout => \relogio|Selector4~0_combout\);

-- Location: FF_X60_Y4_N44
\relogio|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \relogio|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state5~q\);

-- Location: LABCELL_X61_Y4_N51
\relogio|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector5~0_combout\ = ( \relogio|fstate.state6~q\ & ( \FD|MUX6|SAIDA\(3) & ( (!\FD|MUX6|SAIDA\(2)) # ((!\FD|MUX6|SAIDA\(0)) # (!\FD|MUX6|SAIDA\(1))) ) ) ) # ( !\relogio|fstate.state6~q\ & ( \FD|MUX6|SAIDA\(3) & ( (!\FD|MUX6|SAIDA\(2) & 
-- (\FD|MUX6|SAIDA\(0) & (\relogio|fstate.state5~q\ & !\FD|MUX6|SAIDA\(1)))) ) ) ) # ( \relogio|fstate.state6~q\ & ( !\FD|MUX6|SAIDA\(3) & ( (\FD|MUX6|SAIDA\(1)) # (\FD|MUX6|SAIDA\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000010000000001111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(2),
	datab => \FD|MUX6|ALT_INV_SAIDA\(0),
	datac => \relogio|ALT_INV_fstate.state5~q\,
	datad => \FD|MUX6|ALT_INV_SAIDA\(1),
	datae => \relogio|ALT_INV_fstate.state6~q\,
	dataf => \FD|MUX6|ALT_INV_SAIDA\(3),
	combout => \relogio|Selector5~0_combout\);

-- Location: FF_X61_Y4_N53
\relogio|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \relogio|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state6~q\);

-- Location: LABCELL_X61_Y4_N3
\FD|MUX6|SAIDA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[3]~3_combout\ = ( \relogio|fstate.state4~q\ & ( (!\relogio|fstate.state6~q\ & !\relogio|fstate.state5~q\) ) ) # ( !\relogio|fstate.state4~q\ & ( (!\relogio|fstate.state3~q\) # ((!\relogio|fstate.state6~q\ & !\relogio|fstate.state5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|ALT_INV_fstate.state6~q\,
	datac => \relogio|ALT_INV_fstate.state5~q\,
	datad => \relogio|ALT_INV_fstate.state3~q\,
	dataf => \relogio|ALT_INV_fstate.state4~q\,
	combout => \FD|MUX6|SAIDA[3]~3_combout\);

-- Location: FF_X63_Y4_N44
\FD|REG_MIN_U|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~1_combout\,
	clrn => \relogio|ALT_INV_fstate.state4~q\,
	sload => VCC,
	ena => \relogio|fstate.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_U|DOUT\(2));

-- Location: FF_X60_Y4_N35
\FD|REG_MIN_D|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~1_combout\,
	clrn => \relogio|ALT_INV_fstate.state5~q\,
	sload => VCC,
	ena => \relogio|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_D|DOUT\(2));

-- Location: FF_X62_Y3_N11
\FD|REG_SEC_D|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~1_combout\,
	clrn => \relogio|ALT_INV_fstate.state3~q\,
	sload => VCC,
	ena => \relogio|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_D|DOUT\(2));

-- Location: LABCELL_X61_Y4_N33
\FD|MUX6|SAIDA[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[2]~6_combout\ = ( \relogio|WideOr5~combout\ & ( \FD|REG_SEC_D|DOUT\(2) & ( (!\relogio|mux~0_combout\) # (\FD|REG_MIN_D|DOUT\(2)) ) ) ) # ( !\relogio|WideOr5~combout\ & ( \FD|REG_SEC_D|DOUT\(2) & ( (!\relogio|mux~0_combout\ & 
-- (\FD|REG_SEC_U|DOUT\(2))) # (\relogio|mux~0_combout\ & ((\FD|REG_MIN_U|DOUT\(2)))) ) ) ) # ( \relogio|WideOr5~combout\ & ( !\FD|REG_SEC_D|DOUT\(2) & ( (\relogio|mux~0_combout\ & \FD|REG_MIN_D|DOUT\(2)) ) ) ) # ( !\relogio|WideOr5~combout\ & ( 
-- !\FD|REG_SEC_D|DOUT\(2) & ( (!\relogio|mux~0_combout\ & (\FD|REG_SEC_U|DOUT\(2))) # (\relogio|mux~0_combout\ & ((\FD|REG_MIN_U|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000011001101000111010001111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	datab => \relogio|ALT_INV_mux~0_combout\,
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	datae => \relogio|ALT_INV_WideOr5~combout\,
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	combout => \FD|MUX6|SAIDA[2]~6_combout\);

-- Location: FF_X59_Y4_N56
\FD|REG_H_D|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~1_combout\,
	clrn => \relogio|ALT_INV_fstate.state7~q\,
	sload => VCC,
	ena => \relogio|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_D|DOUT\(2));

-- Location: FF_X62_Y4_N26
\FD|REG_H_U|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~1_combout\,
	clrn => \relogio|ALT_INV_fstate.state6~q\,
	sload => VCC,
	ena => \relogio|fstate.state5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_U|DOUT\(2));

-- Location: LABCELL_X62_Y4_N24
\FD|MUX6|SAIDA[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[2]~7_combout\ = ( \FD|MUX6|SAIDA[3]~1_combout\ & ( (!\relogio|mux~1_combout\ & (\FD|MUX6|SAIDA[2]~6_combout\)) # (\relogio|mux~1_combout\ & ((\FD|REG_H_U|DOUT\(2)))) ) ) # ( !\FD|MUX6|SAIDA[3]~1_combout\ & ( (!\relogio|mux~1_combout\ & 
-- (\FD|MUX6|SAIDA[2]~6_combout\)) # (\relogio|mux~1_combout\ & ((\FD|REG_H_D|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|ALT_INV_mux~1_combout\,
	datab => \FD|MUX6|ALT_INV_SAIDA[2]~6_combout\,
	datac => \FD|REG_H_D|ALT_INV_DOUT\(2),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(2),
	dataf => \FD|MUX6|ALT_INV_SAIDA[3]~1_combout\,
	combout => \FD|MUX6|SAIDA[2]~7_combout\);

-- Location: LABCELL_X62_Y4_N51
\FD|MUX6|SAIDA[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA\(2) = ( \FD|MUX6|SAIDA\(2) & ( (!\FD|MUX6|SAIDA[3]~3_combout\) # (\FD|MUX6|SAIDA[2]~7_combout\) ) ) # ( !\FD|MUX6|SAIDA\(2) & ( (\FD|MUX6|SAIDA[3]~3_combout\ & \FD|MUX6|SAIDA[2]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|MUX6|ALT_INV_SAIDA[3]~3_combout\,
	datac => \FD|MUX6|ALT_INV_SAIDA[2]~7_combout\,
	dataf => \FD|MUX6|ALT_INV_SAIDA\(2),
	combout => \FD|MUX6|SAIDA\(2));

-- Location: LABCELL_X60_Y4_N45
\relogio|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \relogio|Selector2~0_combout\ = ( \relogio|fstate.state3~q\ & ( \relogio|fstate.state2~q\ & ( (!\FD|MUX6|SAIDA\(2) & (((\FD|MUX6|SAIDA\(3) & \FD|MUX6|SAIDA\(1))))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0) & (\FD|MUX6|SAIDA\(3))) # (\FD|MUX6|SAIDA\(0) 
-- & ((!\FD|MUX6|SAIDA\(1)))))) ) ) ) # ( !\relogio|fstate.state3~q\ & ( \relogio|fstate.state2~q\ & ( (\FD|MUX6|SAIDA\(2) & (\FD|MUX6|SAIDA\(0) & (!\FD|MUX6|SAIDA\(3) & !\FD|MUX6|SAIDA\(1)))) ) ) ) # ( \relogio|fstate.state3~q\ & ( 
-- !\relogio|fstate.state2~q\ & ( (\FD|MUX6|SAIDA\(3) & ((!\FD|MUX6|SAIDA\(2) & ((\FD|MUX6|SAIDA\(1)))) # (\FD|MUX6|SAIDA\(2) & ((!\FD|MUX6|SAIDA\(0)) # (!\FD|MUX6|SAIDA\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000111000010000000000000001010100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA\(2),
	datab => \FD|MUX6|ALT_INV_SAIDA\(0),
	datac => \FD|MUX6|ALT_INV_SAIDA\(3),
	datad => \FD|MUX6|ALT_INV_SAIDA\(1),
	datae => \relogio|ALT_INV_fstate.state3~q\,
	dataf => \relogio|ALT_INV_fstate.state2~q\,
	combout => \relogio|Selector2~0_combout\);

-- Location: FF_X61_Y4_N59
\relogio|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \relogio|Selector2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \relogio|fstate.state3~q\);

-- Location: LABCELL_X61_Y4_N36
\FD|MUX6|SAIDA[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[3]~1_combout\ = ( !\relogio|fstate.state4~q\ & ( (!\relogio|fstate.state3~q\ & (!\relogio|fstate.state2~q\ & !\relogio|fstate.state6~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \relogio|ALT_INV_fstate.state3~q\,
	datab => \relogio|ALT_INV_fstate.state2~q\,
	datac => \relogio|ALT_INV_fstate.state6~q\,
	dataf => \relogio|ALT_INV_fstate.state4~q\,
	combout => \FD|MUX6|SAIDA[3]~1_combout\);

-- Location: LABCELL_X60_Y4_N9
\FD|REG_MIN_D|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_MIN_D|DOUT[0]~0_combout\ = ( !\FD|MUX6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|REG_MIN_D|DOUT[0]~0_combout\);

-- Location: FF_X60_Y4_N11
\FD|REG_MIN_D|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|REG_MIN_D|DOUT[0]~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state5~q\,
	ena => \relogio|fstate.state4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_D|DOUT\(0));

-- Location: LABCELL_X63_Y4_N48
\FD|REG_MIN_U|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_MIN_U|DOUT[0]~0_combout\ = ( !\FD|MUX6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|REG_MIN_U|DOUT[0]~0_combout\);

-- Location: FF_X63_Y4_N50
\FD|REG_MIN_U|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|REG_MIN_U|DOUT[0]~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state4~q\,
	ena => \relogio|fstate.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_MIN_U|DOUT\(0));

-- Location: LABCELL_X62_Y4_N54
\FD|REG_SEC_U|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_SEC_U|DOUT[0]~0_combout\ = ( !\FD|MUX6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|REG_SEC_U|DOUT[0]~0_combout\);

-- Location: FF_X61_Y4_N47
\FD|REG_SEC_U|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|REG_SEC_U|DOUT[0]~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state2~q\,
	sload => VCC,
	ena => \relogio|ALT_INV_fstate.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_U|DOUT\(0));

-- Location: LABCELL_X62_Y3_N57
\FD|REG_SEC_D|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_SEC_D|DOUT[0]~0_combout\ = ( !\FD|MUX6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|REG_SEC_D|DOUT[0]~0_combout\);

-- Location: FF_X62_Y3_N59
\FD|REG_SEC_D|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|REG_SEC_D|DOUT[0]~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state3~q\,
	ena => \relogio|fstate.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_D|DOUT\(0));

-- Location: LABCELL_X61_Y4_N42
\FD|MUX6|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[0]~0_combout\ = ( \relogio|WideOr5~combout\ & ( \FD|REG_SEC_D|DOUT\(0) & ( (!\relogio|mux~0_combout\) # (\FD|REG_MIN_D|DOUT\(0)) ) ) ) # ( !\relogio|WideOr5~combout\ & ( \FD|REG_SEC_D|DOUT\(0) & ( (!\relogio|mux~0_combout\ & 
-- ((\FD|REG_SEC_U|DOUT\(0)))) # (\relogio|mux~0_combout\ & (\FD|REG_MIN_U|DOUT\(0))) ) ) ) # ( \relogio|WideOr5~combout\ & ( !\FD|REG_SEC_D|DOUT\(0) & ( (\FD|REG_MIN_D|DOUT\(0) & \relogio|mux~0_combout\) ) ) ) # ( !\relogio|WideOr5~combout\ & ( 
-- !\FD|REG_SEC_D|DOUT\(0) & ( (!\relogio|mux~0_combout\ & ((\FD|REG_SEC_U|DOUT\(0)))) # (\relogio|mux~0_combout\ & (\FD|REG_MIN_U|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datab => \relogio|ALT_INV_mux~0_combout\,
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	datad => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	datae => \relogio|ALT_INV_WideOr5~combout\,
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	combout => \FD|MUX6|SAIDA[0]~0_combout\);

-- Location: MLABCELL_X59_Y4_N18
\FD|REG_H_D|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_H_D|DOUT[0]~0_combout\ = ( !\FD|MUX6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|REG_H_D|DOUT[0]~0_combout\);

-- Location: FF_X59_Y4_N20
\FD|REG_H_D|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FD|REG_H_D|DOUT[0]~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state7~q\,
	ena => \relogio|fstate.state6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_D|DOUT\(0));

-- Location: LABCELL_X60_Y4_N33
\FD|REG_H_U|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|REG_H_U|DOUT[0]~0_combout\ = ( !\FD|MUX6|SAIDA\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|REG_H_U|DOUT[0]~0_combout\);

-- Location: FF_X62_Y4_N44
\FD|REG_H_U|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|REG_H_U|DOUT[0]~0_combout\,
	clrn => \relogio|ALT_INV_fstate.state6~q\,
	sload => VCC,
	ena => \relogio|fstate.state5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_H_U|DOUT\(0));

-- Location: LABCELL_X61_Y4_N18
\FD|MUX6|SAIDA[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA[0]~2_combout\ = ( \relogio|mux~1_combout\ & ( (!\FD|MUX6|SAIDA[3]~1_combout\ & (\FD|REG_H_D|DOUT\(0))) # (\FD|MUX6|SAIDA[3]~1_combout\ & ((\FD|REG_H_U|DOUT\(0)))) ) ) # ( !\relogio|mux~1_combout\ & ( \FD|MUX6|SAIDA[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MUX6|ALT_INV_SAIDA[3]~1_combout\,
	datab => \FD|MUX6|ALT_INV_SAIDA[0]~0_combout\,
	datac => \FD|REG_H_D|ALT_INV_DOUT\(0),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(0),
	dataf => \relogio|ALT_INV_mux~1_combout\,
	combout => \FD|MUX6|SAIDA[0]~2_combout\);

-- Location: LABCELL_X61_Y4_N21
\FD|MUX6|SAIDA[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|MUX6|SAIDA\(0) = ( \FD|MUX6|SAIDA\(0) & ( (!\FD|MUX6|SAIDA[3]~3_combout\) # (\FD|MUX6|SAIDA[0]~2_combout\) ) ) # ( !\FD|MUX6|SAIDA\(0) & ( (\FD|MUX6|SAIDA[0]~2_combout\ & \FD|MUX6|SAIDA[3]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX6|ALT_INV_SAIDA[0]~2_combout\,
	datad => \FD|MUX6|ALT_INV_SAIDA[3]~3_combout\,
	dataf => \FD|MUX6|ALT_INV_SAIDA\(0),
	combout => \FD|MUX6|SAIDA\(0));

-- Location: LABCELL_X62_Y4_N27
\FD|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FD|ULA|Add0~1_combout\ = ( \FD|MUX6|SAIDA\(2) & ( (!\FD|MUX6|SAIDA\(0)) # (!\FD|MUX6|SAIDA\(1)) ) ) # ( !\FD|MUX6|SAIDA\(2) & ( (\FD|MUX6|SAIDA\(0) & \FD|MUX6|SAIDA\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|MUX6|ALT_INV_SAIDA\(0),
	datad => \FD|MUX6|ALT_INV_SAIDA\(1),
	dataf => \FD|MUX6|ALT_INV_SAIDA\(2),
	combout => \FD|ULA|Add0~1_combout\);

-- Location: FF_X61_Y4_N29
\FD|REG_SEC_U|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \FD|ULA|Add0~1_combout\,
	clrn => \relogio|ALT_INV_fstate.state2~q\,
	sload => VCC,
	ena => \relogio|ALT_INV_fstate.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|REG_SEC_U|DOUT\(2));

-- Location: MLABCELL_X59_Y4_N21
\display0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = ( \FD|REG_SEC_U|DOUT\(1) & ( (!\FD|REG_SEC_U|DOUT\(2) & (\FD|REG_SEC_U|DOUT\(3) & \FD|REG_SEC_U|DOUT\(0))) ) ) # ( !\FD|REG_SEC_U|DOUT\(1) & ( (!\FD|REG_SEC_U|DOUT\(2) & (!\FD|REG_SEC_U|DOUT\(3) & 
-- \FD|REG_SEC_U|DOUT\(0))) # (\FD|REG_SEC_U|DOUT\(2) & (!\FD|REG_SEC_U|DOUT\(3) $ (\FD|REG_SEC_U|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	datac => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datad => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X59_Y4_N36
\display0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~1_combout\ = ( \FD|REG_SEC_U|DOUT\(0) & ( \FD|REG_SEC_U|DOUT\(2) & ( !\FD|REG_SEC_U|DOUT\(3) $ (\FD|REG_SEC_U|DOUT\(1)) ) ) ) # ( !\FD|REG_SEC_U|DOUT\(0) & ( \FD|REG_SEC_U|DOUT\(2) & ( (\FD|REG_SEC_U|DOUT\(1)) # 
-- (\FD|REG_SEC_U|DOUT\(3)) ) ) ) # ( \FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(2) & ( (\FD|REG_SEC_U|DOUT\(3) & \FD|REG_SEC_U|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111111001111111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	datae => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	combout => \display0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X60_Y4_N12
\display0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~2_combout\ = ( \FD|REG_SEC_U|DOUT\(1) & ( (!\FD|REG_SEC_U|DOUT\(2) & (!\FD|REG_SEC_U|DOUT\(0) & !\FD|REG_SEC_U|DOUT\(3))) # (\FD|REG_SEC_U|DOUT\(2) & ((\FD|REG_SEC_U|DOUT\(3)))) ) ) # ( !\FD|REG_SEC_U|DOUT\(1) & ( 
-- (!\FD|REG_SEC_U|DOUT\(0) & (\FD|REG_SEC_U|DOUT\(2) & \FD|REG_SEC_U|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010100010000011001100000000001000101000100000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	datab => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datae => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X59_Y4_N6
\display0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~3_combout\ = ( \FD|REG_SEC_U|DOUT\(0) & ( \FD|REG_SEC_U|DOUT\(2) & ( \FD|REG_SEC_U|DOUT\(1) ) ) ) # ( !\FD|REG_SEC_U|DOUT\(0) & ( \FD|REG_SEC_U|DOUT\(2) & ( (!\FD|REG_SEC_U|DOUT\(3) & !\FD|REG_SEC_U|DOUT\(1)) ) ) ) # ( 
-- \FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(2) & ( (!\FD|REG_SEC_U|DOUT\(3) & !\FD|REG_SEC_U|DOUT\(1)) ) ) ) # ( !\FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(2) & ( (\FD|REG_SEC_U|DOUT\(3) & \FD|REG_SEC_U|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	datae => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	combout => \display0|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X59_Y4_N3
\display0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~4_combout\ = ( \FD|REG_SEC_U|DOUT\(0) & ( \FD|REG_SEC_U|DOUT\(1) & ( !\FD|REG_SEC_U|DOUT\(3) ) ) ) # ( \FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(1) & ( (!\FD|REG_SEC_U|DOUT\(3)) # (!\FD|REG_SEC_U|DOUT\(2)) ) ) ) # ( 
-- !\FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(1) & ( (!\FD|REG_SEC_U|DOUT\(3) & \FD|REG_SEC_U|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111111111111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datad => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	datae => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X59_Y4_N24
\display0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~5_combout\ = ( \FD|REG_SEC_U|DOUT\(0) & ( \FD|REG_SEC_U|DOUT\(2) & ( !\FD|REG_SEC_U|DOUT\(3) $ (!\FD|REG_SEC_U|DOUT\(1)) ) ) ) # ( \FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(2) & ( !\FD|REG_SEC_U|DOUT\(3) ) ) ) # ( 
-- !\FD|REG_SEC_U|DOUT\(0) & ( !\FD|REG_SEC_U|DOUT\(2) & ( (!\FD|REG_SEC_U|DOUT\(3) & \FD|REG_SEC_U|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011001100110000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	datae => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	combout => \display0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X60_Y4_N3
\display0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~6_combout\ = ( \FD|REG_SEC_U|DOUT\(0) & ( (!\FD|REG_SEC_U|DOUT\(3) & (!\FD|REG_SEC_U|DOUT\(2) $ (\FD|REG_SEC_U|DOUT\(1)))) ) ) # ( !\FD|REG_SEC_U|DOUT\(0) & ( (!\FD|REG_SEC_U|DOUT\(1) & (!\FD|REG_SEC_U|DOUT\(3) $ 
-- (\FD|REG_SEC_U|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_SEC_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_SEC_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_SEC_U|ALT_INV_DOUT\(1),
	dataf => \FD|REG_SEC_U|ALT_INV_DOUT\(0),
	combout => \display0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N18
\display1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = ( \FD|REG_SEC_D|DOUT\(2) & ( (!\FD|REG_SEC_D|DOUT\(1) & (!\FD|REG_SEC_D|DOUT\(0) $ (\FD|REG_SEC_D|DOUT\(3)))) ) ) # ( !\FD|REG_SEC_D|DOUT\(2) & ( (\FD|REG_SEC_D|DOUT\(0) & (!\FD|REG_SEC_D|DOUT\(1) $ 
-- (\FD|REG_SEC_D|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	datad => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	combout => \display1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X63_Y4_N45
\display1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~1_combout\ = ( \FD|REG_SEC_D|DOUT\(2) & ( (!\FD|REG_SEC_D|DOUT\(0) & ((\FD|REG_SEC_D|DOUT\(3)) # (\FD|REG_SEC_D|DOUT\(1)))) # (\FD|REG_SEC_D|DOUT\(0) & (!\FD|REG_SEC_D|DOUT\(1) $ (\FD|REG_SEC_D|DOUT\(3)))) ) ) # ( 
-- !\FD|REG_SEC_D|DOUT\(2) & ( (\FD|REG_SEC_D|DOUT\(0) & (\FD|REG_SEC_D|DOUT\(1) & \FD|REG_SEC_D|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	datad => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	combout => \display1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X60_Y3_N48
\display1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~2_combout\ = ( \FD|REG_SEC_D|DOUT\(0) & ( (\FD|REG_SEC_D|DOUT\(3) & (\FD|REG_SEC_D|DOUT\(2) & \FD|REG_SEC_D|DOUT\(1))) ) ) # ( !\FD|REG_SEC_D|DOUT\(0) & ( (!\FD|REG_SEC_D|DOUT\(3) & (!\FD|REG_SEC_D|DOUT\(2) & 
-- \FD|REG_SEC_D|DOUT\(1))) # (\FD|REG_SEC_D|DOUT\(3) & (\FD|REG_SEC_D|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100011001000110010001100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	datab => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	combout => \display1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X63_Y4_N51
\display1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~3_combout\ = (!\FD|REG_SEC_D|DOUT\(1) & (!\FD|REG_SEC_D|DOUT\(3) & (!\FD|REG_SEC_D|DOUT\(2) $ (!\FD|REG_SEC_D|DOUT\(0))))) # (\FD|REG_SEC_D|DOUT\(1) & ((!\FD|REG_SEC_D|DOUT\(2) & (!\FD|REG_SEC_D|DOUT\(0) & 
-- \FD|REG_SEC_D|DOUT\(3))) # (\FD|REG_SEC_D|DOUT\(2) & (\FD|REG_SEC_D|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100001001011000010000100101100001000010010110000100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	datab => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	datad => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	combout => \display1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X60_Y3_N30
\display1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~4_combout\ = ( \FD|REG_SEC_D|DOUT\(0) & ( (!\FD|REG_SEC_D|DOUT\(3)) # ((!\FD|REG_SEC_D|DOUT\(2) & !\FD|REG_SEC_D|DOUT\(1))) ) ) # ( !\FD|REG_SEC_D|DOUT\(0) & ( (!\FD|REG_SEC_D|DOUT\(3) & (\FD|REG_SEC_D|DOUT\(2) & 
-- !\FD|REG_SEC_D|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	datab => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	combout => \display1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X60_Y4_N0
\display1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~5_combout\ = ( \FD|REG_SEC_D|DOUT\(3) & ( (\FD|REG_SEC_D|DOUT\(0) & (!\FD|REG_SEC_D|DOUT\(1) & \FD|REG_SEC_D|DOUT\(2))) ) ) # ( !\FD|REG_SEC_D|DOUT\(3) & ( (!\FD|REG_SEC_D|DOUT\(0) & (\FD|REG_SEC_D|DOUT\(1) & 
-- !\FD|REG_SEC_D|DOUT\(2))) # (\FD|REG_SEC_D|DOUT\(0) & ((!\FD|REG_SEC_D|DOUT\(2)) # (\FD|REG_SEC_D|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	datad => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	combout => \display1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X60_Y3_N12
\display1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~6_combout\ = ( \FD|REG_SEC_D|DOUT\(0) & ( (!\FD|REG_SEC_D|DOUT\(3) & (!\FD|REG_SEC_D|DOUT\(2) $ (\FD|REG_SEC_D|DOUT\(1)))) ) ) # ( !\FD|REG_SEC_D|DOUT\(0) & ( (!\FD|REG_SEC_D|DOUT\(1) & (!\FD|REG_SEC_D|DOUT\(3) $ 
-- (\FD|REG_SEC_D|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010010000100100001001000010000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_SEC_D|ALT_INV_DOUT\(3),
	datab => \FD|REG_SEC_D|ALT_INV_DOUT\(2),
	datac => \FD|REG_SEC_D|ALT_INV_DOUT\(1),
	dataf => \FD|REG_SEC_D|ALT_INV_DOUT\(0),
	combout => \display1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N24
\display2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = ( \FD|REG_MIN_U|DOUT\(2) & ( (!\FD|REG_MIN_U|DOUT\(1) & (!\FD|REG_MIN_U|DOUT\(3) $ (\FD|REG_MIN_U|DOUT\(0)))) ) ) # ( !\FD|REG_MIN_U|DOUT\(2) & ( (\FD|REG_MIN_U|DOUT\(0) & (!\FD|REG_MIN_U|DOUT\(1) $ 
-- (\FD|REG_MIN_U|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	datab => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	combout => \display2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X63_Y4_N27
\display2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = ( \FD|REG_MIN_U|DOUT\(0) & ( (!\FD|REG_MIN_U|DOUT\(1) & (!\FD|REG_MIN_U|DOUT\(3) & \FD|REG_MIN_U|DOUT\(2))) # (\FD|REG_MIN_U|DOUT\(1) & (\FD|REG_MIN_U|DOUT\(3))) ) ) # ( !\FD|REG_MIN_U|DOUT\(0) & ( 
-- (\FD|REG_MIN_U|DOUT\(2) & ((\FD|REG_MIN_U|DOUT\(3)) # (\FD|REG_MIN_U|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	datab => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	combout => \display2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X63_Y4_N54
\display2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = ( \FD|REG_MIN_U|DOUT\(2) & ( (\FD|REG_MIN_U|DOUT\(3) & ((!\FD|REG_MIN_U|DOUT\(0)) # (\FD|REG_MIN_U|DOUT\(1)))) ) ) # ( !\FD|REG_MIN_U|DOUT\(2) & ( (\FD|REG_MIN_U|DOUT\(1) & (!\FD|REG_MIN_U|DOUT\(3) & 
-- !\FD|REG_MIN_U|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	datab => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	combout => \display2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X63_Y4_N57
\display2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = ( \FD|REG_MIN_U|DOUT\(0) & ( (!\FD|REG_MIN_U|DOUT\(1) & (!\FD|REG_MIN_U|DOUT\(3) & !\FD|REG_MIN_U|DOUT\(2))) # (\FD|REG_MIN_U|DOUT\(1) & ((\FD|REG_MIN_U|DOUT\(2)))) ) ) # ( !\FD|REG_MIN_U|DOUT\(0) & ( 
-- (!\FD|REG_MIN_U|DOUT\(1) & (!\FD|REG_MIN_U|DOUT\(3) & \FD|REG_MIN_U|DOUT\(2))) # (\FD|REG_MIN_U|DOUT\(1) & (\FD|REG_MIN_U|DOUT\(3) & !\FD|REG_MIN_U|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	datab => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	combout => \display2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X63_Y4_N6
\display2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = ( \FD|REG_MIN_U|DOUT\(1) & ( (\FD|REG_MIN_U|DOUT\(0) & !\FD|REG_MIN_U|DOUT\(3)) ) ) # ( !\FD|REG_MIN_U|DOUT\(1) & ( (!\FD|REG_MIN_U|DOUT\(2) & (\FD|REG_MIN_U|DOUT\(0))) # (\FD|REG_MIN_U|DOUT\(2) & 
-- ((!\FD|REG_MIN_U|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100010101010000000001110111010001000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	datab => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datae => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	combout => \display2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X63_Y4_N42
\display2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = ( \FD|REG_MIN_U|DOUT\(0) & ( !\FD|REG_MIN_U|DOUT\(3) $ (((!\FD|REG_MIN_U|DOUT\(1) & \FD|REG_MIN_U|DOUT\(2)))) ) ) # ( !\FD|REG_MIN_U|DOUT\(0) & ( (!\FD|REG_MIN_U|DOUT\(3) & (\FD|REG_MIN_U|DOUT\(1) & 
-- !\FD|REG_MIN_U|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	datad => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	combout => \display2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X63_Y4_N21
\display2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = ( \FD|REG_MIN_U|DOUT\(2) & ( (!\FD|REG_MIN_U|DOUT\(0) & (\FD|REG_MIN_U|DOUT\(3) & !\FD|REG_MIN_U|DOUT\(1))) # (\FD|REG_MIN_U|DOUT\(0) & (!\FD|REG_MIN_U|DOUT\(3) & \FD|REG_MIN_U|DOUT\(1))) ) ) # ( 
-- !\FD|REG_MIN_U|DOUT\(2) & ( (!\FD|REG_MIN_U|DOUT\(3) & !\FD|REG_MIN_U|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_U|ALT_INV_DOUT\(0),
	datac => \FD|REG_MIN_U|ALT_INV_DOUT\(3),
	datad => \FD|REG_MIN_U|ALT_INV_DOUT\(1),
	dataf => \FD|REG_MIN_U|ALT_INV_DOUT\(2),
	combout => \display2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X60_Y4_N18
\display3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~0_combout\ = ( \FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(2) & (\FD|REG_MIN_D|DOUT\(0) & \FD|REG_MIN_D|DOUT\(3))) ) ) # ( !\FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(2) & (\FD|REG_MIN_D|DOUT\(0) & 
-- !\FD|REG_MIN_D|DOUT\(3))) # (\FD|REG_MIN_D|DOUT\(2) & (!\FD|REG_MIN_D|DOUT\(0) $ (\FD|REG_MIN_D|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	datab => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X60_Y4_N30
\display3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~1_combout\ = ( \FD|REG_MIN_D|DOUT\(0) & ( (!\FD|REG_MIN_D|DOUT\(3) & (!\FD|REG_MIN_D|DOUT\(1) & \FD|REG_MIN_D|DOUT\(2))) # (\FD|REG_MIN_D|DOUT\(3) & (\FD|REG_MIN_D|DOUT\(1))) ) ) # ( !\FD|REG_MIN_D|DOUT\(0) & ( 
-- (\FD|REG_MIN_D|DOUT\(2) & ((\FD|REG_MIN_D|DOUT\(1)) # (\FD|REG_MIN_D|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datab => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	combout => \display3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X63_Y4_N36
\display3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~2_combout\ = ( \FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(3) & (!\FD|REG_MIN_D|DOUT\(0) & !\FD|REG_MIN_D|DOUT\(2))) # (\FD|REG_MIN_D|DOUT\(3) & ((\FD|REG_MIN_D|DOUT\(2)))) ) ) # ( !\FD|REG_MIN_D|DOUT\(1) & ( 
-- (!\FD|REG_MIN_D|DOUT\(0) & (\FD|REG_MIN_D|DOUT\(3) & \FD|REG_MIN_D|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datab => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X63_Y4_N39
\display3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~3_combout\ = ( \FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(0) & (\FD|REG_MIN_D|DOUT\(3) & !\FD|REG_MIN_D|DOUT\(2))) # (\FD|REG_MIN_D|DOUT\(0) & ((\FD|REG_MIN_D|DOUT\(2)))) ) ) # ( !\FD|REG_MIN_D|DOUT\(1) & ( 
-- (!\FD|REG_MIN_D|DOUT\(3) & (!\FD|REG_MIN_D|DOUT\(0) $ (!\FD|REG_MIN_D|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datad => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X63_Y4_N0
\display3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~4_combout\ = ( \FD|REG_MIN_D|DOUT\(1) & ( (\FD|REG_MIN_D|DOUT\(0) & !\FD|REG_MIN_D|DOUT\(3)) ) ) # ( !\FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(2) & (\FD|REG_MIN_D|DOUT\(0))) # (\FD|REG_MIN_D|DOUT\(2) & 
-- ((!\FD|REG_MIN_D|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010111000101110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datab => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X63_Y4_N3
\display3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~5_combout\ = ( \FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(3) & ((!\FD|REG_MIN_D|DOUT\(2)) # (\FD|REG_MIN_D|DOUT\(0)))) ) ) # ( !\FD|REG_MIN_D|DOUT\(1) & ( (\FD|REG_MIN_D|DOUT\(0) & (!\FD|REG_MIN_D|DOUT\(3) $ 
-- (\FD|REG_MIN_D|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000101000001010000010100000111000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datab => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X63_Y4_N30
\display3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~6_combout\ = ( \FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(3) & (\FD|REG_MIN_D|DOUT\(0) & \FD|REG_MIN_D|DOUT\(2))) ) ) # ( !\FD|REG_MIN_D|DOUT\(1) & ( (!\FD|REG_MIN_D|DOUT\(3) & ((!\FD|REG_MIN_D|DOUT\(2)))) # 
-- (\FD|REG_MIN_D|DOUT\(3) & (!\FD|REG_MIN_D|DOUT\(0) & \FD|REG_MIN_D|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110000110011000011000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_MIN_D|ALT_INV_DOUT\(3),
	datac => \FD|REG_MIN_D|ALT_INV_DOUT\(0),
	datad => \FD|REG_MIN_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_MIN_D|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X63_Y4_N33
\display4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = ( \FD|REG_H_U|DOUT\(0) & ( (!\FD|REG_H_U|DOUT\(3) & (!\FD|REG_H_U|DOUT\(1) & !\FD|REG_H_U|DOUT\(2))) # (\FD|REG_H_U|DOUT\(3) & (!\FD|REG_H_U|DOUT\(1) $ (!\FD|REG_H_U|DOUT\(2)))) ) ) # ( !\FD|REG_H_U|DOUT\(0) & ( 
-- (!\FD|REG_H_U|DOUT\(3) & (!\FD|REG_H_U|DOUT\(1) & \FD|REG_H_U|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(1),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(2),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(0),
	combout => \display4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X63_Y4_N12
\display4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = ( \FD|REG_H_U|DOUT\(1) & ( (!\FD|REG_H_U|DOUT\(0) & (\FD|REG_H_U|DOUT\(2))) # (\FD|REG_H_U|DOUT\(0) & ((\FD|REG_H_U|DOUT\(3)))) ) ) # ( !\FD|REG_H_U|DOUT\(1) & ( (\FD|REG_H_U|DOUT\(2) & (!\FD|REG_H_U|DOUT\(0) $ 
-- (!\FD|REG_H_U|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_H_U|ALT_INV_DOUT\(2),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(0),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(3),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(1),
	combout => \display4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X63_Y4_N15
\display4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = ( \FD|REG_H_U|DOUT\(1) & ( (!\FD|REG_H_U|DOUT\(2) & (!\FD|REG_H_U|DOUT\(0) & !\FD|REG_H_U|DOUT\(3))) # (\FD|REG_H_U|DOUT\(2) & ((\FD|REG_H_U|DOUT\(3)))) ) ) # ( !\FD|REG_H_U|DOUT\(1) & ( (!\FD|REG_H_U|DOUT\(0) & 
-- (\FD|REG_H_U|DOUT\(2) & \FD|REG_H_U|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(0),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(3),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(1),
	combout => \display4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X62_Y4_N42
\display4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = ( \FD|REG_H_U|DOUT\(3) & ( (\FD|REG_H_U|DOUT\(1) & (!\FD|REG_H_U|DOUT\(2) $ (\FD|REG_H_U|DOUT\(0)))) ) ) # ( !\FD|REG_H_U|DOUT\(3) & ( (!\FD|REG_H_U|DOUT\(1) & (!\FD|REG_H_U|DOUT\(2) $ (!\FD|REG_H_U|DOUT\(0)))) # 
-- (\FD|REG_H_U|DOUT\(1) & (\FD|REG_H_U|DOUT\(2) & \FD|REG_H_U|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(1),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(3),
	combout => \display4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X62_Y4_N0
\display4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = ( \FD|REG_H_U|DOUT\(0) & ( (!\FD|REG_H_U|DOUT\(3)) # ((!\FD|REG_H_U|DOUT\(2) & !\FD|REG_H_U|DOUT\(1))) ) ) # ( !\FD|REG_H_U|DOUT\(0) & ( (!\FD|REG_H_U|DOUT\(3) & (\FD|REG_H_U|DOUT\(2) & !\FD|REG_H_U|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(3),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(1),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(0),
	combout => \display4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X62_Y4_N48
\display4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = ( \FD|REG_H_U|DOUT\(0) & ( !\FD|REG_H_U|DOUT\(3) $ (((!\FD|REG_H_U|DOUT\(1) & \FD|REG_H_U|DOUT\(2)))) ) ) # ( !\FD|REG_H_U|DOUT\(0) & ( (\FD|REG_H_U|DOUT\(1) & (!\FD|REG_H_U|DOUT\(2) & !\FD|REG_H_U|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(1),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(2),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(3),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(0),
	combout => \display4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X62_Y4_N33
\display4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = ( \FD|REG_H_U|DOUT\(2) & ( (!\FD|REG_H_U|DOUT\(1) & (\FD|REG_H_U|DOUT\(3) & !\FD|REG_H_U|DOUT\(0))) # (\FD|REG_H_U|DOUT\(1) & (!\FD|REG_H_U|DOUT\(3) & \FD|REG_H_U|DOUT\(0))) ) ) # ( !\FD|REG_H_U|DOUT\(2) & ( 
-- (!\FD|REG_H_U|DOUT\(1) & !\FD|REG_H_U|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_U|ALT_INV_DOUT\(1),
	datac => \FD|REG_H_U|ALT_INV_DOUT\(3),
	datad => \FD|REG_H_U|ALT_INV_DOUT\(0),
	dataf => \FD|REG_H_U|ALT_INV_DOUT\(2),
	combout => \display4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X62_Y4_N45
\display5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = ( \FD|REG_H_D|DOUT\(0) & ( (!\FD|REG_H_D|DOUT\(2) & (!\FD|REG_H_D|DOUT\(1) $ (\FD|REG_H_D|DOUT\(3)))) # (\FD|REG_H_D|DOUT\(2) & (!\FD|REG_H_D|DOUT\(1) & \FD|REG_H_D|DOUT\(3))) ) ) # ( !\FD|REG_H_D|DOUT\(0) & ( 
-- (\FD|REG_H_D|DOUT\(2) & (!\FD|REG_H_D|DOUT\(1) & !\FD|REG_H_D|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000001111001100000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_H_D|ALT_INV_DOUT\(2),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(1),
	datad => \FD|REG_H_D|ALT_INV_DOUT\(3),
	dataf => \FD|REG_H_D|ALT_INV_DOUT\(0),
	combout => \display5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X59_Y4_N51
\display5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~1_combout\ = ( \FD|REG_H_D|DOUT\(2) & ( \FD|REG_H_D|DOUT\(1) & ( (!\FD|REG_H_D|DOUT\(0)) # (\FD|REG_H_D|DOUT\(3)) ) ) ) # ( !\FD|REG_H_D|DOUT\(2) & ( \FD|REG_H_D|DOUT\(1) & ( (\FD|REG_H_D|DOUT\(0) & \FD|REG_H_D|DOUT\(3)) ) ) ) # 
-- ( \FD|REG_H_D|DOUT\(2) & ( !\FD|REG_H_D|DOUT\(1) & ( !\FD|REG_H_D|DOUT\(0) $ (!\FD|REG_H_D|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_D|ALT_INV_DOUT\(0),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(3),
	datae => \FD|REG_H_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_H_D|ALT_INV_DOUT\(1),
	combout => \display5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X61_Y4_N54
\display5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~2_combout\ = (!\FD|REG_H_D|DOUT\(2) & (!\FD|REG_H_D|DOUT\(0) & (\FD|REG_H_D|DOUT\(1) & !\FD|REG_H_D|DOUT\(3)))) # (\FD|REG_H_D|DOUT\(2) & (\FD|REG_H_D|DOUT\(3) & ((!\FD|REG_H_D|DOUT\(0)) # (\FD|REG_H_D|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_D|ALT_INV_DOUT\(0),
	datab => \FD|REG_H_D|ALT_INV_DOUT\(1),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(2),
	datad => \FD|REG_H_D|ALT_INV_DOUT\(3),
	combout => \display5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X61_Y4_N27
\display5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~3_combout\ = ( \FD|REG_H_D|DOUT\(3) & ( (\FD|REG_H_D|DOUT\(1) & (!\FD|REG_H_D|DOUT\(0) $ (\FD|REG_H_D|DOUT\(2)))) ) ) # ( !\FD|REG_H_D|DOUT\(3) & ( (!\FD|REG_H_D|DOUT\(0) & (\FD|REG_H_D|DOUT\(2) & !\FD|REG_H_D|DOUT\(1))) # 
-- (\FD|REG_H_D|DOUT\(0) & (!\FD|REG_H_D|DOUT\(2) $ (\FD|REG_H_D|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_D|ALT_INV_DOUT\(0),
	datab => \FD|REG_H_D|ALT_INV_DOUT\(2),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(1),
	dataf => \FD|REG_H_D|ALT_INV_DOUT\(3),
	combout => \display5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X59_Y4_N30
\display5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~4_combout\ = ( \FD|REG_H_D|DOUT\(2) & ( \FD|REG_H_D|DOUT\(1) & ( (!\FD|REG_H_D|DOUT\(3) & \FD|REG_H_D|DOUT\(0)) ) ) ) # ( !\FD|REG_H_D|DOUT\(2) & ( \FD|REG_H_D|DOUT\(1) & ( (!\FD|REG_H_D|DOUT\(3) & \FD|REG_H_D|DOUT\(0)) ) ) ) # 
-- ( \FD|REG_H_D|DOUT\(2) & ( !\FD|REG_H_D|DOUT\(1) & ( !\FD|REG_H_D|DOUT\(3) ) ) ) # ( !\FD|REG_H_D|DOUT\(2) & ( !\FD|REG_H_D|DOUT\(1) & ( \FD|REG_H_D|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FD|REG_H_D|ALT_INV_DOUT\(3),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(0),
	datae => \FD|REG_H_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_H_D|ALT_INV_DOUT\(1),
	combout => \display5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X62_Y4_N9
\display5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~5_combout\ = ( \FD|REG_H_D|DOUT\(0) & ( !\FD|REG_H_D|DOUT\(3) $ (((!\FD|REG_H_D|DOUT\(1) & \FD|REG_H_D|DOUT\(2)))) ) ) # ( !\FD|REG_H_D|DOUT\(0) & ( (!\FD|REG_H_D|DOUT\(3) & (\FD|REG_H_D|DOUT\(1) & !\FD|REG_H_D|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_D|ALT_INV_DOUT\(3),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(1),
	datad => \FD|REG_H_D|ALT_INV_DOUT\(2),
	dataf => \FD|REG_H_D|ALT_INV_DOUT\(0),
	combout => \display5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X59_Y4_N45
\display5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~6_combout\ = ( \FD|REG_H_D|DOUT\(2) & ( (!\FD|REG_H_D|DOUT\(0) & (!\FD|REG_H_D|DOUT\(1) & \FD|REG_H_D|DOUT\(3))) # (\FD|REG_H_D|DOUT\(0) & (\FD|REG_H_D|DOUT\(1) & !\FD|REG_H_D|DOUT\(3))) ) ) # ( !\FD|REG_H_D|DOUT\(2) & ( 
-- (!\FD|REG_H_D|DOUT\(1) & !\FD|REG_H_D|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000110000001100011000000110000000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FD|REG_H_D|ALT_INV_DOUT\(0),
	datab => \FD|REG_H_D|ALT_INV_DOUT\(1),
	datac => \FD|REG_H_D|ALT_INV_DOUT\(3),
	datae => \FD|REG_H_D|ALT_INV_DOUT\(2),
	combout => \display5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X4_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X9_Y35_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


