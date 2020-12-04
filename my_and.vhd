--AND

library IEEE;
use ieee.std_logic_1164.all;

entity my_and is
	port (P,Q : in bit; R: out bit);
end entity my_and;
architecture bv of my_and is 
begin
	R<=P and Q;
end bv;
