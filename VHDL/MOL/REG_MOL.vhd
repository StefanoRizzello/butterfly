LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_MOL IS

PORT ( CLK: IN std_logic;
       D: IN SIGNED(38 downto 0);
       Q: OUT SIGNED(38 downto 0));
END REG_MOL;

ARCHITECTURE behav OF REG_MOL IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END PROCESS;
		
END behav;