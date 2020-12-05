library IEEE;
use ieee.std_logic_1164.all;

--defining NAND entity which will NAND inputs A-16 and B-16
entity full_nand is
	port( 
	na0, na1, na2, na3, na4, na5, na6, na7, na8, na9, na10, na11, na12, na13, na14, na15,
	nb0, nb1, nb2, nb3, nb4, nb5, nb6, nb7, nb8, nb9, nb10, nb11, nb12, nb13, nb14, nb15 : in bit;
	nr0, nr1, nr2, nr3, nr4, nr5, nr6, nr7, nr8, nr9, nr10, nr11, nr12, nr13, nr14, nr15 : out bit);
end entity;

--defining structure pf NAND
Architecture Struct of full_nand is

--declaring my_nand component to use for NAND operations
component my_nand 
port(P,Q : in bit; R: out bit);
end component;

--individually NAND-ing a_i and b_i's
begin
		
	nand0 : my_nand
	port map(na0,nb0,nr0);

	nand1 : my_nand
	port map(na1,nb1,nr1);

	nand2 : my_nand
	port map(na2,nb2,nr2);

	nand3 : my_nand
	port map(na3,nb3,nr3);

	nand4 : my_nand
	port map(na4,nb4,nr4);

	nand5 : my_nand
	port map(na5,nb5,nr5);

	nand6 : my_nand
	port map(na6,nb6,nr6);

	nand7 : my_nand
	port map(na7,nb7,nr7);

	nand8 : my_nand
	port map(na8,nb8,nr8);

	nand9 : my_nand
	port map(na9,nb9,nr9);

	nand10 : my_nand
	port map(na10,nb10,nr10);

	nand11 : my_nand
	port map(na11,nb11,nr11);

	nand12 : my_nand
	port map(na12,nb12,nr12);

	nand13 : my_nand
	port map(na13,nb13,nr13);

	nand14 : my_nand
	port map(na14,nb14,nr14);

	nand15 : my_nand
	port map(na15,nb15,nr15);

end Struct;
