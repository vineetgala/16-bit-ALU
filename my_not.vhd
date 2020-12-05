--NOT

library IEEE;
use ieee.std_logic_1164.all;

entity my_not is
	port (V : in bit; W: out bit);
end entity my_not;

architecture bv of my_not is 
begin
	W<=not V;
end bv;
