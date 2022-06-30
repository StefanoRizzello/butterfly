LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY PLA_BF IS 
PORT( LOAD,SEQ,LSB,CC : IN std_logic;
		LSB_OUT: OUT std_logic);
END PLA_BF;

ARCHITECTURE behav OF PLA_BF IS 

COMPONENT MUX_2to1 IS 
PORT( A,B,SEL : IN std_logic;
		OUTPUT: OUT std_logic);
END COMPONENT;

SIGNAL LOGICA : std_logic;
BEGIN 
LOGICA <= (SEQ AND NOT(LSB)) OR (LOAD AND LSB);
mux2: MUX_2to1 PORT MAP( A=> LSB, B=> LOGICA, SEL=> CC,  OUTPUT=> LSB_OUT);
END behav;