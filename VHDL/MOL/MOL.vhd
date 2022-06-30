LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY MOL IS

PORT ( C,CLK: IN std_logic;
       ADD1,ADD2: IN SIGNED(19 downto 0);
       RESULT: OUT SIGNED(38 downto 0));
END MOL;

ARCHITECTURE behav OF MOL IS

COMPONENT MOLTI IS
PORT ( C: IN std_logic;
       ADD1,ADD2: IN SIGNED(19 downto 0);
       RESULT: OUT SIGNED(39 downto 0));
END COMPONENT;

COMPONENT REG_MOL IS
PORT ( CLK: IN std_logic;
       D: IN SIGNED(38 downto 0);
       Q: OUT SIGNED(38 downto 0));
END COMPONENT;

SIGNAL partial: SIGNED(39 DOWNTO 0);

BEGIN 



moltiplicatore: MOLTI PORT MAP(C=>C,ADD1=>ADD1,ADD2=>ADD2,RESULT=>partial);
reg: REG_MOL PORT MAP( CLK=>CLK,D=>partial(38 DOWNTO 0),Q=> RESULT);

		
END behav;