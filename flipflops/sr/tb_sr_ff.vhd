LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tb_sr_ff is 
end tb_sr_ff;

architecture beh of tb_sr_ff is 
	component sr_ff
	port(
		s,r,clk : in std_logic;
		q, q_bar: out std_logic
	);
	end component;
	
	--inputs
	signal s : std_logic := '0';
	signal r : std_logic := '0';
	signal clk : std_logic := '0';
	--outputs
	signal q : std_logic := '0';
	signal q_bar : std_logic := '0';
	
	constant clk_period : time := 20 ns;
begin
	uut: sr_ff port map(
			s => s,
			r => r,
			clk => clk,
			q => q,
			q_bar => q_bar
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
		s <= '0';
		r <= '0';
		wait for 100 ns;
		s <= '1';
		r <= '0';
		wait for 100 ns;
		s <= '0';
		r <= '1';
		wait for 100 ns;
		s <= '1';
		r <= '1';
		wait for 100 ns;
		wait;
	end process;
end;