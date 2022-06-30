LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY R_STONE_9 IS

PORT(
      OUTPUT_P,OUTPUT_N: OUT SIGNED(19 DOWNTO 0));
END R_STONE_9;


ARCHITECTURE BEHAV OF R_STONE_9 IS 
SIGNAL VALORE :SIGNED (19 DOWNTO 0);
BEGIN 
--VALORE<= "01110110010000000000";
VALORE<= "01110110010000011011";
OUTPUT_P<=VALORE;
OUTPUT_N(19 downto 1)<= NOT VALORE(19 downto 1);
OUTPUT_N(0)<= VALORE(0);
END BEHAV;