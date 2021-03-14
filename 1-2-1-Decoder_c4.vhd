library ieee;
use ieee.std_logic_1164.ALL;

entity 1-2-1-Decoder_c4 is
port( b0,b1,b2,b3 : in std_logic;
      c1	  : out std_logic);
end 1-2-1-Decoder_c4;

architecture VERHALTEN of 1-2-1-Decoder_c4 is

begin
process (b0,b1,b2,b3)
	begin
	     c4 <= (b3 and (not b1) and b3) 
	     or ((not b1) and (not b2) and (not b0))
	end process
end VERHALTEN;
