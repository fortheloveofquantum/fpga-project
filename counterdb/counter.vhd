library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
	port(
		clk : in std_logic;
		reset : in std_logic;
		data : out std_logic_vector(7 downto 0)
	);
end counter;

architecture Behavioral of counter is
	signal data_tmp : std_logic_vector(7 downto 0) := (others => '0');
begin
	process(clk,reset)
	begin 
		if reset = '1' then
			data_tmp <= (others => '0');
		elsif rising_edge(clk) then
			data_tmp <= data_tmp + 1;
		end if;
	end process;
data <= data_tmp;
end Behavioral;