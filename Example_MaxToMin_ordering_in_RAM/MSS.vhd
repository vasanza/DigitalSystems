--https://vasanza.blogspot.com
-- MSS

library ieee; 
use ieee.std_logic_1164.all;

entity MSS is
      port (clk, resetn, start,WriteData, Fin_j, AmenB, Fin_i: in std_logic;
		      enj,ldj,WritingData,s1,eni,ldi,enReg,Sel,enReg2,sel3,sel2,done: out std_logic); 
end MSS;

 architecture solv of MSS is
 type estado is (A,B,C,D,E,F,G,H,I,J,K);
 signal y: estado; 
 signal entradas: std_logic_vector(4 downto 0); 
 signal salidas: std_logic_vector(11 downto 0);
 
 begin
       entradas <= start & WriteData & Fin_j & AmenB & Fin_i;
		 
		 enj <= salidas(11); ldj <= salidas(10); WritingData <= salidas(9); s1 <= salidas(8); eni <= salidas(7); ldi <= salidas(6); enReg <= salidas(5); 
		 Sel <= salidas(4); enReg2 <= salidas(3); sel3 <= salidas(2); sel2 <= salidas(1); done <= salidas(0);
		 
		 process(clk, resetn)
		 begin
		     
			  if resetn = '0' then y <= A; 
			  elsif (clk' event and clk = '1') then
			       case y is
					      
							when A => if entradas = "10000" then y <= B; else y <= A; end if;
							
							when B => if entradas = "10000" then y <= B; else y <= C; end if;
							
							when C => if entradas = "01000" then y <= D; 
							          elsif entradas = "01100" then y<= E; 
							          else y <= C; end if;
							
							when D => y <= C; 
					
							when E => if entradas = "00100" then y <= J; else y <= F; end if;
							
							when F => y <= G; 
							
							when G => if entradas = "00010" then y <= H; else y <= I; end if;
							
							when H => y <= I;
						
							when I => if entradas = "00100" then y <= E; else y <= G; end if;
							
							when J => if entradas = "10000" then y <= K; else y <= J; end if;
							
							when K => if entradas = "10000" then y <= K; else y <= A; end if;
			
					  end case;
			   end if; 
			end process; 	
			
process(y)
begin 
     salidas <= "000000000000";
	  case y is
		    when A => salidas <= "110000000000";
			 
			 when C => if entradas = "01100" then salidas <= "111100000000";
						  elsif entradas = "01000" then salidas <= "001100000000";
			           else salidas <= "001000000000"; end if;
			
			 when D => salidas <= "100000000000";
			 			 
			 when F => salidas <= "000011100000"; 
			 
			 when G => if entradas = "00010" then salidas <= "000100011100"; 
			           else salidas <= "000000011100"; end if;
			 
			 when H => salidas <= "000100000110";
			 
			 when I => if entradas = "00001" then salidas <= "100000000000";
			           else salidas <= "000010000000"; end if;
			 
			 when J => salidas <= "000000000001";
			
			 when others => salidas <= "000000000000";
	   end case; 
end process; 
end solv; 
















