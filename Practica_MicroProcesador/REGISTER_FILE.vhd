library ieee;
use ieee.std_logic_1164.all;
use ieee.Numeric_Std.all;
use ieee.std_logic_UNSIGNED.all;

Entity REGISTER_FILE is
	Port(
			clock, reset:	in STD_LOGIC;
			RegisterAsel, RegisterBsel, RegRessel: in STD_LOGIC_VECTOR(4 downto 0);
			DATA_IN: in STD_LOGIC_VECTOR(4 DOWNTO 0);
			LoadEn, idCarryIn, idZeroIn:	in STD_LOGIC;
			odZeroOut, odCarryOut:	out STD_LOGIC;
			odRegA, odRegB: out STD_LOGIC_VECTOR(4 DOWNTO 0)
			);
end REGISTER_FILE;

Architecture solution of REGISTER_FILE is
type Registers is array (31 downto 0) of std_logic_vector(4 downto 0);
Signal iclock, ireset, icLoadEn,sdCarry,sdZero: STD_LOGIC;
Signal icRegAsel, icRegBsel, icRegRessel: STD_LOGIC_VECTOR(4 downto 0);
Signal idDataIn: STD_LOGIC_VECTOR(4 downto 0);
Signal registerFile: Registers;
Signal flag: STD_LOGIC:='0';


BEGIN
iclock<=clock;ireset<=reset;icLoadEn<=LoadEn;
icRegAsel<=RegisterAsel;icRegBsel<=RegisterBsel;icRegRessel<=RegRessel;
idDataIn<= Data_In;
	process(iclock, ireset,icLoadEn)
	begin
		if (ireset = '0') then
			for i in 31 downto 0 loop
				registerFile(i) <= (others=>'0');
			end loop;
			sdCarry <= '0';
			sdZero <= '0';
			flag<='0';
		elsif (rising_edge(iClock)) then
			if (icLoadEn = '1' and flag='0') then
				registerFile(to_integer(unsigned(icRegRessel))) <= idDataIn;
				sdCarry <= idCarryIn;
				sdZero <= idZeroIn;
				flag<='1';
			end if;
			if (LoadEn='0') then
				flag<='0';
			end if;
		end if;
end process;

odRegA <= registerFile(to_integer(unsigned(icRegAsel)));
odRegB <= registerFile(to_integer(unsigned(icRegBsel)));
odCarryOut <= sdCarry;
odZeroOut <= sdZero;
end solution;