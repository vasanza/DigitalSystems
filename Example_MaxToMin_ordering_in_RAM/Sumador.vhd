
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity Sumador is
	generic ( n: integer :=8);--<------- nbits
	port(
		X,Y: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n downto 0));
end Sumador;

--Architecture
architecture solve of Sumador is
	-- Signals,Constants,Variables,Components
	begin
		s<=('0'&x)+('0'&y);--Without the sign bit
		--s<='0'&(x+y);--with sign bit
end solve;