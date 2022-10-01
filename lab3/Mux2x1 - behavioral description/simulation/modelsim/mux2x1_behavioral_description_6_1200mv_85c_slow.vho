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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/01/2022 11:35:53"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	mux2x1_behavioral_description IS
    PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	s0 : IN std_logic;
	d : OUT STD.STANDARD.bit
	);
END mux2x1_behavioral_description;

-- Design Ports Information
-- d	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux2x1_behavioral_description IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;

BEGIN

ww_I0 <= I0;
ww_I1 <= I1;
ww_s0 <= s0;
d <= IEEE.STD_LOGIC_1164.TO_BIT(ww_d);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\d~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d~0_combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\s0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X12_Y18_N0
\d~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d~0_combout\ = (\s0~input_o\ & (\I1~input_o\)) # (!\s0~input_o\ & ((\I0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I1~input_o\,
	datac => \s0~input_o\,
	datad => \I0~input_o\,
	combout => \d~0_combout\);

ww_d <= \d~output_o\;
END structure;


