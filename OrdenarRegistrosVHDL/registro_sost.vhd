LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY registro_sost IS
	Generic(n: Integer := 8);
	Port(Resetn, Clock, En : in std_logic;
			DataIn : in std_logic_vector(n-1 downto 0);
			Q : out std_logic_vector(n-1 downto 0));
END registro_sost;

ARCHITECTURE sol OF registro_sost IS
SIGNAL temp: STD_LOGIC_VECTOR(n-1 downto 0);
BEGIN
	PROCESS(Clock,Resetn)
	BEGIN
		if Resetn='0' then temp<= (OTHERS =>'0');
		elsif (Clock'event and Clock='1') then
			if(En='1') then 
				temp<=DataIn;
			end if;
		end if;
	end process;
	Q<=temp;
END sol;
