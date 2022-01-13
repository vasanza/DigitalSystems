library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Fetch_Decode is
	Port (CLK, RESET: IN STD_LOGIC;
			Instruction: in STD_LOGIC_VECTOR(31 downto 0);
			Load_Instr,AddrSel, incPC, Jump: in STD_LOGIC;
			Address: out STD_LOGIC_VECTOR(9 downto 0);
			OpCode: OUT STD_LOGIC_VECTOR(5 downto 0);
			immidiate: OUT STD_LOGIC_VECTOR(4 downto 0);
			RegisterAsel, RegisterBsel, RegisterRessel: OUT STD_LOGIC_VECTOR(4 downto 0); 
			prueba_Contador_Programa: OUT STD_LOGIC_VECTOR(9 downto 0));
end Fetch_Decode;

Architecture sol of Fetch_Decode is
SIGNAL Ld_Counter: STD_LOGIC;
SIGNAL Contador_Programa: STD_LOGIC_VECTOR(9 downto 0);
SIGNAL Selectora_registros: STD_LOGIC_VECTOR(2 downto 0);
SIGNAL temp_OPCODE: STD_LOGIC_VECTOR(5 downto 0);
SIGNAL Result: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL Operand1: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL Operand2_Immediate_Address: STD_LOGIC_VECTOR(15 downto 0);
SIGNAL Address_jump,Address_jump_OUT: STD_LOGIC_VECTOR(9 downto 0);
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

COMPONENT Program_Counter is
	Port(
			clock, reset:	in STD_LOGIC;
			Ld:	in STD_LOGIC;
			Dato_In: in STD_LOGIC_VECTOR(9 DOWNTO 0);
			incremento: in STD_LOGIC;
			salida: BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0)
			);
end COMPONENT;
COMPONENT jump_register is
	Port ( D: in STD_LOGIC_VECTOR(9 downto 0);
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR(9 downto 0));
end COMPONENT;
--COMPONENT address_register is
--	Port ( D: in STD_LOGIC_VECTOR(3 downto 0);
--		CLK, RESET, enable: in STD_LOGIC;
--		Q: out STD_LOGIC_VECTOR(3 downto 0));
--end COMPONENT;

Begin
	temp_OPCODE<= Instruction(31 downto 26);
	Result<= Instruction(25 downto 21);
	Operand1<= Instruction(20 downto 16);
	Operand2_Immediate_Address<= Instruction(15 downto 0);
	Address_jump<= Operand2_Immediate_Address(9 downto 0);
	
	RegisterAsel<=Operand1 when Load_Instr='1' else (others => '-');
	RegisterBsel<=Operand2_Immediate_Address(15 downto 11) when Load_Instr='1' else (others => '-');
	RegisterRessel<=Result when Load_Instr='1' else (others => '-');
	prueba_Contador_Programa<=Contador_Programa;
	
	Address<= Contador_Programa when AddrSel='1';
	Ld_Counter<='1' when Jump='1' else '0';
										
	OpCode<= temp_OPCODE when Load_Instr='1' else (others =>'-');
	immidiate<= Operand2_Immediate_Address(4 downto 0) when (temp_OPCODE=li and Load_Instr='1') else (others =>'-');
							
	PC1:	Program_Counter	port map(CLK,RESET,Ld_counter,Address_jump,incPC,Contador_Programa);
	JR1:	jump_register		port map(Address_jump,CLK,RESET,Jump,Address_jump_OUT);
--	ADDR1:address_register	port map();	
end sol;