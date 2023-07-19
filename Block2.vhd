-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Standard Edition"
-- CREATED		"Tue Jul 18 21:02:10 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block2 IS 
	PORT
	(
		pin_name5 :  IN  STD_LOGIC;
		input :  IN  STD_LOGIC;
		clk_in :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		pin_name4 :  OUT  STD_LOGIC
	);
END Block2;

ARCHITECTURE bdf_type OF Block2 IS 

SIGNAL	DFF_inst :  STD_LOGIC;


BEGIN 



PROCESS(clk_in,reset,pin_name5)
BEGIN
IF (reset = '0') THEN
	DFF_inst <= '0';
ELSIF (pin_name5 = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(clk_in)) THEN
	DFF_inst <= input;
END IF;
END PROCESS;


PROCESS(clk_in,reset,pin_name5)
BEGIN
IF (reset = '0') THEN
	pin_name4 <= '0';
ELSIF (pin_name5 = '0') THEN
	pin_name4 <= '1';
ELSIF (RISING_EDGE(clk_in)) THEN
	pin_name4 <= DFF_inst;
END IF;
END PROCESS;



END bdf_type;