--Synchronous Sequential Machine
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity MSS is
	port(
		resetn,clk,Din,Nin: in std_logic;
		est: out std_logic_vector(2 downto 0);
		Cout: out std_logic);
end MSS;

--Architecture
architecture solve of MSS is
	-- Signals,Constants,Variables,Components
	type estado is (A,B,C,D,E);
	signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn = '0' then y<= A;
			elsif (clk'event and clk = '1') then
				case y is
					when A => 
							  if Din='0' and Nin='0' then y <= A;
							  elsif Din='0' and Nin='1' then y <= C;
							  elsif Din='1' and Nin='0' then y <= B;
							  else y <= A; end if;						  
					when B => 
							  if Din='0' and Nin='0' then y <= B;
							  elsif Din='0' and Nin='1' then y <= D;
							  elsif Din='1' and Nin='0' then y <= E;
							  else y <= B; end if;
					when C => 
							  if Din='0' and Nin='0' then y <= C;
							  elsif Din='0' and Nin='1' then y <= B;
							  elsif Din='1' and Nin='0' then y <= D;
							  else y <= C; end if;
					when D => 
							  y <= A;
					when E => 
							  y <= C;
				end case;
			end if;
	end process;
	--Process #2: Output decoder
	process(y)-- mealy ->(y,d,n)
	--Sequential programming
		begin
			cout<='0';
			case y is
				when A => est<="000";
				when B => est<="001";
				when C => est<="010";
				when D => cout<='1';est<="100";
				when E => cout<='1';est<="011"; 
			end case;
	end process;
	--Process #n... 
end solve;