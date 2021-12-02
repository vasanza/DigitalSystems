--Synchronous Sequential Machine
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity MSS is
	port(
		resetn,clk,Start,Load,Find,AmayorB,AmenorC: in std_logic;
		est: out std_logic_vector(4 downto 0);
		sel: out std_logic_vector(1 downto 0);
		Done,en0,en1,en2,enMax,enMin: out std_logic);
end MSS;

--Architecture
--AmayorB -> Qreg > Qmax
--AmenorC -> Qreg < Qmin
--Architecture
architecture solve of MSS is
	-- Signals,Constants,Variables,Components
	type estado is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16);
	signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn = '0' then y<= s1;
			elsif (clk'event and clk = '1') then
				case y is
					when s0 => 
							  if Start='0'then y <= s0;
							  else y <= s1; end if;
					when s1 => 
							  if Start='1'then y <= s1;
							  else y <= s2; end if;
					when s2 => 
							  if Start='0'then y <= s2;
							  else y <= s3; end if;
					when s3 => 
							  if Start='1'then y <= s3;
							  else y <= s4; end if;
					when s4 =>          --Load
							  if Load='0'then y <= s4;
							  else y <= s5; end if;
				   when s5 => 			--Load Datos on register 1
							  if Load='1'then y <= s5;
							  else y <= s6; end if;
					when s6 => 
							  if Load='0'then y <= s6;
							  else y <= s7; end if;
				   when s7 =>        --Load Datos on register 2
							  if Load='1'then y <= s7;
							  else y <= s8; end if;
				   when s8 => 
							  if Load='0'then y <= s8;
							  else y <= s9; end if;
				   when s9 =>        --Load Datos on register 3
							  if Load='1'then y <= s9;
							  else y <= s10; end if;
					when s10 => 
							  if Find='0'then y <= s10;
							  else y <= s11; end if;
				   when s11 => 
							  if Find='1'then y <= s11;
							  else y <= s12; end if;
					when s12 =>  y <= s13;  --Smux(0,0)
					when s13 =>  y <= s14;  --Smux(0,1)
					when s14 =>  y <= s15;  --Smux(1,0)
					when s15 => 	   --Done
							  if Start='0'then y <= s15;
							  else y <= s16; end if;
					when s16 => 			--Done
							  if Start='1'then y <= s16;
							  else y <= s0; end if;
				end case;
			end if;
	end process;
	--Process #2: Output decoder
	process(y,AmayorB,AmenorC)-- mealy ->(y,d,n)
	--Sequential programming
		begin
			en0<='0';en1<='0';en2<='0';
			enMax<='0';enMin<='0';Done<='0';
			case y is
				when s0 => est<="00000";
				when s1 => est<="00001";
				when s2 => est<="00010";
				when s3 => est<="00011";
				when s4 => est<="00100";
				when s5 => en0<='1'; est<="00101";
			   when s6 => est<="00110";
				when s7 => en1<='1'; est<="00111";
				when s8 => est<="01000";
				when s9 => en2<='1'; est<="01001";
				when s10 => est<="01010";
				when s11 => est<="01011";
				when s12 => est<="01100";
								if AmayorB='1'then enMax<='1'; end if;
								if AmenorC='1'then enMin<='1'; end if;
				when s13 => sel(0)<='1'; est<="01101";
								if AmayorB='1'then enMax<='1'; end if;
								if AmenorC='1'then enMin<='1'; end if;
				when s14 => sel(1)<='1'; est<="01110";
								if AmayorB='1'then enMax<='1'; end if;
								if AmenorC='1'then enMin<='1'; end if;
			   when s15 => Done<='1'; est<="01111";
				when s16 => Done<='1'; est<="10000";
			end case;
	end process;
	--Process #n... 
end solve;