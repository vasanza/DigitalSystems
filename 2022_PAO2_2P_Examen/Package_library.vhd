--Package library example
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;

Package Package_library is
	component RAM is
		generic ( n: integer :=8);--<-- nbits
		port(
			Clk,Modo: in std_logic;
			Address, DataIn: in std_logic_vector(n-1 downto 0);
			DataOut: out std_logic_vector(n-1 downto 0));
	end component;
	
	component Contador_up is
		generic ( n: integer :=8);--<-- nbits
		Port(
			InCnt: in std_logic_vector(n-1 downto 0);
			Clk,En,Ld: in std_logic;
			Q: out std_logic_vector(n-1 downto 0));
	end component;
	
	component ALU is
		generic ( n: integer:=8);--<-- nbits
		port (
			I0,I1 : in std_logic_vector(n-1 downto 0);
			Sel: in std_logic;
			Q : out std_logic_vector(n-1 downto 0));
	end component;
	
	component Reg_Sost is
		generic ( n: integer :=8);--<-- nbits
		Port(
			Ent: in std_logic_vector(n-1 downto 0);
			Clk,En: in std_logic;
			Q: out std_logic_vector(n-1 downto 0));
	end component;
	
	component Mux2a1 is
		generic ( n: integer:=8);--<-- nbits
		port (
			I0,I1 : in std_logic_vector(n-1 downto 0);
			sel : in std_logic;
			Q : out std_logic_vector(n-1 downto 0));
	end component;

	component Comparador is
		generic ( n: integer:=8);--<-- nbits
		port (
			A,B : in std_logic_vector(n-1 downto 0);
			AigualB,AmenB,AmayorB : out std_logic);
	end component;

	component MSS is
		port(
			Start,Ok,Clk,Resetn: in std_logic;
			NewMin,NewMax,MaxAdd: in std_logic;
			Fin,Encnt,Ldcnt: out std_logic;
			Modo1,Modo2,Salu: out std_logic;
			EnMax,EnMin,Smux: out std_logic);
	end component;
	
end Package_library;