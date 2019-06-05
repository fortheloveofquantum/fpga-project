-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/14/2019 16:52:16"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplexer IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	s1 : IN std_logic;
	s2 : IN std_logic;
	z : OUT std_logic
	);
END multiplexer;

-- Design Ports Information
-- z	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- c	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s1	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s2	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplexer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \d~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \s2~combout\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \s1~combout\ : std_logic;
SIGNAL \z~1_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_s1 <= s1;
ww_s2 <= s2;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_d,
	combout => \d~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s2,
	combout => \s2~combout\);

-- Location: LCCOMB_X49_Y10_N0
\z~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \z~0_combout\ = (\s1~combout\ & ((\s2~combout\ & (\d~combout\)) # (!\s2~combout\ & ((\b~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1~combout\,
	datab => \d~combout\,
	datac => \b~combout\,
	datad => \s2~combout\,
	combout => \z~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s1,
	combout => \s1~combout\);

-- Location: LCCOMB_X49_Y10_N18
\z~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \z~1_combout\ = (\z~0_combout\) # ((\a~combout\ & !\s1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~0_combout\,
	datac => \a~combout\,
	datad => \s1~combout\,
	combout => \z~1_combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \z~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\c~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_c);
END structure;


