library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity sr_ff is 
	port(
		s,r,clk : in std_logic;
		q, q_bar: out std_logic
	);
end sr_ff;

architecture beh of sr_ff is 
begin
	process(clk)
	variable tmp : std_logic;
	begin
		if rising_edge(clk) then
			if (s = '0' and r = '0') then
				tmp := tmp;
			elsif (s = '1' and r = '1') then
				tmp := 'Z';
			elsif (s = '0' and r = '1') then
				tmp := '0';
			else
				tmp := '1';
			end if;
		end if;
	q <= tmp;
	q_bar <= not tmp;
	end process;
end beh;
