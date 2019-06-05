LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tb_ring_counter is
end tb_ring_counter;

architecture beh of tb_ring_counter is
	component ring_counter
	port( clk : in std_logic;
			reset : in std_logic;
			q : out std_logic_vector(3 downto 0)
			);
	end component;
	
	signal clk : std_logic := '0';
	signal reset : std_logic := '0';
	signal q : std_logic_vector(3 downto 0);
	
	constant clk_period : time := 20 ns;
begin

	uut:ring_counter port map(
		clk => clk,
		reset => reset,
		q => q
	);
	
	clk_process: process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	stim_process: process
	begin 
		wait for 100 ns;
		reset <= '1';
		wait for 100 ns;
		reset <= '0';	
		wait;
	end process;
end;
	