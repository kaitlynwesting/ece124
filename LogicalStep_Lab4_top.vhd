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

architecture simplecircuit of LogicalStep_Lab4_top is

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
    pb_n_filtered  : out std_logic_vector(3 downto 0);
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

  -- set to FALSE for LogicalStep board downloads
  -- set to TRUE for simulations
  constant sim_mode : boolean := FALSE;

  signal sm_clken, blink_sig : std_logic;

  -- pb(3) is used as an active-high reset for all registers
  signal pb_filtered : std_logic_vector(3 downto 0);
  signal pb : std_logic_vector(3 downto 0);

  signal rst_n_filtered : std_logic;

  signal synch_rst : std_logic;

  signal ew_sync, ns_sync: std_logic;

  signal ew_traffic, ns_traffic : std_logic_vector(2 downto 0);

  signal ew_out, ns_out : std_logic_vector(6 downto 0);

begin
  PB_FILL   : component PB_filters port map(
    clkin_50,
    rst_n,
    rst_n_filtered,
    pb_n,
    pb_filtered
  );

  PB_INVERT : component pb_inverters port map(pb_filtered, pb);

  CLOCK_GEN : component clock_generator port map(
    sim_mode,
    pb(3),
    clkin_50,
    sm_clken,
    blink_sig
  );

  -- synchronizer instance for east-west
  SYNC_EW: component synchronizer port map(
	clkin_50, -- global clock input
	synch_rst, -- reset for registers and SM
	pb(1), -- input for EW crossing
	ew_sync -- output in EW
  );

  -- synchronizer instance for north-south
  SYNC_NS: component synchronizer port map(
	clkin_50, -- global clock input
	synch_rst, -- reset for registers and SM
	pb(0), -- input for NS crossing
	ns_sync -- output in NS
  );

  MOORE_MAC : component state_machine port map(
    pedsig_ew,     -- pedestrian hold register signal (EW)
    pedsig_ns,     -- pedestrian hold register signal (NS)
    sm_clken,      -- cycle generator normal clock
    blink_sig,     -- cycle generator blink clock
    ew_traffic,    -- output in EW
    ns_traffic     -- output in NS 
  );

  -- Output seven segment code

  TRAFFIC_EW : component segment7_traffic port map (
    ew_traffic(2),
    ew_traffic(1),
    ew_traffic(0),
    ew_out
  );

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

end architecture simplecircuit;
