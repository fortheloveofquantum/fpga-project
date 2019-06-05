library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ring_counter is
	port( clk : in std_logic;
			reset : in std_logic;
			q : out std_logic_vector(3 downto 0)
        );
end ring_counter;

architecture beh of ring_counter is
	signal q_tmp : std_logic_vector(3 downto 0) := "0000";
	begin
	process(clk,reset)
		begin
			if (reset = '1') then
				q_tmp <= "0001";
			elsif rising_edge(clk) then
				q_tmp(1) <= q_tmp(0);
				q_tmp(2) <= q_tmp(1);
				q_tmp(3) <= q_tmp(2);
				q_tmp(0) <= q_tmp(3);
			end if;
		end process;
	q <= q_tmp;
end beh;
		

			
