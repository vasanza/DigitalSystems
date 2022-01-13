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
-- Generated on "01/13/2022 13:08:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          processor_design
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY processor_design_vhd_vec_tst IS
END processor_design_vhd_vec_tst;
ARCHITECTURE processor_design_arch OF processor_design_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL prueba_ADDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL prueba_ADDRESS : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL prueba_AddrSel : STD_LOGIC;
SIGNAL prueba_Contador_Programa : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL prueba_Data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL prueba_Enable : STD_LOGIC;
SIGNAL prueba_immidiate : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_incPC : STD_LOGIC;
SIGNAL prueba_INST : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL prueba_LoadEn : STD_LOGIC;
SIGNAL prueba_LoadInstr : STD_LOGIC;
SIGNAL prueba_OP1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_OP2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_OPCODE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL prueba_read_W_1 : STD_LOGIC;
SIGNAL prueba_read_W_2 : STD_LOGIC;
SIGNAL prueba_RegisterAsel : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_RegisterBsel : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_RegisterRessel : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_Result : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL prueba_Zero : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
COMPONENT processor_design
	PORT (
	CLOCK : IN STD_LOGIC;
	prueba_ADDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	prueba_ADDRESS : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	prueba_AddrSel : OUT STD_LOGIC;
	prueba_Contador_Programa : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	prueba_Data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	prueba_Enable : OUT STD_LOGIC;
	prueba_immidiate : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_incPC : OUT STD_LOGIC;
	prueba_INST : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	prueba_LoadEn : OUT STD_LOGIC;
	prueba_LoadInstr : OUT STD_LOGIC;
	prueba_OP1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_OP2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_OPCODE : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	prueba_read_W_1 : OUT STD_LOGIC;
	prueba_read_W_2 : OUT STD_LOGIC;
	prueba_RegisterAsel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_RegisterBsel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_RegisterRessel : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_Result : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	prueba_Zero : OUT STD_LOGIC;
	RESET : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : processor_design
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	prueba_ADDR => prueba_ADDR,
	prueba_ADDRESS => prueba_ADDRESS,
	prueba_AddrSel => prueba_AddrSel,
	prueba_Contador_Programa => prueba_Contador_Programa,
	prueba_Data => prueba_Data,
	prueba_Enable => prueba_Enable,
	prueba_immidiate => prueba_immidiate,
	prueba_incPC => prueba_incPC,
	prueba_INST => prueba_INST,
	prueba_LoadEn => prueba_LoadEn,
	prueba_LoadInstr => prueba_LoadInstr,
	prueba_OP1 => prueba_OP1,
	prueba_OP2 => prueba_OP2,
	prueba_OPCODE => prueba_OPCODE,
	prueba_read_W_1 => prueba_read_W_1,
	prueba_read_W_2 => prueba_read_W_2,
	prueba_RegisterAsel => prueba_RegisterAsel,
	prueba_RegisterBsel => prueba_RegisterBsel,
	prueba_RegisterRessel => prueba_RegisterRessel,
	prueba_Result => prueba_Result,
	prueba_Zero => prueba_Zero,
	RESET => RESET
	);

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
	WAIT FOR 30000 ps;
	RESET <= '1';
WAIT;
END PROCESS t_prcs_RESET;

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 2500 ps;
	CLOCK <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
END processor_design_arch;
