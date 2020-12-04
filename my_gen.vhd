--G,P

library IEEE;
use ieee.std_logic_1164.all;

entity my_gen is
	port (A_in, B_in : in bit;P_out, G_out : out bit);
end entity;

architecture behaviour of my_gen is

component my_xor --declaring my_xor component to use for XOR operations
port(S,T : in bit; U: out bit);
end component;

component my_and --declaring my_and component to use for AND operations
port(P,Q : in bit; R: out bit);
end component;

begin

	P_gen : my_xor
	port map(A_in,B_in,P_out);

	G_gen : my_and
	port map(A_in,B_in,G_out);
	
end behaviour;