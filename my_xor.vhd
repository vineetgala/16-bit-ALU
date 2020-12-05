library IEEE;
use ieee.std_logic_1164.all;

--defining XOR entity
entity my_xor is
	port (S,T : in bit; U: out bit);
end entity my_xor;

architecture bv of my_xor is 

signal nS,nT,a1,a2:bit;

--adding necessary components
component my_and is
port(i_and1,i_and2:in bit;o_myand:out bit);
end component;

component my_not is
port(V:in bit;W:out bit);
end component;

component my_or is
port(i_or1,i_or2:in bit;o_myor:out bit);
end component;

--computing XOR using definition A xor B = (not A)B + A(not B)
begin
	Chip_not1: my_not
	port map(S,nS);
	
	Chip_not2: my_not
	port map(T,nT);
	
	Chip_and1: my_and
	port map(S,nT,a1);
	
	Chip_and2: my_and
	port map(T,nS,a2);
	
	Chip_or1: my_or
	port map(a1,a2,U);
end bv;
