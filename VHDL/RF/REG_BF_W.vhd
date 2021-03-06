LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_BF_W IS

PORT ( CLK: IN std_logic;
       D: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
       Q: OUT SIGNED(19 downto 0));
END REG_BF_W;

ARCHITECTURE behav OF REG_BF_W IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END PROCESS;
		
END behav;