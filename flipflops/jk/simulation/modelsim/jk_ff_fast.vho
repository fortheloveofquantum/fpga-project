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

-- DATE "04/14/2019 17:26:29"

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

ENTITY 	jk_ff IS
    PORT (
	j : IN std_logic;
	k : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic;
	q_bar : OUT std_logic
	);
END jk_ff;

-- Design Ports Information
-- q	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q_bar	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- j	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- k	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF jk_ff IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_j : std_logic;
SIGNAL ww_k : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_q_bar : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \j~combout\ : std_logic;
SIGNAL \k~combout\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~regout\ : std_logic;
SIGNAL \ALT_INV_tmp~regout\ : std_logic;

BEGIN

ww_j <= j;
ww_k <= k;
ww_clk <= clk;
q <= ww_q;
q_bar <= ww_q_bar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_tmp~regout\ <= NOT \tmp~regout\;

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\j~I\ : cycloneii_io
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
	padio => ww_j,
	combout => \j~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\k~I\ : cycloneii_io
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
	padio => ww_k,
	combout => \k~combout\);

-- Location: LCCOMB_X27_Y23_N0
\tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = (\tmp~regout\ & ((!\k~combout\))) # (!\tmp~regout\ & (\j~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \j~combout\,
	datac => \tmp~regout\,
	datad => \k~combout\,
	combout => \tmp~0_combout\);

-- Location: LCFF_X27_Y23_N1
tmp : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tmp~regout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q~I\ : cycloneii_io
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
	datain => \tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q_bar~I\ : cycloneii_io
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
	datain => \ALT_INV_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q_bar);
END structure;


