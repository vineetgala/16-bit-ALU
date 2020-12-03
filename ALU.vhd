entity ALU is 
	port(S0,S1,A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15:in bit;
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15,C,Z:buffer bit);
end entity ALU;

architecture Struct of ALU is

	signal XR_0,XR_1,XR_2,XR_3,XR_4,XR_5,XR_6,XR_7,XR_8,XR_9,XR_10,XR_11,XR_12,XR_13,XR_14,XR_15:bit;
	signal NR_0,NR_1,NR_2,NR_3,NR_4,NR_5,NR_6,NR_7,NR_8,NR_9,NR_10,NR_11,NR_12,NR_13,NR_14,NR_15:bit;
	signal AR_0,AR_1,AR_2,AR_3,AR_4,AR_5,AR_6,AR_7,AR_8,AR_9,AR_10,AR_11,AR_12,AR_13,AR_14,AR_15,C_A:bit;
	signal SR_0,SR_1,SR_2,SR_3,SR_4,SR_5,SR_6,SR_7,SR_8,SR_9,SR_10,SR_11,SR_12,SR_13,SR_14,SR_15,C_S:bit;
	
	component full_xor is
	port(xa0,xa1,xa2,xa3,xa4,xa5,xa6,xa7,xa8,xa9,xa10,xa11,xa12,xa13,xa14,xa15,xb0,xb1,xb2,xb3,xb4,xb5,xb6,xb7,xb8,xb9,xb10,xb11,xb12,xb13,xb14,xb15:in bit;
	xr0,xr1,xr2,xr3,xr4,xr5,xr6,xr7,xr8,xr9,xr10,xr11,xr12,xr13,xr14,xr15:out bit);
	end component;
	
	component full_nand is
	port(na0,na1,na2,na3,na4,na5,na6,na7,na8,na9,na10,na11,na12,na13,na14,na15,nb0,nb1,nb2,nb3,nb4,nb5,nb6,nb7,nb8,nb9,nb10,nb11,nb12,nb13,nb14,nb15:in bit;
	nr0,nr1,nr2,nr3,nr4,nr5,nr6,nr7,nr8,nr9,nr10,nr11,nr12,nr13,nr14,nr15:out bit);
	end component;
	
	component full_add is
	port(aa0,aa1,aa2,aa3,aa4,aa5,aa6,aa7,aa8,aa9,aa10,aa11,aa12,aa13,aa14,aa15,ab0,ab1,ab2,ab3,ab4,ab5,ab6,ab7,ab8,ab9,ab10,ab11,ab12,ab13,ab14,ab15:in bit;
	ar0,ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ar10,ar11,ar12,ar13,ar14,ar15,c:out bit);
	end component;
	
	component full_subtract is
	port(sa0,sa1,sa2,sa3,sa4,sa5,sa6,sa7,sa8,sa9,sa10,sa11,sa12,sa13,sa14,sa15,sb0,sb1,sb2,sb3,sb4,sb5,sb6,sb7,sb8,sb9,sb10,sb11,sb12,sb13,sb14,sb15:in bit;
	sr0,sr1,sr2,sr3,sr4,sr5,sr6,sr7,sr8,sr9,sr10,sr11,sr12,sr13,sr14,sr15,c:out bit);
	end component;
	
	component zero_bit is
	port(zr0,zr1,zr2,zr3,zr4,zr5,zr6,zr7,zr8,zr9,zr10,zr11,zr12,zr13,zr14,zr15:in bit;z:out bit);
	end component;
	
	component MUX_4to1 is
	port(sel1,sel0,i0,i1,i2,i3:in bit; O4:out bit);
	end component;
	
begin
Chip_XOR: full_xor
port map(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
XR_0,XR_1,XR_2,XR_3,XR_4,XR_5,XR_6,XR_7,XR_8,XR_9,XR_10,XR_11,XR_12,XR_13,XR_14,XR_15);

Chip_NAND: full_nand
port map(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
NR_0,NR_1,NR_2,NR_3,NR_4,NR_5,NR_6,NR_7,NR_8,NR_9,NR_10,NR_11,NR_12,NR_13,NR_14,NR_15);

Chip_ADD: full_add
port map(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
AR_0,AR_1,AR_2,AR_3,AR_4,AR_5,AR_6,AR_7,AR_8,AR_9,AR_10,AR_11,AR_12,AR_13,AR_14,AR_15,C_A);

Chip_SUB: full_subtract
port map(A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15,
SR_0,SR_1,SR_2,SR_3,SR_4,SR_5,SR_6,SR_7,SR_8,SR_9,SR_10,SR_11,SR_12,SR_13,SR_14,SR_15,C_S);

Chip_MUX1: MUX_4to1
port map(S1,S0,XR_0,NR_0,AR_0,SR_0,R0);
Chip_MUX2: MUX_4to1
port map(S1,S0,XR_1,NR_1,AR_1,SR_1,R1);
Chip_MUX3: MUX_4to1
port map(S1,S0,XR_2,NR_2,AR_2,SR_2,R2);
Chip_MUX4: MUX_4to1
port map(S1,S0,XR_3,NR_3,AR_3,SR_3,R3);
Chip_MUX5: MUX_4to1
port map(S1,S0,XR_4,NR_4,AR_4,SR_4,R4);
Chip_MUX6: MUX_4to1
port map(S1,S0,XR_5,NR_5,AR_5,SR_5,R5);
Chip_MUX7: MUX_4to1
port map(S1,S0,XR_6,NR_6,AR_6,SR_6,R6);
Chip_MUX8: MUX_4to1
port map(S1,S0,XR_7,NR_7,AR_7,SR_7,R7);
Chip_MUX9: MUX_4to1
port map(S1,S0,XR_8,NR_8,AR_8,SR_8,R8);
Chip_MUX10: MUX_4to1
port map(S1,S0,XR_9,NR_9,AR_9,SR_9,R9);
Chip_MUX11: MUX_4to1
port map(S1,S0,XR_10,NR_10,AR_10,SR_10,R10);
Chip_MUX12: MUX_4to1
port map(S1,S0,XR_11,NR_11,AR_11,SR_11,R11);
Chip_MUX13: MUX_4to1
port map(S1,S0,XR_12,NR_12,AR_12,SR_12,R12);
Chip_MUX14: MUX_4to1
port map(S1,S0,XR_13,NR_13,AR_13,SR_13,R13);
Chip_MUX15: MUX_4to1
port map(S1,S0,XR_14,NR_14,AR_14,SR_14,R14);
Chip_MUX16: MUX_4to1
port map(S1,S0,XR_15,NR_15,AR_15,SR_15,R15);
Chip_MUX17: MUX_4to1
port map(S1,S0,'0','0',C_A,C_S,C);

Chip_Zero: zero_bit
port map(R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15,Z);

end Struct;