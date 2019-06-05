library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity multiplexer is
	port(
		a,b,c,d : in std_logic;
		s1,s2	  : in std_logic;
		z 		  : out std_logic
	);
end multiplexer;

architecture bhv of multiplexer is
begin
	process(a,b,c,d,s1,s2) is
	begin
		if(s1 = '0' and s1 = '0') then
			z <= a;
		elsif(s1 = '1' and s2 = '0') then
			z <= b;
		elsif(s1 = '0' and s2 = '1') then
			z <= c;
		else
			z <= d;
		end if;
	end process;
end bhv;