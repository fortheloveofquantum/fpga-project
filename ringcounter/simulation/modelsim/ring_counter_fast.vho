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

-- DATE "05/19/2019 13:22:16"

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

ENTITY 	ring_counter IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END ring_counter;

-- Design Ports Information
-- q[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ring_counter IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \q_tmp[1]~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \q_tmp[2]~feeder_combout\ : std_logic;
SIGNAL \q_tmp[3]~feeder_combout\ : std_logic;
SIGNAL \q_tmp[0]~0_combout\ : std_logic;
SIGNAL q_tmp : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_q_tmp : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~clk_delay_ctrl_clkout\);
ALT_INV_q_tmp(0) <= NOT q_tmp(0);

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

-- Location: LCCOMB_X49_Y8_N2
\q_tmp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \q_tmp[1]~1_combout\ = !q_tmp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_tmp(0),
	combout => \q_tmp[1]~1_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X49_Y8_N3
\q_tmp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q_tmp[1]~1_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q_tmp(1));

-- Location: LCCOMB_X49_Y8_N0
\q_tmp[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \q_tmp[2]~feeder_combout\ = q_tmp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_tmp(1),
	combout => \q_tmp[2]~feeder_combout\);

-- Location: LCFF_X49_Y8_N1
\q_tmp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q_tmp[2]~feeder_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q_tmp(2));

-- Location: LCCOMB_X49_Y8_N18
\q_tmp[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \q_tmp[3]~feeder_combout\ = q_tmp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_tmp(2),
	combout => \q_tmp[3]~feeder_combout\);

-- Location: LCFF_X49_Y8_N19
\q_tmp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q_tmp[3]~feeder_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q_tmp(3));

-- Location: LCCOMB_X49_Y8_N12
\q_tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q_tmp[0]~0_combout\ = !q_tmp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => q_tmp(3),
	combout => \q_tmp[0]~0_combout\);

-- Location: LCFF_X49_Y8_N13
\q_tmp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q_tmp[0]~0_combout\,
	aclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => q_tmp(0));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	datain => ALT_INV_q_tmp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	datain => q_tmp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	datain => q_tmp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	datain => q_tmp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));
END structure;


