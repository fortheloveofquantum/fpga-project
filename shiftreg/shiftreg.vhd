library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftreg is 
	port(
		clk,clear : in std_logic;
		d_in: in std_logic;
		d_out:out std_logic_vector(3 downto 0)
	);
end shiftreg;

architecture beh of shiftreg is
signal reg: std_logic_vector(3 downto 0);
begin
	process(clk,reg,clear)
	begin
		if clear = '1' then
			d_out <= "0000";
		elsif rising_edge(clk) then
			reg <= reg(2 downto 0) & d_in;
		end if;
		d_out <= reg;
	end process;
end beh;