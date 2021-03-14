library ieee;
use ieee.std_logic_1164.ALL;

entity 1-2-1-Decoder_c3 is
port( b0,b1,b2,b3 : in std_logic;
      c3	  : out std_logic);
end 1-2-1-Decoder_c3;

architecture VERHALTEN of 1-2-1-Decoder_c3 is

begin
process (b0,b1,b2,b3)
	begin
	    c3 <= (b1 and b2 and (not b3)) or (b3 and (not b1) and (not b2) and (not 		b0))
	end process
end VERHALTEN;
