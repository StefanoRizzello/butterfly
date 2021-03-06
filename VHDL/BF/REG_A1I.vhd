LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_A1I IS

PORT ( CLK: IN std_logic;
		 ENABLE: IN std_logic_vector(2 downto 0);
       D: IN SIGNED(19 downto 0);
       Q: OUT SIGNED(19 downto 0));
END REG_A1I;

ARCHITECTURE behav OF REG_A1I IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		IF(ENABLE = "010") THEN  
		Q<= D;
		END IF;
		END IF;
		END PROCESS;
		
END behav;