LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY start_sense IS 

PORT (D, CLK,set,enable : IN std_logic;
       SENSE : OUT std_logic);
END  start_sense;

ARCHITECTURE behav OF start_sense IS 
signal new_d : std_logic;
BEGIN 

new_d<=not(D);
PROCESS(CLK,set,enable)
		
		
BEGIN 
		IF (CLK'EVENT AND CLK = '1') THEN 
		IF (enable = '1') THEN 
		SENSE <= new_d;
		ELSE IF (set='1') then 
		SENSE <='1';
		END IF;
		END IF;
		END IF;
		
		END PROCESS;
		
END behav;