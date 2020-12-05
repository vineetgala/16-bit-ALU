library IEEE;
use ieee.std_logic_1164.all;

--defining entity of 4 input OR gate
entity OR_gate_4to1 is
	port(I5,I6,I7,I8:in bit;O3:out bit);
end entity OR_gate_4to1;

--stating architecture of 4 to 1 OR
architecture OR_behaviour_4to1 of OR_gate_4to1 is
	
	signal o_or1,o_or2:bit;
	
	--adding the component used
	component my_or is
	port(i_or1,i_or2:in bit;o_myor:out bit);
	end component;
	
	--performing binary OR sequentially to get 4 input OR
	begin
		Chip_or1: my_or
		port map(I5,I6,o_or1);
		
		Chip_or2: my_or
		port map(o_or1,I7,o_or2);
		
		Chip_or3: my_or
		port map(o_or2,I8,O3);
		
	end OR_behaviour_4to1;
