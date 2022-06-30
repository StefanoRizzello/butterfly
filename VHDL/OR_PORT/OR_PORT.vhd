LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY OR_PORT IS

PORT ( 
       B0AR,B1AR,B2AR,B3AR,B4AR,B5AR,B6AR,B7AR: IN SIGNED(19 downto 0);
		 B0AI,B1AI,B2AI,B3AI,B4AI,B5AI,B6AI,B7AI: IN SIGNED(19 downto 0);
		 B0BR,B1BR,B2BR,B3BR,B4BR,B5BR,B6BR,B7BR: IN SIGNED(19 downto 0);
		 B0BI,B1BI,B2BI,B3BI,B4BI,B5BI,B6BI,B7BI: IN SIGNED(19 downto 0);
       START: OUT std_logic);
END OR_PORT;

ARCHITECTURE behav OF OR_PORT IS

SIGNAL B0ARS,B1ARS,B2ARS,B3ARS,B4ARS,B5ARS,B6ARS,B7ARS: STD_LOGIC_VECTOR(19 downto 0);
SIGNAL B0AIS,B1AIS,B2AIS,B3AIS,B4AIS,B5AIS,B6AIS,B7AIS: STD_LOGIC_VECTOR(19 downto 0);
SIGNAL B0BRS,B1BRS,B2BRS,B3BRS,B4BRS,B5BRS,B6BRS,B7BRS: STD_LOGIC_VECTOR(19 downto 0);
SIGNAL B0BIS,B1BIS,B2BIS,B3BIS,B4BIS,B5BIS,B6BIS,B7BIS: STD_LOGIC_VECTOR(19 downto 0);

SIGNAL 	START0,START1,START2,START3,START4,START5,START6,START7,START8,
			START9,START10,START11,START12,START13,START14,START15,
			START16,START17,START18,START19,START20,START21,START22,START23,	
			START24,START25,START26,START27,START28,START29,START30,START31: STD_LOGIC;
		 
 BEGIN 
 
B0ARS<= std_logic_vector(B0AR);
B1ARS<= std_logic_vector(B1AR);
B2ARS<= std_logic_vector(B2AR);
B3ARS<= std_logic_vector(B3AR);
B4ARS<= std_logic_vector(B4AR);
B5ARS<= std_logic_vector(B5AR);
B6ARS<= std_logic_vector(B6AR);
B7ARS<= std_logic_vector(B7AR);

B0AIS<= std_logic_vector(B0AI);
B1AIS<= std_logic_vector(B1AI);
B2AIS<= std_logic_vector(B2AI);
B3AIS<= std_logic_vector(B3AI);
B4AIS<= std_logic_vector(B4AI);
B5AIS<= std_logic_vector(B5AI);
B6AIS<= std_logic_vector(B6AI);
B7AIS<= std_logic_vector(B7AI);

B0BIS<= std_logic_vector(B0BI);
B1BIS<= std_logic_vector(B1BI);
B2BIS<= std_logic_vector(B2BI);
B3BIS<= std_logic_vector(B3BI);
B4BIS<= std_logic_vector(B4BI);
B5BIS<= std_logic_vector(B5BI);
B6BIS<= std_logic_vector(B6BI);
B7BIS<= std_logic_vector(B7BI);

B0BRS<= std_logic_vector(B0BR);
B1BRS<= std_logic_vector(B1BR);
B2BRS<= std_logic_vector(B2BR);
B3BRS<= std_logic_vector(B3BR);
B4BRS<= std_logic_vector(B4BR);
B5BRS<= std_logic_vector(B5BR);
B6BRS<= std_logic_vector(B6BR);
B7BRS<= std_logic_vector(B7BR);



START0<= B0ARS(19) OR B0ARS(18) OR B0ARS(17) OR B0ARS(16) OR B0ARS(15) OR B0ARS(14) OR B0ARS(13) OR 			B0ARS(12) OR B0ARS(11) OR B0ARS(10) OR B0ARS(9) OR B0ARS(8) OR B0ARS(7) OR B0ARS(6) OR 		  B0ARS(5) OR B0ARS(4) OR B0ARS(3) OR B0ARS(2) OR B0ARS(1) OR B0ARS(0);

START1<= B1ARS(19) OR B1ARS(18) OR B1ARS(17) OR B1ARS(16) OR B1ARS(15) OR B1ARS(14) OR B1ARS(13) OR 			B1ARS(12) OR B1ARS(11) OR B1ARS(10) OR B1ARS(9) OR B1ARS(8) OR B1ARS(7) OR B1ARS(6) OR 		  B1ARS(5) OR B1ARS(4) OR B1ARS(3) OR B1ARS(2) OR B1ARS(1) OR B1ARS(0);

START2<= B2ARS(19) OR B2ARS(18) OR B2ARS(17) OR B2ARS(16) OR B2ARS(15) OR B2ARS(14) OR B2ARS(13) OR 			B2ARS(12) OR B2ARS(11) OR B2ARS(10) OR B2ARS(9) OR B2ARS(8) OR B2ARS(7) OR B2ARS(6) OR 		  B2ARS(5) OR B2ARS(4) OR B2ARS(3) OR B2ARS(2) OR B2ARS(1) OR B2ARS(0);

START3<= B3ARS(19) OR B3ARS(18) OR B3ARS(17) OR B3ARS(16) OR B3ARS(15) OR B3ARS(14) OR B3ARS(13) OR 			B3ARS(12) OR B3ARS(11) OR B3ARS(10) OR B3ARS(9) OR B3ARS(8) OR B3ARS(7) OR B3ARS(6) OR 		  B3ARS(5) OR B3ARS(4) OR B3ARS(3) OR B3ARS(2) OR B3ARS(1) OR B3ARS(0);

START4<= B4ARS(19) OR B4ARS(18) OR B4ARS(17) OR B4ARS(16) OR B4ARS(15) OR B4ARS(14) OR B4ARS(13) OR 			B4ARS(12) OR B4ARS(11) OR B4ARS(10) OR B4ARS(9) OR B4ARS(8) OR B4ARS(7) OR B4ARS(6) OR 		  B4ARS(5) OR B4ARS(4) OR B4ARS(3) OR B4ARS(2) OR B4ARS(1) OR B4ARS(0);

START5<= B5ARS(19) OR B5ARS(18) OR B5ARS(17) OR B5ARS(16) OR B5ARS(15) OR B5ARS(14) OR B5ARS(13) OR 			B5ARS(12) OR B5ARS(11) OR B5ARS(10) OR B5ARS(9) OR B5ARS(8) OR B5ARS(7) OR B5ARS(6) OR 		  B5ARS(5) OR B5ARS(4) OR B5ARS(3) OR B5ARS(2) OR B5ARS(1) OR B5ARS(0);

START6<= B6ARS(19) OR B6ARS(18) OR B6ARS(17) OR B6ARS(16) OR B6ARS(15) OR B6ARS(14) OR B6ARS(13) OR 			B6ARS(12) OR B6ARS(11) OR B6ARS(10) OR B6ARS(9) OR B6ARS(8) OR B6ARS(7) OR B6ARS(6) OR 		  B6ARS(5) OR B6ARS(4) OR B6ARS(3) OR B6ARS(2) OR B6ARS(1) OR B6ARS(0);

START7<= B7ARS(19) OR B7ARS(18) OR B7ARS(17) OR B7ARS(16) OR B7ARS(15) OR B7ARS(14) OR B7ARS(13) OR 			B7ARS(12) OR B7ARS(11) OR B7ARS(10) OR B7ARS(9) OR B7ARS(8) OR B7ARS(7) OR B7ARS(6) OR 		  B7ARS(5) OR B7ARS(4) OR B7ARS(3) OR B7ARS(2) OR B7ARS(1) OR B7ARS(0);

--AIS

START8<= B0AIS(19) OR B0AIS(18) OR B0AIS(17) OR B0AIS(16) OR B0AIS(15) OR B0AIS(14) OR B0AIS(13) OR 			B0AIS(12) OR B0AIS(11) OR B0AIS(10) OR B0AIS(9) OR B0AIS(8) OR B0AIS(7) OR B0AIS(6) OR 		  B0AIS(5) OR B0AIS(4) OR B0AIS(3) OR B0AIS(2) OR B0AIS(1) OR B0AIS(0);

START9<= B1AIS(19) OR B1AIS(18) OR B1AIS(17) OR B1AIS(16) OR B1AIS(15) OR B1AIS(14) OR B1AIS(13) OR 			B1AIS(12) OR B1AIS(11) OR B1AIS(10) OR B1AIS(9) OR B1AIS(8) OR B1AIS(7) OR B1AIS(6) OR 		  B1AIS(5) OR B1AIS(4) OR B1AIS(3) OR B1AIS(2) OR B1AIS(1) OR B1AIS(0);

START10 <= B2AIS(19) OR B2AIS(18) OR B2AIS(17) OR B2AIS(16) OR B2AIS(15) OR B2AIS(14) OR B2AIS(13) 		OR B2AIS(12) OR B2AIS(11) OR B2AIS(11) OR B2AIS(9) OR B2AIS(8) OR B2AIS(7) OR B2AIS(6) OR 		  B2AIS(5) OR B2AIS(4) OR B2AIS(3) OR B2AIS(2) OR B2AIS(1) OR B2AIS(0);

START11<= B3AIS(19) OR B3AIS(18) OR B3AIS(17) OR B3AIS(16) OR B3AIS(15) OR B3AIS(14) OR B3AIS(13) 			OR B3AIS(12) OR B3AIS(11) OR B3AIS(10) OR B3AIS(9) OR B3AIS(8) OR B3AIS(7) OR B3AIS(6) OR 		  B3AIS(5) OR B3AIS(4) OR B3AIS(3) OR B3AIS(2) OR B3AIS(1) OR B3AIS(0);

START12<= B4AIS(19) OR B4AIS(18) OR B4AIS(17) OR B4AIS(16) OR B4AIS(15) OR B4AIS(14) OR B4AIS(13) 			OR B4AIS(12) OR B4AIS(11) OR B4AIS(10) OR B4AIS(9) OR B4AIS(8) OR B4AIS(7) OR B4AIS(6) OR 		  B4AIS(5) OR B4AIS(4) OR B4AIS(3) OR B4AIS(2) OR B4AIS(1) OR B4AIS(0);

START13<= B5AIS(19) OR B5AIS(18) OR B5AIS(17) OR B5AIS(16) OR B5AIS(15) OR B5AIS(14) OR B5AIS(13) 			OR B5AIS(12) OR B5AIS(11) OR B5AIS(10) OR B5AIS(9) OR B5AIS(8) OR B5AIS(7) OR B5AIS(6) OR 		  B5AIS(5) OR B5AIS(4) OR B5AIS(3) OR B5AIS(2) OR B5AIS(1) OR B5AIS(0);


START14<= B6AIS(19) OR B6AIS(18) OR B6AIS(17) OR B6AIS(16) OR B6AIS(15) OR B6AIS(14) OR B6AIS(13) 			OR B6AIS(12) OR B6AIS(11) OR B6AIS(10) OR B6AIS(9) OR B6AIS(8) OR B6AIS(7) OR B6AIS(6) OR 		  B6AIS(5) OR B6AIS(4) OR B6AIS(3) OR B6AIS(2) OR B6AIS(1) OR B6AIS(0);

START15 <= B7AIS(19) OR B7AIS(18) OR B7AIS(17) OR B7AIS(16) OR B7AIS(15) OR B7AIS(14) OR B7AIS(13) 			OR B7AIS(12) OR B7AIS(11) OR B7AIS(10) OR B7AIS(9) OR B7AIS(8) OR B7AIS(7) OR B7AIS(6) OR 		  B7AIS(5) OR B7AIS(4) OR B7AIS(3) OR B7AIS(2) OR B7AIS(1) OR B7AIS(0);

-- BIS 

START16 <= B0BIS(19) OR B0BIS(18) OR B0BIS(17) OR B0BIS(16) OR B0BIS(15) OR B0BIS(14) OR B0BIS(13) 			OR B0BIS(12) OR B0BIS(11) OR B0BIS(10) OR B0BIS(9) OR B0BIS(8) OR B0BIS(7) OR B0BIS(6) OR 		  B0BIS(5) OR B0BIS(4) OR B0BIS(3) OR B0BIS(2) OR B0BIS(1) OR B0BIS(0);

START17<= B1BIS(19) OR B1BIS(18) OR B1BIS(17) OR B1BIS(16) OR B1BIS(15) OR B1BIS(14) OR B1BIS(13) 			OR B1BIS(12) OR B1BIS(11) OR B1BIS(10) OR B1BIS(9) OR B1BIS(8) OR B1BIS(7) OR B1BIS(6) OR 		  B1BIS(5) OR B1BIS(4) OR B1BIS(3) OR B1BIS(2) OR B1BIS(1) OR B1BIS(0);

START18<= B2BIS(19) OR B2BIS(18) OR B2BIS(17) OR B2BIS(16) OR B2BIS(15) OR B2BIS(14) OR B2BIS(13) 			OR B2BIS(12) OR B2BIS(11) OR B2BIS(10) OR B2BIS(9) OR B2BIS(8) OR B2BIS(7) OR B2BIS(6) OR 		  B2BIS(5) OR B2BIS(4) OR B2BIS(3) OR B2BIS(2) OR B2BIS(1) OR B2BIS(0);

START19<= B3BIS(19) OR B3BIS(18) OR B3BIS(17) OR B3BIS(16) OR B3BIS(15) OR B3BIS(14) OR B3BIS(13) 			OR B3BIS(12) OR B3BIS(11) OR B3BIS(10) OR B3BIS(9) OR B3BIS(8) OR B3BIS(7) OR B3BIS(6) OR 		  B3BIS(5) OR B3BIS(4) OR B3BIS(3) OR B3BIS(2) OR B3BIS(1) OR B3BIS(0);

START20<= B4BIS(19) OR B4BIS(18) OR B4BIS(17) OR B4BIS(16) OR B4BIS(15) OR B4BIS(14) OR B4BIS(13) 			OR B4BIS(12) OR B4BIS(11) OR B4BIS(10) OR B4BIS(9) OR B4BIS(8) OR B4BIS(7) OR B4BIS(6) OR 		  B4BIS(5) OR B4BIS(4) OR B4BIS(3) OR B4BIS(2) OR B4BIS(1) OR B4BIS(0);

START21<= B5BIS(19) OR B5BIS(18) OR B5BIS(17) OR B5BIS(16) OR B5BIS(15) OR B5BIS(14) OR B5BIS(13) 			OR B5BIS(12) OR B5BIS(11) OR B5BIS(10) OR B5BIS(9) OR B5BIS(8) OR B5BIS(7) OR B5BIS(6) OR 		  B5BIS(5) OR B5BIS(4) OR B5BIS(3) OR B5BIS(2) OR B5BIS(1) OR B5BIS(0);


START22<= B6BIS(19) OR B6BIS(18) OR B6BIS(17) OR B6BIS(16) OR B6BIS(15) OR B6BIS(14) OR B6BIS(13) 			OR B6BIS(12) OR B6BIS(11) OR B6BIS(10) OR B6BIS(9) OR B6BIS(8) OR B6BIS(7) OR B6BIS(6) OR 		  B6BIS(5) OR B6BIS(4) OR B6BIS(3) OR B6BIS(2) OR B6BIS(1) OR B6BIS(0);

START23<= B7BIS(19) OR B7BIS(18) OR B7BIS(17) OR B7BIS(16) OR B7BIS(15) OR B7BIS(14) OR B7BIS(13) 			OR B7BIS(12) OR B7BIS(11) OR B7BIS(10) OR B7BIS(9) OR B7BIS(8) OR B7BIS(7) OR B7BIS(6) OR 		  B7BIS(5) OR B7BIS(4) OR B7BIS(3) OR B7BIS(2) OR B7BIS(1) OR B7BIS(0);


--BRS

START24<= B0BRS(19) OR B0BRS(18) OR B0BRS(17) OR B0BRS(16) OR B0BRS(15) OR B0BRS(14) OR B0BRS(13) 			OR B0BRS(12) OR B0BRS(11) OR B0BRS(10) OR B0BRS(9) OR B0BRS(8) OR B0BRS(7) OR B0BRS(6) OR 		  B0BRS(5) OR B0BRS(4) OR B0BRS(3) OR B0BRS(2) OR B0BRS(1) OR B0BRS(0);

START25<= B1BRS(19) OR B1BRS(18) OR B1BRS(17) OR B1BRS(16) OR B1BRS(15) OR B1BRS(14) OR B1BRS(13) 			OR B1BRS(12) OR B1BRS(11) OR B1BRS(10) OR B1BRS(9) OR B1BRS(8) OR B1BRS(7) OR B1BRS(6) OR 		  B1BRS(5) OR B1BRS(4) OR B1BRS(3) OR B1BRS(2) OR B1BRS(1) OR B1BRS(0);

START26<= B2BRS(19) OR B2BRS(18) OR B2BRS(17) OR B2BRS(16) OR B2BRS(15) OR B2BRS(14) OR B2BRS(13) 			OR B2BRS(12) OR B2BRS(11) OR B2BRS(10) OR B2BRS(9) OR B2BRS(8) OR B2BRS(7) OR B2BRS(6) OR 		  B2BRS(5) OR B2BRS(4) OR B2BRS(3) OR B2BRS(2) OR B2BRS(1) OR B2BRS(0);

START27<= B3BRS(19) OR B3BRS(18) OR B3BRS(17) OR B3BRS(16) OR B3BRS(15) OR B3BRS(14) OR B3BRS(13) 			OR B3BRS(12) OR B3BRS(11) OR B3BRS(10) OR B3BRS(9) OR B3BRS(8) OR B3BRS(7) OR B3BRS(6) OR 		  B3BRS(5) OR B3BRS(4) OR B3BRS(3) OR B3BRS(2) OR B3BRS(1) OR B3BRS(0);

START28<= B4BRS(19) OR B4BRS(18) OR B4BRS(17) OR B4BRS(16) OR B4BRS(15) OR B4BRS(14) OR B4BRS(13) 			OR B4BRS(12) OR B4BRS(11) OR B4BRS(10) OR B4BRS(9) OR B4BRS(8) OR B4BRS(7) OR B4BRS(6) OR 		  B4BRS(5) OR B4BRS(4) OR B4BRS(3) OR B4BRS(2) OR B4BRS(1) OR B4BRS(0);

START29<= B5BRS(19) OR B5BRS(18) OR B5BRS(17) OR B5BRS(16) OR B5BRS(15) OR B5BRS(14) OR B5BRS(13) 			OR B5BRS(12) OR B5BRS(11) OR B5BRS(10) OR B5BRS(9) OR B5BRS(8) OR B5BRS(7) OR B5BRS(6) OR 		  B5BRS(5) OR B5BRS(4) OR B5BRS(3) OR B5BRS(2) OR B5BRS(1) OR B5BRS(0);

START30<= B6BRS(19) OR B6BRS(18) OR B6BRS(17) OR B6BRS(16) OR B6BRS(15) OR B6BRS(14) OR B6BRS(13) 			OR B6BRS(12) OR B6BRS(11) OR B6BRS(10) OR B6BRS(9) OR B6BRS(8) OR B6BRS(7) OR B6BRS(6) OR 		  B6BRS(5) OR B6BRS(4) OR B6BRS(3) OR B6BRS(2) OR B6BRS(1) OR B6BRS(0);

START31<= B7BRS(19) OR B7BRS(18) OR B7BRS(17) OR B7BRS(16) OR B7BRS(15) OR B7BRS(14) OR B7BRS(13) 			OR B7BRS(12) OR B7BRS(11) OR B7BRS(10) OR B7BRS(9) OR B7BRS(8) OR B7BRS(7) OR B7BRS(6) OR 		  B7BRS(5) OR B7BRS(4) OR B7BRS(3) OR B7BRS(2) OR B7BRS(1) OR B7BRS(0);




START<=  START0 OR START1 OR START2 OR START3 OR START4 OR START5 OR START6 OR START7 OR START8 OR
			START9 OR START10 OR START11 OR START12 OR START13 OR START14 OR START15 OR 
			START16 OR START17 OR START18 OR START19 OR START20 OR START21 OR START22 OR START23 OR	
			START24 OR START25 OR START26 OR START27 OR START28 OR START29 OR START30 OR START31;
end behav;