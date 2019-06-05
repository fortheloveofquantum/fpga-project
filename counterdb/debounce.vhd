library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debounce is
	generic(
		counter_size : integer := 19);
	port(
		clk : in std_logic;
		input : in std_logic;
		output : out std_logic
	);

end debounce;

architecture Behavioral of debounce is
	signal ff : std_logic_vector(1 downto 0);
	signal counter_set : std_logic;
	signal counter_out : std_logic_vector(counter_size downto 0) := (others => '0');
begin
	counter_set <= ff(0) xor ff(1);
	process(clk)
	begin
		if rising_edge(clk) then
			ff(0) <= input;
			ff(1) <= ff(0);
			if counter_set = '1' then
				counter_out <= (others => '0');
			elsif counter_out(counter_size) = '0' then
				counter_out <= counter_out + 1;
			else
				output <= ff(1);
			end if;
		end if;
	end process;
end Behavioral;