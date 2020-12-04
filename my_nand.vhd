--NAND

library IEEE;
use ieee.std_logic_1164.all;

entity my_nand is
	port (P,Q : in bit; R: out bit);
end entity my_nand;

architecture bv of my_nand is 

begin
	R<=P nand Q;
end bv;