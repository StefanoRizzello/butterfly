library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uROM is
	generic( row : integer:= 11;
				column : integer:= 42
				);
	port( M: in std_logic_vector (3 downto 0); 
			OUT_uROM: out std_logic_vector (column-1 downto 0)
			);
end uROM;

architecture Behavioral of uROM is

	type uROM_MATRIX is array (0 to 10) of std_logic_vector(column-1 downto 0);
	signal uROM_LINES: uROM_MATRIX; 
	signal r11,r12,r21,r22,r31,r32,r41,r42,r51,r52,r61,r62,r71,r72,r81,r82,r91,r92,r101,r102,r111 : std_logic_vector (20 downto 0);
	begin
		-- CC(1) | NA(5) | COMAND (15)
	
   
		r11 <= "1000010UUUUUUU0000000";	-- IDLE
		r12 <= "0000100UUUUUUU0000000";	-- LOAD_ST
		r21 <= "0000110UU1001U0000000";	-- M1
		r22 <= "0001000UU1011U0000000";	-- M3
		r31 <= "000101000111100000000";	-- S1_M2
		r32 <= "000110001110100000000";	-- S3_M4
		r41 <= "00011101U00U010000000";	-- S2_M5
		r42 <= "10100001U01U000000010";	-- S4_M6
		r51 <= "00101011UUUUU10100000";	-- S5
		r52 <= "00111011UUUUU10100000";	-- LOAD_ST_S
		r61 <= "00101111UUUUU10100100";	-- S6
		r62 <= "0011000UUUUUUU0101000";	-- ROUND3
		r71 <= "0011010UUUUUUU0101100";	-- ROUND4
		r72 <= "0101000UUUUUUU1010000";	-- LAST_SAVE
		r81 <= "00111111U100110100100";	-- M1_S
		r82 <= "0100000UU1011U0101000";	-- M3_S
		r91 <= "010001000111100101100";	-- S1_M2_S
		r92 <= "010010001110100010000";	-- S3_M4_S
		r101 <= "01001101U00U010000001";	-- S2_M5_S
		r102 <= "10100001U01U000000010"; -- S4_M6_S
		r111 <= "0000000UUUUUUU0000001";	-- DONE
		
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
		uROM_LINES(10) <= r111 & r111;
		
		OUT_uROM <= uROM_LINES(to_integer(unsigned(M))); 

end Behavioral;