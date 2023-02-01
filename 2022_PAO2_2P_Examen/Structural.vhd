--Structural Implementation
--https://vasanza.blogspot.com
--https://github.com/vasanza/MSI-VHDL

--Library
library ieee;
use ieee.std_logic_1164.all;
use work.Package_library.all;

--Entity
entity Structural is
	port(
		Start,Ok,Clk,Resetn: in std_logic;
		Fin: out std_logic;
end Structural;

--Architecture
architecture solve of Structural is
	-- Signals,Constants,Variables,Components
	signal NewMin,NewMax,MaxAdd,Encnt,Ldcnt: std_logic;
	signal Modo1,Modo2,Salu,EnMax,EnMin,Smux: std_logic;
	signal Bus1,Bus2,Bus3,Bus4: std_logic_vector(7 downto 0);
	signal Bus5,Bus6,Bus7,Bus8: std_logic_vector(7 downto 0);
	signal nc: std_logic;
	
	begin
		--Concurrent implementation
		Controller: MSS port map (Start,Ok,Clk,resetn,NewMin,NewMax,MaxAdd,Fin,Encnt,Ldcnt,Modo1,Modo2,Salu,EnMax,EnMin,Smux);
		Contador_up: Contador_up port map ("00000000",Clk,Encnt,Ldcnt,Bus1);
		RAM_1: RAM port map (Clk,Modo1,Bus1,"00000000",Bus2);
		RAM_2: RAM port map (Clk,Modo2,Bus1,"00000000",Bus3);
		ALU: ALU port map (Bus2,Bus3,Salu,Bus4);
		Reg_Sost_Max: Reg_Sost port map (Bus4,Clk,EnMax,Bus5);
		Reg_Sost_Min: Reg_Sost port map (Bus4,Clk,EnMin,Bus6);		
		MUX2a1: Mux2a1 port map (Bus5,Bus6,Smux,Bus7);
		Comparador: Comparador port map (Bus4,Bus7,nc,NewMin,NewMax);

end solve;