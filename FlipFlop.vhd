library ieee;
use ieee.std_logic_1164.all;


entity FlipFlop is
	port (D, CLK , reset	:in std_logic;
			Q	:out std_logic);
end FlipFlop;

architecture VERHALTEN of FlipFlop is

begin
	 process( CLK , reset )
		begin
		if (reset = '1')then 
			Q <= '0' ;
			

		elsif(CLK = '1' and CLK'event)then
			Q    <= D;
			
		end if ; 
		
	end process;
end VERHALTEN;