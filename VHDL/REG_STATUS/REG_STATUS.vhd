LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY REG_STATUS IS 

PORT ( CLK,set,enable0,enable1,enable2,enable3,RESET : IN std_logic;
       Q_OUT: OUT std_logic_vector(3 downto 0));
END  REG_STATUS;

ARCHITECTURE BEHAV OF REG_STATUS IS 

COMPONENT FlipFlop_status IS 
PORT (D, CLK,set,enable,RESET : IN std_logic;
       Q: OUT std_logic);
END  COMPONENT;


BEGIN

ff0: FlipFlop_status PORT MAP(CLK=>CLK,set=>set,enable=>enable0,Q=>Q_OUT(0),D=> enable0,RESET=>RESET);
ff1: FlipFlop_status PORT MAP(CLK=>CLK,set=>set,enable=>enable1,Q=>Q_OUT(1),D=> enable1,RESET=>RESET);
ff2: FlipFlop_status PORT MAP(CLK=>CLK,set=>set,enable=>enable2,Q=>Q_OUT(2),D=> enable2,RESET=>RESET);
ff3: FlipFlop_status PORT MAP(CLK=>CLK,set=>set,enable=>enable3,Q=>Q_OUT(3),D=> enable3,RESET=>RESET);


end behav;