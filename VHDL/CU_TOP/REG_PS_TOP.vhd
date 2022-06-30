LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_PS_TOP IS

PORT ( CLK,RESET: IN std_logic;
       D: IN std_logic_vector(3 downto 0);
       Q: OUT std_logic_vector(3 downto 0));
END REG_PS_TOP;

ARCHITECTURE behav OF REG_PS_TOP IS
 
BEGIN 

PROCESS(CLK,RESET)

BEGIN 
      IF (RESET = '1') THEN
		Q<= "0011";
		ELSE IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END IF;
		
		END PROCESS;
		
END behav;