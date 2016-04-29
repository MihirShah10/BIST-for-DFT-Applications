
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mul_test IS
END mul_test;
 
ARCHITECTURE behavior OF mul_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mul
    PORT(
         Nibble1 : IN  std_logic_vector(3 downto 0);
         Nibble2 : IN  std_logic_vector(3 downto 0);
         Result : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Nibble1 : std_logic_vector(3 downto 0) := (others => '0');
   signal Nibble2 : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mul PORT MAP (
          Nibble1 => Nibble1,
          Nibble2 => Nibble2,
          Result => Result
        );
 

   -- Stimulus process
stim_proc: process
begin		
	wait for 100 ns;	
		Nibble1<= "0101"; 
		Nibble2<= "1100";

	wait for 100 ns;	
		Nibble1<= "0111"; 
		Nibble2<= "1110";
 
end process;

END;
