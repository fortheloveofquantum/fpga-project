LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

entity tb_decoder is
end tb_decoder;

architecture beh of tb_decoder is
	component decoder
	port( a : in std_logic_vector(1 downto 0);
			b : out std_logic_vector(3 downto 0)
		  );
	end component;
	
	signal a : std_logic_vector(1 downto 0) := (others => '0');
	signal b : std_logic_vector(3 downto 0);
begin
	uut: decoder port map(
		a => a,
		b => b
	);
	stim_proc: process
	begin
		wait for 100 ns;
		a <= "00";
		wait for 100 ns;
		a <= "01";
		wait for 100 ns;
		a <= "10";
		wait for 100 ns;
		a <= "11";
		wait;
	end process;
end;
