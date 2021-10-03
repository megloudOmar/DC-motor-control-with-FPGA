-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "09/28/2021 22:53:14"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	DCMotor_control IS
    PORT (
	Clk : IN std_logic;
	RST : IN std_logic;
	En : IN std_logic;
	Duty_cycle : IN std_logic_vector(7 DOWNTO 0);
	Clk_out : BUFFER std_logic;
	PWM_out : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END DCMotor_control;

-- Design Ports Information
-- Clk_out	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_out[0]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM_out[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Duty_cycle[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DCMotor_control IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_En : std_logic;
SIGNAL ww_Duty_cycle : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Clk_out : std_logic;
SIGNAL ww_PWM_out : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Duty_cycle[4]~input_o\ : std_logic;
SIGNAL \Duty_cycle[5]~input_o\ : std_logic;
SIGNAL \C1|C1|Triang_S[0]~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \C1|C1|Add0~25_sumout\ : std_logic;
SIGNAL \C1|C1|Add0~26\ : std_logic;
SIGNAL \C1|C1|Add0~21_sumout\ : std_logic;
SIGNAL \C1|C1|Add0~22\ : std_logic;
SIGNAL \C1|C1|Add0~17_sumout\ : std_logic;
SIGNAL \C1|C1|Add0~18\ : std_logic;
SIGNAL \C1|C1|Add0~1_sumout\ : std_logic;
SIGNAL \C1|C1|Add0~2\ : std_logic;
SIGNAL \C1|C1|Add0~13_sumout\ : std_logic;
SIGNAL \Duty_cycle[7]~input_o\ : std_logic;
SIGNAL \C1|C1|Add0~14\ : std_logic;
SIGNAL \C1|C1|Add0~9_sumout\ : std_logic;
SIGNAL \Duty_cycle[6]~input_o\ : std_logic;
SIGNAL \C1|C1|Add0~10\ : std_logic;
SIGNAL \C1|C1|Add0~5_sumout\ : std_logic;
SIGNAL \C1|C3|LessThan0~3_combout\ : std_logic;
SIGNAL \Duty_cycle[3]~input_o\ : std_logic;
SIGNAL \Duty_cycle[2]~input_o\ : std_logic;
SIGNAL \Duty_cycle[1]~input_o\ : std_logic;
SIGNAL \Duty_cycle[0]~input_o\ : std_logic;
SIGNAL \C1|C3|LessThan0~1_combout\ : std_logic;
SIGNAL \C1|C3|LessThan0~2_combout\ : std_logic;
SIGNAL \C1|C3|LessThan0~0_combout\ : std_logic;
SIGNAL \C1|C3|LessThan0~4_combout\ : std_logic;
SIGNAL \C1|C3|C_S~q\ : std_logic;
SIGNAL \C2|C3|C_S~q\ : std_logic;
SIGNAL \C1|C1|Triang_S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Duty_cycle[4]~input_o\ : std_logic;
SIGNAL \C1|C3|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \C1|C3|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \C1|C3|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \C1|C1|ALT_INV_Triang_S\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|C3|ALT_INV_LessThan0~0_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_RST <= RST;
ww_En <= En;
ww_Duty_cycle <= Duty_cycle;
Clk_out <= ww_Clk_out;
PWM_out <= ww_PWM_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_Duty_cycle[0]~input_o\ <= NOT \Duty_cycle[0]~input_o\;
\ALT_INV_Duty_cycle[1]~input_o\ <= NOT \Duty_cycle[1]~input_o\;
\ALT_INV_Duty_cycle[2]~input_o\ <= NOT \Duty_cycle[2]~input_o\;
\ALT_INV_Duty_cycle[3]~input_o\ <= NOT \Duty_cycle[3]~input_o\;
\ALT_INV_Duty_cycle[5]~input_o\ <= NOT \Duty_cycle[5]~input_o\;
\ALT_INV_Duty_cycle[6]~input_o\ <= NOT \Duty_cycle[6]~input_o\;
\ALT_INV_Duty_cycle[7]~input_o\ <= NOT \Duty_cycle[7]~input_o\;
\ALT_INV_Duty_cycle[4]~input_o\ <= NOT \Duty_cycle[4]~input_o\;
\C1|C3|ALT_INV_LessThan0~3_combout\ <= NOT \C1|C3|LessThan0~3_combout\;
\C1|C3|ALT_INV_LessThan0~2_combout\ <= NOT \C1|C3|LessThan0~2_combout\;
\C1|C3|ALT_INV_LessThan0~1_combout\ <= NOT \C1|C3|LessThan0~1_combout\;
\C1|C1|ALT_INV_Triang_S\(0) <= NOT \C1|C1|Triang_S\(0);
\C1|C1|ALT_INV_Triang_S\(1) <= NOT \C1|C1|Triang_S\(1);
\C1|C1|ALT_INV_Triang_S\(2) <= NOT \C1|C1|Triang_S\(2);
\C1|C1|ALT_INV_Triang_S\(3) <= NOT \C1|C1|Triang_S\(3);
\C1|C3|ALT_INV_LessThan0~0_combout\ <= NOT \C1|C3|LessThan0~0_combout\;
\C1|C1|ALT_INV_Triang_S\(5) <= NOT \C1|C1|Triang_S\(5);
\C1|C1|ALT_INV_Triang_S\(6) <= NOT \C1|C1|Triang_S\(6);
\C1|C1|ALT_INV_Triang_S\(7) <= NOT \C1|C1|Triang_S\(7);
\C1|C1|ALT_INV_Triang_S\(4) <= NOT \C1|C1|Triang_S\(4);

-- Location: IOOBUF_X64_Y0_N19
\Clk_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Clk_out);

-- Location: IOOBUF_X64_Y0_N2
\PWM_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|C3|C_S~q\,
	devoe => ww_devoe,
	o => ww_PWM_out(0));

-- Location: IOOBUF_X68_Y0_N2
\PWM_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|C3|C_S~q\,
	devoe => ww_devoe,
	o => ww_PWM_out(1));

-- Location: IOIBUF_X32_Y0_N1
\Clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

-- Location: CLKCTRL_G6
\Clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~input_o\,
	outclk => \Clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N41
\Duty_cycle[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(4),
	o => \Duty_cycle[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\Duty_cycle[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(5),
	o => \Duty_cycle[5]~input_o\);

-- Location: LABCELL_X10_Y1_N51
\C1|C1|Triang_S[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Triang_S[0]~0_combout\ = !\C1|C1|Triang_S\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(0),
	combout => \C1|C1|Triang_S[0]~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\En~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: FF_X10_Y1_N53
\C1|C1|Triang_S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Triang_S[0]~0_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(0));

-- Location: LABCELL_X10_Y1_N0
\C1|C1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~25_sumout\ = SUM(( \C1|C1|Triang_S\(1) ) + ( \C1|C1|Triang_S\(0) ) + ( !VCC ))
-- \C1|C1|Add0~26\ = CARRY(( \C1|C1|Triang_S\(1) ) + ( \C1|C1|Triang_S\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|C1|ALT_INV_Triang_S\(0),
	datad => \C1|C1|ALT_INV_Triang_S\(1),
	cin => GND,
	sumout => \C1|C1|Add0~25_sumout\,
	cout => \C1|C1|Add0~26\);

-- Location: FF_X10_Y1_N1
\C1|C1|Triang_S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~25_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(1));

-- Location: LABCELL_X10_Y1_N3
\C1|C1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~21_sumout\ = SUM(( \C1|C1|Triang_S\(2) ) + ( GND ) + ( \C1|C1|Add0~26\ ))
-- \C1|C1|Add0~22\ = CARRY(( \C1|C1|Triang_S\(2) ) + ( GND ) + ( \C1|C1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(2),
	cin => \C1|C1|Add0~26\,
	sumout => \C1|C1|Add0~21_sumout\,
	cout => \C1|C1|Add0~22\);

-- Location: FF_X10_Y1_N5
\C1|C1|Triang_S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~21_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(2));

-- Location: LABCELL_X10_Y1_N6
\C1|C1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~17_sumout\ = SUM(( \C1|C1|Triang_S\(3) ) + ( GND ) + ( \C1|C1|Add0~22\ ))
-- \C1|C1|Add0~18\ = CARRY(( \C1|C1|Triang_S\(3) ) + ( GND ) + ( \C1|C1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(3),
	cin => \C1|C1|Add0~22\,
	sumout => \C1|C1|Add0~17_sumout\,
	cout => \C1|C1|Add0~18\);

-- Location: FF_X10_Y1_N7
\C1|C1|Triang_S[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~17_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(3));

-- Location: LABCELL_X10_Y1_N9
\C1|C1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~1_sumout\ = SUM(( \C1|C1|Triang_S\(4) ) + ( GND ) + ( \C1|C1|Add0~18\ ))
-- \C1|C1|Add0~2\ = CARRY(( \C1|C1|Triang_S\(4) ) + ( GND ) + ( \C1|C1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(4),
	cin => \C1|C1|Add0~18\,
	sumout => \C1|C1|Add0~1_sumout\,
	cout => \C1|C1|Add0~2\);

-- Location: FF_X10_Y1_N11
\C1|C1|Triang_S[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~1_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(4));

-- Location: LABCELL_X10_Y1_N12
\C1|C1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~13_sumout\ = SUM(( \C1|C1|Triang_S\(5) ) + ( GND ) + ( \C1|C1|Add0~2\ ))
-- \C1|C1|Add0~14\ = CARRY(( \C1|C1|Triang_S\(5) ) + ( GND ) + ( \C1|C1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(5),
	cin => \C1|C1|Add0~2\,
	sumout => \C1|C1|Add0~13_sumout\,
	cout => \C1|C1|Add0~14\);

-- Location: FF_X10_Y1_N14
\C1|C1|Triang_S[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~13_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(5));

-- Location: IOIBUF_X4_Y0_N1
\Duty_cycle[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(7),
	o => \Duty_cycle[7]~input_o\);

-- Location: LABCELL_X10_Y1_N15
\C1|C1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~9_sumout\ = SUM(( \C1|C1|Triang_S\(6) ) + ( GND ) + ( \C1|C1|Add0~14\ ))
-- \C1|C1|Add0~10\ = CARRY(( \C1|C1|Triang_S\(6) ) + ( GND ) + ( \C1|C1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(6),
	cin => \C1|C1|Add0~14\,
	sumout => \C1|C1|Add0~9_sumout\,
	cout => \C1|C1|Add0~10\);

-- Location: FF_X10_Y1_N17
\C1|C1|Triang_S[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~9_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(6));

-- Location: IOIBUF_X4_Y0_N35
\Duty_cycle[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(6),
	o => \Duty_cycle[6]~input_o\);

-- Location: LABCELL_X10_Y1_N18
\C1|C1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C1|Add0~5_sumout\ = SUM(( \C1|C1|Triang_S\(7) ) + ( GND ) + ( \C1|C1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|C1|ALT_INV_Triang_S\(7),
	cin => \C1|C1|Add0~10\,
	sumout => \C1|C1|Add0~5_sumout\);

-- Location: FF_X10_Y1_N20
\C1|C1|Triang_S[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C1|Add0~5_sumout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C1|Triang_S\(7));

-- Location: LABCELL_X10_Y1_N42
\C1|C3|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C3|LessThan0~3_combout\ = ( \Duty_cycle[6]~input_o\ & ( \C1|C1|Triang_S\(7) & ( (!\Duty_cycle[7]~input_o\) # ((!\Duty_cycle[5]~input_o\ & (\C1|C1|Triang_S\(5) & \C1|C1|Triang_S\(6)))) ) ) ) # ( !\Duty_cycle[6]~input_o\ & ( \C1|C1|Triang_S\(7) & ( 
-- (!\Duty_cycle[7]~input_o\) # (((!\Duty_cycle[5]~input_o\ & \C1|C1|Triang_S\(5))) # (\C1|C1|Triang_S\(6))) ) ) ) # ( \Duty_cycle[6]~input_o\ & ( !\C1|C1|Triang_S\(7) & ( (!\Duty_cycle[5]~input_o\ & (\C1|C1|Triang_S\(5) & (!\Duty_cycle[7]~input_o\ & 
-- \C1|C1|Triang_S\(6)))) ) ) ) # ( !\Duty_cycle[6]~input_o\ & ( !\C1|C1|Triang_S\(7) & ( (!\Duty_cycle[7]~input_o\ & (((!\Duty_cycle[5]~input_o\ & \C1|C1|Triang_S\(5))) # (\C1|C1|Triang_S\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110000000000000010000011110010111111111111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Duty_cycle[5]~input_o\,
	datab => \C1|C1|ALT_INV_Triang_S\(5),
	datac => \ALT_INV_Duty_cycle[7]~input_o\,
	datad => \C1|C1|ALT_INV_Triang_S\(6),
	datae => \ALT_INV_Duty_cycle[6]~input_o\,
	dataf => \C1|C1|ALT_INV_Triang_S\(7),
	combout => \C1|C3|LessThan0~3_combout\);

-- Location: IOIBUF_X4_Y0_N52
\Duty_cycle[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(3),
	o => \Duty_cycle[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\Duty_cycle[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(2),
	o => \Duty_cycle[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\Duty_cycle[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(1),
	o => \Duty_cycle[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\Duty_cycle[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Duty_cycle(0),
	o => \Duty_cycle[0]~input_o\);

-- Location: LABCELL_X10_Y1_N48
\C1|C3|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C3|LessThan0~1_combout\ = ( \C1|C1|Triang_S\(1) & ( (!\Duty_cycle[1]~input_o\) # ((\C1|C1|Triang_S\(0) & !\Duty_cycle[0]~input_o\)) ) ) # ( !\C1|C1|Triang_S\(1) & ( (!\Duty_cycle[1]~input_o\ & (\C1|C1|Triang_S\(0) & !\Duty_cycle[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Duty_cycle[1]~input_o\,
	datac => \C1|C1|ALT_INV_Triang_S\(0),
	datad => \ALT_INV_Duty_cycle[0]~input_o\,
	dataf => \C1|C1|ALT_INV_Triang_S\(1),
	combout => \C1|C3|LessThan0~1_combout\);

-- Location: LABCELL_X10_Y1_N36
\C1|C3|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C3|LessThan0~2_combout\ = ( \C1|C1|Triang_S\(3) & ( \C1|C3|LessThan0~1_combout\ & ( ((!\Duty_cycle[3]~input_o\) # (!\Duty_cycle[2]~input_o\)) # (\C1|C1|Triang_S\(2)) ) ) ) # ( !\C1|C1|Triang_S\(3) & ( \C1|C3|LessThan0~1_combout\ & ( 
-- (!\Duty_cycle[3]~input_o\ & ((!\Duty_cycle[2]~input_o\) # (\C1|C1|Triang_S\(2)))) ) ) ) # ( \C1|C1|Triang_S\(3) & ( !\C1|C3|LessThan0~1_combout\ & ( (!\Duty_cycle[3]~input_o\) # ((\C1|C1|Triang_S\(2) & !\Duty_cycle[2]~input_o\)) ) ) ) # ( 
-- !\C1|C1|Triang_S\(3) & ( !\C1|C3|LessThan0~1_combout\ & ( (\C1|C1|Triang_S\(2) & (!\Duty_cycle[3]~input_o\ & !\Duty_cycle[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000110111001101110011000100110001001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|C1|ALT_INV_Triang_S\(2),
	datab => \ALT_INV_Duty_cycle[3]~input_o\,
	datac => \ALT_INV_Duty_cycle[2]~input_o\,
	datae => \C1|C1|ALT_INV_Triang_S\(3),
	dataf => \C1|C3|ALT_INV_LessThan0~1_combout\,
	combout => \C1|C3|LessThan0~2_combout\);

-- Location: LABCELL_X10_Y1_N24
\C1|C3|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C3|LessThan0~0_combout\ = ( \Duty_cycle[7]~input_o\ & ( \C1|C1|Triang_S\(5) & ( (\Duty_cycle[5]~input_o\ & (\C1|C1|Triang_S\(7) & (!\Duty_cycle[6]~input_o\ $ (\C1|C1|Triang_S\(6))))) ) ) ) # ( !\Duty_cycle[7]~input_o\ & ( \C1|C1|Triang_S\(5) & ( 
-- (\Duty_cycle[5]~input_o\ & (!\C1|C1|Triang_S\(7) & (!\Duty_cycle[6]~input_o\ $ (\C1|C1|Triang_S\(6))))) ) ) ) # ( \Duty_cycle[7]~input_o\ & ( !\C1|C1|Triang_S\(5) & ( (!\Duty_cycle[5]~input_o\ & (\C1|C1|Triang_S\(7) & (!\Duty_cycle[6]~input_o\ $ 
-- (\C1|C1|Triang_S\(6))))) ) ) ) # ( !\Duty_cycle[7]~input_o\ & ( !\C1|C1|Triang_S\(5) & ( (!\Duty_cycle[5]~input_o\ & (!\C1|C1|Triang_S\(7) & (!\Duty_cycle[6]~input_o\ $ (\C1|C1|Triang_S\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Duty_cycle[5]~input_o\,
	datab => \ALT_INV_Duty_cycle[6]~input_o\,
	datac => \C1|C1|ALT_INV_Triang_S\(7),
	datad => \C1|C1|ALT_INV_Triang_S\(6),
	datae => \ALT_INV_Duty_cycle[7]~input_o\,
	dataf => \C1|C1|ALT_INV_Triang_S\(5),
	combout => \C1|C3|LessThan0~0_combout\);

-- Location: LABCELL_X10_Y1_N30
\C1|C3|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|C3|LessThan0~4_combout\ = ( \C1|C3|LessThan0~2_combout\ & ( \C1|C3|LessThan0~0_combout\ & ( (!\Duty_cycle[4]~input_o\) # ((\C1|C1|Triang_S\(4)) # (\C1|C3|LessThan0~3_combout\)) ) ) ) # ( !\C1|C3|LessThan0~2_combout\ & ( \C1|C3|LessThan0~0_combout\ & ( 
-- ((!\Duty_cycle[4]~input_o\ & \C1|C1|Triang_S\(4))) # (\C1|C3|LessThan0~3_combout\) ) ) ) # ( \C1|C3|LessThan0~2_combout\ & ( !\C1|C3|LessThan0~0_combout\ & ( \C1|C3|LessThan0~3_combout\ ) ) ) # ( !\C1|C3|LessThan0~2_combout\ & ( 
-- !\C1|C3|LessThan0~0_combout\ & ( \C1|C3|LessThan0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011101110111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Duty_cycle[4]~input_o\,
	datab => \C1|C3|ALT_INV_LessThan0~3_combout\,
	datad => \C1|C1|ALT_INV_Triang_S\(4),
	datae => \C1|C3|ALT_INV_LessThan0~2_combout\,
	dataf => \C1|C3|ALT_INV_LessThan0~0_combout\,
	combout => \C1|C3|LessThan0~4_combout\);

-- Location: FF_X10_Y1_N22
\C1|C3|C_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	asdata => \C1|C3|LessThan0~4_combout\,
	clrn => \ALT_INV_RST~input_o\,
	sload => VCC,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|C3|C_S~q\);

-- Location: FF_X10_Y1_N31
\C2|C3|C_S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputCLKENA0_outclk\,
	d => \C1|C3|LessThan0~4_combout\,
	clrn => \ALT_INV_RST~input_o\,
	ena => \En~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C2|C3|C_S~q\);

-- Location: LABCELL_X50_Y34_N0
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


