library IEEE;
use ieee.std_logic_1164.all;

--defining generate function computation unit
entity my_gen is
	port (A_in, B_in : in bit;P_out, G_out : out bit);
end entity;

architecture behaviour of my_gen is

--declaring my_xor component to use for XOR operations
component my_xor 
port(S,T : in bit; U: out bit);
end component;

--declaring my_and component to use for AND operations
component my_and 
port(i_and1,i_and2 : in bit; o_myand: out bit);
end component;

--computing generate based on current generate and previous propogate
begin

	P_gen : my_xor
	port map(A_in,B_in,P_out);

	G_gen : my_and
	port map(A_in,B_in,G_out);
	
end behaviour;
