library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( INPUT_1 : in  STD_LOGIC;    -- AND gate input
           INPUT_2 : in  STD_LOGIC;    -- AND gate input
           OUTPUT  : out STD_LOGIC     -- AND gate output
			);  	  
		
end and_gate;

architecture Behavioral of and_gate is
begin
    OUTPUT <= INPUT_1 and INPUT_2;    -- 2 input AND gate
end Behavioral;