library IEEE;
use ieee.std_logic_1164.all;

--defining the subtraction entity
entity full_subtract is
	port(sa0,sa1,sa2,sa3,sa4,sa5,sa6,sa7,sa8,sa9,sa10,sa11,sa12,sa13,sa14,sa15,
	sb0,sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9,sb10,sb11,sb12,sb13,sb14,sb15:in bit;
	sr0,sr1,sr2,sr3,sr4,sr5,sr6,sr7,sr8,sr9,sr10,sr11,sr12,sr13,sr14,sr15,cs:out bit);
end entity;

--defining the architecture of the subtractor
Architecture struct of full_subtract is

signal sc0, sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9, sc10, sc11, sc12, sc13, sc14, sc15,
st0, st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15, temp : bit;

--adding necessary components for the subtractor
component full_xor
port( 
	xa0, xa1, xa2, xa3, xa4, xa5, xa6, xa7, xa8, xa9, xa10, xa11, xa12, xa13, xa14, xa15,
	xb0, xb1, xb2, xb3, xb4, xb5, xb6, xb7, xb8, xb9, xb10, xb11, xb12, xb13, xb14, xb15 : in bit;
	xr0, xr1, xr2, xr3, xr4, xr5, xr6, xr7, xr8, xr9, xr10, xr11, xr12, xr13, xr14, xr15 : out bit);
end component;

component full_adder
port(aa0,aa1,aa2,aa3,aa4,aa5,aa6,aa7,aa8,aa9,aa10,aa11,aa12,aa13,aa14,aa15,
	ab0,ab1,ab2,ab3,ab4,ab5,ab6,ab7,ab8,ab9,ab10,ab11,ab12,ab13,ab14,ab15:in bit;
	ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ar10,ar11,ar12,ar13,ar14,ar15,ca:out bit);
end component;

--behaviour involves 2's complement of B-16 followed by addition with A-16 using kogge stone adder
begin

	twos : full_xor
	port map (sb0,sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9,sb10,sb11,sb12,sb13,sb14,sb15,
	'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',
	sc0, sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9, sc10, sc11, sc12, sc13, sc14, sc15);
	
	add1 : full_adder
	port map (sc0, sc1, sc2, sc3, sc4, sc5, sc6, sc7, sc8, sc9, sc10, sc11, sc12, sc13, sc14, sc15,
	'1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',
	st0, st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15,temp);
	
	add : full_adder
	port map (st0, st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15,
	sa0,sa1,sa2,sa3,sa4,sa5,sa6,sa7,sa8,sa9,sa10,sa11,sa12,sa13,sa14,sa15,
	sr0,sr1,sr2,sr3,sr4,sr5,sr6,sr7,sr8,sr9,sr10,sr11,sr12,sr13,sr14,sr15,cs);
	
end struct;
