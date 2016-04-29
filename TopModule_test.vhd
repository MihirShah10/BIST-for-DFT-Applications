--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:01:25 04/22/2016
-- Design Name:   
-- Module Name:   /home/eng/m/mrs150330/Testing/hw6/TopModule_test.vhd
-- Project Name:  hw6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: TopModule
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
 
ENTITY TopModule_test IS
END TopModule_test;
 
ARCHITECTURE behavior OF TopModule_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT TopModule
    PORT(
         Enable : IN  std_logic;
         Clk : IN  std_logic;
         MUL_Result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Enable : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal MUL_Result : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: TopModule PORT MAP (
          Enable => Enable,
          Clk => Clk,
          MUL_Result => MUL_Result
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 15 ns;	
enable <='1';

      -- insert stimulus here 

      wait;
   end process;

END;
