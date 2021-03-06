LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX_20to1_RF IS 
PORT( A,B: IN SIGNED(19 downto 0);
		SEL : IN std_logic;
		OUTPUT: OUT SIGNED(19 downto 0));
END MUX_20to1_RF;

ARCHITECTURE behav OF MUX_20to1_RF IS 

BEGIN
with SEL  select
    OUTPUT <= A when '0',
				  B when '1',
					
         "00000000000000000000"  when others;
end Behav;