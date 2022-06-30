LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY FlipFlop_status IS 

PORT (D, CLK,set,enable,RESET : IN std_logic;
       Q: OUT std_logic);
END  FlipFlop_status;

ARCHITECTURE behav OF FlipFlop_status IS 
signal new_d : std_logic;
BEGIN 
new_d<= NOT(D);
PROCESS(CLK,set,enable,RESET)

BEGIN 

		IF (CLK'EVENT AND CLK = '1') THEN 
		IF (enable = '1') THEN 
		Q<= new_d;
		
		ELSE IF (set='1') then 
		Q<='1';
	
		ELSE IF (RESET = '1') THEN
		Q <= '0';
		END IF;
		END IF;
		END IF;
		END IF;
		
		END PROCESS;
		
END behav;