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

-- DATE "05/20/2019 11:20:27"

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

ENTITY 	shiftreg IS
    PORT (
	clk : IN std_logic;
	clear : IN std_logic;
	d_in : IN std_logic;
	d_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END shiftreg;

-- Design Ports Information
-- d_out[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_out[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d_in	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clear	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF shiftreg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_d_in : std_logic;
SIGNAL ww_d_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \d_in~combout\ : std_logic;
SIGNAL \reg[0]~feeder_combout\ : std_logic;
SIGNAL \clear~combout\ : std_logic;
SIGNAL \reg[1]~feeder_combout\ : std_logic;
SIGNAL \reg[2]~feeder_combout\ : std_logic;
SIGNAL \reg[3]~feeder_combout\ : std_logic;
SIGNAL reg : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clear~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clear <= clear;
ww_d_in <= d_in;
d_out <= ww_d_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clear~combout\ <= NOT \clear~combout\;

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d_in~I\ : cycloneii_io
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
	padio => ww_d_in,
	combout => \d_in~combout\);

-- Location: LCCOMB_X49_Y10_N12
\reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[0]~feeder_combout\ = \d_in~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in~combout\,
	combout => \reg[0]~feeder_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clear~I\ : cycloneii_io
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
	padio => ww_clear,
	combout => \clear~combout\);

-- Location: LCFF_X49_Y10_N13
\reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \reg[0]~feeder_combout\,
	ena => \ALT_INV_clear~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg(0));

-- Location: LCCOMB_X49_Y10_N2
\reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[1]~feeder_combout\ = reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg(0),
	combout => \reg[1]~feeder_combout\);

-- Location: LCFF_X49_Y10_N3
\reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \reg[1]~feeder_combout\,
	ena => \ALT_INV_clear~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg(1));

-- Location: LCCOMB_X49_Y10_N0
\reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[2]~feeder_combout\ = reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg(1),
	combout => \reg[2]~feeder_combout\);

-- Location: LCFF_X49_Y10_N1
\reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \reg[2]~feeder_combout\,
	ena => \ALT_INV_clear~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg(2));

-- Location: LCCOMB_X49_Y10_N18
\reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg[3]~feeder_combout\ = reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg(2),
	combout => \reg[3]~feeder_combout\);

-- Location: LCFF_X49_Y10_N19
\reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \reg[3]~feeder_combout\,
	ena => \ALT_INV_clear~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg(3));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[0]~I\ : cycloneii_io
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
	datain => reg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[1]~I\ : cycloneii_io
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
	datain => reg(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[2]~I\ : cycloneii_io
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
	datain => reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\d_out[3]~I\ : cycloneii_io
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
	datain => reg(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_d_out(3));
END structure;


