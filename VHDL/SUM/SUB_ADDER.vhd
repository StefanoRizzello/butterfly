LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY SUB_ADDER IS

PORT ( A_S: IN std_logic;
       T1,T2: IN SIGNED(38 downto 0);
       RESULT: OUT SIGNED(39 downto 0));
END SUB_ADDER;

ARCHITECTURE behav OF SUB_ADDER IS

SIGNAL sign_ext_t1,sign_ext_t2: SIGNED(39 DOWNTO 0);
 
BEGIN 

sign_ext_t1(39) <= T1(38);								--passo nel formato Q2.38
sign_ext_t1(38 DOWNTO 0) <= T1(38 DOWNTO 0);

sign_ext_t2(39) <= T2(38);								--passo nel formato Q2.38
sign_ext_t2(38 DOWNTO 0) <= T2(38 DOWNTO 0);

PROCESS(A_S,sign_ext_t1,sign_ext_t2)

BEGIN 

		IF (A_S = '0') THEN 
		RESULT(39 DOWNTO 0) <= sign_ext_t1+sign_ext_t2;
		END IF;
		IF (A_S ='1') THEN
		RESULT(39 DOWNTO 0) <= sign_ext_t1-(sign_ext_t2);
		END IF;
		END PROCESS;
		
END behav;