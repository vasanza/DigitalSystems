library ieee;
use ieee.std_logic_1164.all;

Entity CONTROL_UNIT is
	Port(
			clock, reset, Zero, carry: in STD_LOGIC;
			OpCode: in STD_LOGIC_VECTOR(5 downto 0);
			Enable, RnW, LoadInstr, AddrSel, incPC, jump, LoadEn: out STD_LOGIC
			);
end CONTROL_UNIT;

Architecture solution of CONTROL_UNIT is
SIGNAL exi, Zero_temp: STD_LOGIC;
type estado is (	start,load,decode,
						exshl,exshr,exsto,exloa,exli,exadd,exsub,exaddc,exsubc,exopand,
						exopor,exopxor,exopnot,exjpz,exjp);
Signal sState, sState_next: estado;

Signal 	icOpCode: STD_LOGIC_VECTOR (5 downto 0);
Signal ocRnotWRam,ocLoadEn,ocEnableRAM,ocLoadInstr,ocNextPC,ocAddrSel,ocJump: STD_LOGIC;

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


Begin
--registro1: registro_sostenimiento port map('1',clock,reset,zero,zero_temp);
icOpCode<= OpCode;

RnW<= ocRnotWRam; LoadEn<= ocLoadEn; Enable<= ocEnableRAM;
LoadInstr<= ocLoadInstr; incPC<= ocNextPC; AddrSel<= ocAddrSel; jump<=ocJump;
	Process(clock, reset, zero)
	Begin
		if reset='0' then sState <= start;
		elsif (clock'event and clock='1') then			--if (exi='0') then sState<= sState_next; else sState<= start; end if;
			sState<= sState_next;
			case sState is
				when start 	=>	sState_next	<= load;
				when load 	=>	sState_next	<= decode;
				when decode =>
					case icOpCode is
						when shl 	=> sState_next <= exshl;
						when shr 	=> sState_next <= exshr;
						when sto 	=> sState_next <= exsto;
						when loa 	=> sState_next <= exloa;
						when li 		=> sState_next <= exli;
						when add 	=> sState_next <= exadd;
						when sub 	=> sState_next <= exsub;
						when addc 	=> sState_next <= exaddc;
						when subc 	=> sState_next <= exsubc;
						when opand 	=> sState_next <= exopand;
						when opor 	=> sState_next <= exopor;
						when opxor 	=> sState_next <= exopxor;
						when opnot 	=> sState_next <= exopnot;
						when jpz		=>	if Zero='1' then sState_next<= exjpz;
											else sState_next<= load; end if;
						when jp		=>	sState_next<= exjp;
						when others =>
					end case;
				when exshl		=> sState_next<= load;
				when exshr		=> sState_next<= load;
				when exsto		=> sState_next<= load;
				when exloa		=> sState_next<= load;
				when exli		=> sState_next<= load;
				when exadd		=> sState_next<= load;
				when exsub		=> sState_next<= load;
				when exaddc		=> sState_next<= load;
				when exsubc		=> sState_next<= load;
				when exopand	=> sState_next<= load;
				when exopor		=> sState_next<= load;
				when exopxor	=> sState_next<= load;
				when exopnot	=> sState_next<= load;
				when exjpz		=> sState_next<= load;
				when exjp		=> sState_next<= load;
				when others		=>
			end case;
			--if (Zero='1') then Zero_temp<='1'; end if;
		end if;
	end process;
	
	Process(sState,Zero,carry,OpCode)
	Begin
		case sState is
			when load =>
					ocRnotWRam 	<= '1'; -- read from RAM
					ocLoadEn 	<= '0'; -- do not save result
					ocEnableRAM <= '1'; -- enable RAM
					ocLoadInstr <= '0'; -- load instruction
					ocNextPC 	<= '0'; -- do not increment pc
					ocAddrSel 	<= '1'; -- pc on addressbus
					ocJump 		<= '0'; -- no ocJump
			when decode =>
					ocRnotWRam 	<= '1'; -- read from RAM
					ocLoadEn 	<= '0'; -- do not save result
					ocEnableRAM <= '0'; -- disable RAM
					ocLoadInstr <= '1'; -- load instruction
					if (icOpCode=jp) then ocNextPC 	<= '0'; -- No increment pc
					else ocNextPC 	<= '1'; end if; -- increment pc
					ocAddrSel 	<= '0'; -- pc on addressbus
					ocJump 		<= '0'; -- no ocJump
			when exjpz =>
					exi<='1';
			when exjp =>
					ocJump<='1';					
			when exli		=>
					ocLoadEn	<= '1';
			when exadd 	=>
					ocLoadEn	<= '1';
			when exsub 	=>
					ocLoadEn	<= '1';
			when others=>
		end case;
	end process;
end solution;