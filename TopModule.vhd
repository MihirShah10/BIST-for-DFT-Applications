
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TopModule is
    Port ( Enable,Select1  : in  STD_LOGIC;
             Clk : in  STD_LOGIC;
			    MISR_Out : inout STD_LOGIC_VECTOR(7 downto 0);
				 Nibble1,Nibble2 : inout STD_LOGIC_VECTOR(3 downto 0)
				 --MUL_Result : out  STD_LOGIC_vector(7 downto 0);
				 );
           --MUL_Result : out  STD_LOGIC_vector(7 downto 0));
end TopModule;

architecture Behavioral of TopModule is


signal MUL_Result : STD_LOGIC_VECTOR(7 downto 0);

component mul 
   port(Nibble1, Nibble2: in std_logic_vector(3 downto 0);
         Result: out std_logic_vector(7 downto 0));
end component;

component LFSR
    Port (clk,enable : in  STD_LOGIC;
			  LFSR_Out  : inout  STD_LOGIC_vector(7 downto 0));
end component;

component MISR
port ( clk,select1 : in std_logic;
         M : in std_logic_vector(7 downto 0);
			MISR_Out : inout std_logic_vector(7 downto 0));
end component; 

begin

Mod1 : LFSR port map (clk=>Clk, enable=>Enable,LFSR_Out(7 downto 4)=>Nibble1(3 downto 0),LFSR_Out(3 downto 0)=>Nibble2(3 downto 0));
Mod2 : mul port map (Nibble1(3 downto 0)=>Nibble1(3 downto 0), Nibble2(3 downto 0)=>Nibble2(3 downto 0), Result=>MUL_Result);
Mod3 : MISR port map (clk=>Clk,select1=>Select1,M(7 downto 0)=>MUL_Result(7 downto 0), MISR_Out(7 downto 0)=>MISR_Out(7 downto 0));
end Behavioral;

