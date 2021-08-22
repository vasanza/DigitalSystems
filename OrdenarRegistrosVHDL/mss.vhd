library ieee;
use ieee.std_logic_1164.all;

Entity mss is
	Port(	start,clock,Resetn,AmayB: in std_logic;
			sel: out std_logic_vector(1 downto 0);
			en1,en2,en3,ent,fin: out std_logic);
end mss;

Architecture sol of mss is
Begin

end sol;