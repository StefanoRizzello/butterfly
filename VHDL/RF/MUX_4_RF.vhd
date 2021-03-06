LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX_4_RF IS 
PORT( AR,AI,BR,BI: IN SIGNED(19 downto 0);
		SEL : IN std_logic_vector(1 downto 0);
		OUTPUT: OUT SIGNED(19 downto 0));
END MUX_4_RF;

ARCHITECTURE behav OF MUX_4_RF IS 

BEGIN
with SEL  select
    OUTPUT <= AR when "00",
				  AI when "01",
				  BR when "10",
				  BI when "11",
					
         "00000000000000000000"  when others;
end Behav;