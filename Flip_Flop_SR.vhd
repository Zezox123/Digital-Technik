library ieee;
use ieee.std_logic_1164.all;


entity Flip_Flop_SR is
	port (D, CLK 	:in std_logic;
      	CLK 	   :in std_logic;
			Q 	      :out std_logic);
end Flip_Flop_SR;

architecture VERHALTEN of Flip_Flop_SR is

begin
	 process( CLK )
		begin

		if(rising_edge(CLK))then
			Q <= D;

		end if ; 
		
	end process;
end VERHALTEN;