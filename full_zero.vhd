
library IEEE;
use ieee.std_logic_1164.all;

entity full_zero is
	port( zr0, zr1, zr2, zr3, zr4, zr5, zr6, zr7, zr8, zr9, zr10, zr11, zr12, zr13, zr14, zr15 : in bit;
	zz : out bit);
end entity;

Architecture Struct of full_zero is

signal i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14 : bit;

component my_or 
port(S,T : in bit; U: out bit);
end component;

component my_not 
port(V : in bit; W: out bit);
end component;

begin
		
	or0 : my_or
	port map(zr0,zr1,i0);
					
	or1 : my_or
	port map(zr2,i0,i1);

	or2 : my_or
	port map(zr3,i1,i2);

	or3 : my_or
	port map(zr4,i2,i3);

	or4 : my_or
	port map(zr5,i3,i4);

	or5 : my_or
	port map(zr6,i4,i5);

	or6 : my_or
	port map(zr7,i5,i6);

	or7 : my_or
	port map(zr8,i6,i7);

	or8 : my_or
	port map(zr9,i7,i8);

	or9 : my_or
	port map(zr10,i8,i9);

	or10 : my_or
	port map(zr11,i9,i10);

	or11 : my_or
	port map(zr12,i10,i11);

	or12 : my_or
	port map(zr13,i11,i12);

	or13 : my_or
	port map(zr14,i12,i13);

	or14 : my_or
	port map(zr15,i13,i14);

	not0 : my_not
	port map(i14,zz);
	
end Struct;