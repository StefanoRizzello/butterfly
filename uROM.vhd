library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uROM is
	generic( row : integer:= 10;
				column : integer:= 40
				);
	port( M: in std_logic_vector (4 downto 0); 
			OUT_uROM: out std_logic_vector (column-1 downto 0)
			);
end uROM;

architecture Behavioral of uROM is

	type uROM_MATRIX is array (0 to row-1) of std_logic_vector(column-1 downto 0);
	signal uROM_LINES: uROM_MATRIX; 
	signal r11,r12,r21,r22,r31,r32,r41,r42,r51,r52,r61,r62,r71,r72,r81,r82,r91,r92,r101,r102 : std_logic_vector (19 downto 0);
	begin
		-- CC(1) | NA(5) | COMAND (14)
		
		r11 <= "100001UUUUUUU0000000";	-- IDLE
		r12 <= "000010UUUUUUU1000000";	-- LOAD_ST
		r21 <= "000011UU1001U0000000";	-- M1
		r22 <= "000100UU1011U0000000";	-- M3
		r31 <= "00010100111100000000";	-- S1_M2
		r32 <= "00011001110100000000";	-- S3_M4
		r41 <= "0001111U00U010000000";	-- S2_M5
		r42 <= "1010001U01U000100010";	-- S4_M6
		r51 <= "0010101UUUUU10100100";	-- S5
		r52	<= "0011101UUUUU11100100";	-- LOAD_ST_S
		r61 <= "0010111UUUUU10101000";	-- S6
		r62 <= "001100UUUUUUU0101100";	-- ROUND3
		r71 <= "001101UUUUUUU0010000";	-- ROUND4
		r72 <= "000000UUUUUUU1000001";	-- DONE
		r81 <= "0011111U100110101000";	-- M1_S
		r82 <= "010000UU1011U0101100";	-- M3_S
		r91 <= "01000100111100010000";	-- S1_M2_S
		r92 <= "01001001110100000001";	-- S3_M4_S
		r101 <= "0100111U00U010000000";	-- S2_M5_S
		r102 <= "1010001U01U000100010"; -- S4_M6_S
		
		uROM_LINES(0) <= r11 & r12;
		uROM_LINES(1) <= r21 & r22;
		uROM_LINES(2) <= r31 & r32;
		uROM_LINES(3) <= r41 & r42;
		uROM_LINES(4) <= r51 & r52;
		uROM_LINES(5) <= r61 & r62;
		uROM_LINES(6) <= r71 & r72;
		uROM_LINES(7) <= r81 & r82;
		uROM_LINES(8) <= r91 & r92;
		uROM_LINES(9) <= r101 & r102;
		
		OUT_uROM <= uROM_LINES(to_integer(unsigned(M))); 

end Behavioral;