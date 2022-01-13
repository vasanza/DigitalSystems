library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

PACKAGE paquete IS
	COMPONENT CONTROL_UNIT is
		Port(
			clock, reset, Zero, carry: in STD_LOGIC;
			OpCode: in STD_LOGIC_VECTOR(5 downto 0);
			Enable, RnW, LoadInstr, AddrSel, incPC, jump, LoadEn: out STD_LOGIC
			);
	end COMPONENT;
	COMPONENT REGISTER_FILE is
		Port(
			clock, reset:	in STD_LOGIC;
			RegisterAsel, RegisterBsel, RegRessel: in STD_LOGIC_VECTOR(4 downto 0);
			DATA_IN: in STD_LOGIC_VECTOR(4 DOWNTO 0);
			LoadEn, idCarryIn, idZeroIn:	in STD_LOGIC;
			odZeroOut, odCarryOut:	out STD_LOGIC;
			odRegA, odRegB: out STD_LOGIC_VECTOR(4 DOWNTO 0)
			);
	end COMPONENT;
	COMPONENT ALU is
		port(	OP1, OP2:	 in STD_LOGIC_VECTOR(4 downto 0);
			izero, icarry: in STD_LOGIC;
			immidiate: in STD_LOGIC_VECTOR(4 downto 0);
			OpCode: in STD_LOGIC_VECTOR(5 downto 0);
			odzero, odcarry: out STD_LOGIC;
			Result: out STD_LOGIC_VECTOR(4 downto 0)
			);
	end COMPONENT;
	COMPONENT Program_Counter is
		Port(
			clock, reset:	in STD_LOGIC;
			incremento: in STD_LOGIC;
			salida: BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0)
			);
	end COMPONENT;
	COMPONENT jump_register is
		Port ( D: in STD_LOGIC_VECTOR(9 downto 0);
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR(9 downto 0));
	end COMPONENT;
	COMPONENT address_register is
		Port ( D: in STD_LOGIC_VECTOR(3 downto 0);
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC_VECTOR(3 downto 0));
	end COMPONENT;
	COMPONENT Fetch_Decode is
		Port (CLK, RESET: IN STD_LOGIC;
			Instruction: in STD_LOGIC_VECTOR(31 downto 0);
			Load_Instr,AddrSel, incPC, Jump: in STD_LOGIC;
			Address: out STD_LOGIC_VECTOR(9 downto 0);
			OpCode: OUT STD_LOGIC_VECTOR(5 downto 0);
			immidiate: OUT STD_LOGIC_VECTOR(4 downto 0);
			RegisterAsel, RegisterBsel, RegisterRessel: OUT STD_LOGIC_VECTOR(4 downto 0); 
			prueba_Contador_Programa: OUT STD_LOGIC_VECTOR(9 downto 0));
	end COMPONENT;
	COMPONENT MEM_IF is
		Port ( 	inRnW, inEnable: in STD_LOGIC;
				inAddress: in STD_LOGIC_VECTOR(9 downto 0);
				oRnW: out STD_LOGIC;
				oAddress: OUT STD_LOGIC_VECTOR(9 downto 0);
				Data: inout STD_LOGIC_VECTOR(31 downto 0);
				instruction: out STD_LOGIC_VECTOR(31 downto 0));
	end COMPONENT;
	COMPONENT ram IS
		PORT
			(address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0));
	END COMPONENT;
	COMPONENT registro_sostenimiento is
	Port ( D: in STD_LOGIC;
		CLK, RESET, enable: in STD_LOGIC;
		Q: out STD_LOGIC);
	end COMPONENT;
END paquete;