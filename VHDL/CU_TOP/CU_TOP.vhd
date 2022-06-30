LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 

ENTITY CU_TOP IS 
PORT( START,PROGRESS,FREE_M,END_BF,SEQ,CLK,RESET: IN std_logic;
		CTRL_TOP_OUT: OUT std_logic_vector(5 downto 0));
END CU_TOP;

ARCHITECTURE behav OF CU_TOP IS 

COMPONENT MUX_12to1_TOP IS 
PORT( A,B,C,D: IN std_logic_vector(11 downto 0);
		SEL : IN std_logic_vector(1 downto 0);
		OUTPUT: OUT std_logic_vector(11 downto 0));
END COMPONENT;


COMPONENT REG_PS_TOP IS
PORT ( CLK,RESET: IN std_logic;
       D: IN std_logic_vector(3 downto 0);
       Q: OUT std_logic_vector(3 downto 0));
END COMPONENT;


COMPONENT PLA_TOP IS 
PORT( START,PROGRESS,FREE_M,END_BF,SEQ: IN std_logic;
      BIT0_IN,BIT1_IN: IN std_logic;
		CC: IN std_logic_vector(1 downto 0);
		BIT0_OUT,BIT1_OUT: OUT std_logic);
END COMPONENT;

COMPONENT uROM_TOP is
	generic( row : integer:= 3;
				column : integer:= 48
				);
	port( M: in std_logic_vector (1 downto 0); 
			OUT_uROM: out std_logic_vector (column-1 downto 0)
			);
end COMPONENT;

SIGNAL add,lsb_sel:std_logic_vector(1 downto 0);
SIGNAL AS,BS,CS,DS :std_logic_vector(11 downto 0);
SIGNAL CCS: STD_LOGIC_VECTOR(1 downto 0);
SIGNAL BIT3,BIT0_MP,BIT1_MP,BIT2,BIT0_OUTS,BIT1_OUTS : std_logic;

BEGIN 
ROM: uROM_TOP PORT MAP (M=> add,OUT_uROM(47 downto 36) => AS, OUT_uROM(35 downto 24)=> BS, 
										  OUT_uROM(23 downto 12) => CS, OUT_uROM(11 downto 0)=> DS);

PLA: PLA_TOP PORT MAP( SEQ=>SEQ,CC=>CCs,BIT0_IN=>BIT0_MP,BIT1_IN=>BIT1_MP,BIT0_OUT=>BIT0_OUTS,
							  BIT1_OUT=>BIT1_OUTS,START=>START,PROGRESS=>PROGRESS,FREE_M=>FREE_M,
							  END_BF=>END_BF);
REG_PS: REG_PS_TOP PORT MAP( CLK=>CLK,RESET=>RESET,D(0)=>BIT0_OUTS,D(1)=>BIT1_OUTS,D(2)=>BIT2,D(3)=>BIT3,
									  Q(3 downto 2)=> add,Q(1)=>lsb_sel(1),Q(0)=>lsb_sel(0));

MUX_12:  MUX_12to1_TOP PORT MAP ( A=>AS,B=>BS,C=>CS,D=>DS,SEL=>lsb_sel,OUTPUT(11 DOWNTO 10)=>CCS,
											 OUTPUT(9)=>BIT3,OUTPUT(8)=>BIT2,OUTPUT(7)=>BIT1_MP,OUTPUT(6)=>BIT0_MP,
											 OUTPUT(5 downto 0)=> CTRL_TOP_OUT);
END BEHAV;