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

-- DATE "04/14/2019 17:28:55"

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

ENTITY 	sr_ff IS
    PORT (
	s : IN std_logic;
	r : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic;
	q_bar : OUT std_logic
	);
END sr_ff;

-- Design Ports Information
-- q	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q_bar	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sr_ff IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_q_bar : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \s~combout\ : std_logic;
SIGNAL \r~combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \tmp~regout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \tmp~en_regout\ : std_logic;
SIGNAL \tmp~1_combout\ : std_logic;
SIGNAL \ALT_INV_tmp~1_combout\ : std_logic;

BEGIN

ww_s <= s;
ww_r <= r;
ww_clk <= clk;
q <= ww_q;
q_bar <= ww_q_bar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~clk_delay_ctrl_clkout\);
\ALT_INV_tmp~1_combout\ <= NOT \tmp~1_combout\;

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

-- Location: CLKDELAYCTRL_G10
\clk~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \clk~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G10
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s~I\ : cycloneii_io
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
	padio => ww_s,
	combout => \s~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r~I\ : cycloneii_io
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
	padio => ww_r,
	combout => \r~combout\);

-- Location: LCCOMB_X49_Y10_N0
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\s~combout\) # (!\r~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datac => \r~combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X49_Y10_N6
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\s~combout\) # (\r~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datac => \r~combout\,
	combout => \process_0~1_combout\);

-- Location: LCFF_X49_Y10_N1
tmp : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \process_0~0_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tmp~regout\);

-- Location: LCCOMB_X49_Y10_N18
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\r~combout\) # (!\s~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s~combout\,
	datac => \r~combout\,
	combout => \process_0~2_combout\);

-- Location: LCFF_X49_Y10_N19
\tmp~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \process_0~2_combout\,
	ena => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tmp~en_regout\);

-- Location: LCCOMB_X49_Y10_N12
\tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~1_combout\ = (\tmp~regout\) # (!\tmp~en_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tmp~regout\,
	datad => \tmp~en_regout\,
	combout => \tmp~1_combout\);

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
	oe => \tmp~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
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
	datain => \ALT_INV_tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q_bar);
END structure;


