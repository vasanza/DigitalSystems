library ieee;
use ieee.std_logic_1164.all;

entity RegInst is
	port(Din: in std_logic_vector(3 downto 0);
				clk,en: in std_logic;
				Qout: out std_logic_vector(3 downto 0));
end RegInst;

architecture comp of RegInst is
		begin
end comp;