LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX_2to1 IS 
PORT( A,B,SEL : IN std_logic;
		OUTPUT: OUT std_logic);
END MUX_2to1;

ARCHITECTURE behav OF MUX_2to1 IS 

BEGIN
with SEL  select
    OUTPUT <= A when '0',
				  B when '1',
					
         '0'  when others;
end Behav;

