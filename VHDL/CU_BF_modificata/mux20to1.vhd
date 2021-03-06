LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX_20to1 IS 
PORT( A,B: IN std_logic_vector(20 downto 0);
		SEL : IN std_logic;
		OUTPUT: OUT std_logic_vector(20 downto 0));
END MUX_20to1;

ARCHITECTURE behav OF MUX_20to1 IS 

BEGIN
with SEL  select
    OUTPUT <= A when '0',
				  B when '1',
	"000000000000000000000" when OTHERS;
end Behav;


