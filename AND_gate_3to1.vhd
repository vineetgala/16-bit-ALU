library IEEE;
use ieee.std_logic_1164.all;

entity AND_gate_3to1 is--defining entity of AND gate
port(I1,I2,I3:in bit;O1:out bit);
end entity AND_gate_3to1;

architecture AND_behaviour of AND_gate_3to1 is
	begin--defining behaviour of AND gate
		O1<=I1 and I2 and I3;
	end AND_behaviour;