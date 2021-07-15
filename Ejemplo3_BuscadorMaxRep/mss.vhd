--Synchronous Sequential Machine
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity mss is
	port(
		resetn,clk,start: in std_logic;
		ingreso,imax,NewMax,CntMax,IncRep: in std_logic;
		Smux,ResetCnt,EnCnt,Reseti,eni,wr: out std_logic;
		enMax,enRep,ldRep,FinIngreso,Fin: out std_logic);
end mss;

--Architecture
architecture solve of mss is
	-- Signals,Constants,Variables,Components
	--type estado is (s1,s2,s3,s4,s5);
	--signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	--process(resetn,clk)
	--Sequential programming
	--	begin

	--end process;
	--Process #n... 
end solve;