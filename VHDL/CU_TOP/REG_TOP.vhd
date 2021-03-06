LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_TOP IS

PORT ( CLK: IN std_logic;
       D: IN std_logic_vector(19 downto 0);
       Q: OUT std_logic_vector(19 downto 0));
END REG_TOP;

ARCHITECTURE behav OF REG_TOP IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END PROCESS;
		
END behav;