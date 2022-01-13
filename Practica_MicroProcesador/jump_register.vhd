library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity jump_register is
	Port ( D: in STD_LOGIC_VECTOR(9 downto 0);
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR(9 downto 0));
end jump_register;

Architecture sol of jump_register is
SIGNAL Q1: STD_LOGIC_VECTOR(9 downto 0);
Begin
	Q <= Q1;
	
	process (CLK, RESET)
	begin
		if reset ='0' then Q1 <= (others =>'0');
		elsif (clk'event and clk='1' and enable='1') then
			Q1<=D (9 downto 0);
		end if;
	end process;	
end sol;