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

-- DATE "09/28/2017 21:11:06"

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

ENTITY 	Relogio IS
    PORT (
	clk : IN std_logic;
	segundos : OUT std_logic_vector(7 DOWNTO 0);
	minutos : OUT std_logic_vector(7 DOWNTO 0)
	);
END Relogio;

-- Design Ports Information
-- segundos[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[2]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[3]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[4]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[6]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segundos[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[2]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[4]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[5]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- minutos[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_segundos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_minutos : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \regS|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \regS|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \regS|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \regS|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP|Add1~26_cout\ : std_logic;
SIGNAL \COMP|Add1~22\ : std_logic;
SIGNAL \COMP|Add1~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \regS|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \regS|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \COMP|Add1~18\ : std_logic;
SIGNAL \COMP|Add1~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \COMP|Add1~14\ : std_logic;
SIGNAL \COMP|Add1~10\ : std_logic;
SIGNAL \COMP|Add1~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \COMP|Add1~6\ : std_logic;
SIGNAL \COMP|Add1~1_sumout\ : std_logic;
SIGNAL \COMP|Add1~9_sumout\ : std_logic;
SIGNAL \COMP|Add1~21_sumout\ : std_logic;
SIGNAL \MUX_60_S|Equal0~0_combout\ : std_logic;
SIGNAL \MUX_60_S|Equal0~1_combout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~2\ : std_logic;
SIGNAL \ULA_M|Add0~5_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~6\ : std_logic;
SIGNAL \ULA_M|Add0~9_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~10\ : std_logic;
SIGNAL \ULA_M|Add0~13_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~14\ : std_logic;
SIGNAL \ULA_M|Add0~17_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~18\ : std_logic;
SIGNAL \ULA_M|Add0~21_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~22\ : std_logic;
SIGNAL \ULA_M|Add0~25_sumout\ : std_logic;
SIGNAL \COMP_M|Add1~18\ : std_logic;
SIGNAL \COMP_M|Add1~22\ : std_logic;
SIGNAL \COMP_M|Add1~2\ : std_logic;
SIGNAL \COMP_M|Add1~6\ : std_logic;
SIGNAL \COMP_M|Add1~9_sumout\ : std_logic;
SIGNAL \COMP_M|Add1~5_sumout\ : std_logic;
SIGNAL \COMP_M|Add1~1_sumout\ : std_logic;
SIGNAL \ULA_M|Add0~26\ : std_logic;
SIGNAL \ULA_M|Add0~29_sumout\ : std_logic;
SIGNAL \COMP_M|Add1~10\ : std_logic;
SIGNAL \COMP_M|Add1~13_sumout\ : std_logic;
SIGNAL \COMP_M|Add1~17_sumout\ : std_logic;
SIGNAL \COMP_M|Add1~21_sumout\ : std_logic;
SIGNAL \MUX_0_M|Equal0~0_combout\ : std_logic;
SIGNAL \MUX_0_M|Equal0~1_combout\ : std_logic;
SIGNAL \ULA_M|Add0~1_sumout\ : std_logic;
SIGNAL \regS|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG_M|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regS|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \regS|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \regS|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \regS|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MUX_0_M|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MUX_60_S|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \MUX_60_S|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \COMP_M|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \COMP_M|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \COMP_M|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \COMP_M|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \COMP_M|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \COMP_M|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REG_M|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COMP|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \regS|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
segundos <= ww_segundos;
minutos <= ww_minutos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\regS|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \regS|DOUT[4]~DUPLICATE_q\;
\regS|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \regS|DOUT[3]~DUPLICATE_q\;
\regS|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \regS|DOUT[2]~DUPLICATE_q\;
\regS|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \regS|DOUT[1]~DUPLICATE_q\;
\MUX_0_M|ALT_INV_Equal0~0_combout\ <= NOT \MUX_0_M|Equal0~0_combout\;
\MUX_60_S|ALT_INV_Equal0~1_combout\ <= NOT \MUX_60_S|Equal0~1_combout\;
\MUX_60_S|ALT_INV_Equal0~0_combout\ <= NOT \MUX_60_S|Equal0~0_combout\;
\COMP_M|ALT_INV_Add1~21_sumout\ <= NOT \COMP_M|Add1~21_sumout\;
\COMP_M|ALT_INV_Add1~17_sumout\ <= NOT \COMP_M|Add1~17_sumout\;
\COMP_M|ALT_INV_Add1~13_sumout\ <= NOT \COMP_M|Add1~13_sumout\;
\COMP_M|ALT_INV_Add1~9_sumout\ <= NOT \COMP_M|Add1~9_sumout\;
\COMP_M|ALT_INV_Add1~5_sumout\ <= NOT \COMP_M|Add1~5_sumout\;
\COMP_M|ALT_INV_Add1~1_sumout\ <= NOT \COMP_M|Add1~1_sumout\;
\REG_M|ALT_INV_DOUT\(7) <= NOT \REG_M|DOUT\(7);
\REG_M|ALT_INV_DOUT\(6) <= NOT \REG_M|DOUT\(6);
\REG_M|ALT_INV_DOUT\(5) <= NOT \REG_M|DOUT\(5);
\REG_M|ALT_INV_DOUT\(4) <= NOT \REG_M|DOUT\(4);
\REG_M|ALT_INV_DOUT\(3) <= NOT \REG_M|DOUT\(3);
\REG_M|ALT_INV_DOUT\(2) <= NOT \REG_M|DOUT\(2);
\REG_M|ALT_INV_DOUT\(1) <= NOT \REG_M|DOUT\(1);
\COMP|ALT_INV_Add1~21_sumout\ <= NOT \COMP|Add1~21_sumout\;
\COMP|ALT_INV_Add1~17_sumout\ <= NOT \COMP|Add1~17_sumout\;
\COMP|ALT_INV_Add1~13_sumout\ <= NOT \COMP|Add1~13_sumout\;
\COMP|ALT_INV_Add1~9_sumout\ <= NOT \COMP|Add1~9_sumout\;
\COMP|ALT_INV_Add1~5_sumout\ <= NOT \COMP|Add1~5_sumout\;
\COMP|ALT_INV_Add1~1_sumout\ <= NOT \COMP|Add1~1_sumout\;
\REG_M|ALT_INV_DOUT\(0) <= NOT \REG_M|DOUT\(0);
\regS|ALT_INV_DOUT\(7) <= NOT \regS|DOUT\(7);
\regS|ALT_INV_DOUT\(6) <= NOT \regS|DOUT\(6);
\regS|ALT_INV_DOUT\(5) <= NOT \regS|DOUT\(5);
\regS|ALT_INV_DOUT\(4) <= NOT \regS|DOUT\(4);
\regS|ALT_INV_DOUT\(3) <= NOT \regS|DOUT\(3);
\regS|ALT_INV_DOUT\(2) <= NOT \regS|DOUT\(2);
\regS|ALT_INV_DOUT\(1) <= NOT \regS|DOUT\(1);
\regS|ALT_INV_DOUT\(0) <= NOT \regS|DOUT\(0);
\ULA|ALT_INV_Add0~17_sumout\ <= NOT \ULA|Add0~17_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;

-- Location: IOOBUF_X62_Y0_N19
\segundos[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(0));

-- Location: IOOBUF_X54_Y0_N36
\segundos[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(1));

-- Location: IOOBUF_X58_Y0_N42
\segundos[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(2));

-- Location: IOOBUF_X60_Y0_N2
\segundos[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(3));

-- Location: IOOBUF_X58_Y0_N59
\segundos[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(4));

-- Location: IOOBUF_X60_Y0_N19
\segundos[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(5));

-- Location: IOOBUF_X62_Y0_N36
\segundos[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(6));

-- Location: IOOBUF_X58_Y0_N76
\segundos[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_segundos(7));

-- Location: IOOBUF_X89_Y23_N22
\minutos[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(0));

-- Location: IOOBUF_X89_Y9_N39
\minutos[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(1));

-- Location: IOOBUF_X60_Y0_N53
\minutos[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(2));

-- Location: IOOBUF_X89_Y23_N56
\minutos[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(3));

-- Location: IOOBUF_X60_Y0_N36
\minutos[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(4));

-- Location: IOOBUF_X89_Y9_N56
\minutos[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(5));

-- Location: IOOBUF_X89_Y23_N5
\minutos[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(6));

-- Location: IOOBUF_X89_Y23_N39
\minutos[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_M|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_minutos(7));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: FF_X59_Y18_N59
\regS|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regS|DOUT[3]~feeder_combout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT[3]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y18_N0
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \regS|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \ULA|Add0~2\ = CARRY(( \regS|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: MLABCELL_X59_Y18_N3
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \regS|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \regS|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regS|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: FF_X59_Y18_N50
\regS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~5_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(1));

-- Location: MLABCELL_X59_Y18_N6
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \regS|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \regS|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: FF_X59_Y18_N26
\regS|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X59_Y18_N9
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \regS|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \regS|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: MLABCELL_X59_Y18_N57
\regS|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regS|DOUT[3]~feeder_combout\ = ( \ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \regS|DOUT[3]~feeder_combout\);

-- Location: FF_X59_Y18_N58
\regS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regS|DOUT[3]~feeder_combout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(3));

-- Location: FF_X59_Y18_N25
\regS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(2));

-- Location: FF_X59_Y18_N49
\regS|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~5_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y18_N0
\COMP|Add1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~26_cout\ = CARRY(( \regS|DOUT[1]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regS|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => GND,
	cout => \COMP|Add1~26_cout\);

-- Location: LABCELL_X60_Y18_N3
\COMP|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~21_sumout\ = SUM(( \regS|DOUT\(2) ) + ( VCC ) + ( \COMP|Add1~26_cout\ ))
-- \COMP|Add1~22\ = CARRY(( \regS|DOUT\(2) ) + ( VCC ) + ( \COMP|Add1~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT\(2),
	cin => \COMP|Add1~26_cout\,
	sumout => \COMP|Add1~21_sumout\,
	cout => \COMP|Add1~22\);

-- Location: LABCELL_X60_Y18_N6
\COMP|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~17_sumout\ = SUM(( \regS|DOUT\(3) ) + ( VCC ) + ( \COMP|Add1~22\ ))
-- \COMP|Add1~18\ = CARRY(( \regS|DOUT\(3) ) + ( VCC ) + ( \COMP|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regS|ALT_INV_DOUT\(3),
	cin => \COMP|Add1~22\,
	sumout => \COMP|Add1~17_sumout\,
	cout => \COMP|Add1~18\);

-- Location: FF_X59_Y18_N56
\regS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regS|DOUT[4]~feeder_combout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(4));

-- Location: MLABCELL_X59_Y18_N12
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \regS|DOUT\(4) ) + ( GND ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \regS|DOUT\(4) ) + ( GND ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT\(4),
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: MLABCELL_X59_Y18_N54
\regS|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \regS|DOUT[4]~feeder_combout\ = ( \ULA|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~17_sumout\,
	combout => \regS|DOUT[4]~feeder_combout\);

-- Location: FF_X59_Y18_N55
\regS|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \regS|DOUT[4]~feeder_combout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X60_Y18_N9
\COMP|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~13_sumout\ = SUM(( \regS|DOUT[4]~DUPLICATE_q\ ) + ( VCC ) + ( \COMP|Add1~18\ ))
-- \COMP|Add1~14\ = CARRY(( \regS|DOUT[4]~DUPLICATE_q\ ) + ( VCC ) + ( \COMP|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regS|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \COMP|Add1~18\,
	sumout => \COMP|Add1~13_sumout\,
	cout => \COMP|Add1~14\);

-- Location: MLABCELL_X59_Y18_N15
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \regS|DOUT\(5) ) + ( GND ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \regS|DOUT\(5) ) + ( GND ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \regS|ALT_INV_DOUT\(5),
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: FF_X59_Y18_N29
\regS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~21_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(5));

-- Location: MLABCELL_X59_Y18_N18
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \regS|DOUT\(6) ) + ( GND ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \regS|DOUT\(6) ) + ( GND ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT\(6),
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: FF_X59_Y18_N53
\regS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(6));

-- Location: LABCELL_X60_Y18_N12
\COMP|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~9_sumout\ = SUM(( \regS|DOUT\(5) ) + ( VCC ) + ( \COMP|Add1~14\ ))
-- \COMP|Add1~10\ = CARRY(( \regS|DOUT\(5) ) + ( VCC ) + ( \COMP|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regS|ALT_INV_DOUT\(5),
	cin => \COMP|Add1~14\,
	sumout => \COMP|Add1~9_sumout\,
	cout => \COMP|Add1~10\);

-- Location: LABCELL_X60_Y18_N15
\COMP|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~5_sumout\ = SUM(( \regS|DOUT\(6) ) + ( VCC ) + ( \COMP|Add1~10\ ))
-- \COMP|Add1~6\ = CARRY(( \regS|DOUT\(6) ) + ( VCC ) + ( \COMP|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regS|ALT_INV_DOUT\(6),
	cin => \COMP|Add1~10\,
	sumout => \COMP|Add1~5_sumout\,
	cout => \COMP|Add1~6\);

-- Location: MLABCELL_X59_Y18_N21
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \regS|DOUT\(7) ) + ( GND ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT\(7),
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\);

-- Location: FF_X59_Y18_N11
\regS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~29_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(7));

-- Location: LABCELL_X60_Y18_N18
\COMP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~1_sumout\ = SUM(( \regS|DOUT\(7) ) + ( VCC ) + ( \COMP|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regS|ALT_INV_DOUT\(7),
	cin => \COMP|Add1~6\,
	sumout => \COMP|Add1~1_sumout\);

-- Location: LABCELL_X60_Y18_N57
\MUX_60_S|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_60_S|Equal0~0_combout\ = ( !\COMP|Add1~21_sumout\ & ( !\regS|DOUT\(0) & ( \regS|DOUT[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regS|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \COMP|ALT_INV_Add1~21_sumout\,
	dataf => \regS|ALT_INV_DOUT\(0),
	combout => \MUX_60_S|Equal0~0_combout\);

-- Location: LABCELL_X60_Y18_N27
\MUX_60_S|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_60_S|Equal0~1_combout\ = ( !\COMP|Add1~9_sumout\ & ( \MUX_60_S|Equal0~0_combout\ & ( (!\COMP|Add1~17_sumout\ & (!\COMP|Add1~13_sumout\ & (!\COMP|Add1~5_sumout\ & !\COMP|Add1~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|ALT_INV_Add1~17_sumout\,
	datab => \COMP|ALT_INV_Add1~13_sumout\,
	datac => \COMP|ALT_INV_Add1~5_sumout\,
	datad => \COMP|ALT_INV_Add1~1_sumout\,
	datae => \COMP|ALT_INV_Add1~9_sumout\,
	dataf => \MUX_60_S|ALT_INV_Equal0~0_combout\,
	combout => \MUX_60_S|Equal0~1_combout\);

-- Location: FF_X59_Y18_N17
\regS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sclr => \MUX_60_S|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regS|DOUT\(0));

-- Location: LABCELL_X60_Y18_N30
\ULA_M|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~1_sumout\ = SUM(( \REG_M|DOUT\(0) ) + ( \MUX_60_S|Equal0~1_combout\ ) + ( !VCC ))
-- \ULA_M|Add0~2\ = CARRY(( \REG_M|DOUT\(0) ) + ( \MUX_60_S|Equal0~1_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX_60_S|ALT_INV_Equal0~1_combout\,
	datad => \REG_M|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA_M|Add0~1_sumout\,
	cout => \ULA_M|Add0~2\);

-- Location: LABCELL_X60_Y18_N33
\ULA_M|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~5_sumout\ = SUM(( \REG_M|DOUT\(1) ) + ( GND ) + ( \ULA_M|Add0~2\ ))
-- \ULA_M|Add0~6\ = CARRY(( \REG_M|DOUT\(1) ) + ( GND ) + ( \ULA_M|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_M|ALT_INV_DOUT\(1),
	cin => \ULA_M|Add0~2\,
	sumout => \ULA_M|Add0~5_sumout\,
	cout => \ULA_M|Add0~6\);

-- Location: FF_X60_Y18_N26
\REG_M|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA_M|Add0~5_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(1));

-- Location: LABCELL_X60_Y18_N36
\ULA_M|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~9_sumout\ = SUM(( \REG_M|DOUT\(2) ) + ( GND ) + ( \ULA_M|Add0~6\ ))
-- \ULA_M|Add0~10\ = CARRY(( \REG_M|DOUT\(2) ) + ( GND ) + ( \ULA_M|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_M|ALT_INV_DOUT\(2),
	cin => \ULA_M|Add0~6\,
	sumout => \ULA_M|Add0~9_sumout\,
	cout => \ULA_M|Add0~10\);

-- Location: FF_X60_Y18_N56
\REG_M|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA_M|Add0~9_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(2));

-- Location: LABCELL_X60_Y18_N39
\ULA_M|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~13_sumout\ = SUM(( \REG_M|DOUT\(3) ) + ( GND ) + ( \ULA_M|Add0~10\ ))
-- \ULA_M|Add0~14\ = CARRY(( \REG_M|DOUT\(3) ) + ( GND ) + ( \ULA_M|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_M|ALT_INV_DOUT\(3),
	cin => \ULA_M|Add0~10\,
	sumout => \ULA_M|Add0~13_sumout\,
	cout => \ULA_M|Add0~14\);

-- Location: FF_X60_Y18_N59
\REG_M|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA_M|Add0~13_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(3));

-- Location: LABCELL_X60_Y18_N42
\ULA_M|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~17_sumout\ = SUM(( \REG_M|DOUT\(4) ) + ( GND ) + ( \ULA_M|Add0~14\ ))
-- \ULA_M|Add0~18\ = CARRY(( \REG_M|DOUT\(4) ) + ( GND ) + ( \ULA_M|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_M|ALT_INV_DOUT\(4),
	cin => \ULA_M|Add0~14\,
	sumout => \ULA_M|Add0~17_sumout\,
	cout => \ULA_M|Add0~18\);

-- Location: FF_X60_Y18_N29
\REG_M|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA_M|Add0~17_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(4));

-- Location: LABCELL_X60_Y18_N45
\ULA_M|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~21_sumout\ = SUM(( \REG_M|DOUT\(5) ) + ( GND ) + ( \ULA_M|Add0~18\ ))
-- \ULA_M|Add0~22\ = CARRY(( \REG_M|DOUT\(5) ) + ( GND ) + ( \ULA_M|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_M|ALT_INV_DOUT\(5),
	cin => \ULA_M|Add0~18\,
	sumout => \ULA_M|Add0~21_sumout\,
	cout => \ULA_M|Add0~22\);

-- Location: FF_X60_Y18_N41
\REG_M|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA_M|Add0~21_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(5));

-- Location: LABCELL_X60_Y18_N48
\ULA_M|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~25_sumout\ = SUM(( \REG_M|DOUT\(6) ) + ( GND ) + ( \ULA_M|Add0~22\ ))
-- \ULA_M|Add0~26\ = CARRY(( \REG_M|DOUT\(6) ) + ( GND ) + ( \ULA_M|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_M|ALT_INV_DOUT\(6),
	cin => \ULA_M|Add0~22\,
	sumout => \ULA_M|Add0~25_sumout\,
	cout => \ULA_M|Add0~26\);

-- Location: FF_X60_Y18_N47
\REG_M|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA_M|Add0~25_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(6));

-- Location: MLABCELL_X59_Y18_N30
\COMP_M|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_M|Add1~17_sumout\ = SUM(( \REG_M|DOUT\(2) ) + ( \REG_M|DOUT\(1) ) + ( !VCC ))
-- \COMP_M|Add1~18\ = CARRY(( \REG_M|DOUT\(2) ) + ( \REG_M|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \REG_M|ALT_INV_DOUT\(1),
	datad => \REG_M|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \COMP_M|Add1~17_sumout\,
	cout => \COMP_M|Add1~18\);

-- Location: MLABCELL_X59_Y18_N33
\COMP_M|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_M|Add1~21_sumout\ = SUM(( \REG_M|DOUT\(3) ) + ( VCC ) + ( \COMP_M|Add1~18\ ))
-- \COMP_M|Add1~22\ = CARRY(( \REG_M|DOUT\(3) ) + ( VCC ) + ( \COMP_M|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_M|ALT_INV_DOUT\(3),
	cin => \COMP_M|Add1~18\,
	sumout => \COMP_M|Add1~21_sumout\,
	cout => \COMP_M|Add1~22\);

-- Location: MLABCELL_X59_Y18_N36
\COMP_M|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_M|Add1~1_sumout\ = SUM(( \REG_M|DOUT\(4) ) + ( VCC ) + ( \COMP_M|Add1~22\ ))
-- \COMP_M|Add1~2\ = CARRY(( \REG_M|DOUT\(4) ) + ( VCC ) + ( \COMP_M|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_M|ALT_INV_DOUT\(4),
	cin => \COMP_M|Add1~22\,
	sumout => \COMP_M|Add1~1_sumout\,
	cout => \COMP_M|Add1~2\);

-- Location: MLABCELL_X59_Y18_N39
\COMP_M|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_M|Add1~5_sumout\ = SUM(( \REG_M|DOUT\(5) ) + ( VCC ) + ( \COMP_M|Add1~2\ ))
-- \COMP_M|Add1~6\ = CARRY(( \REG_M|DOUT\(5) ) + ( VCC ) + ( \COMP_M|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_M|ALT_INV_DOUT\(5),
	cin => \COMP_M|Add1~2\,
	sumout => \COMP_M|Add1~5_sumout\,
	cout => \COMP_M|Add1~6\);

-- Location: MLABCELL_X59_Y18_N42
\COMP_M|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_M|Add1~9_sumout\ = SUM(( \REG_M|DOUT\(6) ) + ( VCC ) + ( \COMP_M|Add1~6\ ))
-- \COMP_M|Add1~10\ = CARRY(( \REG_M|DOUT\(6) ) + ( VCC ) + ( \COMP_M|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_M|ALT_INV_DOUT\(6),
	cin => \COMP_M|Add1~6\,
	sumout => \COMP_M|Add1~9_sumout\,
	cout => \COMP_M|Add1~10\);

-- Location: LABCELL_X60_Y18_N51
\ULA_M|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_M|Add0~29_sumout\ = SUM(( \REG_M|DOUT\(7) ) + ( GND ) + ( \ULA_M|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_M|ALT_INV_DOUT\(7),
	cin => \ULA_M|Add0~26\,
	sumout => \ULA_M|Add0~29_sumout\);

-- Location: FF_X60_Y18_N52
\REG_M|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ULA_M|Add0~29_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(7));

-- Location: MLABCELL_X59_Y18_N45
\COMP_M|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP_M|Add1~13_sumout\ = SUM(( \REG_M|DOUT\(7) ) + ( VCC ) + ( \COMP_M|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \REG_M|ALT_INV_DOUT\(7),
	cin => \COMP_M|Add1~10\,
	sumout => \COMP_M|Add1~13_sumout\);

-- Location: MLABCELL_X59_Y18_N51
\MUX_0_M|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_0_M|Equal0~0_combout\ = ( !\REG_M|DOUT\(0) & ( !\COMP_M|Add1~21_sumout\ & ( (!\COMP_M|Add1~17_sumout\ & \REG_M|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \COMP_M|ALT_INV_Add1~17_sumout\,
	datac => \REG_M|ALT_INV_DOUT\(1),
	datae => \REG_M|ALT_INV_DOUT\(0),
	dataf => \COMP_M|ALT_INV_Add1~21_sumout\,
	combout => \MUX_0_M|Equal0~0_combout\);

-- Location: MLABCELL_X59_Y18_N27
\MUX_0_M|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_0_M|Equal0~1_combout\ = ( !\COMP_M|Add1~13_sumout\ & ( \MUX_0_M|Equal0~0_combout\ & ( (!\COMP_M|Add1~9_sumout\ & (!\COMP_M|Add1~5_sumout\ & !\COMP_M|Add1~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \COMP_M|ALT_INV_Add1~9_sumout\,
	datac => \COMP_M|ALT_INV_Add1~5_sumout\,
	datad => \COMP_M|ALT_INV_Add1~1_sumout\,
	datae => \COMP_M|ALT_INV_Add1~13_sumout\,
	dataf => \MUX_0_M|ALT_INV_Equal0~0_combout\,
	combout => \MUX_0_M|Equal0~1_combout\);

-- Location: FF_X60_Y18_N31
\REG_M|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ULA_M|Add0~1_sumout\,
	sclr => \MUX_0_M|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_M|DOUT\(0));

-- Location: LABCELL_X53_Y22_N3
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


