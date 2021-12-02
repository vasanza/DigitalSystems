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

-- DATE "12/02/2021 10:12:02"

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

ENTITY 	Structural IS
    PORT (
	resetn : IN std_logic;
	Start : IN std_logic;
	Load : IN std_logic;
	Find : IN std_logic;
	clk : IN std_logic;
	Datos : IN std_logic_vector(7 DOWNTO 0);
	Done : OUT std_logic;
	Qmax : BUFFER std_logic_vector(7 DOWNTO 0);
	Qmin : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Structural;

-- Design Ports Information
-- Datos[0]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[1]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[2]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[4]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[6]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Datos[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Done	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[3]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[4]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[5]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmax[7]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[3]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[4]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[5]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[6]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qmin[7]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resetn	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Find	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Load	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Structural IS
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
SIGNAL ww_Start : std_logic;
SIGNAL ww_Load : std_logic;
SIGNAL ww_Find : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Datos : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Done : std_logic;
SIGNAL ww_Qmax : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Qmin : std_logic_vector(7 DOWNTO 0);
SIGNAL \Datos[0]~input_o\ : std_logic;
SIGNAL \Datos[1]~input_o\ : std_logic;
SIGNAL \Datos[2]~input_o\ : std_logic;
SIGNAL \Datos[3]~input_o\ : std_logic;
SIGNAL \Datos[4]~input_o\ : std_logic;
SIGNAL \Datos[5]~input_o\ : std_logic;
SIGNAL \Datos[6]~input_o\ : std_logic;
SIGNAL \Datos[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \Find~input_o\ : std_logic;
SIGNAL \Load~input_o\ : std_logic;
SIGNAL \Controller|Selector0~0_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \Controller|y.s0~q\ : std_logic;
SIGNAL \Controller|y~29_combout\ : std_logic;
SIGNAL \Controller|y.s1~q\ : std_logic;
SIGNAL \Controller|Selector1~0_combout\ : std_logic;
SIGNAL \Controller|y.s2~q\ : std_logic;
SIGNAL \Controller|y~28_combout\ : std_logic;
SIGNAL \Controller|y.s3~q\ : std_logic;
SIGNAL \Controller|Selector2~0_combout\ : std_logic;
SIGNAL \Controller|y.s4~q\ : std_logic;
SIGNAL \Controller|y~27_combout\ : std_logic;
SIGNAL \Controller|y.s5~q\ : std_logic;
SIGNAL \Controller|Selector3~0_combout\ : std_logic;
SIGNAL \Controller|y.s6~q\ : std_logic;
SIGNAL \Controller|y~26_combout\ : std_logic;
SIGNAL \Controller|y.s7~q\ : std_logic;
SIGNAL \Controller|Selector4~0_combout\ : std_logic;
SIGNAL \Controller|y.s8~q\ : std_logic;
SIGNAL \Controller|y~25_combout\ : std_logic;
SIGNAL \Controller|y.s9~q\ : std_logic;
SIGNAL \Controller|Selector5~0_combout\ : std_logic;
SIGNAL \Controller|y.s10~q\ : std_logic;
SIGNAL \Controller|y~24_combout\ : std_logic;
SIGNAL \Controller|y.s11~q\ : std_logic;
SIGNAL \Controller|y~23_combout\ : std_logic;
SIGNAL \Controller|y.s12~q\ : std_logic;
SIGNAL \Controller|y.s13~q\ : std_logic;
SIGNAL \Controller|y.s14~q\ : std_logic;
SIGNAL \Controller|Selector6~0_combout\ : std_logic;
SIGNAL \Controller|y.s15~q\ : std_logic;
SIGNAL \Controller|y~22_combout\ : std_logic;
SIGNAL \Controller|y.s16~q\ : std_logic;
SIGNAL \Controller|Done~combout\ : std_logic;
SIGNAL \ALT_INV_Load~input_o\ : std_logic;
SIGNAL \ALT_INV_Find~input_o\ : std_logic;
SIGNAL \ALT_INV_Start~input_o\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s0~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s1~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s2~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s3~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s4~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s5~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s6~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s7~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s8~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s9~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s10~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s11~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s14~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s16~q\ : std_logic;
SIGNAL \Controller|ALT_INV_y.s15~q\ : std_logic;

BEGIN

ww_resetn <= resetn;
ww_Start <= Start;
ww_Load <= Load;
ww_Find <= Find;
ww_clk <= clk;
ww_Datos <= Datos;
Done <= ww_Done;
Qmax <= ww_Qmax;
Qmin <= ww_Qmin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Load~input_o\ <= NOT \Load~input_o\;
\ALT_INV_Find~input_o\ <= NOT \Find~input_o\;
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;
\Controller|ALT_INV_y.s0~q\ <= NOT \Controller|y.s0~q\;
\Controller|ALT_INV_y.s1~q\ <= NOT \Controller|y.s1~q\;
\Controller|ALT_INV_y.s2~q\ <= NOT \Controller|y.s2~q\;
\Controller|ALT_INV_y.s3~q\ <= NOT \Controller|y.s3~q\;
\Controller|ALT_INV_y.s4~q\ <= NOT \Controller|y.s4~q\;
\Controller|ALT_INV_y.s5~q\ <= NOT \Controller|y.s5~q\;
\Controller|ALT_INV_y.s6~q\ <= NOT \Controller|y.s6~q\;
\Controller|ALT_INV_y.s7~q\ <= NOT \Controller|y.s7~q\;
\Controller|ALT_INV_y.s8~q\ <= NOT \Controller|y.s8~q\;
\Controller|ALT_INV_y.s9~q\ <= NOT \Controller|y.s9~q\;
\Controller|ALT_INV_y.s10~q\ <= NOT \Controller|y.s10~q\;
\Controller|ALT_INV_y.s11~q\ <= NOT \Controller|y.s11~q\;
\Controller|ALT_INV_y.s14~q\ <= NOT \Controller|y.s14~q\;
\Controller|ALT_INV_y.s16~q\ <= NOT \Controller|y.s16~q\;
\Controller|ALT_INV_y.s15~q\ <= NOT \Controller|y.s15~q\;

-- Location: IOOBUF_X28_Y0_N19
\Done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Controller|Done~combout\,
	devoe => ww_devoe,
	o => ww_Done);

-- Location: IOOBUF_X70_Y0_N19
\Qmax[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(0));

-- Location: IOOBUF_X34_Y0_N76
\Qmax[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(1));

-- Location: IOOBUF_X2_Y0_N59
\Qmax[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(2));

-- Location: IOOBUF_X89_Y6_N39
\Qmax[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(3));

-- Location: IOOBUF_X89_Y8_N5
\Qmax[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(4));

-- Location: IOOBUF_X84_Y0_N2
\Qmax[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(5));

-- Location: IOOBUF_X56_Y0_N19
\Qmax[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(6));

-- Location: IOOBUF_X89_Y4_N96
\Qmax[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmax(7));

-- Location: IOOBUF_X2_Y0_N42
\Qmin[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(0));

-- Location: IOOBUF_X58_Y0_N76
\Qmin[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(1));

-- Location: IOOBUF_X6_Y0_N53
\Qmin[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(2));

-- Location: IOOBUF_X6_Y0_N36
\Qmin[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(3));

-- Location: IOOBUF_X80_Y0_N36
\Qmin[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(4));

-- Location: IOOBUF_X2_Y0_N76
\Qmin[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(5));

-- Location: IOOBUF_X52_Y0_N53
\Qmin[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(6));

-- Location: IOOBUF_X62_Y0_N19
\Qmin[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Qmin(7));

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

-- Location: IOIBUF_X30_Y0_N35
\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\Find~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Find,
	o => \Find~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\Load~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Load,
	o => \Load~input_o\);

-- Location: LABCELL_X30_Y1_N24
\Controller|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector0~0_combout\ = ( \Controller|y.s16~q\ & ( !\Start~input_o\ ) ) # ( !\Controller|y.s16~q\ & ( (!\Start~input_o\ & \Controller|y.s0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datad => \Controller|ALT_INV_y.s0~q\,
	dataf => \Controller|ALT_INV_y.s16~q\,
	combout => \Controller|Selector0~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\resetn~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: FF_X30_Y1_N26
\Controller|y.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector0~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s0~q\);

-- Location: LABCELL_X30_Y1_N33
\Controller|y~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~29_combout\ = ( \Controller|y.s1~q\ & ( \Controller|y.s0~q\ & ( !\Start~input_o\ ) ) ) # ( !\Controller|y.s1~q\ & ( \Controller|y.s0~q\ & ( !\Start~input_o\ ) ) ) # ( \Controller|y.s1~q\ & ( !\Controller|y.s0~q\ ) ) # ( !\Controller|y.s1~q\ 
-- & ( !\Controller|y.s0~q\ & ( !\Start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datae => \Controller|ALT_INV_y.s1~q\,
	dataf => \Controller|ALT_INV_y.s0~q\,
	combout => \Controller|y~29_combout\);

-- Location: FF_X30_Y1_N34
\Controller|y.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~29_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s1~q\);

-- Location: LABCELL_X30_Y1_N48
\Controller|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector1~0_combout\ = ( \Controller|y.s1~q\ & ( (!\Start~input_o\ & \Controller|y.s2~q\) ) ) # ( !\Controller|y.s1~q\ & ( !\Start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Start~input_o\,
	datad => \Controller|ALT_INV_y.s2~q\,
	dataf => \Controller|ALT_INV_y.s1~q\,
	combout => \Controller|Selector1~0_combout\);

-- Location: FF_X30_Y1_N50
\Controller|y.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector1~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s2~q\);

-- Location: LABCELL_X30_Y1_N21
\Controller|y~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~28_combout\ = ( \Controller|y.s2~q\ & ( \Start~input_o\ ) ) # ( !\Controller|y.s2~q\ & ( (\Start~input_o\ & \Controller|y.s3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datad => \Controller|ALT_INV_y.s3~q\,
	dataf => \Controller|ALT_INV_y.s2~q\,
	combout => \Controller|y~28_combout\);

-- Location: FF_X30_Y1_N23
\Controller|y.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~28_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s3~q\);

-- Location: LABCELL_X30_Y1_N18
\Controller|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector2~0_combout\ = (!\Start~input_o\ & (((!\Load~input_o\ & \Controller|y.s4~q\)) # (\Controller|y.s3~q\))) # (\Start~input_o\ & (!\Load~input_o\ & ((\Controller|y.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011001110000010101100111000001010110011100000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datab => \ALT_INV_Load~input_o\,
	datac => \Controller|ALT_INV_y.s3~q\,
	datad => \Controller|ALT_INV_y.s4~q\,
	combout => \Controller|Selector2~0_combout\);

-- Location: FF_X30_Y1_N19
\Controller|y.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector2~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s4~q\);

-- Location: LABCELL_X30_Y1_N27
\Controller|y~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~27_combout\ = ( \Controller|y.s4~q\ & ( \Load~input_o\ ) ) # ( !\Controller|y.s4~q\ & ( (\Load~input_o\ & \Controller|y.s5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Load~input_o\,
	datad => \Controller|ALT_INV_y.s5~q\,
	dataf => \Controller|ALT_INV_y.s4~q\,
	combout => \Controller|y~27_combout\);

-- Location: FF_X30_Y1_N28
\Controller|y.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~27_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s5~q\);

-- Location: LABCELL_X30_Y1_N12
\Controller|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector3~0_combout\ = ( \Controller|y.s6~q\ & ( \Controller|y.s5~q\ & ( !\Load~input_o\ ) ) ) # ( !\Controller|y.s6~q\ & ( \Controller|y.s5~q\ & ( !\Load~input_o\ ) ) ) # ( \Controller|y.s6~q\ & ( !\Controller|y.s5~q\ & ( !\Load~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Load~input_o\,
	datae => \Controller|ALT_INV_y.s6~q\,
	dataf => \Controller|ALT_INV_y.s5~q\,
	combout => \Controller|Selector3~0_combout\);

-- Location: FF_X30_Y1_N13
\Controller|y.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector3~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s6~q\);

-- Location: LABCELL_X30_Y1_N45
\Controller|y~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~26_combout\ = ( \Controller|y.s6~q\ & ( \Load~input_o\ ) ) # ( !\Controller|y.s6~q\ & ( (\Load~input_o\ & \Controller|y.s7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Load~input_o\,
	datad => \Controller|ALT_INV_y.s7~q\,
	dataf => \Controller|ALT_INV_y.s6~q\,
	combout => \Controller|y~26_combout\);

-- Location: FF_X30_Y1_N47
\Controller|y.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~26_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s7~q\);

-- Location: LABCELL_X30_Y1_N54
\Controller|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector4~0_combout\ = ( \Controller|y.s8~q\ & ( !\Load~input_o\ ) ) # ( !\Controller|y.s8~q\ & ( (!\Load~input_o\ & \Controller|y.s7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011001100110000000000110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Load~input_o\,
	datad => \Controller|ALT_INV_y.s7~q\,
	datae => \Controller|ALT_INV_y.s8~q\,
	combout => \Controller|Selector4~0_combout\);

-- Location: FF_X30_Y1_N56
\Controller|y.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector4~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s8~q\);

-- Location: LABCELL_X30_Y1_N39
\Controller|y~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~25_combout\ = ( \Controller|y.s9~q\ & ( \Controller|y.s8~q\ & ( \Load~input_o\ ) ) ) # ( !\Controller|y.s9~q\ & ( \Controller|y.s8~q\ & ( \Load~input_o\ ) ) ) # ( \Controller|y.s9~q\ & ( !\Controller|y.s8~q\ & ( \Load~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Load~input_o\,
	datae => \Controller|ALT_INV_y.s9~q\,
	dataf => \Controller|ALT_INV_y.s8~q\,
	combout => \Controller|y~25_combout\);

-- Location: FF_X30_Y1_N41
\Controller|y.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~25_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s9~q\);

-- Location: LABCELL_X30_Y1_N0
\Controller|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector5~0_combout\ = ( \Controller|y.s9~q\ & ( (!\Load~input_o\) # ((!\Find~input_o\ & \Controller|y.s10~q\)) ) ) # ( !\Controller|y.s9~q\ & ( (!\Find~input_o\ & \Controller|y.s10~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Load~input_o\,
	datac => \ALT_INV_Find~input_o\,
	datad => \Controller|ALT_INV_y.s10~q\,
	dataf => \Controller|ALT_INV_y.s9~q\,
	combout => \Controller|Selector5~0_combout\);

-- Location: FF_X30_Y1_N1
\Controller|y.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector5~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s10~q\);

-- Location: LABCELL_X30_Y1_N6
\Controller|y~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~24_combout\ = ( \Controller|y.s10~q\ & ( \Find~input_o\ ) ) # ( !\Controller|y.s10~q\ & ( (\Find~input_o\ & \Controller|y.s11~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Find~input_o\,
	datad => \Controller|ALT_INV_y.s11~q\,
	dataf => \Controller|ALT_INV_y.s10~q\,
	combout => \Controller|y~24_combout\);

-- Location: FF_X30_Y1_N8
\Controller|y.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~24_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s11~q\);

-- Location: LABCELL_X30_Y1_N9
\Controller|y~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~23_combout\ = (!\Find~input_o\ & \Controller|y.s11~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Find~input_o\,
	datac => \Controller|ALT_INV_y.s11~q\,
	combout => \Controller|y~23_combout\);

-- Location: FF_X30_Y1_N10
\Controller|y.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~23_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s12~q\);

-- Location: FF_X30_Y1_N32
\Controller|y.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Controller|y.s12~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s13~q\);

-- Location: FF_X30_Y1_N58
\Controller|y.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Controller|y.s13~q\,
	clrn => \resetn~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s14~q\);

-- Location: LABCELL_X30_Y1_N42
\Controller|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Selector6~0_combout\ = ( \Controller|y.s14~q\ ) # ( !\Controller|y.s14~q\ & ( (!\Start~input_o\ & \Controller|y.s15~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Start~input_o\,
	datad => \Controller|ALT_INV_y.s15~q\,
	dataf => \Controller|ALT_INV_y.s14~q\,
	combout => \Controller|Selector6~0_combout\);

-- Location: FF_X30_Y1_N44
\Controller|y.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|Selector6~0_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s15~q\);

-- Location: LABCELL_X30_Y1_N3
\Controller|y~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|y~22_combout\ = ( \Controller|y.s15~q\ & ( \Start~input_o\ ) ) # ( !\Controller|y.s15~q\ & ( (\Start~input_o\ & \Controller|y.s16~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datad => \Controller|ALT_INV_y.s16~q\,
	dataf => \Controller|ALT_INV_y.s15~q\,
	combout => \Controller|y~22_combout\);

-- Location: FF_X30_Y1_N5
\Controller|y.s16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Controller|y~22_combout\,
	clrn => \resetn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|y.s16~q\);

-- Location: LABCELL_X30_Y1_N51
\Controller|Done\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controller|Done~combout\ = ( \Controller|y.s15~q\ ) # ( !\Controller|y.s15~q\ & ( \Controller|y.s16~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|ALT_INV_y.s16~q\,
	dataf => \Controller|ALT_INV_y.s15~q\,
	combout => \Controller|Done~combout\);

-- Location: IOIBUF_X58_Y0_N41
\Datos[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(0),
	o => \Datos[0]~input_o\);

-- Location: IOIBUF_X88_Y0_N53
\Datos[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(1),
	o => \Datos[1]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\Datos[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(2),
	o => \Datos[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\Datos[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(3),
	o => \Datos[3]~input_o\);

-- Location: IOIBUF_X88_Y0_N36
\Datos[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(4),
	o => \Datos[4]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\Datos[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(5),
	o => \Datos[5]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\Datos[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(6),
	o => \Datos[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\Datos[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Datos(7),
	o => \Datos[7]~input_o\);

-- Location: MLABCELL_X39_Y45_N0
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


