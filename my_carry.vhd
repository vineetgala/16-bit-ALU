--G,P

library IEEE;
use ieee.std_logic_1164.all;

entity my_carry is
	port (P_prev, P_curr, G_prev, G_curr : in bit;P_out, G_out : out bit);
end entity;

architecture behaviour of my_carry is

signal temp:bit;

component my_or --declaring my_or component to use for OR operations
port(i_or1,i_or2 : in bit; o_myor: out bit);
end component;

component my_and --declaring my_and component to use for AND operations
port(i_and1,i_and2: in bit; o_myand: out bit);
end component;

begin
	
	temp_gen : my_and
	port map(G_prev,P_curr,temp);
	
	G_gen : my_or
	port map(temp,G_curr,G_out);

	P_gen : my_and
	port map(P_curr,P_prev,P_out);
	
end behaviour;