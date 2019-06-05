LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tb_shiftreg is
end tb_shiftreg;

architecture beh of tb_shiftreg is
component shiftreg
	port(
		clk : in std_logic;
		clear : in std_logic;
		d_in: in std_logic;
		d_out:out std_logic_vector(3 downto 0)
	);
end component;

signal clear : std_logic := '0';
signal clk : std_logic := '0';
signal d_in : std_logic := '0';
signal d_out : std_logic_vector(3 downto 0);
constant clk_period : time := 10 ns;
	
begin

uut:shiftreg port map(
	clk => clk,
	d_in => d_in,
	d_out => d_out,
	clear => clear
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
	clear <= '1';
	wait for 20 ns;
	clear <= '0';
	wait for 20 ns;
	d_in <= '1';
	wait for 20 ns;
	d_in <= '0';
	wait for 20 ns;
	d_in <= '1';
	wait for 20 ns;
	d_in <= '1';
	wait for 20 ns;
	d_in <= '0';
	wait for 20 ns;
	d_in <= '1';
	wait for 20 ns;
	d_in <= '1';
	wait;
end process;
end;
