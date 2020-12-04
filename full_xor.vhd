--16 bit NAND

library IEEE;
use ieee.std_logic_1164.all;

entity full_xor is
	port( 
	xa0, xa1, xa2, xa3, xa4, xa5, xa6, xa7, xa8, xa9, xa10, xa11, xa12, xa13, xa14, xa15,
	xb0, xb1, xb2, xb3, xb4, xb5, xb6, xb7, xb8, xb9, xb10, xb11, xb12, xb13, xb14, xb15 : in bit;
	xr0, xr1, xr2, xr3, xr4, xr5, xr6, xr7, xr8, xr9, xr10, xr11, xr12, xr13, xr14, xr15 : out bit);
end entity;

Architecture Struct of full_xor is

component my_xor --declaring my_xor component to use for XOR operations
port(S,T : in bit; U: out bit);
end component;

begin

	xor1 : my_xor
	port map(xa1,xb1,xr1);

	xor2 : my_xor
	port map(xa2,xb2,xr2);

	xor3 : my_xor
	port map(xa3,xb3,xr3);

	xor4 : my_xor
	port map(xa4,xb4,xr4);

	xor5 : my_xor
	port map(xa5,xb5,xr5);

	xor6 : my_xor
	port map(xa6,xb6,xr6);

	xor7 : my_xor
	port map(xa7,xb7,xr7);

	xor8 : my_xor
	port map(xa8,xb8,xr8);

	xor9 : my_xor
	port map(xa9,xb9,xr9);

	xor10 : my_xor
	port map(xa10,xb10,xr10);

	xor11 : my_xor
	port map(xa11,xb11,xr11);

	xor12 : my_xor
	port map(xa12,xb12,xr12);

	xor13 : my_xor
	port map(xa13,xb13,xr13);

	xor14 : my_xor
	port map(xa14,xb14,xr14);

	xor15 : my_xor
	port map(xa15,xb15,xr15);

end Struct;