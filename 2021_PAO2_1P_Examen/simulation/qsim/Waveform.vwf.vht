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
-- Generated on "12/02/2021 10:18:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Structural
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Structural_vhd_vec_tst IS
END Structural_vhd_vec_tst;
ARCHITECTURE Structural_arch OF Structural_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Datos : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Done : STD_LOGIC;
SIGNAL Find : STD_LOGIC;
SIGNAL Load : STD_LOGIC;
SIGNAL Qmax : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Qmin : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL resetn : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT Structural
	PORT (
	clk : IN STD_LOGIC;
	Datos : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Done : OUT STD_LOGIC;
	Find : IN STD_LOGIC;
	Load : IN STD_LOGIC;
	Qmax : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	Qmin : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	resetn : IN STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Structural
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Datos => Datos,
	Done => Done,
	Find => Find,
	Load => Load,
	Qmax => Qmax,
	Qmin => Qmin,
	resetn => resetn,
	Start => Start
	);

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '0';
	WAIT FOR 30000 ps;
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

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '0';
	WAIT FOR 40000 ps;
	Start <= '1';
	WAIT FOR 20000 ps;
	Start <= '0';
	WAIT FOR 20000 ps;
	Start <= '1';
	WAIT FOR 20000 ps;
	Start <= '0';
	WAIT FOR 240000 ps;
	Start <= '1';
	WAIT FOR 20000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;

-- Load
t_prcs_Load: PROCESS
BEGIN
	Load <= '0';
	WAIT FOR 140000 ps;
	Load <= '1';
	WAIT FOR 20000 ps;
	Load <= '0';
	WAIT FOR 30000 ps;
	Load <= '1';
	WAIT FOR 20000 ps;
	Load <= '0';
	WAIT FOR 30000 ps;
	Load <= '1';
	WAIT FOR 20000 ps;
	Load <= '0';
WAIT;
END PROCESS t_prcs_Load;
-- Datos[7]
t_prcs_Datos_7: PROCESS
BEGIN
	Datos(7) <= '0';
	WAIT FOR 50000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
	WAIT FOR 50000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
	WAIT FOR 100000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
	WAIT FOR 50000 ps;
	Datos(7) <= '0';
	WAIT FOR 50000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 50000 ps;
	Datos(7) <= '1';
	WAIT FOR 50000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
	WAIT FOR 50000 ps;
	Datos(7) <= '0';
	WAIT FOR 75000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 50000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 50000 ps;
	Datos(7) <= '1';
	WAIT FOR 25000 ps;
	Datos(7) <= '0';
	WAIT FOR 25000 ps;
	Datos(7) <= '1';
WAIT;
END PROCESS t_prcs_Datos_7;
-- Datos[6]
t_prcs_Datos_6: PROCESS
BEGIN
	Datos(6) <= '1';
	WAIT FOR 25000 ps;
	Datos(6) <= '0';
	WAIT FOR 50000 ps;
	Datos(6) <= '1';
	WAIT FOR 100000 ps;
	Datos(6) <= '0';
	WAIT FOR 25000 ps;
	Datos(6) <= '1';
	WAIT FOR 75000 ps;
	Datos(6) <= '0';
	WAIT FOR 25000 ps;
	Datos(6) <= '1';
	WAIT FOR 75000 ps;
	Datos(6) <= '0';
	WAIT FOR 75000 ps;
	Datos(6) <= '1';
	WAIT FOR 25000 ps;
	Datos(6) <= '0';
	WAIT FOR 50000 ps;
	Datos(6) <= '1';
	WAIT FOR 75000 ps;
	Datos(6) <= '0';
	WAIT FOR 25000 ps;
	Datos(6) <= '1';
	WAIT FOR 150000 ps;
	Datos(6) <= '0';
	WAIT FOR 25000 ps;
	Datos(6) <= '1';
	WAIT FOR 125000 ps;
	Datos(6) <= '0';
	WAIT FOR 25000 ps;
	Datos(6) <= '1';
WAIT;
END PROCESS t_prcs_Datos_6;
-- Datos[5]
t_prcs_Datos_5: PROCESS
BEGIN
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 25000 ps;
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 50000 ps;
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 25000 ps;
	Datos(5) <= '1';
	WAIT FOR 50000 ps;
	Datos(5) <= '0';
	WAIT FOR 25000 ps;
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 25000 ps;
	Datos(5) <= '1';
	WAIT FOR 50000 ps;
	Datos(5) <= '0';
	WAIT FOR 25000 ps;
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 50000 ps;
	Datos(5) <= '1';
	WAIT FOR 50000 ps;
	Datos(5) <= '0';
	WAIT FOR 150000 ps;
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 125000 ps;
	Datos(5) <= '1';
	WAIT FOR 25000 ps;
	Datos(5) <= '0';
	WAIT FOR 50000 ps;
	Datos(5) <= '1';
WAIT;
END PROCESS t_prcs_Datos_5;
-- Datos[4]
t_prcs_Datos_4: PROCESS
BEGIN
	Datos(4) <= '0';
	WAIT FOR 25000 ps;
	Datos(4) <= '1';
	WAIT FOR 50000 ps;
	Datos(4) <= '0';
	WAIT FOR 75000 ps;
	Datos(4) <= '1';
	WAIT FOR 25000 ps;
	Datos(4) <= '0';
	WAIT FOR 50000 ps;
	Datos(4) <= '1';
	WAIT FOR 75000 ps;
	Datos(4) <= '0';
	WAIT FOR 50000 ps;
	Datos(4) <= '1';
	WAIT FOR 25000 ps;
	Datos(4) <= '0';
	WAIT FOR 25000 ps;
	Datos(4) <= '1';
	WAIT FOR 25000 ps;
	Datos(4) <= '0';
	WAIT FOR 50000 ps;
	Datos(4) <= '1';
	WAIT FOR 25000 ps;
	Datos(4) <= '0';
	WAIT FOR 25000 ps;
	Datos(4) <= '1';
	WAIT FOR 25000 ps;
	Datos(4) <= '0';
	WAIT FOR 75000 ps;
	Datos(4) <= '1';
	WAIT FOR 75000 ps;
	Datos(4) <= '0';
	WAIT FOR 25000 ps;
	Datos(4) <= '1';
	WAIT FOR 25000 ps;
	Datos(4) <= '0';
	WAIT FOR 25000 ps;
	Datos(4) <= '1';
	WAIT FOR 50000 ps;
	Datos(4) <= '0';
	WAIT FOR 100000 ps;
	Datos(4) <= '1';
WAIT;
END PROCESS t_prcs_Datos_4;
-- Datos[3]
t_prcs_Datos_3: PROCESS
BEGIN
	Datos(3) <= '1';
	WAIT FOR 25000 ps;
	Datos(3) <= '0';
	WAIT FOR 50000 ps;
	Datos(3) <= '1';
	WAIT FOR 25000 ps;
	Datos(3) <= '0';
	WAIT FOR 50000 ps;
	Datos(3) <= '1';
	WAIT FOR 150000 ps;
	Datos(3) <= '0';
	WAIT FOR 25000 ps;
	Datos(3) <= '1';
	WAIT FOR 75000 ps;
	Datos(3) <= '0';
	WAIT FOR 25000 ps;
	Datos(3) <= '1';
	WAIT FOR 50000 ps;
	Datos(3) <= '0';
	WAIT FOR 50000 ps;
	Datos(3) <= '1';
	WAIT FOR 25000 ps;
	Datos(3) <= '0';
	WAIT FOR 50000 ps;
	Datos(3) <= '1';
	WAIT FOR 50000 ps;
	Datos(3) <= '0';
	WAIT FOR 25000 ps;
	Datos(3) <= '1';
	WAIT FOR 50000 ps;
	Datos(3) <= '0';
	WAIT FOR 25000 ps;
	Datos(3) <= '1';
	WAIT FOR 50000 ps;
	Datos(3) <= '0';
	WAIT FOR 25000 ps;
	Datos(3) <= '1';
	WAIT FOR 50000 ps;
	Datos(3) <= '0';
	WAIT FOR 25000 ps;
	Datos(3) <= '1';
	WAIT FOR 25000 ps;
	Datos(3) <= '0';
WAIT;
END PROCESS t_prcs_Datos_3;
-- Datos[2]
t_prcs_Datos_2: PROCESS
BEGIN
	Datos(2) <= '0';
	WAIT FOR 25000 ps;
	Datos(2) <= '1';
	WAIT FOR 125000 ps;
	Datos(2) <= '0';
	WAIT FOR 100000 ps;
	Datos(2) <= '1';
	WAIT FOR 50000 ps;
	Datos(2) <= '0';
	WAIT FOR 25000 ps;
	Datos(2) <= '1';
	WAIT FOR 50000 ps;
	Datos(2) <= '0';
	WAIT FOR 175000 ps;
	Datos(2) <= '1';
	WAIT FOR 75000 ps;
	Datos(2) <= '0';
	WAIT FOR 50000 ps;
	Datos(2) <= '1';
	WAIT FOR 50000 ps;
	Datos(2) <= '0';
	WAIT FOR 75000 ps;
	Datos(2) <= '1';
	WAIT FOR 50000 ps;
	Datos(2) <= '0';
	WAIT FOR 50000 ps;
	Datos(2) <= '1';
	WAIT FOR 75000 ps;
	Datos(2) <= '0';
WAIT;
END PROCESS t_prcs_Datos_2;
-- Datos[1]
t_prcs_Datos_1: PROCESS
BEGIN
	Datos(1) <= '1';
	WAIT FOR 25000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 25000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 75000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 25000 ps;
	Datos(1) <= '0';
	WAIT FOR 100000 ps;
	Datos(1) <= '1';
	WAIT FOR 50000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 25000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 50000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 25000 ps;
	Datos(1) <= '0';
	WAIT FOR 75000 ps;
	Datos(1) <= '1';
	WAIT FOR 25000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 75000 ps;
	Datos(1) <= '0';
	WAIT FOR 50000 ps;
	Datos(1) <= '1';
	WAIT FOR 75000 ps;
	Datos(1) <= '0';
	WAIT FOR 25000 ps;
	Datos(1) <= '1';
	WAIT FOR 75000 ps;
	Datos(1) <= '0';
WAIT;
END PROCESS t_prcs_Datos_1;
-- Datos[0]
t_prcs_Datos_0: PROCESS
BEGIN
	Datos(0) <= '1';
	WAIT FOR 50000 ps;
	Datos(0) <= '0';
	WAIT FOR 50000 ps;
	Datos(0) <= '1';
	WAIT FOR 25000 ps;
	Datos(0) <= '0';
	WAIT FOR 25000 ps;
	Datos(0) <= '1';
	WAIT FOR 25000 ps;
	Datos(0) <= '0';
	WAIT FOR 100000 ps;
	Datos(0) <= '1';
	WAIT FOR 75000 ps;
	Datos(0) <= '0';
	WAIT FOR 25000 ps;
	Datos(0) <= '1';
	WAIT FOR 25000 ps;
	Datos(0) <= '0';
	WAIT FOR 50000 ps;
	Datos(0) <= '1';
	WAIT FOR 25000 ps;
	Datos(0) <= '0';
	WAIT FOR 25000 ps;
	Datos(0) <= '1';
	WAIT FOR 125000 ps;
	Datos(0) <= '0';
	WAIT FOR 25000 ps;
	Datos(0) <= '1';
	WAIT FOR 50000 ps;
	Datos(0) <= '0';
	WAIT FOR 150000 ps;
	Datos(0) <= '1';
	WAIT FOR 100000 ps;
	Datos(0) <= '0';
WAIT;
END PROCESS t_prcs_Datos_0;

-- Find
t_prcs_Find: PROCESS
BEGIN
	Find <= '0';
	WAIT FOR 290000 ps;
	Find <= '1';
	WAIT FOR 20000 ps;
	Find <= '0';
WAIT;
END PROCESS t_prcs_Find;
END Structural_arch;
