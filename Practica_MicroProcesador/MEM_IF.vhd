library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEM_IF is
	Port ( 	inRnW, inEnable: in STD_LOGIC;
				inAddress: in STD_LOGIC_VECTOR(9 downto 0);
				oRnW: out STD_LOGIC;
				oAddress: OUT STD_LOGIC_VECTOR(9 downto 0);
				Data: inout STD_LOGIC_VECTOR(31 downto 0);
				instruction: out STD_LOGIC_VECTOR(31 downto 0));
end MEM_IF;

Architecture sol of MEM_IF is
Begin
	oRnW<=NOT(inRnW) when inEnable='1' else '-';
	instruction<= Data when inEnable='1' else (others => '-');
	oAddress<= inAddress when inEnable='1' else (others => '-');
end sol;