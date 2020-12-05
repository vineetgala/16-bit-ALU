library IEEE;
use ieee.std_logic_1164.all;

entity OR_gate_4to1 is--defining entity of 4 input OR gate
	port(I5,I6,I7,I8:in bit;O3:out bit);
end entity OR_gate_4to1;

architecture OR_behaviour_4to1 of OR_gate_4to1 is
	begin--defining behaviour of 4 input OR gate
		O3<=I6 or I5 or I7 or I8;
	end OR_behaviour_4to1;