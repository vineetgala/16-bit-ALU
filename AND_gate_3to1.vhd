library IEEE;
use ieee.std_logic_1164.all;

--defining AND gate entity (3 to 1)
entity AND_gate_3to1 is
port(I1,I2,I3:in bit;O1:out bit);
end entity AND_gate_3to1;

architecture AND_behaviour of AND_gate_3to1 is
	
	signal o_and1:bit;
	
	component my_and is
	port(i_and1,i_and2:in bit;o_myand:out bit);
	end component;
	
	--defining behaviour of AND gate
	begin
		
		Chip_and1: my_and
		port map(I1,I2,o_and1);
		
		Chip_and2: my_and
		port map(I3,o_and1,O1);
		
	end AND_behaviour;
