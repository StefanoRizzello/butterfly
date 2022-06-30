LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_40_S IS

PORT ( CLK: IN std_logic;
       D: IN SIGNED(39 downto 0);
       Q: OUT SIGNED(39 downto 0));
END REG_40_S;

ARCHITECTURE behav OF REG_40_S IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END PROCESS;
		
END behav;