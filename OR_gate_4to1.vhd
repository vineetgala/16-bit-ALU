library IEEE;
use ieee.std_logic_1164.all;

entity OR_gate_4to1 is--defining entity of 4 input OR gate
	port(I5,I6,I7,I8:in bit;O3:out bit);
end entity OR_gate_4to1;

architecture OR_behaviour_4to1 of OR_gate_4to1 is
	
	signal o_or1,o_or2:bit;
	
	component my_or is
	port(i_or1,i_or2:in bit;o_myor:out bit);
	end component;
	
	
	begin--defining behaviour of 4 input OR gate
		Chip_or1: my_or
		port map(I5,I6,o_or1);
		
		Chip_or2: my_or
		port map(o_or1,I7,o_or2);
		
		Chip_or3: my_or
		port map(o_or2,I8,O3);
		
	end OR_behaviour_4to1;