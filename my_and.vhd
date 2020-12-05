--AND

library IEEE;
use ieee.std_logic_1164.all;

entity my_and is
	port (i_and1,i_and2 : in bit; o_myand: out bit);
end entity my_and;

architecture bv of my_and is 
begin
	o_myand<=i_and1 and i_and2;
end bv;
