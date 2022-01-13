library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro_sostenimiento is
	Port ( D: in STD_LOGIC;
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC);
end registro_sostenimiento;

Architecture sol of registro_sostenimiento is
SIGNAL Q1: STD_LOGIC;
Begin
	Q <= Q1;
	
	process (CLK, RESET)
	begin
		if reset ='0' then Q1 <= '0';
		elsif (clk'event and clk='1' and enable='1') then
			Q1<=D;
		end if;
	end process;	
end sol;