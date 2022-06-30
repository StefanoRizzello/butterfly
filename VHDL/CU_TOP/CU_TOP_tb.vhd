LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 


ENTITY CU_TOP_tb IS 
END CU_TOP_tb;

ARCHITECTURE behav OF CU_TOP_tb IS

SIGNAL CTRL_TOP_OUT_tb: std_logic_vector(5 downto 0);
SIGNAL START_tb,PROGRESS_tb,FREE_M_tb,END_BF_tb,SEQ_tb,CLK_tb,RESET_tb: std_logic;


COMPONENT CU_TOP IS
PORT( START,PROGRESS,FREE_M,END_BF,SEQ,CLK,RESET: IN std_logic;
		CTRL_TOP_OUT: OUT std_logic_vector(5 downto 0));
END COMPONENT;

BEGIN

top: CU_TOP PORT MAP(START=>START_tb,PROGRESS=>PROGRESS_tb,FREE_M=>FREE_M_tb,END_BF=>END_BF_tb,
							SEQ=>SEQ_tb,CLK=>CLK_tb,RESET=>RESET_tb,CTRL_TOP_OUT=>CTRL_TOP_OUT_tb);
							
 clk_process: PROCESS 
 
 BEGIN 
 CLK_tb<= '0';
 wait for 10 ns;	
 CLK_tb <= '1';
 wait for 10 ns;
 end process;
 
 PROCESS
 BEGIN
 RESET_tb	<= '1';
 wait for 10 ns;
 RESET_tb	<= '0';
 START_tb 	<= '0';
 FREE_M_tb 	<= '0';
 END_BF_tb 	<= '0';
 PROGRESS_tb<= '1';
 SEQ_tb		<= '0';
 wait for 20 ns;
 START_tb 	<= '1';
 wait for 20 ns;
 START_tb	<= '0';
 wait for 200 ns;
 END_BF_tb	<= '1';
 wait for 100 ns;
 PROGRESS_tb<= '0';
 wait for 50 ns;
 END_BF_tb	<= '0';
 wait for 50 ns;
 PROGRESS_tb<= '1';
 wait for 20 ns;
 START_tb	<= '1';
 wait for 10 ns;
 START_tb	<= '0';
 wait for 200 ns;
 SEQ_tb		<= '1';
 FREE_M_tb	<= '1';
 wait for 200 ns;
 END_BF_tb	<= '1';
 wait for 20 ns;
 END_BF_tb 	<= '0';
 wait for 200 ns;
 SEQ_tb		<= '0';
 FREE_M_tb	<= '0';
 wait for 180 ns;
 END_BF_tb	<= '1';
 wait for 20 ns;
 END_BF_tb	<= '0';
 PROGRESS_tb<= '0';
 wait for 2000 ns;
 END PROCESS;
 END behav;