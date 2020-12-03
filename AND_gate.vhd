library IEEE;
use ieee.std_logic_1164.all;

entity AND_gate is--defining entity of AND gate
port(I1,I2,I3:in bit;O1:out bit);
end entity AND_gate;

architecture AND_behaviour of AND_gate is
	begin--defining behaviour of AND gate
		O1<=I1 and I2 and I3;
	end AND_behaviour;