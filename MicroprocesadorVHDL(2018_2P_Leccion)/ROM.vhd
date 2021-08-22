library ieee;
use ieee.std_logic_1164.all;

entity ROM is
	port(Add,Din: in std_logic_vector(3 downto 0);
				clk: in std_logic;
				Dout: out std_logic_vector(3 downto 0));
end ROM;

architecture comp of ROM is
		begin
end comp;