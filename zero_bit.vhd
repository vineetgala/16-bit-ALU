library IEEE;
use ieee.std_logic_1164.all;

entity zero_bit is
 port(zr0,zr1,zr2,zr3,zr4,zr5,zr6,zr7,zr8,zr9,zr10,zr11,zr12,zr13,zr14,zr15:in bit;z:out bit);
end entity zero_bit;

architecture Zero_behaviour of zero_bit is
	signal n,or1,or2,or3,or4,or0:bit;
	
	component NOT_gate is
	port(I4:in bit;O2:out bit);
	end component;
	
	component OR_gate is
	port(I5,I6,I7,I8:in bit;O3:out bit);
	end component;
	
	begin
	Chip_Or1:OR_gate
	port map(zr0,zr1,zr2,zr3,or1);
	
	Chip_Or2:OR_gate
	port map(zr7,zr4,zr5,zr6,or2);
	
	Chip_Or3:OR_gate
	port map(zr8,zr9,zr10,zr11,or3);
	
	Chip_Or4:OR_gate
	port map(zr12,zr13,zr14,zr15,or4);
	
	Chip_Or5:OR_gate
	port map(or1,or2,or3,or4,or0);
	
	Chip_NOT: NOT_gate
	port map(or0,z);
	
	end Zero_behaviour;
	
	