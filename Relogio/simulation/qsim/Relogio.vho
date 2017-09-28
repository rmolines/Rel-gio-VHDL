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

-- DATE "09/23/2017 19:11:05"

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
	saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END Relogio;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \regValue|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \regValue|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \COMP|Add1~26_cout\ : std_logic;
SIGNAL \COMP|Add1~22\ : std_logic;
SIGNAL \COMP|Add1~1_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \COMP|Add1~2\ : std_logic;
SIGNAL \COMP|Add1~6\ : std_logic;
SIGNAL \COMP|Add1~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \COMP|Add1~10\ : std_logic;
SIGNAL \COMP|Add1~14\ : std_logic;
SIGNAL \COMP|Add1~17_sumout\ : std_logic;
SIGNAL \COMP|Add1~5_sumout\ : std_logic;
SIGNAL \COMP|Add1~13_sumout\ : std_logic;
SIGNAL \COMP|Add1~21_sumout\ : std_logic;
SIGNAL \MUX|Equal0~0_combout\ : std_logic;
SIGNAL \MUX|Equal0~1_combout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \regValue|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \regValue|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \COMP|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \COMP|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \MUX|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \regValue|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \regValue|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;

BEGIN

ww_clk <= clk;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\regValue|ALT_INV_DOUT\(7) <= NOT \regValue|DOUT\(7);
\COMP|ALT_INV_Add1~1_sumout\ <= NOT \COMP|Add1~1_sumout\;
\COMP|ALT_INV_Add1~5_sumout\ <= NOT \COMP|Add1~5_sumout\;
\COMP|ALT_INV_Add1~9_sumout\ <= NOT \COMP|Add1~9_sumout\;
\COMP|ALT_INV_Add1~13_sumout\ <= NOT \COMP|Add1~13_sumout\;
\COMP|ALT_INV_Add1~17_sumout\ <= NOT \COMP|Add1~17_sumout\;
\COMP|ALT_INV_Add1~21_sumout\ <= NOT \COMP|Add1~21_sumout\;
\MUX|ALT_INV_Equal0~0_combout\ <= NOT \MUX|Equal0~0_combout\;
\regValue|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \regValue|DOUT[2]~DUPLICATE_q\;
\regValue|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \regValue|DOUT[3]~DUPLICATE_q\;
\regValue|ALT_INV_DOUT\(6) <= NOT \regValue|DOUT\(6);
\regValue|ALT_INV_DOUT\(5) <= NOT \regValue|DOUT\(5);
\regValue|ALT_INV_DOUT\(4) <= NOT \regValue|DOUT\(4);
\regValue|ALT_INV_DOUT\(3) <= NOT \regValue|DOUT\(3);
\regValue|ALT_INV_DOUT\(2) <= NOT \regValue|DOUT\(2);
\regValue|ALT_INV_DOUT\(1) <= NOT \regValue|DOUT\(1);
\regValue|ALT_INV_DOUT\(0) <= NOT \regValue|DOUT\(0);

-- Location: IOOBUF_X6_Y0_N19
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X4_Y0_N2
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X4_Y0_N53
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X6_Y0_N36
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X6_Y0_N53
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X4_Y0_N19
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X6_Y0_N2
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X4_Y0_N36
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_saida(7));

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

-- Location: FF_X4_Y2_N28
\regValue|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y2_N0
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( \regValue|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \ULA|Add0~2\ = CARRY(( \regValue|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regValue|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X4_Y2_N3
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \regValue|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \regValue|DOUT\(1) ) + ( GND ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(1),
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: FF_X4_Y2_N26
\regValue|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~5_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(1));

-- Location: LABCELL_X4_Y2_N6
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( \regValue|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( \regValue|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: FF_X4_Y2_N55
\regValue|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X4_Y2_N9
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( \regValue|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( \regValue|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regValue|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: FF_X4_Y2_N29
\regValue|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~13_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(3));

-- Location: FF_X4_Y2_N56
\regValue|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(2));

-- Location: LABCELL_X4_Y2_N30
\COMP|Add1~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~26_cout\ = CARRY(( \regValue|DOUT\(1) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regValue|ALT_INV_DOUT\(1),
	cin => GND,
	cout => \COMP|Add1~26_cout\);

-- Location: LABCELL_X4_Y2_N33
\COMP|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~21_sumout\ = SUM(( \regValue|DOUT\(2) ) + ( VCC ) + ( \COMP|Add1~26_cout\ ))
-- \COMP|Add1~22\ = CARRY(( \regValue|DOUT\(2) ) + ( VCC ) + ( \COMP|Add1~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(2),
	cin => \COMP|Add1~26_cout\,
	sumout => \COMP|Add1~21_sumout\,
	cout => \COMP|Add1~22\);

-- Location: LABCELL_X4_Y2_N36
\COMP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~1_sumout\ = SUM(( \regValue|DOUT\(3) ) + ( GND ) + ( \COMP|Add1~22\ ))
-- \COMP|Add1~2\ = CARRY(( \regValue|DOUT\(3) ) + ( GND ) + ( \COMP|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(3),
	cin => \COMP|Add1~22\,
	sumout => \COMP|Add1~1_sumout\,
	cout => \COMP|Add1~2\);

-- Location: LABCELL_X4_Y2_N12
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( \regValue|DOUT\(4) ) + ( GND ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( \regValue|DOUT\(4) ) + ( GND ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(4),
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: FF_X4_Y2_N59
\regValue|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(4));

-- Location: LABCELL_X4_Y2_N15
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( \regValue|DOUT\(5) ) + ( GND ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( \regValue|DOUT\(5) ) + ( GND ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(5),
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: FF_X4_Y2_N17
\regValue|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~21_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(5));

-- Location: LABCELL_X4_Y2_N39
\COMP|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~5_sumout\ = SUM(( \regValue|DOUT\(4) ) + ( VCC ) + ( \COMP|Add1~2\ ))
-- \COMP|Add1~6\ = CARRY(( \regValue|DOUT\(4) ) + ( VCC ) + ( \COMP|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(4),
	cin => \COMP|Add1~2\,
	sumout => \COMP|Add1~5_sumout\,
	cout => \COMP|Add1~6\);

-- Location: LABCELL_X4_Y2_N42
\COMP|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~9_sumout\ = SUM(( \regValue|DOUT\(5) ) + ( VCC ) + ( \COMP|Add1~6\ ))
-- \COMP|Add1~10\ = CARRY(( \regValue|DOUT\(5) ) + ( VCC ) + ( \COMP|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \regValue|ALT_INV_DOUT\(5),
	cin => \COMP|Add1~6\,
	sumout => \COMP|Add1~9_sumout\,
	cout => \COMP|Add1~10\);

-- Location: LABCELL_X4_Y2_N18
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( \regValue|DOUT\(6) ) + ( GND ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( \regValue|DOUT\(6) ) + ( GND ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regValue|ALT_INV_DOUT\(6),
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: FF_X4_Y2_N5
\regValue|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(6));

-- Location: LABCELL_X4_Y2_N21
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( \regValue|DOUT\(7) ) + ( GND ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(7),
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\);

-- Location: FF_X4_Y2_N23
\regValue|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \ULA|Add0~29_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(7));

-- Location: LABCELL_X4_Y2_N45
\COMP|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~13_sumout\ = SUM(( \regValue|DOUT\(6) ) + ( VCC ) + ( \COMP|Add1~10\ ))
-- \COMP|Add1~14\ = CARRY(( \regValue|DOUT\(6) ) + ( VCC ) + ( \COMP|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(6),
	cin => \COMP|Add1~10\,
	sumout => \COMP|Add1~13_sumout\,
	cout => \COMP|Add1~14\);

-- Location: LABCELL_X4_Y2_N48
\COMP|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \COMP|Add1~17_sumout\ = SUM(( \regValue|DOUT\(7) ) + ( VCC ) + ( \COMP|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \regValue|ALT_INV_DOUT\(7),
	cin => \COMP|Add1~14\,
	sumout => \COMP|Add1~17_sumout\);

-- Location: LABCELL_X4_Y2_N57
\MUX|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Equal0~0_combout\ = ( \regValue|DOUT\(1) & ( !\COMP|Add1~21_sumout\ & ( !\regValue|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \regValue|ALT_INV_DOUT\(0),
	datae => \regValue|ALT_INV_DOUT\(1),
	dataf => \COMP|ALT_INV_Add1~21_sumout\,
	combout => \MUX|Equal0~0_combout\);

-- Location: LABCELL_X4_Y2_N24
\MUX|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX|Equal0~1_combout\ = ( !\COMP|Add1~13_sumout\ & ( \MUX|Equal0~0_combout\ & ( (!\COMP|Add1~1_sumout\ & (!\COMP|Add1~9_sumout\ & (!\COMP|Add1~17_sumout\ & !\COMP|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \COMP|ALT_INV_Add1~1_sumout\,
	datab => \COMP|ALT_INV_Add1~9_sumout\,
	datac => \COMP|ALT_INV_Add1~17_sumout\,
	datad => \COMP|ALT_INV_Add1~5_sumout\,
	datae => \COMP|ALT_INV_Add1~13_sumout\,
	dataf => \MUX|ALT_INV_Equal0~0_combout\,
	combout => \MUX|Equal0~1_combout\);

-- Location: FF_X4_Y2_N11
\regValue|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sclr => \MUX|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regValue|DOUT\(0));

-- Location: MLABCELL_X8_Y8_N3
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


