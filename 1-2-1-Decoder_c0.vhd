library ieee;
 use ieee.std_logic_1164.ALL;

 entity 1-2-1-Decoder_c0 is
 port( b0,b1,b2,b3 : in std_logic;
       c0	  : out std_logic);
 end 1-2-1-Decoder_c0;

 architecture VERHALTEN of 1-2-1-Decoder_c0 is

 begin
 process (b0,b1,b2,b3)
 	begin
 	    c0 <= ((not b3) and (not b0) and (not b2)) or ((not b1) and (not b3) and 		(not b3));
 	end process
 end VERHALTEN;
