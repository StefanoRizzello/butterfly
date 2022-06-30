LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_BF_AB IS

PORT ( CLK, ENABLE: IN std_logic;
       D: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
       Q: OUT SIGNED(19 downto 0));
END REG_BF_AB;

ARCHITECTURE behav OF REG_BF_AB IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		IF ( ENABLE = '1') THEN 
		Q<= D;
		END IF;
		END IF;
		END PROCESS;
		
END behav;