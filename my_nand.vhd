library IEEE;
use ieee.std_logic_1164.all;

--defining NAND gate entity to do basic NAND
entity my_nand is
	port (P,Q : in bit; R: out bit);
end entity my_nand;

architecture bv of my_nand is 
signal bw:bit;

component my_and is
port(i_and1,i_and2:in bit;o_myand:out bit);
end component;

component my_not is
port(V:in bit;W:out bit);
end component;

begin
	Chip_and1: my_and
	port map(P,Q,bw);
	
	Chip_not1: my_not
	port map(bw,R);
	
end bv;
