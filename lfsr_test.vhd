--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:46:58 04/21/2016
-- Design Name:   
-- Module Name:   /home/eng/m/mrs150330/Testing/hw6/lfsr_test.vhd
-- Project Name:  hw6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LFSR
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
 
ENTITY lfsr_test IS
END lfsr_test;
 
ARCHITECTURE behavior OF lfsr_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LFSR
    PORT(
         d0 : INOUT  std_logic;
         d1 : INOUT  std_logic;
         d2 : INOUT  std_logic;
         d3 : INOUT  std_logic;
         d4 : INOUT  std_logic;
         d5 : INOUT  std_logic;
         d6 : INOUT  std_logic;
         d7 : INOUT  std_logic;
         x1 : INOUT  std_logic;
         x2 : INOUT  std_logic;
         x3 : INOUT  std_logic;
         S : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs

	--BiDirs
   signal d0 : std_logic;
   signal d1 : std_logic;
   signal d2 : std_logic;
   signal d3 : std_logic;
   signal d4 : std_logic;
   signal d5 : std_logic;
   signal d6 : std_logic;
   signal d7 : std_logic;
   signal x1 : std_logic;
   signal x2 : std_logic;
   signal x3 : std_logic;

 	--Outputs
   signal S : std_logic_vector(7 downto 0);

   -- Clock period definitions
constant clk_period : time := 10 ns;
 signal clk : std_logic := '0'; 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LFSR PORT MAP (
          d0 => d0,
          d1 => d1,
          d2 => d2,
          d3 => d3,
          d4 => d4,
          d5 => d5,
          d6 => d6,
          d7 => d7,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          S => S,
          clk => clk
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

          d0 <= '0';
          d1 <= '0';
          d2 <= '0';
          d3 <= '0';
          d4 <= '0';
          d5 <= '0';
          d6 <= '0';
          d7 <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
