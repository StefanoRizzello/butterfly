LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY BF_finale IS

PORT ( AI,AR,BI,BR,WR,WI: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
		 CLK, RESET, LOAD, SEQ : IN std_logic;
		 A1R,A1I,B1R,B1I: OUT SIGNED(19 downto 0));
END BF_finale;

ARCHITECTURE BEHAV OF BF_finale IS 

COMPONENT BF IS
PORT ( CLK, ENABLE: IN std_logic;
       AI,AR,BI,BR,WR,WI: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
      SEL_INV,SEL3,SEL1,SELSUM,C,A_S,EN_REGR : IN std_logic;
		SEL2: IN std_logic_vector(1 downto 0);
		EN_REGO : IN std_logic_vector(2 downto 0);
		A1R,A1I,B1R,B1I,AI_CTRL,AR_CTRL,BI_CTRL,BR_CTRL: OUT SIGNED(19 downto 0));
END COMPONENT;

COMPONENT CU_BF IS
PORT( LOAD,SEQ,CLK,RESET: IN std_logic;
		CTRL_OUT: OUT std_logic_vector(14 downto 0));
END COMPONENT;

SIGNAL CTRL_SIG: std_logic_vector (14 downto 0);

BEGIN

butterfly: BF PORT MAP (CLK=>CLK,AI=>AI,AR=>AR,BI=>BI,BR=>BR,WR=>WR,WI=>WI,A1R=>A1R,A1I=>A1I,B1R=>B1R,B1I=>B1I,
								ENABLE=>LOAD,SEL_INV=>CTRL_SIG(14),SELSUM=>CTRL_SIG(13),SEL1=>CTRL_SIG(12),
								SEL2=>CTRL_SIG(11 downto 10),SEL3=>CTRL_SIG(9),
								C=>CTRL_SIG(8),A_S=>CTRL_SIG(7),EN_REGR=>CTRL_SIG(5),EN_REGO=>CTRL_SIG(4 downto 2));
ctrl_unit: CU_BF PORT MAP (CLK=>CLK,RESET=>RESET,LOAD=>LOAD,SEQ=>SEQ,CTRL_OUT=>CTRL_SIG);

end BEHAV;

