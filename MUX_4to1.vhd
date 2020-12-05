library IEEE;
use ieee.std_logic_1164.all;

--defining the MUX option choosing entity
entity MUX_4to1 is
	port(sel1,sel0,i0,i1,i2,i3:in bit;O4:out bit);
end entity MUX_4to1;

--stating the architecture of our MUX operation chooser
architecture MUX_behaviour of MUX_4to1 is
	signal o0,o1,o2,o3,n1,n0:bit;
	
	--adding required components to MUX
	component AND_gate_3to1 is
	port(I1,I2,I3:in bit;O1:out bit);
	end component;

	component my_not is
	port(V:in bit;W:out bit);
	end component;
	
	component OR_gate_4to1 is
	port(I5,I6,I7,I8:in bit;O3:out bit);
	end component;
	
	--finally creating the MUX behaviour using the components
	begin
	
	Chip_NOT1: my_not
	port map(sel0,n0);
	
	Chip_NOT2: my_not
	port map(sel1,n1);
	
	Chip_AND1: AND_gate_3to1
	port map(i0,sel1,sel0,o0);
	
	Chip_AND2: AND_gate_3to1
	port map(i1,sel1,n0,o1);
	
	Chip_AND3: AND_gate_3to1
	port map(i2,n1,n0,o2);
	
	Chip_AND4: AND_gate_3to1
	port map(i3,n1,sel0,o3);
	
	Chip_OR: OR_gate_4to1
	port map(o0,o1,o2,o3,O4);
	
	end MUX_behaviour;
