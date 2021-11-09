library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity LeccionC2 is
	port( clk,resetn: in std_logic;
		  In_1, In_2: in std_logic;
		  Out_1, Out_2: out std_logic);
end LeccionC2;

architecture comportamiento of LeccionC2 is
	type estado is (A,B,C,D,E,F,G,H);
	signal y: estado;
begin
	--Decodificador de estados siguientes y 
	--Memoria de estados
	process(resetn,clk)
	begin
		if resetn='0' then y<=A;
		elsif (clk'event and clk='1')then
			case y is
				when A => if In_1='1' and In_2='0' then y<=B;
						elsif In_1='0' and In_2='1' then y<=E;
						else y<='A';end if;
				when B => if In_1='0' and In_2='0' then y<=C;
						else y<='B';end if;
				when C => if In_1='0' and In_2='1' then y<=D;
						else y<='C';end if;
				when D => if In_1='0' and In_2='0' then y<=A;
						else y<='D';end if;
				when E => if In_1='0' and In_2='0' then y<=F;
						else y<='E';end if;
				when F => if In_1='1' and In_2='0' then y<=G;
						else y<='F';end if;
				when G => if In_1='0' and In_2='0' then y<=A;
						else y<='G';end if;
			end case;		
end if;
	end process;
	--Decodificador de salidas modelo MOORE
	Out_1 <='1' when y=D else '0';
	Out_2 <='1' when y=G else '0';
end comportamiento;
