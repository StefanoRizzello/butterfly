LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX_INV IS 
PORT( A: IN SIGNED (38 downto 0);
		B: IN SIGNED(38 downto 0);
		SEL : IN std_logic;
		OUTPUT: OUT SIGNED(38 downto 0));
END MUX_INV;

ARCHITECTURE behav OF MUX_INV IS 

BEGIN


with SEL  select
    OUTPUT <= A when '0',
				  B when '1',
					
         "000000000000000000000000000000000000000"  when others;
end Behav;

