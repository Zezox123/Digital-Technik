library ieee;
use ieee.std_logic_1164.all;


entity FlipFlop_SR is
	port (D, CLK , reset, set	:in std_logic;
			Q	:out std_logic);
end FlipFlop_SR;

architecture VERHALTEN of FlipFlop_SR is

begin


	 process( CLK , reset, set )
		begin
		if (reset = '0')then 
			Q <= '0' ;
			
		elsif(set = '1' )then
			Q    <= '1';
			
		elsif(CLK = '1' and CLK'event )then
			Q    <= D;
			
		end if ; 
		
	end process;
end VERHALTEN;