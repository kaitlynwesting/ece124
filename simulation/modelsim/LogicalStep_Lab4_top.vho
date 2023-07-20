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

-- DATE "07/20/2023 09:04:29"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_GEN|sm_clken~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \PB_FILL|sreg4[0]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg4[1]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg4[2]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg4[3]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \SYNC_RST|sreg[0]~feeder_combout\ : std_logic;
SIGNAL \SYNC_RST|dout~feeder_combout\ : std_logic;
SIGNAL \SYNC_RST|dout~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[0]~1_combout\ : std_logic;
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
SIGNAL \CLOCK_GEN|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[10]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[10]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[10]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[23]~2\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[24]~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_divider:counter[24]~q\ : std_logic;
SIGNAL \CLOCK_GEN|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \CLOCK_GEN|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \CLOCK_GEN|sm_clken~combout\ : std_logic;
SIGNAL \CLOCK_GEN|sm_clken~clkctrl_outclk\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \PB_FILL|sreg0[0]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg0[1]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg0[2]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg0[3]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \SYNC_NS|sreg~0_combout\ : std_logic;
SIGNAL \SYNC_NS|dout~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \PB_FILL|sreg1[0]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg1[1]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg1[2]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|sreg1[3]~feeder_combout\ : std_logic;
SIGNAL \PB_FILL|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \SYNC_EW|sreg~0_combout\ : std_logic;
SIGNAL \SYNC_EW|dout~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s7~feeder_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s7~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s8~feeder_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s8~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s9~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s9~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s10~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s10~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s11~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s12~feeder_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s12~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s13~feeder_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s13~q\ : std_logic;
SIGNAL \MOORE_MAC|Selector1~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s14~q\ : std_logic;
SIGNAL \HOLDREG_EW|sreg~0_combout\ : std_logic;
SIGNAL \HOLDREG_EW|sreg~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s4~feeder_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s4~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s5~q\ : std_logic;
SIGNAL \MOORE_MAC|Selector2~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s15~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s0~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s0~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s1~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s1~q\ : std_logic;
SIGNAL \MOORE_MAC|Selector0~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|Selector0~1_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s6~q\ : std_logic;
SIGNAL \HOLDREG_NS|sreg~0_combout\ : std_logic;
SIGNAL \HOLDREG_NS|sreg~q\ : std_logic;
SIGNAL \MOORE_MAC|next_state.s2~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s2~q\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s3~feeder_combout\ : std_logic;
SIGNAL \MOORE_MAC|current_state.s3~q\ : std_logic;
SIGNAL \MOORE_MAC|WideOr3~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|WideOr6~0_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[3]~4_combout\ : std_logic;
SIGNAL \CLOCK_GEN|blink_sig~0_combout\ : std_logic;
SIGNAL \CLOCK_GEN|blink_sig~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[3]~5_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[3]~6_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT_TEMP[6]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~2_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~1_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~0_combout\ : std_logic;
SIGNAL \SEVENSEG_MUX|DOUT[0]~3_combout\ : std_logic;
SIGNAL \SYNC_RST|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SYNC_NS|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SYNC_EW|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_GEN|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PB_FILL|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB_FILL|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB_FILL|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEVENSEG_MUX|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \SYNC_RST|ALT_INV_dout~q\ : std_logic;
SIGNAL \SEVENSEG_MUX|ALT_INV_DOUT[0]~3_combout\ : std_logic;
SIGNAL \MOORE_MAC|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \MOORE_MAC|ALT_INV_WideOr3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\CLOCK_GEN|sm_clken~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_GEN|sm_clken~combout\);
\SEVENSEG_MUX|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \SEVENSEG_MUX|clk_proc:COUNT[10]~q\;
\SYNC_RST|ALT_INV_dout~q\ <= NOT \SYNC_RST|dout~q\;
\SEVENSEG_MUX|ALT_INV_DOUT[0]~3_combout\ <= NOT \SEVENSEG_MUX|DOUT[0]~3_combout\;
\MOORE_MAC|ALT_INV_WideOr6~0_combout\ <= NOT \MOORE_MAC|WideOr6~0_combout\;
\MOORE_MAC|ALT_INV_WideOr3~0_combout\ <= NOT \MOORE_MAC|WideOr3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y21_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|DOUT_TEMP[6]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOORE_MAC|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOORE_MAC|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
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

-- Location: IOOBUF_X10_Y21_N23
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

-- Location: IOOBUF_X10_Y22_N23
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X6_Y0_N23
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

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|ALT_INV_DOUT[0]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X3_Y10_N23
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

-- Location: IOOBUF_X1_Y10_N9
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

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEVENSEG_MUX|DOUT[3]~6_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
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

-- Location: IOOBUF_X6_Y10_N30
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

-- Location: IOOBUF_X13_Y25_N9
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

-- Location: IOOBUF_X15_Y25_N16
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

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y22_N0
\SEVENSEG_MUX|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\ = !\SEVENSEG_MUX|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEVENSEG_MUX|clk_proc:COUNT[0]~q\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X17_Y22_N1
\SEVENSEG_MUX|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X17_Y22_N6
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

-- Location: FF_X17_Y22_N7
\SEVENSEG_MUX|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X17_Y22_N8
\SEVENSEG_MUX|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[2]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[1]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[2]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[1]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[2]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[1]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEG_MUX|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[1]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[2]~2\);

-- Location: FF_X17_Y22_N9
\SEVENSEG_MUX|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X17_Y22_N10
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

-- Location: FF_X17_Y22_N11
\SEVENSEG_MUX|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X17_Y22_N12
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

-- Location: FF_X17_Y22_N13
\SEVENSEG_MUX|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X17_Y22_N14
\SEVENSEG_MUX|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[5]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[4]~2\ $ (GND))) # (!\SEVENSEG_MUX|clk_proc:COUNT[5]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[4]~2\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[5]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[5]~q\ & !\SEVENSEG_MUX|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEG_MUX|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[4]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[5]~2\);

-- Location: FF_X17_Y22_N15
\SEVENSEG_MUX|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X17_Y22_N16
\SEVENSEG_MUX|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[6]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[5]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[6]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[5]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[6]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[5]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEG_MUX|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[5]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[6]~2\);

-- Location: FF_X17_Y22_N17
\SEVENSEG_MUX|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X17_Y22_N18
\SEVENSEG_MUX|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[7]~q\ & (\SEVENSEG_MUX|clk_proc:COUNT[6]~2\ $ (GND))) # (!\SEVENSEG_MUX|clk_proc:COUNT[7]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[6]~2\ & VCC))
-- \SEVENSEG_MUX|clk_proc:COUNT[7]~2\ = CARRY((\SEVENSEG_MUX|clk_proc:COUNT[7]~q\ & !\SEVENSEG_MUX|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEG_MUX|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[6]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[7]~2\);

-- Location: FF_X17_Y22_N19
\SEVENSEG_MUX|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X17_Y22_N20
\SEVENSEG_MUX|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[8]~q\ & (!\SEVENSEG_MUX|clk_proc:COUNT[7]~2\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[8]~q\ & ((\SEVENSEG_MUX|clk_proc:COUNT[7]~2\) # (GND)))
-- \SEVENSEG_MUX|clk_proc:COUNT[8]~2\ = CARRY((!\SEVENSEG_MUX|clk_proc:COUNT[7]~2\) # (!\SEVENSEG_MUX|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SEVENSEG_MUX|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[7]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\,
	cout => \SEVENSEG_MUX|clk_proc:COUNT[8]~2\);

-- Location: FF_X17_Y22_N21
\SEVENSEG_MUX|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X17_Y22_N22
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

-- Location: FF_X17_Y22_N23
\SEVENSEG_MUX|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X17_Y22_N24
\SEVENSEG_MUX|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\ = \SEVENSEG_MUX|clk_proc:COUNT[9]~2\ $ (\SEVENSEG_MUX|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	cin => \SEVENSEG_MUX|clk_proc:COUNT[9]~2\,
	combout => \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X17_Y22_N25
\SEVENSEG_MUX|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SEVENSEG_MUX|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\);

-- Location: IOIBUF_X0_Y2_N15
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

-- Location: LCCOMB_X18_Y12_N10
\PB_FILL|sreg4[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg4[0]~feeder_combout\ = \rst_n~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rst_n~input_o\,
	combout => \PB_FILL|sreg4[0]~feeder_combout\);

-- Location: FF_X18_Y12_N11
\PB_FILL|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg4[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(0));

-- Location: LCCOMB_X18_Y12_N12
\PB_FILL|sreg4[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg4[1]~feeder_combout\ = \PB_FILL|sreg4\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg4\(0),
	combout => \PB_FILL|sreg4[1]~feeder_combout\);

-- Location: FF_X18_Y12_N13
\PB_FILL|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg4[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(1));

-- Location: LCCOMB_X18_Y12_N18
\PB_FILL|sreg4[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg4[2]~feeder_combout\ = \PB_FILL|sreg4\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg4\(1),
	combout => \PB_FILL|sreg4[2]~feeder_combout\);

-- Location: FF_X18_Y12_N19
\PB_FILL|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg4[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(2));

-- Location: LCCOMB_X18_Y12_N4
\PB_FILL|sreg4[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg4[3]~feeder_combout\ = \PB_FILL|sreg4\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg4\(2),
	combout => \PB_FILL|sreg4[3]~feeder_combout\);

-- Location: FF_X18_Y12_N5
\PB_FILL|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg4[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg4\(3));

-- Location: LCCOMB_X18_Y12_N2
\PB_FILL|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|rst_n_filtered~0_combout\ = (!\PB_FILL|sreg4\(1) & (!\PB_FILL|sreg4\(3) & !\PB_FILL|sreg4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_FILL|sreg4\(1),
	datac => \PB_FILL|sreg4\(3),
	datad => \PB_FILL|sreg4\(2),
	combout => \PB_FILL|rst_n_filtered~0_combout\);

-- Location: FF_X18_Y12_N3
\SYNC_RST|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|rst_n_filtered~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_RST|sreg\(1));

-- Location: LCCOMB_X18_Y12_N28
\SYNC_RST|sreg[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNC_RST|sreg[0]~feeder_combout\ = \SYNC_RST|sreg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SYNC_RST|sreg\(1),
	combout => \SYNC_RST|sreg[0]~feeder_combout\);

-- Location: FF_X18_Y12_N29
\SYNC_RST|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SYNC_RST|sreg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_RST|sreg\(0));

-- Location: LCCOMB_X17_Y12_N22
\SYNC_RST|dout~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNC_RST|dout~feeder_combout\ = \SYNC_RST|sreg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SYNC_RST|sreg\(0),
	combout => \SYNC_RST|dout~feeder_combout\);

-- Location: FF_X17_Y12_N23
\SYNC_RST|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SYNC_RST|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_RST|dout~q\);

-- Location: LCCOMB_X19_Y13_N8
\CLOCK_GEN|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[0]~1_combout\ = \CLOCK_GEN|clk_divider:counter[0]~q\ $ (VCC)
-- \CLOCK_GEN|clk_divider:counter[0]~2\ = CARRY(\CLOCK_GEN|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \CLOCK_GEN|clk_divider:counter[0]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[0]~2\);

-- Location: FF_X19_Y13_N9
\CLOCK_GEN|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[0]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[0]~q\);

-- Location: LCCOMB_X19_Y13_N10
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

-- Location: FF_X19_Y13_N11
\CLOCK_GEN|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[1]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X19_Y13_N12
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

-- Location: FF_X19_Y13_N13
\CLOCK_GEN|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[2]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X19_Y13_N14
\CLOCK_GEN|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[3]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[3]~q\ & (!\CLOCK_GEN|clk_divider:counter[2]~2\)) # (!\CLOCK_GEN|clk_divider:counter[3]~q\ & ((\CLOCK_GEN|clk_divider:counter[2]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[3]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[2]~2\) # (!\CLOCK_GEN|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[2]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[3]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[3]~2\);

-- Location: FF_X19_Y13_N15
\CLOCK_GEN|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[3]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X19_Y13_N16
\CLOCK_GEN|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[4]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[4]~q\ & (\CLOCK_GEN|clk_divider:counter[3]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[4]~q\ & (!\CLOCK_GEN|clk_divider:counter[3]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[4]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[4]~q\ & !\CLOCK_GEN|clk_divider:counter[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[3]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[4]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[4]~2\);

-- Location: FF_X19_Y13_N17
\CLOCK_GEN|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[4]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X19_Y13_N18
\CLOCK_GEN|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[5]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[5]~q\ & (!\CLOCK_GEN|clk_divider:counter[4]~2\)) # (!\CLOCK_GEN|clk_divider:counter[5]~q\ & ((\CLOCK_GEN|clk_divider:counter[4]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[5]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[4]~2\) # (!\CLOCK_GEN|clk_divider:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[4]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[5]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[5]~2\);

-- Location: FF_X19_Y13_N19
\CLOCK_GEN|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[5]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X19_Y13_N20
\CLOCK_GEN|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[6]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[6]~q\ & (\CLOCK_GEN|clk_divider:counter[5]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[6]~q\ & (!\CLOCK_GEN|clk_divider:counter[5]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[6]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[6]~q\ & !\CLOCK_GEN|clk_divider:counter[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[5]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[6]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[6]~2\);

-- Location: FF_X19_Y13_N21
\CLOCK_GEN|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[6]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X19_Y13_N22
\CLOCK_GEN|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[7]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[7]~q\ & (!\CLOCK_GEN|clk_divider:counter[6]~2\)) # (!\CLOCK_GEN|clk_divider:counter[7]~q\ & ((\CLOCK_GEN|clk_divider:counter[6]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[7]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[6]~2\) # (!\CLOCK_GEN|clk_divider:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[6]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[7]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[7]~2\);

-- Location: FF_X19_Y13_N23
\CLOCK_GEN|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[7]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X19_Y13_N24
\CLOCK_GEN|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[8]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[8]~q\ & (\CLOCK_GEN|clk_divider:counter[7]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[8]~q\ & (!\CLOCK_GEN|clk_divider:counter[7]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[8]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[8]~q\ & !\CLOCK_GEN|clk_divider:counter[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[7]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[8]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[8]~2\);

-- Location: FF_X19_Y13_N25
\CLOCK_GEN|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[8]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X19_Y13_N26
\CLOCK_GEN|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[9]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[9]~q\ & (!\CLOCK_GEN|clk_divider:counter[8]~2\)) # (!\CLOCK_GEN|clk_divider:counter[9]~q\ & ((\CLOCK_GEN|clk_divider:counter[8]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[9]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[8]~2\) # (!\CLOCK_GEN|clk_divider:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[8]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[9]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[9]~2\);

-- Location: FF_X19_Y13_N27
\CLOCK_GEN|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[9]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X19_Y13_N28
\CLOCK_GEN|clk_divider:counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[10]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[10]~q\ & (\CLOCK_GEN|clk_divider:counter[9]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[10]~q\ & (!\CLOCK_GEN|clk_divider:counter[9]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[10]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[10]~q\ & !\CLOCK_GEN|clk_divider:counter[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[10]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[9]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[10]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[10]~2\);

-- Location: FF_X19_Y13_N29
\CLOCK_GEN|clk_divider:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[10]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[10]~q\);

-- Location: LCCOMB_X19_Y13_N30
\CLOCK_GEN|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[11]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[11]~q\ & (!\CLOCK_GEN|clk_divider:counter[10]~2\)) # (!\CLOCK_GEN|clk_divider:counter[11]~q\ & ((\CLOCK_GEN|clk_divider:counter[10]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[11]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[10]~2\) # (!\CLOCK_GEN|clk_divider:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[10]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[11]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[11]~2\);

-- Location: FF_X19_Y13_N31
\CLOCK_GEN|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[11]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X19_Y12_N0
\CLOCK_GEN|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[12]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[12]~q\ & (\CLOCK_GEN|clk_divider:counter[11]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[12]~q\ & (!\CLOCK_GEN|clk_divider:counter[11]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[12]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[12]~q\ & !\CLOCK_GEN|clk_divider:counter[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[11]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[12]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[12]~2\);

-- Location: FF_X19_Y12_N1
\CLOCK_GEN|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[12]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X19_Y12_N2
\CLOCK_GEN|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[13]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[13]~q\ & (!\CLOCK_GEN|clk_divider:counter[12]~2\)) # (!\CLOCK_GEN|clk_divider:counter[13]~q\ & ((\CLOCK_GEN|clk_divider:counter[12]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[13]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[12]~2\) # (!\CLOCK_GEN|clk_divider:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[12]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[13]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[13]~2\);

-- Location: FF_X19_Y12_N3
\CLOCK_GEN|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[13]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X19_Y12_N4
\CLOCK_GEN|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[14]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[14]~q\ & (\CLOCK_GEN|clk_divider:counter[13]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[14]~q\ & (!\CLOCK_GEN|clk_divider:counter[13]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[14]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[14]~q\ & !\CLOCK_GEN|clk_divider:counter[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[13]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[14]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[14]~2\);

-- Location: FF_X19_Y12_N5
\CLOCK_GEN|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[14]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X19_Y12_N6
\CLOCK_GEN|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[15]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[15]~q\ & (!\CLOCK_GEN|clk_divider:counter[14]~2\)) # (!\CLOCK_GEN|clk_divider:counter[15]~q\ & ((\CLOCK_GEN|clk_divider:counter[14]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[15]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[14]~2\) # (!\CLOCK_GEN|clk_divider:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[14]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[15]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[15]~2\);

-- Location: FF_X19_Y12_N7
\CLOCK_GEN|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[15]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X19_Y12_N8
\CLOCK_GEN|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[16]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[16]~q\ & (\CLOCK_GEN|clk_divider:counter[15]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[16]~q\ & (!\CLOCK_GEN|clk_divider:counter[15]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[16]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[16]~q\ & !\CLOCK_GEN|clk_divider:counter[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[15]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[16]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[16]~2\);

-- Location: FF_X19_Y12_N9
\CLOCK_GEN|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[16]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X19_Y12_N10
\CLOCK_GEN|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[17]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[17]~q\ & (!\CLOCK_GEN|clk_divider:counter[16]~2\)) # (!\CLOCK_GEN|clk_divider:counter[17]~q\ & ((\CLOCK_GEN|clk_divider:counter[16]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[17]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[16]~2\) # (!\CLOCK_GEN|clk_divider:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[16]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[17]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[17]~2\);

-- Location: FF_X19_Y12_N11
\CLOCK_GEN|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[17]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X19_Y12_N12
\CLOCK_GEN|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[18]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[18]~q\ & (\CLOCK_GEN|clk_divider:counter[17]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[18]~q\ & (!\CLOCK_GEN|clk_divider:counter[17]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[18]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[18]~q\ & !\CLOCK_GEN|clk_divider:counter[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[17]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[18]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[18]~2\);

-- Location: FF_X19_Y12_N13
\CLOCK_GEN|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[18]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X19_Y12_N14
\CLOCK_GEN|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[19]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[19]~q\ & (!\CLOCK_GEN|clk_divider:counter[18]~2\)) # (!\CLOCK_GEN|clk_divider:counter[19]~q\ & ((\CLOCK_GEN|clk_divider:counter[18]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[19]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[18]~2\) # (!\CLOCK_GEN|clk_divider:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[18]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[19]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[19]~2\);

-- Location: FF_X19_Y12_N15
\CLOCK_GEN|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[19]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X19_Y12_N16
\CLOCK_GEN|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[20]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[20]~q\ & (\CLOCK_GEN|clk_divider:counter[19]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[20]~q\ & (!\CLOCK_GEN|clk_divider:counter[19]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[20]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[20]~q\ & !\CLOCK_GEN|clk_divider:counter[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[19]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[20]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[20]~2\);

-- Location: FF_X19_Y12_N17
\CLOCK_GEN|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[20]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X19_Y12_N18
\CLOCK_GEN|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[21]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[21]~q\ & (!\CLOCK_GEN|clk_divider:counter[20]~2\)) # (!\CLOCK_GEN|clk_divider:counter[21]~q\ & ((\CLOCK_GEN|clk_divider:counter[20]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[21]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[20]~2\) # (!\CLOCK_GEN|clk_divider:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[20]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[21]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[21]~2\);

-- Location: FF_X19_Y12_N19
\CLOCK_GEN|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[21]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X19_Y12_N20
\CLOCK_GEN|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[22]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[22]~q\ & (\CLOCK_GEN|clk_divider:counter[21]~2\ $ (GND))) # (!\CLOCK_GEN|clk_divider:counter[22]~q\ & (!\CLOCK_GEN|clk_divider:counter[21]~2\ & VCC))
-- \CLOCK_GEN|clk_divider:counter[22]~2\ = CARRY((\CLOCK_GEN|clk_divider:counter[22]~q\ & !\CLOCK_GEN|clk_divider:counter[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLOCK_GEN|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[21]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[22]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[22]~2\);

-- Location: FF_X19_Y12_N21
\CLOCK_GEN|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[22]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X19_Y12_N22
\CLOCK_GEN|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[23]~1_combout\ = (\CLOCK_GEN|clk_divider:counter[23]~q\ & (!\CLOCK_GEN|clk_divider:counter[22]~2\)) # (!\CLOCK_GEN|clk_divider:counter[23]~q\ & ((\CLOCK_GEN|clk_divider:counter[22]~2\) # (GND)))
-- \CLOCK_GEN|clk_divider:counter[23]~2\ = CARRY((!\CLOCK_GEN|clk_divider:counter[22]~2\) # (!\CLOCK_GEN|clk_divider:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLOCK_GEN|clk_divider:counter[23]~q\,
	datad => VCC,
	cin => \CLOCK_GEN|clk_divider:counter[22]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[23]~1_combout\,
	cout => \CLOCK_GEN|clk_divider:counter[23]~2\);

-- Location: FF_X19_Y12_N23
\CLOCK_GEN|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[23]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[23]~q\);

-- Location: LCCOMB_X19_Y12_N24
\CLOCK_GEN|clk_divider:counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_divider:counter[24]~1_combout\ = \CLOCK_GEN|clk_divider:counter[23]~2\ $ (!\CLOCK_GEN|clk_divider:counter[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLOCK_GEN|clk_divider:counter[24]~q\,
	cin => \CLOCK_GEN|clk_divider:counter[23]~2\,
	combout => \CLOCK_GEN|clk_divider:counter[24]~1_combout\);

-- Location: FF_X19_Y12_N25
\CLOCK_GEN|clk_divider:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_divider:counter[24]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_divider:counter[24]~q\);

-- Location: LCCOMB_X18_Y10_N18
\CLOCK_GEN|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|clk_reg_extend~0_combout\ = (!\SYNC_RST|dout~q\ & \CLOCK_GEN|clk_divider:counter[24]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_RST|dout~q\,
	datad => \CLOCK_GEN|clk_divider:counter[24]~q\,
	combout => \CLOCK_GEN|clk_reg_extend~0_combout\);

-- Location: FF_X18_Y10_N19
\CLOCK_GEN|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_reg_extend\(0));

-- Location: LCCOMB_X18_Y10_N22
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

-- Location: FF_X18_Y10_N31
\CLOCK_GEN|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	asdata => \CLOCK_GEN|clk_reg_extend~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|clk_reg_extend\(1));

-- Location: LCCOMB_X18_Y10_N30
\CLOCK_GEN|sm_clken\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|sm_clken~combout\ = LCELL((!\CLOCK_GEN|clk_reg_extend\(1) & \CLOCK_GEN|clk_reg_extend\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLOCK_GEN|clk_reg_extend\(1),
	datad => \CLOCK_GEN|clk_reg_extend\(0),
	combout => \CLOCK_GEN|sm_clken~combout\);

-- Location: CLKCTRL_G6
\CLOCK_GEN|sm_clken~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_GEN|sm_clken~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_GEN|sm_clken~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y0_N1
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

-- Location: LCCOMB_X12_Y12_N20
\PB_FILL|sreg0[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg0[0]~feeder_combout\ = \pb_n[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[0]~input_o\,
	combout => \PB_FILL|sreg0[0]~feeder_combout\);

-- Location: FF_X12_Y12_N21
\PB_FILL|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(0));

-- Location: LCCOMB_X12_Y12_N16
\PB_FILL|sreg0[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg0[1]~feeder_combout\ = \PB_FILL|sreg0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg0\(0),
	combout => \PB_FILL|sreg0[1]~feeder_combout\);

-- Location: FF_X12_Y12_N17
\PB_FILL|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(1));

-- Location: LCCOMB_X12_Y12_N26
\PB_FILL|sreg0[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg0[2]~feeder_combout\ = \PB_FILL|sreg0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg0\(1),
	combout => \PB_FILL|sreg0[2]~feeder_combout\);

-- Location: FF_X12_Y12_N27
\PB_FILL|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(2));

-- Location: LCCOMB_X12_Y12_N4
\PB_FILL|sreg0[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg0[3]~feeder_combout\ = \PB_FILL|sreg0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB_FILL|sreg0\(2),
	combout => \PB_FILL|sreg0[3]~feeder_combout\);

-- Location: FF_X12_Y12_N5
\PB_FILL|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg0[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg0\(3));

-- Location: LCCOMB_X12_Y12_N12
\PB_FILL|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|pb_n_filtered[0]~0_combout\ = (!\PB_FILL|sreg0\(2) & (!\PB_FILL|sreg0\(3) & !\PB_FILL|sreg0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_FILL|sreg0\(2),
	datac => \PB_FILL|sreg0\(3),
	datad => \PB_FILL|sreg0\(1),
	combout => \PB_FILL|pb_n_filtered[0]~0_combout\);

-- Location: FF_X12_Y12_N13
\SYNC_NS|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|pb_n_filtered[0]~0_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_NS|sreg\(1));

-- Location: LCCOMB_X12_Y12_N24
\SYNC_NS|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNC_NS|sreg~0_combout\ = (!\SYNC_RST|dout~q\ & \SYNC_NS|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_RST|dout~q\,
	datad => \SYNC_NS|sreg\(1),
	combout => \SYNC_NS|sreg~0_combout\);

-- Location: FF_X12_Y12_N25
\SYNC_NS|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SYNC_NS|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_NS|sreg\(0));

-- Location: FF_X16_Y12_N7
\SYNC_NS|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \SYNC_NS|sreg\(0),
	sload => VCC,
	ena => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_NS|dout~q\);

-- Location: IOIBUF_X9_Y0_N22
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

-- Location: LCCOMB_X12_Y12_N10
\PB_FILL|sreg1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg1[0]~feeder_combout\ = \pb_n[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb_n[1]~input_o\,
	combout => \PB_FILL|sreg1[0]~feeder_combout\);

-- Location: FF_X12_Y12_N11
\PB_FILL|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(0));

-- Location: LCCOMB_X12_Y12_N18
\PB_FILL|sreg1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg1[1]~feeder_combout\ = \PB_FILL|sreg1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg1\(0),
	combout => \PB_FILL|sreg1[1]~feeder_combout\);

-- Location: FF_X12_Y12_N19
\PB_FILL|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(1));

-- Location: LCCOMB_X12_Y12_N8
\PB_FILL|sreg1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg1[2]~feeder_combout\ = \PB_FILL|sreg1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_FILL|sreg1\(1),
	combout => \PB_FILL|sreg1[2]~feeder_combout\);

-- Location: FF_X12_Y12_N9
\PB_FILL|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(2));

-- Location: LCCOMB_X12_Y12_N22
\PB_FILL|sreg1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|sreg1[3]~feeder_combout\ = \PB_FILL|sreg1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB_FILL|sreg1\(2),
	combout => \PB_FILL|sreg1[3]~feeder_combout\);

-- Location: FF_X12_Y12_N23
\PB_FILL|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|sreg1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PB_FILL|sreg1\(3));

-- Location: LCCOMB_X12_Y12_N2
\PB_FILL|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PB_FILL|pb_n_filtered[1]~1_combout\ = (!\PB_FILL|sreg1\(3) & (!\PB_FILL|sreg1\(2) & !\PB_FILL|sreg1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PB_FILL|sreg1\(3),
	datac => \PB_FILL|sreg1\(2),
	datad => \PB_FILL|sreg1\(1),
	combout => \PB_FILL|pb_n_filtered[1]~1_combout\);

-- Location: FF_X12_Y12_N3
\SYNC_EW|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \PB_FILL|pb_n_filtered[1]~1_combout\,
	sclr => \SYNC_RST|dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_EW|sreg\(1));

-- Location: LCCOMB_X12_Y12_N6
\SYNC_EW|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SYNC_EW|sreg~0_combout\ = (!\SYNC_RST|dout~q\ & \SYNC_EW|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SYNC_RST|dout~q\,
	datad => \SYNC_EW|sreg\(1),
	combout => \SYNC_EW|sreg~0_combout\);

-- Location: FF_X12_Y12_N7
\SYNC_EW|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \SYNC_EW|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_EW|sreg\(0));

-- Location: FF_X16_Y12_N17
\SYNC_EW|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \SYNC_EW|sreg\(0),
	sload => VCC,
	ena => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNC_EW|dout~q\);

-- Location: LCCOMB_X16_Y12_N10
\MOORE_MAC|current_state.s7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s7~feeder_combout\ = \MOORE_MAC|current_state.s6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MOORE_MAC|current_state.s6~q\,
	combout => \MOORE_MAC|current_state.s7~feeder_combout\);

-- Location: FF_X16_Y12_N11
\MOORE_MAC|current_state.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s7~feeder_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s7~q\);

-- Location: LCCOMB_X16_Y12_N12
\MOORE_MAC|current_state.s8~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s8~feeder_combout\ = \MOORE_MAC|current_state.s7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MOORE_MAC|current_state.s7~q\,
	combout => \MOORE_MAC|current_state.s8~feeder_combout\);

-- Location: FF_X16_Y12_N13
\MOORE_MAC|current_state.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s8~feeder_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s8~q\);

-- Location: LCCOMB_X17_Y12_N4
\MOORE_MAC|next_state.s9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s9~0_combout\ = (\MOORE_MAC|current_state.s8~q\ & ((\HOLDREG_EW|sreg~q\) # (!\HOLDREG_NS|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_EW|sreg~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datad => \MOORE_MAC|current_state.s8~q\,
	combout => \MOORE_MAC|next_state.s9~0_combout\);

-- Location: FF_X17_Y12_N5
\MOORE_MAC|current_state.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|next_state.s9~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s9~q\);

-- Location: LCCOMB_X17_Y12_N10
\MOORE_MAC|next_state.s10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s10~0_combout\ = (\MOORE_MAC|current_state.s9~q\ & ((\HOLDREG_EW|sreg~q\) # (!\HOLDREG_NS|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_EW|sreg~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datad => \MOORE_MAC|current_state.s9~q\,
	combout => \MOORE_MAC|next_state.s10~0_combout\);

-- Location: FF_X17_Y12_N11
\MOORE_MAC|current_state.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|next_state.s10~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s10~q\);

-- Location: FF_X16_Y12_N15
\MOORE_MAC|current_state.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	asdata => \MOORE_MAC|current_state.s10~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s11~q\);

-- Location: LCCOMB_X17_Y12_N20
\MOORE_MAC|current_state.s12~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s12~feeder_combout\ = \MOORE_MAC|current_state.s11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MOORE_MAC|current_state.s11~q\,
	combout => \MOORE_MAC|current_state.s12~feeder_combout\);

-- Location: FF_X17_Y12_N21
\MOORE_MAC|current_state.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s12~feeder_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s12~q\);

-- Location: LCCOMB_X17_Y12_N26
\MOORE_MAC|current_state.s13~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s13~feeder_combout\ = \MOORE_MAC|current_state.s12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MOORE_MAC|current_state.s12~q\,
	combout => \MOORE_MAC|current_state.s13~feeder_combout\);

-- Location: FF_X17_Y12_N27
\MOORE_MAC|current_state.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s13~feeder_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s13~q\);

-- Location: LCCOMB_X17_Y12_N18
\MOORE_MAC|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector1~0_combout\ = (\MOORE_MAC|current_state.s13~q\) # ((\HOLDREG_NS|sreg~q\ & (!\HOLDREG_EW|sreg~q\ & \MOORE_MAC|current_state.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_NS|sreg~q\,
	datab => \MOORE_MAC|current_state.s13~q\,
	datac => \HOLDREG_EW|sreg~q\,
	datad => \MOORE_MAC|current_state.s8~q\,
	combout => \MOORE_MAC|Selector1~0_combout\);

-- Location: FF_X17_Y12_N19
\MOORE_MAC|current_state.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|Selector1~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s14~q\);

-- Location: LCCOMB_X16_Y12_N16
\HOLDREG_EW|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HOLDREG_EW|sreg~0_combout\ = (!\SYNC_RST|dout~q\ & (!\MOORE_MAC|current_state.s14~q\ & ((\HOLDREG_EW|sreg~q\) # (\SYNC_EW|dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_RST|dout~q\,
	datab => \HOLDREG_EW|sreg~q\,
	datac => \SYNC_EW|dout~q\,
	datad => \MOORE_MAC|current_state.s14~q\,
	combout => \HOLDREG_EW|sreg~0_combout\);

-- Location: FF_X17_Y12_N31
\HOLDREG_EW|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \HOLDREG_EW|sreg~0_combout\,
	sclr => \SYNC_RST|dout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HOLDREG_EW|sreg~q\);

-- Location: LCCOMB_X17_Y12_N12
\MOORE_MAC|current_state.s4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s4~feeder_combout\ = \MOORE_MAC|current_state.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOORE_MAC|current_state.s3~q\,
	combout => \MOORE_MAC|current_state.s4~feeder_combout\);

-- Location: FF_X17_Y12_N13
\MOORE_MAC|current_state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s4~feeder_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s4~q\);

-- Location: FF_X16_Y12_N1
\MOORE_MAC|current_state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	asdata => \MOORE_MAC|current_state.s4~q\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s5~q\);

-- Location: LCCOMB_X17_Y12_N16
\MOORE_MAC|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector2~0_combout\ = (\MOORE_MAC|current_state.s14~q\) # ((\HOLDREG_NS|sreg~q\ & (!\HOLDREG_EW|sreg~q\ & \MOORE_MAC|current_state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_NS|sreg~q\,
	datab => \MOORE_MAC|current_state.s14~q\,
	datac => \HOLDREG_EW|sreg~q\,
	datad => \MOORE_MAC|current_state.s9~q\,
	combout => \MOORE_MAC|Selector2~0_combout\);

-- Location: FF_X17_Y12_N17
\MOORE_MAC|current_state.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|Selector2~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s15~q\);

-- Location: LCCOMB_X17_Y12_N2
\MOORE_MAC|current_state.s0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s0~0_combout\ = !\MOORE_MAC|current_state.s15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MOORE_MAC|current_state.s15~q\,
	combout => \MOORE_MAC|current_state.s0~0_combout\);

-- Location: FF_X17_Y12_N3
\MOORE_MAC|current_state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s0~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s0~q\);

-- Location: LCCOMB_X17_Y12_N28
\MOORE_MAC|next_state.s1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s1~0_combout\ = (!\MOORE_MAC|current_state.s0~q\ & ((\HOLDREG_NS|sreg~q\) # (!\HOLDREG_EW|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_EW|sreg~q\,
	datac => \HOLDREG_NS|sreg~q\,
	datad => \MOORE_MAC|current_state.s0~q\,
	combout => \MOORE_MAC|next_state.s1~0_combout\);

-- Location: FF_X17_Y12_N29
\MOORE_MAC|current_state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|next_state.s1~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s1~q\);

-- Location: LCCOMB_X17_Y12_N6
\MOORE_MAC|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector0~0_combout\ = (!\MOORE_MAC|current_state.s1~q\ & \MOORE_MAC|current_state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOORE_MAC|current_state.s1~q\,
	datad => \MOORE_MAC|current_state.s0~q\,
	combout => \MOORE_MAC|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y12_N24
\MOORE_MAC|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|Selector0~1_combout\ = (\MOORE_MAC|current_state.s5~q\) # ((\HOLDREG_EW|sreg~q\ & (!\HOLDREG_NS|sreg~q\ & !\MOORE_MAC|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_EW|sreg~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datac => \MOORE_MAC|current_state.s5~q\,
	datad => \MOORE_MAC|Selector0~0_combout\,
	combout => \MOORE_MAC|Selector0~1_combout\);

-- Location: FF_X17_Y12_N25
\MOORE_MAC|current_state.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|Selector0~1_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s6~q\);

-- Location: LCCOMB_X16_Y12_N6
\HOLDREG_NS|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \HOLDREG_NS|sreg~0_combout\ = (!\SYNC_RST|dout~q\ & (!\MOORE_MAC|current_state.s6~q\ & ((\HOLDREG_NS|sreg~q\) # (\SYNC_NS|dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNC_RST|dout~q\,
	datab => \HOLDREG_NS|sreg~q\,
	datac => \SYNC_NS|dout~q\,
	datad => \MOORE_MAC|current_state.s6~q\,
	combout => \HOLDREG_NS|sreg~0_combout\);

-- Location: FF_X17_Y12_N1
\HOLDREG_NS|sreg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \HOLDREG_NS|sreg~0_combout\,
	sclr => \SYNC_RST|dout~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HOLDREG_NS|sreg~q\);

-- Location: LCCOMB_X17_Y12_N8
\MOORE_MAC|next_state.s2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|next_state.s2~0_combout\ = (\MOORE_MAC|current_state.s1~q\ & ((\HOLDREG_NS|sreg~q\) # (!\HOLDREG_EW|sreg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HOLDREG_NS|sreg~q\,
	datac => \HOLDREG_EW|sreg~q\,
	datad => \MOORE_MAC|current_state.s1~q\,
	combout => \MOORE_MAC|next_state.s2~0_combout\);

-- Location: FF_X17_Y12_N9
\MOORE_MAC|current_state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|next_state.s2~0_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s2~q\);

-- Location: LCCOMB_X17_Y12_N14
\MOORE_MAC|current_state.s3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|current_state.s3~feeder_combout\ = \MOORE_MAC|current_state.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MOORE_MAC|current_state.s2~q\,
	combout => \MOORE_MAC|current_state.s3~feeder_combout\);

-- Location: FF_X17_Y12_N15
\MOORE_MAC|current_state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_GEN|sm_clken~clkctrl_outclk\,
	d => \MOORE_MAC|current_state.s3~feeder_combout\,
	clrn => \SYNC_RST|ALT_INV_dout~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOORE_MAC|current_state.s3~q\);

-- Location: LCCOMB_X16_Y12_N0
\MOORE_MAC|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr3~0_combout\ = (!\MOORE_MAC|current_state.s3~q\ & (!\MOORE_MAC|current_state.s4~q\ & (!\MOORE_MAC|current_state.s5~q\ & !\MOORE_MAC|current_state.s2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s3~q\,
	datab => \MOORE_MAC|current_state.s4~q\,
	datac => \MOORE_MAC|current_state.s5~q\,
	datad => \MOORE_MAC|current_state.s2~q\,
	combout => \MOORE_MAC|WideOr3~0_combout\);

-- Location: LCCOMB_X16_Y12_N14
\MOORE_MAC|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \MOORE_MAC|WideOr6~0_combout\ = (!\MOORE_MAC|current_state.s12~q\ & (!\MOORE_MAC|current_state.s10~q\ & (!\MOORE_MAC|current_state.s11~q\ & !\MOORE_MAC|current_state.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s12~q\,
	datab => \MOORE_MAC|current_state.s10~q\,
	datac => \MOORE_MAC|current_state.s11~q\,
	datad => \MOORE_MAC|current_state.s13~q\,
	combout => \MOORE_MAC|WideOr6~0_combout\);

-- Location: LCCOMB_X16_Y12_N4
\SEVENSEG_MUX|DOUT[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[3]~4_combout\ = (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((\MOORE_MAC|current_state.s8~q\) # (\MOORE_MAC|current_state.s9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s8~q\,
	datac => \MOORE_MAC|current_state.s9~q\,
	datad => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	combout => \SEVENSEG_MUX|DOUT[3]~4_combout\);

-- Location: LCCOMB_X19_Y12_N30
\CLOCK_GEN|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CLOCK_GEN|blink_sig~0_combout\ = (!\SYNC_RST|dout~q\ & \CLOCK_GEN|clk_divider:counter[22]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNC_RST|dout~q\,
	datad => \CLOCK_GEN|clk_divider:counter[22]~q\,
	combout => \CLOCK_GEN|blink_sig~0_combout\);

-- Location: FF_X19_Y12_N31
\CLOCK_GEN|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \CLOCK_GEN|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLOCK_GEN|blink_sig~q\);

-- Location: LCCOMB_X16_Y12_N30
\SEVENSEG_MUX|DOUT[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[3]~5_combout\ = (\CLOCK_GEN|blink_sig~q\ & ((\SEVENSEG_MUX|DOUT[3]~4_combout\) # ((\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & !\MOORE_MAC|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|DOUT[3]~4_combout\,
	datab => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datac => \MOORE_MAC|Selector0~0_combout\,
	datad => \CLOCK_GEN|blink_sig~q\,
	combout => \SEVENSEG_MUX|DOUT[3]~5_combout\);

-- Location: LCCOMB_X16_Y12_N28
\SEVENSEG_MUX|DOUT[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[3]~6_combout\ = (\SEVENSEG_MUX|DOUT[3]~5_combout\) # ((\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (!\MOORE_MAC|WideOr3~0_combout\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((!\MOORE_MAC|WideOr6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|WideOr3~0_combout\,
	datab => \MOORE_MAC|WideOr6~0_combout\,
	datac => \SEVENSEG_MUX|DOUT[3]~5_combout\,
	datad => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	combout => \SEVENSEG_MUX|DOUT[3]~6_combout\);

-- Location: LCCOMB_X16_Y12_N22
\SEVENSEG_MUX|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\ = (\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((\MOORE_MAC|current_state.s7~q\) # ((\MOORE_MAC|current_state.s6~q\)))) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (((\MOORE_MAC|current_state.s15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s7~q\,
	datab => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datac => \MOORE_MAC|current_state.s15~q\,
	datad => \MOORE_MAC|current_state.s6~q\,
	combout => \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\);

-- Location: LCCOMB_X16_Y12_N20
\SEVENSEG_MUX|DOUT_TEMP[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT_TEMP[6]~1_combout\ = (!\SEVENSEG_MUX|DOUT[3]~6_combout\ & ((\SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\) # ((!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & \MOORE_MAC|current_state.s14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datab => \SEVENSEG_MUX|DOUT[3]~6_combout\,
	datac => \SEVENSEG_MUX|DOUT_TEMP[6]~0_combout\,
	datad => \MOORE_MAC|current_state.s14~q\,
	combout => \SEVENSEG_MUX|DOUT_TEMP[6]~1_combout\);

-- Location: LCCOMB_X16_Y12_N24
\SEVENSEG_MUX|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~2_combout\ = (\MOORE_MAC|WideOr3~0_combout\ & (!\MOORE_MAC|current_state.s6~q\ & (\MOORE_MAC|Selector0~0_combout\ & !\MOORE_MAC|current_state.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|WideOr3~0_combout\,
	datab => \MOORE_MAC|current_state.s6~q\,
	datac => \MOORE_MAC|Selector0~0_combout\,
	datad => \MOORE_MAC|current_state.s7~q\,
	combout => \SEVENSEG_MUX|DOUT[0]~2_combout\);

-- Location: LCCOMB_X16_Y12_N8
\SEVENSEG_MUX|DOUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~1_combout\ = (\MOORE_MAC|current_state.s15~q\) # ((\MOORE_MAC|current_state.s14~q\) # (!\MOORE_MAC|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOORE_MAC|current_state.s15~q\,
	datac => \MOORE_MAC|WideOr6~0_combout\,
	datad => \MOORE_MAC|current_state.s14~q\,
	combout => \SEVENSEG_MUX|DOUT[0]~1_combout\);

-- Location: LCCOMB_X16_Y12_N18
\SEVENSEG_MUX|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~0_combout\ = (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (\CLOCK_GEN|blink_sig~q\ & ((\MOORE_MAC|current_state.s9~q\) # (\MOORE_MAC|current_state.s8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datab => \MOORE_MAC|current_state.s9~q\,
	datac => \CLOCK_GEN|blink_sig~q\,
	datad => \MOORE_MAC|current_state.s8~q\,
	combout => \SEVENSEG_MUX|DOUT[0]~0_combout\);

-- Location: LCCOMB_X16_Y12_N2
\SEVENSEG_MUX|DOUT[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SEVENSEG_MUX|DOUT[0]~3_combout\ = (\SEVENSEG_MUX|DOUT[0]~0_combout\) # ((\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & (!\SEVENSEG_MUX|DOUT[0]~2_combout\)) # (!\SEVENSEG_MUX|clk_proc:COUNT[10]~q\ & ((\SEVENSEG_MUX|DOUT[0]~2_combout\) # 
-- (\SEVENSEG_MUX|DOUT[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEVENSEG_MUX|clk_proc:COUNT[10]~q\,
	datab => \SEVENSEG_MUX|DOUT[0]~2_combout\,
	datac => \SEVENSEG_MUX|DOUT[0]~1_combout\,
	datad => \SEVENSEG_MUX|DOUT[0]~0_combout\,
	combout => \SEVENSEG_MUX|DOUT[0]~3_combout\);

-- Location: IOIBUF_X9_Y0_N29
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

-- Location: IOIBUF_X6_Y0_N15
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

-- Location: IOIBUF_X0_Y5_N1
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

-- Location: IOIBUF_X10_Y19_N15
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

-- Location: IOIBUF_X10_Y19_N22
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

-- Location: IOIBUF_X10_Y20_N15
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

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: IOIBUF_X10_Y22_N15
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

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: IOIBUF_X1_Y10_N15
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

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

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


