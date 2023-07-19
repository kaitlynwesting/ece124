-- PROGRAM    "Lab 4"
-- AUTHORS    "Leo Qi, Kaitlyn Wang"

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity LogicalStep_Lab4_top is
  port (
    clkin_50 : in    std_logic;                    -- The 50 MHz FPGA Clockinput
    rst_n    : in    std_logic;                    -- The RESET input (ACTIVE LOW)
    pb_n     : in    std_logic_vector(3 downto 0); -- The push-button inputs (ACTIVE LOW)
    sw       : in    std_logic_vector(7 downto 0); -- The switch inputs
    leds     : out   std_logic_vector(7 downto 0); -- for displaying the the lab4 project details
    -------------------------------------------------------------
    -- you can add temporary output ports here if you need to debug your design
    -- or to add internal signals for your simulations
    -------------------------------------------------------------

    seg7_data  : out   std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
    seg7_char1 : out   std_logic;                    -- seg7 digi selectors
    seg7_char2 : out   std_logic                     -- seg7 digi selectors
  );
end entity LogicalStep_Lab4_top;

architecture design of LogicalStep_Lab4_top is

  component segment7_mux is port (
    clk  : in    std_logic := '0';
    din2 : in    std_logic_vector(6 downto 0);
    din1 : in    std_logic_vector(6 downto 0);
    dout : out   std_logic_vector(6 downto 0);
    dig2 : out   std_logic;
    dig1 : out   std_logic
    );
  end component;

  component segment7_traffic is port (
    green    : in std_logic;
    amber    : in std_logic;
    red      : in std_logic;
    sevenseg : out std_logic_vector(6 downto 0) 
    );
  end component;

  component clock_generator is port (
    sim_mode : in    boolean;
    reset    : in    std_logic;
    clkin    : in    std_logic;
    sm_clken : out   std_logic;
    blink    : out   std_logic
    );
  end component;

  component pb_inverters is port (
    pb_n : in    std_logic_vector(3 downto 0);
    pb   : out   std_logic_vector(3 downto 0)
    );
  end component;

  component PB_filters is port (
    clkin          : in  std_logic;
    rst_n          : in  std_logic;
    rst_n_filtered : out std_logic;
    pb_n           : in  std_logic_vector(3 downto 0);
    pb_n_filtered  : out std_logic_vector(3 downto 0)
    );
  end component;

  component synchronizer port(
    clk          : in std_logic;
    reset          : in std_logic;
    din          : in std_logic;
    dout          : out std_logic
    );
  end component;

  component holding_register port (
    clk          : in std_logic;
    reset          : in std_logic;
    register_clr      : in std_logic;
    din          : in std_logic;
    dout          : out std_logic
    );
  end component;

  component state_machine port (
    ew_hold    : in std_logic;
	 ns_hold    : in std_logic;
	 clk_input  : in std_logic;
	 blink_sig  : in std_logic;
	 reset      : in  std_logic;
    ew_traffic : out std_logic_vector(2 downto 0);
	 ns_traffic : out std_logic_vector(2 downto 0);
	 ew_clear   : out std_logic;
	 ns_clear   : out std_logic;
	 ew_cross   : out std_logic;
	 ns_cross   : out std_logic
  );
  end component;
  
  -- set to FALSE for LogicalStep board downloads
  -- set to TRUE for simulations
  constant sim_mode : boolean := FALSE;

  signal sm_clken, blink_sig : std_logic;

  -- pb(3) is used as an active-high reset for all registers
  signal pb_filtered : std_logic_vector(3 downto 0);
  signal pb : std_logic_vector(3 downto 0);
  signal rst : std_logic;

  signal rst_n_filtered : std_logic;

  signal synch_rst : std_logic;

  signal ew_sync, ns_sync: std_logic;

  signal ew_traffic, ns_traffic : std_logic_vector(2 downto 0);

  signal ew_out, ns_out : std_logic_vector(6 downto 0);
  signal ew_clear, ns_clear : std_logic;
  
  signal ew_pending, ns_pending : std_logic;

begin
  -- Filter inputs
  PB_FILL   : component PB_filters port map(
    clkin_50,       -- global clock
    rst_n,          -- reset (active low)
    rst_n_filtered, -- output, filtered
    pb_n,           -- push buttons (active low)
    pb_filtered     -- output, filtered
  );
  
  -- Invert active low inputs
  PB_INVERT : component pb_inverters port map(pb_filtered, pb);
  rst <= NOT rst_n_filtered;

  -- Synchronize filtered inputs to clock
  
  -- synchronizer for east-west direction
  SYNC_EW : component synchronizer port map(
    clkin_50,  -- global clock
    synch_rst, -- synchronized reset
    pb(1),     -- EW crossing
    ew_sync    -- synced EW pedestrian button
  );
  
  -- synchronizer for north-south direction
  SYNC_NS: component synchronizer port map(
    clkin_50,  -- global clock input
    synch_rst, -- reset for registers and SM
    pb(0),     -- input for NS crossing
    ns_sync    -- output in NS
  );
  
  SYNC_RST : component synchronizer port map(
    clkin_50,
    '0',
    rst,
    synch_rst
  );
  
  HOLDREG_EW : component holding_register port map(
    sm_clken,  -- clock
    synch_rst, -- RESET
    ew_clear,  -- REG CLEAR
    ew_sync,   -- synchronizer
    ew_pending -- PENDING SIGNAL FOR EW
  );
  
  HOLDREG_NS : component holding_register port map(
    sm_clken,  -- clock
    synch_rst, -- RESET
    ns_clear,  -- REG CLEAR
    ns_sync,   -- synchronizer
    ns_pending -- PENDING SIGNAL FOR NS
  );

  leds(3) <= ew_pending; -- Pedestrian waiting to cross EW
  leds(1) <= ns_pending; -- Pedestrian waiting to cross NS

  CLOCK_GEN : component clock_generator port map(
    sim_mode,
    synch_rst,
    clkin_50,
    sm_clken,
    blink_sig
  );
  
  leds(7) <= synch_rst;

  MOORE_MAC : component state_machine port map(
    ew_pending,    -- pedestrian hold register signal (EW)
    ns_pending,    -- pedestrian hold register signal (NS)
    sm_clken,      -- cycle generator normal clock
    blink_sig,     -- cycle generator blink clock
    synch_rst,     -- reset
    ew_traffic,    -- output in EW
    ns_traffic,    -- output in NS
    ew_clear,      -- clearing signal EW to holding register
    ns_clear,      -- clearing signal NS to holding register
    leds(2),       -- EW crossing display
    leds(0)        -- NS crossing display
  );

  -- Output seven segment code for east-west
  TRAFFIC_EW : component segment7_traffic port map (
    ew_traffic(2),
    ew_traffic(1),
    ew_traffic(0),
    ew_out
  );

  -- Output seven segment code for north-south
  TRAFFIC_NS : component segment7_traffic port map (
    ns_traffic(2),
    ns_traffic(1),
    ns_traffic(0),
    ns_out
  );

  SEVENSEG_MUX : component segment7_mux port map (
    clkin_50,
    ns_out, -- din2
    ew_out, -- din1
    seg7_data, -- builtin LogicalStep outputs
    seg7_char2,
    seg7_char1
  );

end architecture;
