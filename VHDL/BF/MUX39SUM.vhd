LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MUX39SUM IS 
PORT( A: IN SIGNED (19 downto 0); 			-- Q1.19
		B: IN SIGNED(38 downto 0);				-- Q1.38
		SEL : IN std_logic;
		OUTPUT: OUT SIGNED(38 downto 0));	
END MUX39SUM;

ARCHITECTURE behav OF MUX39SUM IS 
SIGNAL sign_ext_a : SIGNED(18 DOWNTO 0);
SIGNAL new_a : SIGNED (38 DOWNTO 0);
BEGIN
--sign_ext_a <=(others=> A(0));			-- estensione LSB nella parte decimale
sign_ext_a <=(others=> '0');				-- estensione zeri nella parte decimale

new_a(38 downto 19) <= A;
new_a(18 downto 0) <= sign_ext_a;

with SEL  select
    OUTPUT <= new_a when '0',
				  B when '1',
					
         "000000000000000000000000000000000000000"  when others;
end Behav;

