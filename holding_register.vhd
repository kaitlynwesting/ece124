-- PROGRAM    "Lab 4"
-- AUTHORS    "Leo Qi, Kaitlyn Wang"

library ieee;
  use ieee.std_logic_1164.all;

entity holding_register is port (
  clk          : in std_logic;
  reset        : in std_logic;
  register_clr : in std_logic;
  din          : in std_logic;
  dout         : out std_logic
  );
end holding_register;
 
architecture circuit of holding_register is
  signal sreg : std_logic; -- digital F/F functionality
begin
  dout <= sreg;
  reg: process (clk)
  begin
    if (reset='1') then
      sreg <= '0';
    elsif (rising_edge(clk)) then
      sreg <= (din or sreg) and not (reset or register_clr);
    end if;
	end process;
end architecture;