LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY CU_BF IS 
PORT( LOAD,SEQ,CLK,RESET: IN std_logic;
		CTRL_OUT: OUT std_logic_vector(14 downto 0));
END CU_BF;

ARCHITECTURE behav OF CU_BF IS 

COMPONENT MUX_20to1 IS 
PORT( A,B: IN std_logic_vector(20 downto 0);
		SEL : IN std_logic;
		OUTPUT: OUT std_logic_vector(20 downto 0));
END COMPONENT;

COMPONENT REG_PS_BF IS
PORT ( CLK,RESET: IN std_logic;
       D: IN std_logic_vector(4 downto 0);
       Q: OUT std_logic_vector(4 downto 0));
END COMPONENT;


COMPONENT PLA_BF IS 
PORT( LOAD,SEQ,LSB,CC : IN std_logic;
		LSB_OUT: OUT std_logic);
END COMPONENT;

COMPONENT uROM is
	generic( row : integer:= 10;
				column : integer:= 42
				);
	port( M: in std_logic_vector (3 downto 0); 
			OUT_uROM: out std_logic_vector (column-1 downto 0)
			);
end COMPONENT;

SIGNAL add,NEXTS :std_logic_vector(3 downto 0);
SIGNAL AS,BS :std_logic_vector(20 downto 0);
SIGNAL CCs, LSB_MP,LSB_OUTS,lsb_sel : std_logic;

BEGIN 
ROM: uROM PORT MAP (M=> add, OUT_uROM(42-1 downto 42-21) => AS, OUT_uROM(42-22 downto 0)=> BS);
PLA: PLA_BF PORT MAP( LOAD=>LOAD,SEQ=>SEQ,CC=>CCs,LSB=>LSB_MP, LSB_OUT=>LSB_OUTS);
REG_PS: REG_PS_BF PORT MAP( RESET=>RESET,CLK=>CLK, D(0)=>LSB_OUTS, D(4 downto 1)=>NEXTS,Q(4 downto 1)=> add, 
									 Q(0)=>lsb_sel);
MUX_20:  MUX_20to1 PORT MAP ( A=>AS,B=>BS, SEL=>lsb_sel,OUTPUT(20)=>CCS,OUTPUT(19 downto 16)=>NEXTS,
										OUTPUT(15)=>LSB_MP,OUTPUT(14 downto 0)=> CTRL_OUT);
END BEHAV;