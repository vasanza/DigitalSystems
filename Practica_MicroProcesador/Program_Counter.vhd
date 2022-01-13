library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_ARITH.all;
use ieee.Numeric_Std.all;
use ieee.std_logic_UNSIGNED.all;

Entity Program_Counter is
	Port(
			clock, reset:	in STD_LOGIC;
			Ld:	in STD_LOGIC;
			Dato_In: in STD_LOGIC_VECTOR(9 DOWNTO 0);
			incremento: in STD_LOGIC;
			salida: BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0)
			);
end Program_Counter;

Architecture solution of Program_Counter is
SIGNAL flag: STD_LOGIC:='0';
Begin
	process(clock, reset)
	begin
		if (reset = '0') then
			salida<=(others => '0');
		elsif (clock'event and clock='1') then
			if (Ld='1') then salida<=Dato_In;
			elsif (incremento='1' and flag='0') then
				salida<=salida+1;
				flag<='1';
			elsif (incremento='0') then flag<='0';
			end if;
		end if;
	end process;				
End solution;