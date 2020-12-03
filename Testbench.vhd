entity Testbench is 
end Testbench;

architecture tb of Testbench is
	signal s_0,s_1,a_0,a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8,a_9,a_10,a_11,a_12,a_13,a_14,a_15,
	b_0,b_1,b_2,b_3,b_4,b_5,b_6,b_7,b_8,b_9,b_10,b_11,b_12,b_13,b_14,b_15 : bit;
	signal c_0,c_1,c_2,c_3,c_4,c_5,c_6,c_7,c_8,c_9,c_10,c_11,c_12,c_13,c_14,c_15,c_,z_: bit;
	
	component ALU is 
		port(S0,S1,A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, B0, B1, B2, B3, B4, B5, B6, B7, B8, B9, B10, B11, B12, B13, B14, B15: in bit;
			C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15,C,Z:out bit);
	end component;
	
	begin
	dut_instance: ALU
	port map(s_0,s_1,a_0,a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8,a_9,a_10,a_11,a_12,a_13,a_14,a_15,
	b_0,b_1,b_2,b_3,b_4,b_5,b_6,b_7,b_8,b_9,b_10,b_11,b_12,b_13,b_14,b_15,
	c_0,c_1,c_2,c_3,c_4,c_5,c_6,c_7,c_8,c_9,c_10,c_11,c_12,c_13,c_14,c_15,c_,z_);

stim_process13 : process
begin
wait for 2*2560 ns;
a_2 <= not a_2;
a_3 <= not a_3;
a_4 <= not a_4;
a_5 <= not a_5;
a_6 <= not a_6;
a_7 <= not a_7;
a_8 <= not a_8;
a_9 <= not a_9;
a_10 <= not a_10;
a_11 <= not a_11;
a_12 <= not a_12;
a_13 <= not a_13;

b_2 <= not b_2;
b_3 <= not b_3;
b_4 <= not b_4;
b_5 <= not b_5;
b_6 <= not b_6;
b_7 <= not b_7;
b_8 <= not b_8;
b_9 <= not b_9;
b_10 <= not b_10;
b_11 <= not b_11;
b_12 <= not b_12;
b_13 <= not b_13;
end process;

stim_process14 : process
begin
wait for 2560 ns;
s_0 <= not s_0;
end process;

stim_process15 : process
begin
wait for 1280 ns;
s_1 <= not s_1;
end process;

stim_process16 : process
begin
wait for 640 ns;
a_15 <= not a_15;
end process;

stim_process17 : process
begin
wait for 320 ns;
b_0 <= not b_0;
end process;

stim_process18 : process
begin
wait for 160 ns;
a_14 <= not a_14;
end process;

stim_process19 : process
begin
wait for 80 ns;
b_1 <= not b_1;
end process;

stim_process28 : process
begin
wait for 40 ns;
a_1 <= not a_1;
end process;

stim_process29 : process
begin
wait for 20 ns;
b_14 <= not b_14;
end process;

stim_process30 : process
begin
wait for 10 ns;
a_0 <= not a_0;
end process;

stim_process31 : process
begin
wait for 5 ns;
b_15 <= not b_15;
end process;

end tb;