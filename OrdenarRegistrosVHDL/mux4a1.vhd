library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4a1 is
generic ( n: integer:=8);
port (
      i0 : in std_logic_vector(n-1 downto 0);
		i1 : in std_logic_vector(n-1 downto 0);
		i2 : in std_logic_vector(n-1 downto 0);
		i3 : in std_logic_vector(n-1 downto 0);
     sel : in std_logic_vector(1 downto 0);
     Q : out std_logic_vector(n downto 0));
end mux4a1;

architecture Behavioral of mux4a1 is
begin

with sel select 
	Q<= '0' & i0 when "00",
		 '0' & i1 when "01",
		 '0' & i2 when "10",
		 '0' & i3 when others;
end Behavioral;