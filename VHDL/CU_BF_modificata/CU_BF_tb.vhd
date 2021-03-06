LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 


ENTITY CU_BF_tb IS 
END CU_BF_tb;

ARCHITECTURE behav OF CU_BF_tb IS

SIGNAL CTRL_OUT_tb: std_logic_vector (14 downto 0);
SIGNAL CLK_tb, LOAD_tb, SEQ_tb, RESET_tb: std_logic;

COMPONENT CU_BF  IS
 PORT( LOAD,SEQ,CLK,RESET: IN std_logic;
		CTRL_OUT: OUT std_logic_vector(14 downto 0));
END COMPONENT;

BEGIN

bf: CU_BF PORT MAP(CTRL_OUT=>CTRL_OUT_tb, CLK=>CLK_tb, LOAD=>LOAD_tb, SEQ=>SEQ_tb, RESET=>RESET_tb);

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
 wait for 10 ns;
 RESET_tb <= '0';
 wait for 50 ns;
 LOAD_tb <= '1';
 wait for 30 ns;
 LOAD_tb <= '0';
 --wait for 10 ns;
 --SEQ_tb<= '1';
 --wait for 100 ns;
 --LOAD_tb<= '1';
 --wait for 50 ns;
 --LOAD_tb<= '1';
 wait for 5000 ns;
 END PROCESS;
 
 END behav;