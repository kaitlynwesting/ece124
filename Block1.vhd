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
-- CREATED		"Tue Jul 18 20:07:41 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		reg_clear :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		sync_in :  IN  STD_LOGIC;
		pin_name1 :  IN  STD_LOGIC;
		pin_name2 :  IN  STD_LOGIC;
		pin_name5 :  OUT  STD_LOGIC
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	DFF_inst6 :  STD_LOGIC;


BEGIN 
pin_name5 <= DFF_inst6;

PROCESS(clk,pin_name2,pin_name1)
BEGIN
IF (pin_name2 = '0') THEN
	DFF_inst6 <= '0';
ELSIF (pin_name1 = '0') THEN
	DFF_inst6 <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	DFF_inst6 <= (sync_in OR DFF_inst6) AND NOT(reset OR reg_clear);
END IF;
END PROCESS;

END bdf_type;