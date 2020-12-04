--OR

library IEEE;
use ieee.std_logic_1164.all;

entity my_or is
	port (S,T : in bit; U: out bit);
end entity my_or;
architecture bv of my_or is 
begin
	U<=S or T;
end bv;
