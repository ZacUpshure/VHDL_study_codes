library ieee;
use ieee.std_logic_1164.all;

	entity fulladder is
	
	port( s0,s1,n0,n1,n2,n3	: in std_logic;
	      m			: out std_logic);
	end fulladder;

	architecture behave of fulladder is
	begin
	process (s0,s1,n0,n1,n2,n3)
		begin
			m <= ((not s1) and (not s0) and n0) or ((not s1 and s0 and n1) or (s1 and (not s0) and n2)) or (s1 and s0 and n3);
		end process
	end behave;
