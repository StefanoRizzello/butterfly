library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uROM_TOP is
	generic( row : integer:= 3;
				column : integer:= 48
				);
	port( M: in std_logic_vector (1 downto 0); 
			OUT_uROM: out std_logic_vector (column-1 downto 0)
			);
end uROM_TOP;

architecture Behavioral of uROM_TOP is

	type uROM_MATRIX is array (0 to 2) of std_logic_vector(column-1 downto 0);
	signal uROM_LINES: uROM_MATRIX; 
	signal r0011,r0000,r0001,r0111,r0100,r0101,r0110,r1010,r1011,rnull : std_logic_vector (11 downto 0);
	begin
		-- CC(1) | NA(4) | COMAND (12)
	
   
		r0011 <= "000000000001";	-- RESET
		r0000 <= "010001000000";	-- IDLE
		r0001 <= "000111110000";	-- LOAD
		r0111 <= "110100001000";	-- WORK
		r0100 <= "000111101000";	-- FREE_M
		r0101 <= "011010000010";	-- READY
		r0110 <= "000111101010";	-- FREE_M-READY
		r1010 <= "000011000100";	-- DONE
		r1011	<= "000111000000";	-- PREWORK
		rnull <= "UUUUUUUUUUUU"; 	-- NULL
		
		uROM_LINES(0) <= r0000 & r0001 & rnull & r0011;
		uROM_LINES(1) <= r0100 & r0101 & r0110 & r0111;
		uROM_LINES(2) <= rnull & rnull & r1010 & r1011;
	
		
		OUT_uROM <= uROM_LINES(to_integer(unsigned(M))); 

end Behavioral;