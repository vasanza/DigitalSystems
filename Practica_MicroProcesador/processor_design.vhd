library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.paquete.all;

entity processor_design is
	Port ( 	CLOCK, RESET: in STD_LOGIC;
				prueba_Enable: OUT STD_LOGIC;
				prueba_read_W_1: OUT STD_LOGIC;
				prueba_read_W_2,prueba_LoadInstr,prueba_AddrSel,
				prueba_incPC,prueba_LoadEn: OUT STD_LOGIC;
				prueba_ADDR,prueba_ADDRESS: OUT STD_LOGIC_VECTOR(9 downto 0);
				prueba_immidiate,prueba_Result: OUT STD_LOGIC_VECTOR(4 downto 0);
				prueba_RegisterAsel,prueba_RegisterBsel,prueba_RegisterRessel: OUT STD_LOGIC_VECTOR(4 downto 0);
				prueba_Zero: OUT STD_LOGIC;
				prueba_OP1,prueba_OP2: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
				prueba_Contador_Programa: OUT STD_LOGIC_VECTOR(9 downto 0);
				prueba_OPCODE: OUT STD_LOGIC_VECTOR(5 downto 0);
				prueba_Data: OUT STD_LOGIC_VECTOR(31 downto 0);
				prueba_INST: OUT STD_LOGIC_VECTOR(31 downto 0));
end processor_design;

Architecture sol of processor_design is
SIGNAL RnW1,RnW2,ENABLE: STD_LOGIC;
SIGNAL LoadInstr,AddrSel,incPC,Jump: STD_LOGIC;
SIGNAL ADDR,ADDRESS: STD_LOGIC_VECTOR(9 downto 0);
SIGNAL DATA1,DATA2,INSTRUCTION: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL OPCODE: STD_LOGIC_VECTOR(5 downto 0);
SIGNAL immidiate: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL RegisterAsel,RegisterBsel,RegisterRessel: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL OP1, OP2: STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Zero1,Carry1,Zero2,Carry2: STD_LOGIC;
SIGNAL Result: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL LoadEn: STD_LOGIC;
SIGNAL Zero_temp: STD_LOGIC:='0';

Begin
	prueba_Enable<=Enable;
	prueba_read_W_1<=RnW1;
	prueba_read_W_2<=RnW2;
	prueba_Data<=DATA2;
	prueba_INST<=INSTRUCTION;
	prueba_addr<=ADDR;
	prueba_address<=ADDRESS;
	prueba_immidiate<=immidiate;
	prueba_LoadInstr<=LoadInstr;
	prueba_AddrSel<=AddrSel;
	prueba_incPC<=incPC;
	prueba_LoadEn<=LoadEn;
	prueba_Result<=Result;
	prueba_RegisterAsel<=RegisterAsel;
	prueba_RegisterBsel<=RegisterBsel;
	prueba_RegisterRessel<=RegisterRessel;
	prueba_OPCODE<=OPCODE;
	prueba_Zero<=Zero2;
	prueba_OP1<=OP1;prueba_OP2<=OP2;
	
	registro1: registro_sostenimiento port map('1',CLOCK,RESET,Zero2,Zero_temp);
	memoria1: ram port map(ADDR,CLOCK,DATA1,RnW1,DATA2);
	registro_memoria1: MEM_IF port map(RnW2,ENABLE,ADDRESS,RnW1,ADDR,DATA2,INSTRUCTION);
	decodificador1: Fetch_Decode port map(CLOCK, RESET,INSTRUCTION,LoadInstr,
								AddrSel,incPC,Jump,Address,OPCODE,immidiate,RegisterAsel,
								RegisterBsel,RegisterRessel,prueba_Contador_Programa);
	registros: REGISTER_FILE port map(CLOCK, RESET,RegisterAsel,RegisterBsel,
								RegisterRessel,Result,LoadEn,Carry2,Zero2,Zero1,Carry1,
								OP1,OP2);
	ALU1: ALU port map(OP1,OP2,Zero1,Carry1,immidiate,OPCODE,Zero2,Carry2,Result);
	controlador: CONTROL_UNIT port map(CLOCK, RESET,Zero2,Carry2,OPCODE,Enable,
								RnW2,LoadInstr,AddrSel,incPC,Jump,LoadEn);
end sol;