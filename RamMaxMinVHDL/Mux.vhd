LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY Mux IS
	Port(sel: in std_logic;
			i0,i1 : in std_logic_vector(3 downto 0);
			Q : out std_logic_vector(3 downto 0));
END Mux;

ARCHITECTURE sol OF Mux IS
BEGIN

END sol;