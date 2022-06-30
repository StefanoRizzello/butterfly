LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 


ENTITY BF_finale_tb IS 
END BF_finale_tb;

ARCHITECTURE behav OF BF_finale_tb IS

SIGNAL AI_tb,AR_tb,BI_tb,BR_tb,WR_tb,WI_tb: SIGNED(19 downto 0);
SIGNAL CLK_tb,RESET_tb,LOAD_tb,SEQ_tb,ENABLE_tb: std_logic;
SIGNAL A1R_tb,A1I_tb,B1R_tb,B1I_tb: SIGNED(19 downto 0);

COMPONENT BF_finale IS
PORT ( AI,AR,BI,BR,WR,WI: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
		 CLK, RESET, LOAD, SEQ : IN std_logic;
		 A1R,A1I,B1R,B1I: OUT SIGNED(19 downto 0));
END COMPONENT;

BEGIN

finale : BF_finale PORT MAP (AI=>AI_tb,AR=>AR_tb,BI=>BI_tb,BR=>BR_tb,WR=>WR_tb,WI=>WI_tb,
									  CLK=>CLK_tb,RESET=>RESET_tb,LOAD=>LOAD_tb,SEQ=>SEQ_tb,
									  A1R=>A1R_tb,A1I=>A1I_tb,B1R=>B1R_tb,B1I=>B1I_tb);
									  
clk_process: PROCESS 
 
 BEGIN 
 CLK_tb<= '0';
 wait for 10 ns;
 CLK_tb <= '1';
 wait for 10 ns;
 end process;
 
 
 PROCESS
 BEGIN

 RESET_tb<= '1';
 SEQ_tb<= '0';
 LOAD_tb<= '0';
 AR_tb<="00000000000000000010";--2
 AI_tb<="00000000000000000011";--3
 BR_tb<="00000000000000000100";--4
 BI_tb<="00000000000000000101";--5
 WR_tb<="00000000000000000110";--6
 WI_tb<="00000000000000000111";--7
 wait for 10 ns;
 RESET_tb <= '0';
 wait for 50 ns;
 LOAD_tb <= '1';
 wait for 30 ns;
 LOAD_tb <= '0';
 wait for 10 ns;
 SEQ_tb<= '1';
 wait for 1000 ns;
 SEQ_tb<= '0';
 wait for 5000 ns;
 END PROCESS;
 
 END behav;