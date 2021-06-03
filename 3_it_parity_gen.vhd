library ieee;
use ieee.std_logic_1164.all;
entity parityCheckerOdd is
  port(x : in bit_vector(2 downto 0);
       y : out bit_vector(3 downto 0) );
end pariyCheckerOdd;

architecture behave of parityCheckerOdd is
begin
  
  y(2 downto 0) <= x;
  
  y(3) <= ();         --schaltnetz hier einschreiben.

  end behave;
