library ieee;
use ieee.std_logic_1164.all;

Entity RAM is
	Port(	modo,Clk: in std_logic;
			Add,Din: in std_logic_vector(3 downto 0);
			Q: out std_logic_vector(3 downto 0));
end RAM;

Architecture sol of RAM is
Begin

end sol;