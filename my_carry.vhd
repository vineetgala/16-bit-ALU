library IEEE;
use ieee.std_logic_1164.all;

--defining carry computation entity based on generate and propogate signals
entity my_carry is
	port (P_prev, P_curr, G_prev, G_curr : in bit;P_out, G_out : out bit);
end entity;

--defining carry architecture
architecture behaviour of my_carry is

signal temp:bit;

--adding AND and OR gates as components
component my_or 
port(i_or1,i_or2 : in bit; o_myor: out bit);
end component;

component my_and 
port(i_and1,i_and2: in bit; o_myand: out bit);
end component;

--computing Carry using generate and propogate with AND OR gates
begin
	
	temp_gen : my_and
	port map(G_prev,P_curr,temp);
	
	G_gen : my_or
	port map(temp,G_curr,G_out);

	P_gen : my_and
	port map(P_curr,P_prev,P_out);
	
end behaviour;
