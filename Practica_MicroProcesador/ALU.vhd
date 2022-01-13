library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

Entity ALU is -- ALU control decoder
	port(	OP1, OP2:	 in STD_LOGIC_VECTOR(4 downto 0);
			izero, icarry: in STD_LOGIC;
			immidiate: in STD_LOGIC_VECTOR(4 downto 0);
			OpCode: in STD_LOGIC_VECTOR(5 downto 0);
			odzero, odcarry: out STD_LOGIC;
			Result: out STD_LOGIC_VECTOR(4 downto 0)
			);
end ALU;

Architecture behave of ALU is
SIGNAL temp:	STD_LOGIC_VECTOR(5 downto 0);
CONSTANT C:		STD_LOGIC_VECTOR(4 DOWNTO 0):="00001";

CONSTANT	shl:	STD_LOGIC_VECTOR(5 DOWNTO 0):="000001";
CONSTANT	shr:	STD_LOGIC_VECTOR(5 DOWNTO 0):="000010";
CONSTANT	sto:	STD_LOGIC_VECTOR(5 DOWNTO 0):="000011";
CONSTANT	loa:	STD_LOGIC_VECTOR(5 DOWNTO 0):="000100";
CONSTANT	li	:	STD_LOGIC_VECTOR(5 DOWNTO 0):="000110";
CONSTANT	add:	STD_LOGIC_VECTOR(5 DOWNTO 0):="000111";
CONSTANT	sub:	STD_LOGIC_VECTOR(5 DOWNTO 0):="001000";
CONSTANT	addc:	STD_LOGIC_VECTOR(5 DOWNTO 0):="001001";
CONSTANT	subc:	STD_LOGIC_VECTOR(5 DOWNTO 0):="001010";
CONSTANT	opand:STD_LOGIC_VECTOR(5 DOWNTO 0):="001011";
CONSTANT	opor:	STD_LOGIC_VECTOR(5 DOWNTO 0):="001100";
CONSTANT	opxor:STD_LOGIC_VECTOR(5 DOWNTO 0):="001101";
CONSTANT	opnot:STD_LOGIC_VECTOR(5 DOWNTO 0):="001110";
CONSTANT	jpz:	STD_LOGIC_VECTOR(5 DOWNTO 0):="001111";
CONSTANT	jp:	STD_LOGIC_VECTOR(5 DOWNTO 0):="010000";

begin
	process(OpCode,OP1,OP2,izero, icarry,immidiate)
	begin
		odzero<='0';
		case OpCode is -- R-type instructions
			when shl		=> Result<= OP1(4)&OP1(3)&OP1(2)&OP1(1)&'1';-- shift left (OP1)
			when shr		=> Result<= '1'&OP1(3)&OP1(2)&OP1(1)&OP1(0);-- shift right(OP1)
			when sto		=> -- store RAM(address)<= OP1
			when loa		=> -- load	Result<= RAM(address)
			when li		=> Result<= immidiate;	-- load immediate
			when add		=> temp<= ('0'&OP1)+('0'&OP2);	-- add
								Result<= temp(4 downto 0);
								odcarry<=temp(5);
			when sub		=> Result<= OP1-OP2;		-- subtraction
								if ((OP1-OP2)="00000") then odzero<='1'; end if;
			when addc	=> temp<= ('0'&OP1)+('0'&OP2)+('0'+C);-- add + Constant
								Result<= temp(4 downto 0);
								odcarry<=temp(5);			
			when subc	=> Result<= OP1-OP2-C;	-- subtraction - Constant
			when opand	=> Result<= OP1 and OP2;-- AND Operation
			when opor	=> Result<= OP1 or OP2;	-- OR Operation
			when opxor	=> Result<= OP1 xor OP2;-- XOR Operation
			when opnot	=> Result<= not OP1;		-- NOT Operation
			when jpz		=>	-- jpz Operation
			when jp		=> -- NOT Operation
			when others	=> Result<= (others=> '-');		-- ???
		end case;
	end process;
end behave;