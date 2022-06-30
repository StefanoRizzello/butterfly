LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_PS_BF IS

PORT ( CLK,RESET: IN std_logic;
       D: IN std_logic_vector(4 downto 0);
       Q: OUT std_logic_vector(4 downto 0));
END REG_PS_BF;

ARCHITECTURE behav OF REG_PS_BF IS
 
BEGIN 

PROCESS(CLK,RESET)

BEGIN 
      IF (RESET = '1') THEN
		Q<="00000";
		ELSE IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END IF;
		END PROCESS;
		
END behav;