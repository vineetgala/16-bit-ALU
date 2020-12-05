library IEEE;
use ieee.std_logic_1164.all;

--defining full adder entity which makes use of kogge stone fast adder architecture
entity full_adder is
	port(aa0,aa1,aa2,aa3,aa4,aa5,aa6,aa7,aa8,aa9,aa10,aa11,aa12,aa13,aa14,aa15,
	ab0,ab1,ab2,ab3,ab4,ab5,ab6,ab7,ab8,ab9,ab10,ab11,ab12,ab13,ab14,ab15:in bit;
	ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ar10,ar11,ar12,ar13,ar14,ar15,ca:out bit);
end entity;

--defining architecture of full adder
Architecture struct of full_adder is

signal 
g0_0, g1_0, g2_0, g3_0, g4_0, g5_0, g6_0, g7_0, g8_0, g9_0, g10_0, g11_0, g12_0, g13_0, g14_0, g15_0, 
g0_1, g1_1, g2_1, g3_1, g4_1, g5_1, g6_1, g7_1, g8_1, g9_1, g10_1, g11_1, g12_1, g13_1, g14_1, g15_1, 
g0_2, g1_2, g2_2, g3_2, g4_2, g5_2, g6_2, g7_2, g8_2, g9_2, g10_2, g11_2, g12_2, g13_2, g14_2, g15_2, 
g0_3, g1_3, g2_3, g3_3, g4_3, g5_3, g6_3, g7_3, g8_3, g9_3, g10_3, g11_3, g12_3, g13_3, g14_3, g15_3, 
g0_4, g1_4, g2_4, g3_4, g4_4, g5_4, g6_4, g7_4, g8_4, g9_4, g10_4, g11_4, g12_4, g13_4, g14_4, g15_4,
p0_0, p1_0, p2_0, p3_0, p4_0, p5_0, p6_0, p7_0, p8_0, p9_0, p10_0, p11_0, p12_0, p13_0, p14_0, p15_0,
p0_1, p1_1, p2_1, p3_1, p4_1, p5_1, p6_1, p7_1, p8_1, p9_1, p10_1, p11_1, p12_1, p13_1, p14_1, p15_1,
p0_2, p1_2, p2_2, p3_2, p4_2, p5_2, p6_2, p7_2, p8_2, p9_2, p10_2, p11_2, p12_2, p13_2, p14_2, p15_2,
p0_3, p1_3, p2_3, p3_3, p4_3, p5_3, p6_3, p7_3, p8_3, p9_3, p10_3, p11_3, p12_3, p13_3, p14_3, p15_3,
p0_4, p1_4, p2_4, p3_4, p4_4, p5_4, p6_4, p7_4, p8_4, p9_4, p10_4, p11_4, p12_4, p13_4, p14_4, p15_4 : bit;

--adding necessary components (generate, carry and XOR)
component my_gen
port (A_in, B_in : in bit;P_out, G_out : out bit);
end component;

component my_carry
port (P_prev, P_curr, G_prev, G_curr : in bit;P_out, G_out : out bit);
end component;

component my_xor
port (S,T : in bit; U: out bit);
end component;

--using Kogge-Stone architecture to create fast 16 bit adder
--(G_i, P_i) = (g_i, p_i) dot (G_i-1, P_i-1)
--The architecture is sequentially building from 0-1, 1-2, ... (n-1)-n to 0-2, 1-3, ... (n-2)-n so on 
begin

   gen0 : my_gen
	port map (aa0,ab0,p0_0,g0_0);

	gen1 : my_gen
	port map (aa1,ab1,p1_0,g1_0);

	gen2 : my_gen
	port map (aa2,ab2,p2_0,g2_0);

	gen3 : my_gen
	port map (aa3,ab3,p3_0,g3_0);

	gen4 : my_gen
	port map (aa4,ab4,p4_0,g4_0);

	gen5 : my_gen
	port map (aa5,ab5,p5_0,g5_0);

	gen6 : my_gen
	port map (aa6,ab6,p6_0,g6_0);

	gen7 : my_gen
	port map (aa7,ab7,p7_0,g7_0);

	gen8 : my_gen
	port map (aa8,ab8,p8_0,g8_0);

	gen9 : my_gen
	port map (aa9,ab9,p9_0,g9_0);

	gen10 : my_gen
	port map (aa10,ab10,p10_0,g10_0);

	gen11 : my_gen
	port map (aa11,ab11,p11_0,g11_0);

	gen12 : my_gen
	port map (aa12,ab12,p12_0,g12_0);

	gen13 : my_gen
	port map (aa13,ab13,p13_0,g13_0);

	gen14 : my_gen
	port map (aa14,ab14,p14_0,g14_0);

	gen15 : my_gen
	port map (aa15,ab15,p15_0,g15_0);
	
	
	
	p0_1<=p0_0;
	g0_1<=g0_0;

	carry1_1 : my_carry
	port map (p0_0,p1_0,g0_0,g1_0,p1_1,g1_1);

	carry2_1 : my_carry
	port map (p1_0,p2_0,g1_0,g2_0,p2_1,g2_1);

	carry3_1 : my_carry
	port map (p2_0,p3_0,g2_0,g3_0,p3_1,g3_1);

	carry4_1 : my_carry
	port map (p3_0,p4_0,g3_0,g4_0,p4_1,g4_1);

	carry5_1 : my_carry
	port map (p4_0,p5_0,g4_0,g5_0,p5_1,g5_1);

	carry6_1 : my_carry
	port map (p5_0,p6_0,g5_0,g6_0,p6_1,g6_1);

	carry7_1 : my_carry
	port map (p6_0,p7_0,g6_0,g7_0,p7_1,g7_1);

	carry8_1 : my_carry
	port map (p7_0,p8_0,g7_0,g8_0,p8_1,g8_1);

	carry9_1 : my_carry
	port map (p8_0,p9_0,g8_0,g9_0,p9_1,g9_1);

	carry10_1 : my_carry
	port map (p9_0,p10_0,g9_0,g10_0,p10_1,g10_1);

	carry11_1 : my_carry
	port map (p10_0,p11_0,g10_0,g11_0,p11_1,g11_1);

	carry12_1 : my_carry
	port map (p11_0,p12_0,g11_0,g12_0,p12_1,g12_1);

	carry13_1 : my_carry
	port map (p12_0,p13_0,g12_0,g13_0,p13_1,g13_1);

	carry14_1 : my_carry
	port map (p13_0,p14_0,g13_0,g14_0,p14_1,g14_1);

	carry15_1 : my_carry
	port map (p14_0,p15_0,g14_0,g15_0,p15_1,g15_1);

	
	
	p0_2<=p0_1;
	g0_2<=g0_1;

	p1_2<=p1_1;
	g1_2<=g1_1;
		
	carry2_2 : my_carry
   port map (p0_1,p2_1,g0_1,g2_1,p2_2,g2_2);

   carry3_2 : my_carry
   port map (p1_1,p3_1,g1_1,g3_1,p3_2,g3_2);

   carry4_2 : my_carry
   port map (p2_1,p4_1,g2_1,g4_1,p4_2,g4_2);

   carry5_2 : my_carry
   port map (p3_1,p5_1,g3_1,g5_1,p5_2,g5_2);

   carry6_2 : my_carry
   port map (p4_1,p6_1,g4_1,g6_1,p6_2,g6_2);

   carry7_2 : my_carry
   port map (p5_1,p7_1,g5_1,g7_1,p7_2,g7_2);

   carry8_2 : my_carry
   port map (p6_1,p8_1,g6_1,g8_1,p8_2,g8_2);

   carry9_2 : my_carry
   port map (p7_1,p9_1,g7_1,g9_1,p9_2,g9_2);

   carry10_2 : my_carry
   port map (p8_1,p10_1,g8_1,g10_1,p10_2,g10_2);

   carry11_2 : my_carry
   port map (p9_1,p11_1,g9_1,g11_1,p11_2,g11_2);

   carry12_2 : my_carry
   port map (p10_1,p12_1,g10_1,g12_1,p12_2,g12_2);

   carry13_2 : my_carry
   port map (p11_1,p13_1,g11_1,g13_1,p13_2,g13_2);

   carry14_2 : my_carry
   port map (p12_1,p14_1,g12_1,g14_1,p14_2,g14_2);

   carry15_2 : my_carry
   port map (p13_1,p15_1,g13_1,g15_1,p15_2,g15_2);

	
					
	p0_3<=p0_2;
	g0_3<=g0_2;

	p1_3<=p1_2;
	g1_3<=g1_2;

	p2_3<=p2_2;
	g2_3<=g2_2;

	p3_3<=p3_2;
	g3_3<=g3_2;
		
	carry4_3 : my_carry
   port map (p0_2,p4_2,g0_2,g4_2,p4_3,g4_3);

   carry5_3 : my_carry
   port map (p1_2,p5_2,g1_2,g5_2,p5_3,g5_3);

   carry6_3 : my_carry
   port map (p2_2,p6_2,g2_2,g6_2,p6_3,g6_3);

   carry7_3 : my_carry
   port map (p3_2,p7_2,g3_2,g7_2,p7_3,g7_3);

   carry8_3 : my_carry
   port map (p4_2,p8_2,g4_2,g8_2,p8_3,g8_3);

   carry9_3 : my_carry
   port map (p5_2,p9_2,g5_2,g9_2,p9_3,g9_3);

   carry10_3 : my_carry
   port map (p6_2,p10_2,g6_2,g10_2,p10_3,g10_3);

   carry11_3 : my_carry
   port map (p7_2,p11_2,g7_2,g11_2,p11_3,g11_3);

   carry12_3 : my_carry
   port map (p8_2,p12_2,g8_2,g12_2,p12_3,g12_3);

   carry13_3 : my_carry
   port map (p9_2,p13_2,g9_2,g13_2,p13_3,g13_3);

   carry14_3 : my_carry
   port map (p10_2,p14_2,g10_2,g14_2,p14_3,g14_3);

   carry15_3 : my_carry
   port map (p11_2,p15_2,g11_2,g15_2,p15_3,g15_3);
	
	
		
	p0_4<=p0_3;
	g0_4<=g0_3;

	p1_4<=p1_3;
	g1_4<=g1_3;

	p2_4<=p2_3;
	g2_4<=g2_3;

	p3_4<=p3_3;
	g3_4<=g3_3;

	p4_4<=p4_3;
	g4_4<=g4_3;
	
	p5_4<=p5_3;
	g5_4<=g5_3;

	p6_4<=p6_3;
	g6_4<=g6_3;

	p7_4<=p7_3;
	g7_4<=g7_3;

	carry8_4 : my_carry
   port map (p0_3,p8_3,g0_3,g8_3,p8_4,g8_4);

   carry9_4 : my_carry
   port map (p1_3,p9_3,g1_3,g9_3,p9_4,g9_4);

   carry10_4 : my_carry
   port map (p2_3,p10_3,g2_3,g10_3,p10_4,g10_4);

   carry11_4 : my_carry
   port map (p3_3,p11_3,g3_3,g11_3,p11_4,g11_4);

   carry12_4 : my_carry
   port map (p4_3,p12_3,g4_3,g12_3,p12_4,g12_4);

   carry13_4 : my_carry
   port map (p5_3,p13_3,g5_3,g13_3,p13_4,g13_4);

   carry14_4 : my_carry
   port map (p6_3,p14_3,g6_3,g14_3,p14_4,g14_4);

   carry15_4 : my_carry
   port map (p7_3,p15_3,g7_3,g15_3,p15_4,g15_4);

	
	
	ar0<=p0_0;
	
	sum1 : my_xor
	port map (p1_0,g0_4,ar1);

	sum2 : my_xor
	port map (p2_0,g1_4,ar2);

	sum3 : my_xor
	port map (p3_0,g2_4,ar3);

	sum4 : my_xor
	port map (p4_0,g3_4,ar4);

	sum5 : my_xor
	port map (p5_0,g4_4,ar5);

	sum6 : my_xor
	port map (p6_0,g5_4,ar6);

	sum7 : my_xor
	port map (p7_0,g6_4,ar7);

	sum8 : my_xor
	port map (p8_0,g7_4,ar8);

	sum9 : my_xor
	port map (p9_0,g8_4,ar9);

	sum10 : my_xor
	port map (p10_0,g9_4,ar10);

	sum11 : my_xor
	port map (p11_0,g10_4,ar11);

	sum12 : my_xor
	port map (p12_0,g11_4,ar12);

	sum13 : my_xor
	port map (p13_0,g12_4,ar13);

	sum14 : my_xor
	port map (p14_0,g13_4,ar14);

	sum15 : my_xor
	port map (p15_0,g14_4,ar15);

	ca<=g15_4;
	
end struct;
