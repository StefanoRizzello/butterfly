LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY R_STONE_0 IS

PORT(
      OUTPUT: OUT SIGNED(19 DOWNTO 0));
END R_STONE_0;


ARCHITECTURE BEHAV OF R_STONE_0 IS 
SIGNAL VALORE :SIGNED (19 DOWNTO 0);
BEGIN 
VALORE<= "00000000000000000000";
OUTPUT<=VALORE;
END BEHAV;