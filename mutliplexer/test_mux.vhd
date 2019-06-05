library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity test_mux is
end test_mux;

architecture beh of test_mux is 
	component multiplexer
	port(
		a,b,c,d : in std_logic;
		s1,s2	  : in std_logic;
		z 		  : out std_logic
	);
	end component;
	
	-- inputs
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal c : std_logic := '0';
	signal d : std_logic := '0';
	signal s1 : std_logic := '0';
	signal s2 : std_logic := '0';
	-- outputs
	signal z : std_logic;

begin
	uut : multiplexer port map (
				a => a,
				b => b,
				c => c,
				d => d,
				s1 => s1,
				s2 => s2,
				z => z
			);
	stim_proc : process
	begin
		wait for 200 ns;
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '0';
		
		s1 <= '0'; s2 <= '0';
		wait for 200 ns;
		s1 <= '1'; s2 <= '0';
		wait for 200 ns;
		s1 <= '0'; s2 <= '1';
		wait for 200 ns;
		s1 <= '1'; s2 <= '1';
		wait for 200 ns;
	end process;
end;