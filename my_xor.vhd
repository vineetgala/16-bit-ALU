--XOR

library IEEE;
use ieee.std_logic_1164.all;

entity my_xor is
	port (S,T : in bit; U: out bit);
end entity my_xor;
architecture bv of my_xor is 
begin
	U<=S xor T;
end bv;
