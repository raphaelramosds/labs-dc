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

-- DATE "10/01/2022 12:28:00"

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

ENTITY 	mux4x1_behavioral_description IS
    PORT (
	I0 : IN std_logic;
	I1 : IN std_logic;
	I2 : IN std_logic;
	I3 : IN std_logic;
	s0_in : IN std_logic;
	s1_in : IN std_logic;
	S : OUT STD.STANDARD.bit
	);
END mux4x1_behavioral_description;

-- Design Ports Information
-- S	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0_in	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1_in	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux4x1_behavioral_description IS
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
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_s0_in : std_logic;
SIGNAL ww_s1_in : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \s1_in~input_o\ : std_logic;
SIGNAL \s0_in~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \u3|S~0_combout\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \u3|S~1_combout\ : std_logic;

BEGIN

ww_I0 <= I0;
ww_I1 <= I1;
ww_I2 <= I2;
ww_I3 <= I3;
ww_s0_in <= s0_in;
ww_s1_in <= s1_in;
S <= IEEE.STD_LOGIC_1164.TO_BIT(ww_S);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\S~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|S~1_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\I3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\s1_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1_in,
	o => \s1_in~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\s0_in~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0_in,
	o => \s0_in~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\I1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\I0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: LCCOMB_X11_Y1_N0
\u3|S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u3|S~0_combout\ = (\s1_in~input_o\ & ((\s0_in~input_o\) # ((\I1~input_o\)))) # (!\s1_in~input_o\ & (!\s0_in~input_o\ & ((\I0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s1_in~input_o\,
	datab => \s0_in~input_o\,
	datac => \I1~input_o\,
	datad => \I0~input_o\,
	combout => \u3|S~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\I2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: LCCOMB_X11_Y1_N2
\u3|S~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u3|S~1_combout\ = (\u3|S~0_combout\ & ((\I3~input_o\) # ((!\s0_in~input_o\)))) # (!\u3|S~0_combout\ & (((\I2~input_o\ & \s0_in~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I3~input_o\,
	datab => \u3|S~0_combout\,
	datac => \I2~input_o\,
	datad => \s0_in~input_o\,
	combout => \u3|S~1_combout\);

ww_S <= \S~output_o\;
END structure;


