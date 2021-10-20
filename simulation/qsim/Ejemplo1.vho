-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "10/19/2021 15:49:03"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
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

ENTITY 	MSS IS
    PORT (
	resetn : IN std_logic;
	clk : IN std_logic;
	Din : IN std_logic;
	Nin : IN std_logic;
	est : OUT std_logic_vector(2 DOWNTO 0);
	Cout : OUT std_logic
	);
END MSS;

-- Design Ports Information
-- est[0]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- est[2]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Nin	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MSS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_Nin : std_logic;
SIGNAL ww_est : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Nin~input_o\ : std_logic;
SIGNAL \Din~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \y.D~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \y.A~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \y.C~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \y.B~q\ : std_logic;
SIGNAL \y~9_combout\ : std_logic;
SIGNAL \y.E~q\ : std_logic;
SIGNAL \est~0_combout\ : std_logic;
SIGNAL \est~1_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_y.A~q\ : std_logic;
SIGNAL \ALT_INV_Din~input_o\ : std_logic;
SIGNAL \ALT_INV_Nin~input_o\ : std_logic;
SIGNAL \ALT_INV_y.D~q\ : std_logic;
SIGNAL \ALT_INV_y.C~q\ : std_logic;
SIGNAL \ALT_INV_y.E~q\ : std_logic;
SIGNAL \ALT_INV_y.B~q\ : std_logic;

BEGIN

ww_resetn <= resetn;
ww_clk <= clk;
ww_Din <= Din;
ww_Nin <= Nin;
est <= ww_est;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y.A~q\ <= NOT \y.A~q\;
\ALT_INV_Din~input_o\ <= NOT \Din~input_o\;
\ALT_INV_Nin~input_o\ <= NOT \Nin~input_o\;
\ALT_INV_y.D~q\ <= NOT \y.D~q\;
\ALT_INV_y.C~q\ <= NOT \y.C~q\;
\ALT_INV_y.E~q\ <= NOT \y.E~q\;
\ALT_INV_y.B~q\ <= NOT \y.B~q\;

-- Location: IOOBUF_X54_Y0_N53
\est[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \est~0_combout\,
	devoe => ww_devoe,
	o => ww_est(0));

-- Location: IOOBUF_X54_Y0_N2
\est[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \est~1_combout\,
	devoe => ww_devoe,
	o => ww_est(1));

-- Location: IOOBUF_X56_Y0_N36
\est[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \y.D~q\,
	devoe => ww_devoe,
	o => ww_est(2));

-- Location: IOOBUF_X56_Y0_N53
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~0_combout\,
	devoe => ww_devoe,
	o => ww_Cout);

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

-- Location: IOIBUF_X58_Y0_N58
\Nin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Nin,
	o => \Nin~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Din~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din,
	o => \Din~input_o\);

-- Location: LABCELL_X56_Y1_N6
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \y.C~q\ & ( (!\Nin~input_o\ & (\Din~input_o\)) # (\Nin~input_o\ & (!\Din~input_o\ & \y.B~q\)) ) ) # ( !\y.C~q\ & ( (\Nin~input_o\ & (!\Din~input_o\ & \y.B~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000100110001001100010011000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Nin~input_o\,
	datab => \ALT_INV_Din~input_o\,
	datac => \ALT_INV_y.B~q\,
	dataf => \ALT_INV_y.C~q\,
	combout => \Selector3~0_combout\);

-- Location: IOIBUF_X56_Y0_N18
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X56_Y1_N8
\y.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.D~q\);

-- Location: LABCELL_X56_Y1_N9
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\y.D~q\ & ( (!\Nin~input_o\ $ (!\Din~input_o\)) # (\y.A~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011011111111011001101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Nin~input_o\,
	datab => \ALT_INV_Din~input_o\,
	datad => \ALT_INV_y.A~q\,
	dataf => \ALT_INV_y.D~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X56_Y1_N11
\y.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.A~q\);

-- Location: LABCELL_X56_Y1_N3
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \y.C~q\ & ( \y.E~q\ ) ) # ( !\y.C~q\ & ( \y.E~q\ ) ) # ( \y.C~q\ & ( !\y.E~q\ & ( (!\Nin~input_o\ & ((!\Din~input_o\))) # (\Nin~input_o\ & ((!\y.A~q\) # (\Din~input_o\))) ) ) ) # ( !\y.C~q\ & ( !\y.E~q\ & ( (\Nin~input_o\ & 
-- (!\y.A~q\ & !\Din~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111110100101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Nin~input_o\,
	datac => \ALT_INV_y.A~q\,
	datad => \ALT_INV_Din~input_o\,
	datae => \ALT_INV_y.C~q\,
	dataf => \ALT_INV_y.E~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X56_Y1_N5
\y.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.C~q\);

-- Location: LABCELL_X56_Y1_N36
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \y.A~q\ & ( (!\Din~input_o\ & ((!\Nin~input_o\ & ((\y.B~q\))) # (\Nin~input_o\ & (\y.C~q\)))) # (\Din~input_o\ & (\Nin~input_o\ & ((\y.B~q\)))) ) ) # ( !\y.A~q\ & ( (!\Din~input_o\ & ((!\Nin~input_o\ & ((\y.B~q\))) # 
-- (\Nin~input_o\ & (\y.C~q\)))) # (\Din~input_o\ & ((!\Nin~input_o\) # ((\y.B~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011011011111010001101101111100000010100110110000001010011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Din~input_o\,
	datab => \ALT_INV_Nin~input_o\,
	datac => \ALT_INV_y.C~q\,
	datad => \ALT_INV_y.B~q\,
	dataf => \ALT_INV_y.A~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X56_Y1_N38
\y.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.B~q\);

-- Location: LABCELL_X56_Y1_N42
\y~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \y~9_combout\ = ( \y.B~q\ & ( (!\Nin~input_o\ & \Din~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Nin~input_o\,
	datac => \ALT_INV_Din~input_o\,
	dataf => \ALT_INV_y.B~q\,
	combout => \y~9_combout\);

-- Location: FF_X56_Y1_N44
\y.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \y~9_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \y.E~q\);

-- Location: LABCELL_X56_Y1_N39
\est~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \est~0_combout\ = ( \y.B~q\ ) # ( !\y.B~q\ & ( \y.E~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y.E~q\,
	dataf => \ALT_INV_y.B~q\,
	combout => \est~0_combout\);

-- Location: LABCELL_X56_Y1_N18
\est~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \est~1_combout\ = ( \y.C~q\ & ( \y.E~q\ ) ) # ( !\y.C~q\ & ( \y.E~q\ ) ) # ( \y.C~q\ & ( !\y.E~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_y.C~q\,
	dataf => \ALT_INV_y.E~q\,
	combout => \est~1_combout\);

-- Location: LABCELL_X56_Y1_N33
\Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = ( \y.D~q\ ) # ( !\y.D~q\ & ( \y.E~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_y.E~q\,
	dataf => \ALT_INV_y.D~q\,
	combout => \Cout~0_combout\);

-- Location: LABCELL_X57_Y22_N3
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


