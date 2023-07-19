-- PROGRAM    "Lab 4"
-- AUTHORS    "Leo Qi, Kaitlyn Wang"

library ieee;
  use ieee.std_logic_1164.all;

entity state_machine is port(
  ew_hold, ns_hold, clk_input, blink_sig, reset : in std_logic;
  ew_traffic, ns_traffic                        : out std_logic_vector(2 downto 0);
  ew_clear, ns_clear, ew_cross, ns_cross        : out std_logic
  );
end entity;

architecture design of state_machine is
  type state_names is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
  signal current_state, next_state : state_names;

begin
  transition_section: process (current_state, ns_hold, ew_hold)
  begin
    case current_state is
      when s0  =>
        if (ew_hold='1' and ns_hold='0') then
          next_state <= s6;
        else
             next_state <= s1;
        end if;
      when s1  =>
        if (ew_hold='1' and ns_hold='0') then
          next_state <= s6;
        else
             next_state <= s2;
        end if;
      when s2  =>
        next_state <= s3;
      when s3  =>
        next_state <= s4;
      when s4  =>
        next_state <= s5;
      when s5  =>
        next_state <= s6;
      when s6  =>
        next_state <= s7;
      when s7  =>
        next_state <= s8;
      when s8  =>
        if (ns_hold='1' and ew_hold='0') then
          next_state <= s14;
        else
             next_state <= s9;
        end if;
      when s9  =>
        if (ns_hold='1' and ew_hold='0') then
          next_state <= s15;
        else
             next_state <= s10;
        end if;
      when s10 =>
        next_state <= s11;
      when s11 =>
        next_state <= s12;
      when s12 =>
        next_state <= s13;
      when s13 =>
        next_state <= s14;
      when s14 =>
        next_state <= s15;
      when s15 =>
        next_state <= s0;
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
      when s0 | s1 =>
        ns_traffic(2) <= blink_sig; -- GREEN FLASHING ONLY
        ns_traffic(1) <= '0';
        ns_traffic(0) <= '0';
        ew_traffic <= "001";
        ew_cross <= '0';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '0';
      when s2 | s3  =>
        ns_traffic <= "100"; -- GREEN ON
        ew_traffic <= "001";
        ew_cross <= '0';
        ns_cross <= '1';
        ew_clear <= '0';
        ns_clear <= '0';
      when s4 | s5 =>
        ns_traffic <= "100";
        ew_traffic <= "001";
        ew_cross <= '0';
        ns_cross <= '1';
        ew_clear <= '0';
        ns_clear <= '0';
      when s6  =>
        ns_traffic <= "010";
        ew_traffic <= "001";
        ew_cross <= '0';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '1';
    when s7  =>
        ns_traffic <= "010";
        ew_traffic <= "001";
        ew_cross <= '0';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '0';
      when s8 | s9  =>
        ns_traffic <= "001";
        ew_traffic(2) <= blink_sig;
        ew_traffic(1) <= '0';
        ew_traffic(0) <= '0';
        ew_cross <= '0';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '0';
      when s10 | s11  =>
        ns_traffic <= "001";
        ew_traffic <= "100";
        ew_cross <= '1';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '0';
      when s12 | s13 =>
        ns_traffic <= "001";
        ew_traffic <= "100";
        ew_cross <= '1';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '0';
      when s14 =>
        ns_traffic <= "001";
        ew_traffic <= "010";
        ew_cross <= '0';
        ns_cross <= '0';
        ew_clear <= '1';
        ns_clear <= '0';
    when s15 =>
        ns_traffic <= "001";
        ew_traffic <= "010";
        ew_cross <= '0';
        ns_cross <= '0';
        ew_clear <= '0';
        ns_clear <= '0';
    end case;
  end process;

end architecture design;

