library ieee;
use ieee.std_logic_1164.ALL;

entity 1-2-1-Decoder_c2 is
port( b0,b1,b2,b3 : in std_logic;
      c2	  : out std_logic);
end 1-2-1-Decoder_c2;

architecture VERHALTEN of 1-2-1-Decoder_c2 is

begin
process (b0,b1,b2,b3)
	begin
	    c2 <= (b2 and (not b1) and (not b3)) or (b2 and (not b3) and (not b0));
	end process
end VERHALTEN;
