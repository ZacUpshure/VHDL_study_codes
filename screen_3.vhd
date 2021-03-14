library ieee;
use ieee.std_logical_1164.ALL;

entity BCD_CODE_DECODE is
part( b0,b1,b2,b3,LTN,BLN	: in std_logic;
      a,b,c,d,e,f,g		: out std_logic);
end BCD_CODE_DECODE;

architecture VERHALTEN of BCD_CODE_DECODE IS

begin
process (b0,b1,b2,b3,LTN,BLN)
	begin
		if(LTN = '1' and BLN = '0') then
			a <= ((not b3) and (not b2) and (not b1) and (not b1) and b0				 ) or (b2 and (not b1) and (not b0)) or (b3 and b1) or (			     b3 and b2);
		        b <= (b3 and b1) or (b3 and b2) or (b2 and b1 and (not b0)) 				 or ((not b3) and b2 and (not b1) and b0);
			c <= ((not b2) and b1 and (not b0)) or (b3 and b1) or 					 (b3 and b2);
			d <= (b2 and (not b1) and (not b0)) or ((not b3) and 					 (not b2) and (not b1) and b0) or (b3 and b1) or (b2 and			     b1 and b0) or (b3 and b2);
			e <= (b2 and (not b1)) or (b3 and b1) or (b0);
			f <= ((not b3) and (not b2) and b0) or (b1 and b0) or ((not 				 b2) and b1) or (b3 and b2);
			g <= (b3 and b2) or (b2 and b1 and b0) or ((not b3) and (not 				 b2) and (not b1)) or (b3 and b1);
		elsif(LTN = '0' and BLN = '1') then a <= '0';b <= '0';c <= '0'; d <= 			 '0';e <= '0'; f <= '0';g <= '0';
		elsif(LTN = '0' and BLN = '0') then a <= '1';b <= '1';c <= '1';d <= 			 '1';e <= '1';f <= '1';g <= '1';
		else a <= 'X';b <= 'X';c <= 'X';d <= 'X'; e <='X';f <= 'X';g <= 'X';		    end if;
	end process;
end VERHALTEN;	
