-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/20/2023 09:33:37"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	sm_clkenout : BUFFER std_logic;
	blink_sigout : BUFFER std_logic;
	seg7_test1 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_test2 : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sm_clkenout : std_logic;
SIGNAL ww_blink_sigout : std_logic;
SIGNAL ww_seg7_test1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_test2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \sm_clkenout~output_o\ : std_logic;
SIGNAL \blink_sigout~output_o\ : std_logic;
SIGNAL \seg7_test1[0]~output_o\ : std_logic;
SIGNAL \seg7_test1[1]~output_o\ : std_logic;
SIGNAL \seg7_test1[2]~output_o\ : std_logic;
SIGNAL \seg7_test1[3]~output_o\ : std_logic;
SIGNAL \seg7_test1[4]~output_o\ : std_logic;
SIGNAL \seg7_test1[5]~output_o\ : std_logic;
SIGNAL \seg7_test1[6]~output_o\ : std_logic;
SIGNAL \seg7_test2[0]~output_o\ : std_logic;
SIGNAL \seg7_test2[1]~output_o\ : std_logic;
SIGNAL \seg7_test2[2]~output_o\ : std_logic;
SIGNAL \seg7_test2[3]~output_o\ : std_logic;
SIGNAL \seg7_test2[4]~output_o\ : std_logic;
SIGNAL \seg7_test2[5]~output_o\ : std_logic;
SIGNAL \seg7_test2[6]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \PB_FILL|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \SYNC_RST|dout~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|sm_clken~combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \PB_FILL|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \SYNC_NS|sreg~0_combout\ : std_logic;
SIGNAL \SYNC_NS|dout~q\ : std_logic;
SIGNAL \HOLDREG_NS|sreg~0_combout\ : std_logic;
SIGNAL \HOLDREG_NS|sreg~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \PB_FILL|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \SYNC_EW|sreg~0_combout\ : std_logic;
SIGNAL \SYNC_EW|dout~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s11~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s12~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s13~q\ : std_logic;
SIGNAL \MOORE_MAC|Selector1~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s14~q\ : std_logic;
SIGNAL \HOLDREG_EW|sreg~0_combout\ : std_logic;
SIGNAL \HOLDREG_EW|sreg~q\ : std_logic;
SIGNAL \MOORE_MAC|Selector2~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s15~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s0~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s0~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s1~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s1~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s2~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s2~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s3~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s4~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s5~q\ : std_logic;
SIGNAL \MOORE_MAC|WideOr7~1_combout\ : std_logic;
SIGNAL \MOORE_MAC|Selector0~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s6~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s7~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s8~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s9~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s9~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s10~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s10~q\ : std_logic;
SIGNAL \MOORE_MAC|WideOr6~0_combout\ : std_logic;
SIGNAL \CLOCK_GEN|blink_sig~0_combout\ : std_logic;
SIGNAL \CLOCK_GEN|blink_sig~q\ : std_logic;
SIGNAL \MOORE_MAC|Selector4~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|WideOr7~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|Selector3~2_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[3]~4_combout\ : std_logic;
SIGNAL \TRAFFIC_EW|sevenseg[0]~4_combout\ : std_logic;
SIGNAL \MOORE_MAC|WideOr7~2_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|WideOr7~combout\ : std_logic;
SIGNAL \TRAFFIC_EW|sevenseg[0]~5_combout\ : std_logic;
SIGNAL \TRAFFIC_EW|sevenseg[6]~6_combout\ : std_logic;
SIGNAL \TRAFFIC_NS|sevenseg[0]~5_combout\ : std_logic;
SIGNAL \TRAFFIC_NS|sevenseg[6]~4_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~2_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~3_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~6_combout\ : std_logic;
SIGNAL \SYNC_NS|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PB_FILL|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYNC_EW|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PB_FILL|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_GEN|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SYNC_RST|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PB_FILL|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEVENSEG_MUX|ALT_INV_DOUT[0]~6_combout\ : std_logic;
SIGNAL \TRAFFIC_EW|ALT_INV_sevenseg[0]~5_combout\ : std_logic;
SIGNAL \SYNC_RST|ALT_INV_dout~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|ALT_INV_DOUT[3]~4_combout\ : std_logic;
SIGNAL \MOORE_MAC|ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
sm_clkenout <= ww_sm_clkenout;
blink_sigout <= ww_blink_sigout;
seg7_test1 <= ww_seg7_test1;
seg7_test2 <= ww_seg7_test2;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SEVENSEG_MUX|ALT_INV_DOUT[0]~6_combout\ <= NOT \SEVENSEG_MUX|DOUT[0]~6_combout\;
\TRAFFIC_EW|ALT_INV_sevenseg[0]~5_combout\ <= NOT \TRAFFIC_EW|sevenseg[0]~5_combout\;
\SYNC_RST|ALT_INV_dout~q\ <= NOT \SYNC_RST|dout~q\;
\SEVENSEG_MUX|ALT_INV_DOUT[3]~4_combout\ <= NOT \SEVENSEG_MUX|DOUT[3]~4_combout\;
\MOORE_MAC|ALT_INV_WideOr7~0_combout\ <= NOT \MOORE_MAC|WideOr7~0_combout\;
\SEVENSEG_MUX|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \SEVENSEG_MUX|clk_proc:COUNT[10]~q\;

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOORE_MAC|ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HOLDREG_NS|sreg~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOORE_MAC|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HOLDREG_EW|sreg~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\sm_clkenout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_GEN|sm_clken~combout\,
	devoe => ww_devoe,
	o => \sm_clkenout~output_o\);

\blink_sigout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLOCK_GEN|blink_sig~q\,
	devoe => ww_devoe,
	o => \blink_sigout~output_o\);

\seg7_test1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TRAFFIC_EW|ALT_INV_sevenseg[0]~5_combout\,
	devoe => ww_devoe,
	o => \seg7_test1[0]~output_o\);

\seg7_test1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test1[1]~output_o\);

\seg7_test1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test1[2]~output_o\);

\seg7_test1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOORE_MAC|Selector4~0_combout\,
	devoe => ww_devoe,
	o => \seg7_test1[3]~output_o\);

\seg7_test1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test1[4]~output_o\);

\seg7_test1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test1[5]~output_o\);

\seg7_test1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TRAFFIC_EW|sevenseg[6]~6_combout\,
	devoe => ww_devoe,
	o => \seg7_test1[6]~output_o\);

\seg7_test2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TRAFFIC_NS|sevenseg[0]~5_combout\,
	devoe => ww_devoe,
	o => \seg7_test2[0]~output_o\);

\seg7_test2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test2[1]~output_o\);

\seg7_test2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test2[2]~output_o\);

\seg7_test2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOORE_MAC|Selector3~2_combout\,
	devoe => ww_devoe,
	o => \seg7_test2[3]~output_o\);

\seg7_test2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test2[4]~output_o\);

\seg7_test2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_test2[5]~output_o\);

\seg7_test2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TRAFFIC_NS|sevenseg[6]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_test2[6]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|ALT_INV_DOUT[0]~6_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|ALT_INV_DOUT[3]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

\SEVENSEG_MUX|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\ = !\SEVENSEG_MUX|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[0]~q\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\);

\SEVENSEG_MUX|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[0]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[1]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[1]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\SEVENSEG_MUX|clk_proc:COUNT[1]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[0]~q\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[1]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[1]~q\ & \SEVENSEG_MUX|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[1]~q\,
	datab => \SEVENSEG_MUX|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[1]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[1]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[1]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[2]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[1]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[2]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[1]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[2]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[1]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[1]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[2]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[2]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[3]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[3]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[2]~2\ $ (GND))) # (!\SEVENSEG_MUX|clk_proc:COUNT[3]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[2]~2\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[3]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[3]~q\ & !\SEVENSEG_MUX|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[2]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[3]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[3]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[3]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[4]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[4]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[3]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[4]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[3]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[4]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[3]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[3]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[4]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[4]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[4]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[5]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[4]~2\ $ (GND))) # (!\SEVENSEG_MUX|clk_proc:COUNT[5]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[4]~2\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[5]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[5]~q\ & !\SEVENSEG_MUX|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[4]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[5]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[5]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[6]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[5]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[6]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[5]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[6]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[5]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[5]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[6]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[6]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[7]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[6]~2\ $ (GND))) # (!\SEVENSEG_MUX|clk_proc:COUNT[7]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[6]~2\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[7]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[7]~q\ & !\SEVENSEG_MUX|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[6]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[7]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[7]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[8]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[7]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[8]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[7]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[8]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[7]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[7]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[8]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[8]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[9]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[9]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[8]~2\ $ (GND))) # (!\SEVENSEG_MUX|clk_proc:COUNT[9]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[8]~2\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[9]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[9]~q\ & !\SEVENSEG_MUX|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[8]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[9]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[9]~2\);

\SEVENSEG_MUX|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[9]~q\);

\SEVENSEG_MUX|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\ = \SEVENSEG_MUX|clk_proc:COUNT[10]~q\ $ (\SEVENSEG_MUX|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[9]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\);

\SEVENSEG_MUX|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\);

\CLOCK_GEN|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[0]~1_combout\ = \CLOCK_GEN|clk_divider:counter[0]~q\ $ (VCC)
-- \CLOCK_GEN|clk_divider:counter[0]~2\ = CARRY(\CLOCK_GEN|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \CLOCK_GEN|clk_divider:counter[0]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[0]~2\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\PB_FILL|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(0));

\PB_FILL|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(1));

\PB_FILL|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(2));

\PB_FILL|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(3));

\PB_FILL|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|rst_n_filtered~0_combout\ = (!\PB_FILL|sreg4\(1) & (!\PB_FILL|sreg4\(2) & !\PB_FILL|sreg4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_FILL|sreg4\(1),
	datab => \PB_FILL|sreg4\(2),
	datac => \PB_FILL|sreg4\(3),
	combout => \PB_FILL|rst_n_filtered~0_combout\);

\SYNC_RST|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|rst_n_filtered~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_RST|sreg\(1));

\SYNC_RST|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNC_RST|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_RST|sreg\(0));

\SYNC_RST|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNC_RST|sreg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_RST|dout~q\);

\CLOCK_GEN|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_divider:counter[0]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[0]~q\);

\CLOCK_GEN|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[1]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[1]~q\ & (!\CLOCK_GEN|clk_divider:counter[0]~2\)) # (!\CLOCK_GEN|clk_divider:counter[1]~q\ & ((\CLOCK_GEN|clk_divider:counter[0]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[1]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[0]~2\) # (!\CLOCK_GEN|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[0]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[1]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[1]~2\);

\CLOCK_GEN|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_divider:counter[1]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[1]~q\);

\CLOCK_GEN|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[2]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[2]~q\ & (\CLOCK_GEN|clk_divider:counter[1]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[2]~q\ & (!\CLOCK_GEN|clk_divider:counter[1]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[2]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[2]~q\ & !\CLOCK_GEN|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[1]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[2]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[2]~2\);

\CLOCK_GEN|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_divider:counter[2]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[2]~q\);

\CLOCK_GEN|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[3]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[3]~q\ & (!\CLOCK_GEN|clk_divider:counter[2]~2\)) # (!\CLOCK_GEN|clk_divider:counter[3]~q\ & ((\CLOCK_GEN|clk_divider:counter[2]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[3]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[2]~2\) # (!\CLOCK_GEN|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[2]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[3]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[3]~2\);

\CLOCK_GEN|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_divider:counter[3]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[3]~q\);

\CLOCK_GEN|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[4]~1_combout\ = \CLOCK_GEN|clk_divider:counter[4]~q\ $ (!\CLOCK_GEN|clk_divider:counter[3]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[4]~q\,
	cin => \CLOCK_GEN|clk_divider:counter[3]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[4]~1_combout\);

\CLOCK_GEN|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_divider:counter[4]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[4]~q\);

\CLOCK_GEN|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_reg_extend~0_combout\ = (\CLOCK_GEN|clk_divider:counter[4]~q\ & !\SYNC_RST|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[4]~q\,
	datad => \SYNC_RST|dout~q\,
	combout => \CLOCK_GEN|clk_reg_extend~0_combout\);

\CLOCK_GEN|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_reg_extend\(0));

\CLOCK_GEN|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_reg_extend~1_combout\ = (\CLOCK_GEN|clk_reg_extend\(0) & !\SYNC_RST|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_reg_extend\(0),
	datad => \SYNC_RST|dout~q\,
	combout => \CLOCK_GEN|clk_reg_extend~1_combout\);

\CLOCK_GEN|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_reg_extend\(1));

\CLOCK_GEN|sm_clken\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|sm_clken~combout\ = LCELL((\CLOCK_GEN|clk_reg_extend\(0) & !\CLOCK_GEN|clk_reg_extend\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_reg_extend\(0),
	datad => \CLOCK_GEN|clk_reg_extend\(1),
	combout => \CLOCK_GEN|sm_clken~combout\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\PB_FILL|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(0));

\PB_FILL|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(1));

\PB_FILL|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(2));

\PB_FILL|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(3));

\PB_FILL|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|pb_n_filtered[0]~0_combout\ = (!\PB_FILL|sreg0\(1) & (!\PB_FILL|sreg0\(2) & !\PB_FILL|sreg0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_FILL|sreg0\(1),
	datab => \PB_FILL|sreg0\(2),
	datac => \PB_FILL|sreg0\(3),
	combout => \PB_FILL|pb_n_filtered[0]~0_combout\);

\SYNC_NS|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|pb_n_filtered[0]~0_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_NS|sreg\(1));

\SYNC_NS|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNC_NS|sreg~0_combout\ = (\SYNC_NS|sreg\(1) & !\SYNC_RST|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_NS|sreg\(1),
	datad => \SYNC_RST|dout~q\,
	combout => \SYNC_NS|sreg~0_combout\);

\SYNC_NS|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNC_NS|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_NS|sreg\(0));

\SYNC_NS|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNC_NS|sreg\(0),
	ena => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_NS|dout~q\);

\HOLDREG_NS|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HOLDREG_NS|sreg~0_combout\ = (!\MOORE_MAC|current_state.s6~q\ & (!\SYNC_RST|dout~q\ & ((\HOLDREG_NS|sreg~q\) # (\SYNC_NS|dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_NS|sreg~q\,
	datab => \SYNC_NS|dout~q\,
	datac => \MOORE_MAC|current_state.s6~q\,
	datad => \SYNC_RST|dout~q\,
	combout => \HOLDREG_NS|sreg~0_combout\);

\HOLDREG_NS|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \HOLDREG_NS|sreg~0_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HOLDREG_NS|sreg~q\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\PB_FILL|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(0));

\PB_FILL|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(1));

\PB_FILL|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(2));

\PB_FILL|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|sreg1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(3));

\PB_FILL|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|pb_n_filtered[1]~1_combout\ = (!\PB_FILL|sreg1\(1) & (!\PB_FILL|sreg1\(2) & !\PB_FILL|sreg1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_FILL|sreg1\(1),
	datab => \PB_FILL|sreg1\(2),
	datac => \PB_FILL|sreg1\(3),
	combout => \PB_FILL|pb_n_filtered[1]~1_combout\);

\SYNC_EW|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \PB_FILL|pb_n_filtered[1]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_EW|sreg\(1));

\SYNC_EW|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNC_EW|sreg~0_combout\ = (\SYNC_EW|sreg\(1) & !\SYNC_RST|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_EW|sreg\(1),
	datad => \SYNC_RST|dout~q\,
	combout => \SYNC_EW|sreg~0_combout\);

\SYNC_EW|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNC_EW|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_EW|sreg\(0));

\SYNC_EW|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \SYNC_EW|sreg\(0),
	ena => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_EW|dout~q\);

\MOORE_MAC|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s10~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s11~q\);

\MOORE_MAC|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s11~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s12~q\);

\MOORE_MAC|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s12~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s13~q\);

\MOORE_MAC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector1~0_combout\ = (\MOORE_MAC|current_state.s13~q\) # ((\HOLDREG_NS|sreg~q\ & (\MOORE_MAC|current_state.s8~q\ & !\HOLDREG_EW|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s13~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datac => \MOORE_MAC|current_state.s8~q\,
	datad => \HOLDREG_EW|sreg~q\,
	combout => \MOORE_MAC|Selector1~0_combout\);

\MOORE_MAC|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|Selector1~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s14~q\);

\HOLDREG_EW|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HOLDREG_EW|sreg~0_combout\ = (!\MOORE_MAC|current_state.s14~q\ & (!\SYNC_RST|dout~q\ & ((\HOLDREG_EW|sreg~q\) # (\SYNC_EW|dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_EW|sreg~q\,
	datab => \SYNC_EW|dout~q\,
	datac => \MOORE_MAC|current_state.s14~q\,
	datad => \SYNC_RST|dout~q\,
	combout => \HOLDREG_EW|sreg~0_combout\);

\HOLDREG_EW|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \HOLDREG_EW|sreg~0_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HOLDREG_EW|sreg~q\);

\MOORE_MAC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector2~0_combout\ = (\MOORE_MAC|current_state.s14~q\) # ((\HOLDREG_NS|sreg~q\ & (\MOORE_MAC|current_state.s9~q\ & !\HOLDREG_EW|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s14~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datac => \MOORE_MAC|current_state.s9~q\,
	datad => \HOLDREG_EW|sreg~q\,
	combout => \MOORE_MAC|Selector2~0_combout\);

\MOORE_MAC|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|Selector2~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s15~q\);

\MOORE_MAC|current_state.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s0~0_combout\ = !\MOORE_MAC|current_state.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s15~q\,
	combout => \MOORE_MAC|current_state.s0~0_combout\);

\MOORE_MAC|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s0~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s0~q\);

\MOORE_MAC|next_state.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s1~0_combout\ = (!\MOORE_MAC|current_state.s0~q\ & ((\HOLDREG_NS|sreg~q\) # (!\HOLDREG_EW|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_NS|sreg~q\,
	datac => \HOLDREG_EW|sreg~q\,
	datad => \MOORE_MAC|current_state.s0~q\,
	combout => \MOORE_MAC|next_state.s1~0_combout\);

\MOORE_MAC|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|next_state.s1~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s1~q\);

\MOORE_MAC|next_state.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s2~0_combout\ = (\MOORE_MAC|current_state.s1~q\ & ((\HOLDREG_NS|sreg~q\) # (!\HOLDREG_EW|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s1~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datad => \HOLDREG_EW|sreg~q\,
	combout => \MOORE_MAC|next_state.s2~0_combout\);

\MOORE_MAC|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|next_state.s2~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s2~q\);

\MOORE_MAC|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s2~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s3~q\);

\MOORE_MAC|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s3~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s4~q\);

\MOORE_MAC|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s4~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s5~q\);

\MOORE_MAC|WideOr7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr7~1_combout\ = (\MOORE_MAC|current_state.s0~q\ & !\MOORE_MAC|current_state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s0~q\,
	datad => \MOORE_MAC|current_state.s1~q\,
	combout => \MOORE_MAC|WideOr7~1_combout\);

\MOORE_MAC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector0~0_combout\ = (\MOORE_MAC|current_state.s5~q\) # ((\HOLDREG_EW|sreg~q\ & (!\HOLDREG_NS|sreg~q\ & !\MOORE_MAC|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s5~q\,
	datab => \HOLDREG_EW|sreg~q\,
	datac => \HOLDREG_NS|sreg~q\,
	datad => \MOORE_MAC|WideOr7~1_combout\,
	combout => \MOORE_MAC|Selector0~0_combout\);

\MOORE_MAC|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|Selector0~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s6~q\);

\MOORE_MAC|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s6~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s7~q\);

\MOORE_MAC|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|current_state.s7~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s8~q\);

\MOORE_MAC|next_state.s9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s9~0_combout\ = (\MOORE_MAC|current_state.s8~q\ & ((\HOLDREG_EW|sreg~q\) # (!\HOLDREG_NS|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s8~q\,
	datab => \HOLDREG_EW|sreg~q\,
	datad => \HOLDREG_NS|sreg~q\,
	combout => \MOORE_MAC|next_state.s9~0_combout\);

\MOORE_MAC|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|next_state.s9~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s9~q\);

\MOORE_MAC|next_state.s10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s10~0_combout\ = (\MOORE_MAC|current_state.s9~q\ & ((\HOLDREG_EW|sreg~q\) # (!\HOLDREG_NS|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s9~q\,
	datab => \HOLDREG_EW|sreg~q\,
	datad => \HOLDREG_NS|sreg~q\,
	combout => \MOORE_MAC|next_state.s10~0_combout\);

\MOORE_MAC|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~combout\,
	d => \MOORE_MAC|next_state.s10~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s10~q\);

\MOORE_MAC|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr6~0_combout\ = (\MOORE_MAC|current_state.s10~q\) # ((\MOORE_MAC|current_state.s11~q\) # ((\MOORE_MAC|current_state.s12~q\) # (\MOORE_MAC|current_state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s10~q\,
	datab => \MOORE_MAC|current_state.s11~q\,
	datac => \MOORE_MAC|current_state.s12~q\,
	datad => \MOORE_MAC|current_state.s13~q\,
	combout => \MOORE_MAC|WideOr6~0_combout\);

\CLOCK_GEN|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|blink_sig~0_combout\ = (\CLOCK_GEN|clk_divider:counter[2]~q\ & !\SYNC_RST|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[2]~q\,
	datad => \SYNC_RST|dout~q\,
	combout => \CLOCK_GEN|blink_sig~0_combout\);

\CLOCK_GEN|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \CLOCK_GEN|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|blink_sig~q\);

\MOORE_MAC|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector4~0_combout\ = (\MOORE_MAC|WideOr6~0_combout\) # ((\CLOCK_GEN|blink_sig~q\ & ((\MOORE_MAC|current_state.s8~q\) # (\MOORE_MAC|current_state.s9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|WideOr6~0_combout\,
	datab => \CLOCK_GEN|blink_sig~q\,
	datac => \MOORE_MAC|current_state.s8~q\,
	datad => \MOORE_MAC|current_state.s9~q\,
	combout => \MOORE_MAC|Selector4~0_combout\);

\MOORE_MAC|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr7~0_combout\ = (!\MOORE_MAC|current_state.s2~q\ & (!\MOORE_MAC|current_state.s3~q\ & (!\MOORE_MAC|current_state.s4~q\ & !\MOORE_MAC|current_state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s2~q\,
	datab => \MOORE_MAC|current_state.s3~q\,
	datac => \MOORE_MAC|current_state.s4~q\,
	datad => \MOORE_MAC|current_state.s5~q\,
	combout => \MOORE_MAC|WideOr7~0_combout\);

\MOORE_MAC|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector3~2_combout\ = ((\CLOCK_GEN|blink_sig~q\ & ((\MOORE_MAC|current_state.s1~q\) # (!\MOORE_MAC|current_state.s0~q\)))) # (!\MOORE_MAC|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s0~q\,
	datab => \MOORE_MAC|current_state.s1~q\,
	datac => \CLOCK_GEN|blink_sig~q\,
	datad => \MOORE_MAC|WideOr7~0_combout\,
	combout => \MOORE_MAC|Selector3~2_combout\);

\SEVENSEG_MUX|DOUT[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[3]~4_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((!\MOORE_MAC|Selector3~2_combout\))) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (!\MOORE_MAC|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datac => \MOORE_MAC|Selector4~0_combout\,
	datad => \MOORE_MAC|Selector3~2_combout\,
	combout => \SEVENSEG_MUX|DOUT[3]~4_combout\);

\TRAFFIC_EW|sevenseg[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TRAFFIC_EW|sevenseg[0]~4_combout\ = (!\MOORE_MAC|current_state.s14~q\ & !\MOORE_MAC|current_state.s15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOORE_MAC|current_state.s14~q\,
	datad => \MOORE_MAC|current_state.s15~q\,
	combout => \TRAFFIC_EW|sevenseg[0]~4_combout\);

\MOORE_MAC|WideOr7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr7~2_combout\ = (!\MOORE_MAC|current_state.s6~q\ & !\MOORE_MAC|current_state.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOORE_MAC|current_state.s6~q\,
	datad => \MOORE_MAC|current_state.s7~q\,
	combout => \MOORE_MAC|WideOr7~2_combout\);

\SEVENSEG_MUX|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\ = (\SEVENSEG_MUX|DOUT[3]~4_combout\ & ((\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((!\MOORE_MAC|WideOr7~2_combout\))) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (!\TRAFFIC_EW|sevenseg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|DOUT[3]~4_combout\,
	datab => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datac => \TRAFFIC_EW|sevenseg[0]~4_combout\,
	datad => \MOORE_MAC|WideOr7~2_combout\,
	combout => \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\);

\MOORE_MAC|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr7~combout\ = (\MOORE_MAC|WideOr7~0_combout\ & (\MOORE_MAC|WideOr7~1_combout\ & (!\MOORE_MAC|current_state.s6~q\ & !\MOORE_MAC|current_state.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|WideOr7~0_combout\,
	datab => \MOORE_MAC|WideOr7~1_combout\,
	datac => \MOORE_MAC|current_state.s6~q\,
	datad => \MOORE_MAC|current_state.s7~q\,
	combout => \MOORE_MAC|WideOr7~combout\);

\TRAFFIC_EW|sevenseg[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TRAFFIC_EW|sevenseg[0]~5_combout\ = (\MOORE_MAC|current_state.s14~q\) # ((\MOORE_MAC|current_state.s15~q\) # ((\MOORE_MAC|Selector4~0_combout\) # (\MOORE_MAC|WideOr7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s14~q\,
	datab => \MOORE_MAC|current_state.s15~q\,
	datac => \MOORE_MAC|Selector4~0_combout\,
	datad => \MOORE_MAC|WideOr7~combout\,
	combout => \TRAFFIC_EW|sevenseg[0]~5_combout\);

\TRAFFIC_EW|sevenseg[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TRAFFIC_EW|sevenseg[6]~6_combout\ = (!\MOORE_MAC|Selector4~0_combout\ & ((\MOORE_MAC|current_state.s14~q\) # (\MOORE_MAC|current_state.s15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s14~q\,
	datab => \MOORE_MAC|current_state.s15~q\,
	datac => \MOORE_MAC|Selector4~0_combout\,
	combout => \TRAFFIC_EW|sevenseg[6]~6_combout\);

\TRAFFIC_NS|sevenseg[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TRAFFIC_NS|sevenseg[0]~5_combout\ = (!\MOORE_MAC|current_state.s6~q\ & (!\MOORE_MAC|current_state.s7~q\ & (\MOORE_MAC|WideOr7~0_combout\ & \MOORE_MAC|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s6~q\,
	datab => \MOORE_MAC|current_state.s7~q\,
	datac => \MOORE_MAC|WideOr7~0_combout\,
	datad => \MOORE_MAC|WideOr7~1_combout\,
	combout => \TRAFFIC_NS|sevenseg[0]~5_combout\);

\TRAFFIC_NS|sevenseg[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TRAFFIC_NS|sevenseg[6]~4_combout\ = (\MOORE_MAC|WideOr7~0_combout\ & (!\MOORE_MAC|WideOr7~2_combout\ & ((\MOORE_MAC|WideOr7~1_combout\) # (!\CLOCK_GEN|blink_sig~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|WideOr7~0_combout\,
	datab => \MOORE_MAC|WideOr7~1_combout\,
	datac => \CLOCK_GEN|blink_sig~q\,
	datad => \MOORE_MAC|WideOr7~2_combout\,
	combout => \TRAFFIC_NS|sevenseg[6]~4_combout\);

\SEVENSEG_MUX|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~2_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (\MOORE_MAC|current_state.s6~q\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (((\MOORE_MAC|current_state.s14~q\) # (\MOORE_MAC|current_state.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s6~q\,
	datab => \MOORE_MAC|current_state.s14~q\,
	datac => \MOORE_MAC|current_state.s15~q\,
	datad => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	combout => \SEVENSEG_MUX|DOUT[0]~2_combout\);

\SEVENSEG_MUX|DOUT[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~3_combout\ = (\SEVENSEG_MUX|DOUT[0]~2_combout\) # ((\MOORE_MAC|WideOr7~combout\ & ((\MOORE_MAC|current_state.s7~q\) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\))) # (!\MOORE_MAC|WideOr7~combout\ & 
-- ((\SEVENSEG_MUX|clk_proc:COUNT[10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|DOUT[0]~2_combout\,
	datab => \MOORE_MAC|current_state.s7~q\,
	datac => \MOORE_MAC|WideOr7~combout\,
	datad => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	combout => \SEVENSEG_MUX|DOUT[0]~3_combout\);

\SEVENSEG_MUX|DOUT[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~6_combout\ = (\SEVENSEG_MUX|DOUT[0]~3_combout\) # ((\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((\MOORE_MAC|Selector3~2_combout\))) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (\MOORE_MAC|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datab => \MOORE_MAC|Selector4~0_combout\,
	datac => \MOORE_MAC|Selector3~2_combout\,
	datad => \SEVENSEG_MUX|DOUT[0]~3_combout\,
	combout => \SEVENSEG_MUX|DOUT[0]~6_combout\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_sm_clkenout <= \sm_clkenout~output_o\;

ww_blink_sigout <= \blink_sigout~output_o\;

ww_seg7_test1(0) <= \seg7_test1[0]~output_o\;

ww_seg7_test1(1) <= \seg7_test1[1]~output_o\;

ww_seg7_test1(2) <= \seg7_test1[2]~output_o\;

ww_seg7_test1(3) <= \seg7_test1[3]~output_o\;

ww_seg7_test1(4) <= \seg7_test1[4]~output_o\;

ww_seg7_test1(5) <= \seg7_test1[5]~output_o\;

ww_seg7_test1(6) <= \seg7_test1[6]~output_o\;

ww_seg7_test2(0) <= \seg7_test2[0]~output_o\;

ww_seg7_test2(1) <= \seg7_test2[1]~output_o\;

ww_seg7_test2(2) <= \seg7_test2[2]~output_o\;

ww_seg7_test2(3) <= \seg7_test2[3]~output_o\;

ww_seg7_test2(4) <= \seg7_test2[4]~output_o\;

ww_seg7_test2(5) <= \seg7_test2[5]~output_o\;

ww_seg7_test2(6) <= \seg7_test2[6]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


