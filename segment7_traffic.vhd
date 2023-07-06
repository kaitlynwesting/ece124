library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity segment7_traffic is port (
  green    : in std_logic;
  amber    : in std_logic;
  red      : in std_logic;
  sevenseg : out std_logic_vector(6 downto 0) 
  );
end entity;

architecture design of segment7_traffic is

begin
  sevenseg <= "00000001" when green = '1' else
              "10000000" when amber = '1' else
              "00001000" when red   = '1' else
              "00000000";

end architecture design;
