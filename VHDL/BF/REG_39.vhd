LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_39_M IS

PORT ( CLK: IN std_logic;
       D: IN SIGNED(38 downto 0);
       Q: OUT SIGNED(38 downto 0));
END REG_39_M;

ARCHITECTURE behav OF REG_39_M IS
 
BEGIN 

PROCESS(CLK)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		Q<= D;
		END IF;
		END PROCESS;
		
END behav;