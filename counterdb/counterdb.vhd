library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counterdb is
	Port ( clk : in std_logic;
			 btn : in std_logic;
			 reset : in std_logic;
			 data : out std_logic_vector(7 downto 0)
		   );
end counterdb;
			
architecture beh of counterdb is
	signal tmp : std_logic;
begin
	counter_btn : entity work.debounce(Behavioral)
		port map(clk => clk, input => btn, output => tmp);
	counter : entity work.counter(Behavioral)
		port map(clk => tmp, reset => reset, data => data);
end beh;