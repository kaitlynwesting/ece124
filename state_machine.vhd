-- Mealy state machine

library ieee;
  use ieee.std_logic_1164.all;

entity state_machine is port(
  clk_input, reset, i0, i1, i2 : in  std_logic;
  output1, output2             : out std_logic
  );
end entity;

architecture design of state_machine is
  type state_names is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
  signal current_state, next_state : state_names;

begin

  transition_section: process (i0, i1, i2, current_state)
  begin
    case current_state is
      when s0  =>
      when s1  =>
      when s2  =>
      when s3  =>
      when s4  =>
      when s5  =>
      when s6  =>
      when s7  =>
      when s8  =>
      when s9  =>
      when s10 =>
      when s11 =>
      when s12 =>
      when s13 =>
      when s14 =>
      when s15 =>
    end case;
  end process;

  register_section: process (clk_input)
  begin
    if (rising_edge(clk_input)) then
      if (reset='1') then
        current_state <= s0;
      else
        current_state <= next_state;
      end if;
    end if;
  end process;

  decoder_section: process (current_state)
  begin
    case current_state is
      when s0  =>
      when s1  =>
      when s2  =>
      when s3  =>
      when s4  =>
      when s5  =>
      when s6  =>
      when s7  =>
      when s8  =>
      when s9  =>
      when s10 =>
      when s11 =>
      when s12 =>
      when s13 =>
      when s14 =>
      when s15 =>
    end case;
  end process;

end architecture design;

