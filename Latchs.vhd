library ieee;
use ieee.std_logic_1164.all;


entity Latchs is
	port (D, En , reset, set  :in std_logic;
			Q_L                 :out std_logic);
end Latchs;

architecture VERHALTEN_L of Latchs is

begin
	 process(  En,reset, set  )
		begin
		if (reset = '0' )then 
			Q_L   <= '0' ;
			
		elsif(set = '1')then
			Q_L    <= '1';
			
		elsif( En = '1' )then
			Q_L    <= D;
			
		end if ; 
		
	end process;
end VERHALTEN_L;