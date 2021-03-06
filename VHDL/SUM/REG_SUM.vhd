LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_SUM IS

PORT ( CLK: IN std_logic;
       D: IN SIGNED(39 downto 0);
       Q: OUT SIGNED (39 downto 0));
END REG_SUM;

ARCHITECTURE behav OF REG_SUM IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END PROCESS;
		
END behav;