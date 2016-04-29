library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mul is
   port
   (
      Nibble1, Nibble2: in std_logic_vector(3 downto 0);

      Result: out std_logic_vector(7 downto 0)
   );
end entity mul;

architecture Behavioral of mul is
begin

   Result <= std_logic_vector(unsigned(Nibble1) * unsigned(Nibble2));

end architecture Behavioral;