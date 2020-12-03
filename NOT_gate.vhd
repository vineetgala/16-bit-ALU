library IEEE;
use ieee.std_logic_1164.all;

entity NOT_gate is--defining entity of NOT gate
	port(I4:in bit;O2:out bit);
end entity NOT_gate;

architecture NOT_behaviour of NOT_gate is
	begin--defining behaviour of NOT gate
		O2<=(not I4);
	end NOT_behaviour;