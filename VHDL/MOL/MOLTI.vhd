LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MOLTI IS

PORT ( C: IN std_logic;
       ADD1,ADD2: IN SIGNED(19 downto 0);
       RESULT: OUT SIGNED(39 downto 0));
END MOLTI;

ARCHITECTURE behav OF MOLTI IS

SIGNAL sign_ext: SIGNED(19 DOWNTO 0);
 
BEGIN 
sign_ext <=(others=> ADD1(0));

PROCESS(C,ADD1,ADD2,sign_ext)

BEGIN 
	IF (C= '1') THEN 								-- ADD1*ADD2
	RESULT <= ADD1 * ADD2;
	END IF;
	IF (C = '0') THEN 							-- ADD1*2
	RESULT(38 DOWNTO 20) <= ADD1(18 DOWNTO 0);
	RESULT(19 DOWNTO 0) <= sign_ext;
	RESULT(39) <= ADD1(0);
	END IF;
END PROCESS;
		
END behav;