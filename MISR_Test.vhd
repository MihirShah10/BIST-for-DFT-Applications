--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:59:41 04/22/2016
-- Design Name:   
-- Module Name:   /home/eng/m/mrs150330/Testing/hw6/MISR_Test.vhd
-- Project Name:  hw6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MISR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MISR_Test IS
END MISR_Test;
 
ARCHITECTURE behavior OF MISR_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MISR
    PORT(
         clk,select1 : IN  std_logic;
         M : IN  std_logic_vector(7 downto 0);
         MISR_Out : INOUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk,select1 : std_logic := '0';
   signal M : std_logic_vector(7 downto 0) := (others => '0');

	--BiDirs
   signal MISR_Out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MISR PORT MAP (
          clk => clk,
			 select1=>select1,
          M => M,
          MISR_Out => MISR_Out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20ns;	
select1<='1';		
M<="10101010";
wait for 10ns;
M<="11100010";
wait;
      -- insert stimulus here 

      wait;
   end process;

END;
