LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY RegMax IS
	Port(DataIn : in std_logic_vector(3 downto 0);
			en,Clk: in std_logic;
			Q : out std_logic_vector(3 downto 0));
END RegMax;

ARCHITECTURE sol OF RegMax IS
BEGIN

END sol;