
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity LFSR is
    Port (
           clk,enable : in  STD_LOGIC;
			  LFSR_Out  : inout  STD_LOGIC_vector(7 downto 0));
end LFSR;

architecture Behavioral of LFSR is
begin
process (clk,enable)
begin 
	if (rising_edge (clk)) then 
		if (enable = '0') then 
				LFSR_Out <= "11111111";
		else 
				LFSR_Out(7) <= LFSR_Out(0) xor LFSR_Out(1) xor LFSR_Out(5) xor LFSR_Out(6);
				LFSR_Out(6) <= LFSR_Out(7);
				LFSR_Out(5) <= LFSR_Out(6);
				LFSR_Out(4) <= LFSR_Out(5);
				LFSR_Out(3) <= LFSR_Out(4);
				LFSR_Out(2) <= LFSR_Out(3);
				LFSR_Out(1) <= LFSR_Out(2);
				LFSR_Out(0) <= LFSR_Out(1);
		end if; 
	end if;
end process;
end Behavioral;

