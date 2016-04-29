
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MISR is 
port ( clk,select1 : in std_logic;
         M : in std_logic_vector(7 downto 0);
			MISR_Out : inout std_logic_vector(7 downto 0)
         );

end MISR;

architecture Behavioral of MISR is

begin
process (clk)
begin
 if (rising_edge(clk)) then
	if (select1='0') then 
		MISR_Out <="00000000";
	else	
		MISR_Out (7) <= M(7) xor MISR_Out(6);
		MISR_Out (6) <= M(6) xor MISR_Out(5) xor MISR_Out(7);
		MISR_Out (5) <= M(5) xor MISR_Out(4) xor MISR_Out(7);
		MISR_Out (4) <= M(4) xor MISR_Out(3);
		MISR_Out (3) <= M(3) xor MISR_Out(2);
		MISR_Out (2) <= M(2) xor MISR_Out(1);
		MISR_Out (1) <= M(1) xor MISR_Out(7) xor MISR_Out(0);
		MISR_Out (0) <= M(0) xor MISR_Out(7);
	end if;
end if;
end process;
end Behavioral;

