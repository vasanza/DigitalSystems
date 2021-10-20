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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/19/2021 15:49:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MSS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MSS_vhd_vec_tst IS
END MSS_vhd_vec_tst;
ARCHITECTURE MSS_arch OF MSS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Cout : STD_LOGIC;
SIGNAL Din : STD_LOGIC;
SIGNAL est : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Nin : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
COMPONENT MSS
	PORT (
	clk : IN STD_LOGIC;
	Cout : OUT STD_LOGIC;
	Din : IN STD_LOGIC;
	est : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	Nin : IN STD_LOGIC;
	resetn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MSS
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Cout => Cout,
	Din => Din,
	est => est,
	Nin => Nin,
	resetn => resetn
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 20000 ps;
	resetn <= '1';
	WAIT FOR 270000 ps;
	resetn <= '0';
	WAIT FOR 10000 ps;
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- Din
t_prcs_Din: PROCESS
BEGIN
	Din <= '1';
	WAIT FOR 60000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 30000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 120000 ps;
	Din <= '0';
	WAIT FOR 60000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 30000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 60000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 75000 ps;
	Din <= '1';
	WAIT FOR 30000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 30000 ps;
	Din <= '0';
	WAIT FOR 30000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 30000 ps;
	Din <= '0';
	WAIT FOR 30000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 75000 ps;
	Din <= '1';
	WAIT FOR 30000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
	WAIT FOR 15000 ps;
	Din <= '0';
	WAIT FOR 15000 ps;
	Din <= '1';
WAIT;
END PROCESS t_prcs_Din;

-- Nin
t_prcs_Nin: PROCESS
BEGIN
	Nin <= '1';
	WAIT FOR 90000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 15000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 45000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 60000 ps;
	Nin <= '0';
	WAIT FOR 15000 ps;
	Nin <= '1';
	WAIT FOR 15000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 60000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 30000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 15000 ps;
	Nin <= '0';
	WAIT FOR 15000 ps;
	Nin <= '1';
	WAIT FOR 30000 ps;
	Nin <= '0';
	WAIT FOR 30000 ps;
	Nin <= '1';
	WAIT FOR 45000 ps;
	Nin <= '0';
	WAIT FOR 60000 ps;
	Nin <= '1';
	WAIT FOR 45000 ps;
	Nin <= '0';
	WAIT FOR 45000 ps;
	Nin <= '1';
	WAIT FOR 30000 ps;
	Nin <= '0';
	WAIT FOR 105000 ps;
	Nin <= '1';
	WAIT FOR 30000 ps;
	Nin <= '0';
	WAIT FOR 15000 ps;
	Nin <= '1';
WAIT;
END PROCESS t_prcs_Nin;
END MSS_arch;
