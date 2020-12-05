--OR

library IEEE;
use ieee.std_logic_1164.all;

entity my_or is
	port (i_or1,i_or2 : in bit; o_myor: out bit);
end entity my_or;

architecture bv of my_or is 
begin
	o_myor<=i_or1 or i_or2;
end bv;
