LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX_12to1_TOP IS 
PORT( A,B,C,D: IN std_logic_vector(11 downto 0);
		SEL : IN std_logic_vector(1 downto 0);
		OUTPUT: OUT std_logic_vector(11 downto 0));
END MUX_12to1_TOP;

ARCHITECTURE behav OF MUX_12to1_TOP IS 

BEGIN
with SEL  select
  OUTPUT <= A when "00",
				  B when "01",
				  c when "10",
				  D when "11",
					
         "000000000000"  when others;

end Behav;
