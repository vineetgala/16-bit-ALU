library IEEE;
use ieee.std_logic_1164.all;

entity OR_gate is--defining entity of OR gate
	port(I5,I6,I7,I8:in bit;O3:out bit);
end entity OR_gate;

architecture OR_behaviour of OR_gate is
	begin--defining behaviour of OR gate
		O3<=I6 or I5 or I7 or I8;
	end OR_behaviour;