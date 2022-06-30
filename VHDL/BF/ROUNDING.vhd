LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY ROUNDING IS

PORT ( IN_39: IN SIGNED(39 downto 0);			-- Q2.38
       OUT_20: OUT SIGNED(19 downto 0));		
END ROUNDING;

ARCHITECTURE behav of ROUNDING IS 

SIGNAL OUT_20_S: SIGNED (19 DOWNTO 0);
SIGNAL IN_39_S: SIGNED(39 DOWNTO 0);
BEGIN


IN_39_S(39 DOWNTO 1) <= IN_39(38 DOWNTO 0); 		-- sposto la virgola
IN_39_S(0) <='0';											-- Q1.19

PROCESS (IN_39_S)
BEGIN


case IN_39_S(19 DOWNTO 0) is
   when "10000000000000000000" =>
     IF (IN_39_S(20) = '1') THEN
			OUT_20_S <= IN_39_S(39 DOWNTO 20) + 1;
			ELSE
			OUT_20_S <= IN_39_S(39 DOWNTO 20);
			END IF;
   when OTHERS =>
			IF (IN_39_S(19) = '1') THEN
			OUT_20_S <= IN_39_S(39 DOWNTO 20) + 1;
			ELSE
			OUT_20_S <= IN_39_S(39 DOWNTO 20);
			END IF;
end case;
END PROCESS;


OUT_20(19) <= OUT_20_S(19);									-- riduco la dinamica
OUT_20(18 DOWNTO 0) <= OUT_20_S(19 DOWNTO 1);

end behav;