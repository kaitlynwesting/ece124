-- PROGRAM    "Lab 4"
-- AUTHORS    "Leo Qi, Kaitlyn Wang"

library ieee;
use ieee.std_logic_1164.all;

entity synchronizer is port (
  clk   : in std_logic;  
  reset : in std_logic; 
  din   : in std_logic; 
  dout  : out std_logic 
);
end synchronizer; 
  
architecture circuit of synchronizer is
  signal sreg : std_logic_vector(1 downto 0);

begin
  reg : process(clk, reset)
  begin
    if (rising_edge(clk)) then
      if (reset='1') then
        sreg <= "00";
      else
        sreg(1) <= din;
        dout <= sreg(0);
        sreg(0) <= sreg(1);
      end if;
    end if;
  end process;
end;