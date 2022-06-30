LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY RF IS

PORT ( CLK, ENABLE: IN std_logic;
       AI,AR,BI,BR,WR,WI: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
      SEL3,SEL1 : IN std_logic;
		SEL2 : IN std_logic_vector(1 downto 0);
		OUT_MUX1,OUT_MUX2,OUT_MUX3,AI_CTRL,AR_CTRL,BI_CTRL,BR_CTRL: OUT SIGNED(19 downto 0));
END RF;

ARCHITECTURE BEHAV OF RF IS 

COMPONENT REG_BF_W IS
PORT ( CLK: IN std_logic;
       D: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
       Q: OUT SIGNED(19 downto 0));
END COMPONENT;

COMPONENT REG_BF_AB IS
PORT ( CLK, ENABLE: IN std_logic;
       D: IN SIGNED(19 downto 0); -- va cambiato il formato e conversioni
       Q: OUT SIGNED(19 downto 0));
END COMPONENT;

COMPONENT MUX_20to1_RF IS 
PORT( A,B: IN SIGNED(19 downto 0);
		SEL : IN std_logic;
		OUTPUT: OUT SIGNED(19 downto 0));
END COMPONENT;

COMPONENT MUX_4_RF IS 
PORT( AR,AI,BR,BI: IN SIGNED(19 downto 0);
		SEL : IN std_logic_vector(1 downto 0);
		OUTPUT: OUT SIGNED(19 downto 0));
END COMPONENT;

SIGNAL ARQ,AIQ,BRQ,BIQ,WRQ,WIQ : SIGNED(19 downto 0);

BEGIN
MUX_2BA : MUX_4_RF PORT MAP(AR=>ARQ,AI =>AIQ,BR=>BRQ,BI=>BIQ,SEL=>SEL2,OUTPUT=>OUT_MUX2);
MUX_3W : MUX_20to1_RF PORT MAP (A=>WRQ,B=>WIQ,SEL=>SEL3,OUTPUT=>OUT_MUX3);
MUX_1A : MUX_20to1_RF PORT MAP (A=>ARQ,B=>AIQ,SEL=>SEL1,OUTPUT=>OUT_MUX1);
R_AR : REG_BF_AB PORT MAP (CLK=>CLK,ENABLE=>ENABLE,D=>AR,Q=>ARQ);
R_AI : REG_BF_AB PORT MAP (CLK=>CLK,ENABLE=>ENABLE,D=>AI,Q=>AIQ);
R_BR : REG_BF_AB PORT MAP (CLK=>CLK,ENABLE=>ENABLE,D=>BR,Q=>BRQ);
R_BI : REG_BF_AB PORT MAP (CLK=>CLK,ENABLE=>ENABLE,D=>BI,Q=>BIQ);
R_WR : REG_BF_W  PORT MAP (CLK=>CLK,D=>WR,Q=>WRQ);
R_WI : REG_BF_W  PORT MAP (CLK=>CLK,D=>WI,Q=>WIQ);

AI_CTRL<= AIQ;
AR_CTRL<= ARQ;
BI_CTRL<= BIQ;
BR_CTRL<= BRQ;
END BEHAV;