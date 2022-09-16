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

-- DATE "09/04/2022 12:24:54"

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

ENTITY 	properties IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	i01 : OUT STD.STANDARD.bit;
	i02 : OUT STD.STANDARD.bit;
	i03 : OUT STD.STANDARD.bit;
	c11 : OUT STD.STANDARD.bit;
	c12 : OUT STD.STANDARD.bit;
	c21 : OUT STD.STANDARD.bit;
	c22 : OUT STD.STANDARD.bit;
	a11 : OUT STD.STANDARD.bit;
	a12 : OUT STD.STANDARD.bit;
	a21 : OUT STD.STANDARD.bit;
	a22 : OUT STD.STANDARD.bit;
	d11 : OUT STD.STANDARD.bit;
	d12 : OUT STD.STANDARD.bit;
	d21 : OUT STD.STANDARD.bit;
	d22 : OUT STD.STANDARD.bit;
	m11 : OUT STD.STANDARD.bit;
	m12 : OUT STD.STANDARD.bit;
	m21 : OUT STD.STANDARD.bit;
	m22 : OUT STD.STANDARD.bit
	);
END properties;

-- Design Ports Information
-- i01	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i02	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i03	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c11	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c12	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c21	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c22	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a11	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a12	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a21	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a22	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d11	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d12	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d21	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d22	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m11	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m12	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m21	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m22	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF properties IS
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
SIGNAL ww_i01 : std_logic;
SIGNAL ww_i02 : std_logic;
SIGNAL ww_i03 : std_logic;
SIGNAL ww_c11 : std_logic;
SIGNAL ww_c12 : std_logic;
SIGNAL ww_c21 : std_logic;
SIGNAL ww_c22 : std_logic;
SIGNAL ww_a11 : std_logic;
SIGNAL ww_a12 : std_logic;
SIGNAL ww_a21 : std_logic;
SIGNAL ww_a22 : std_logic;
SIGNAL ww_d11 : std_logic;
SIGNAL ww_d12 : std_logic;
SIGNAL ww_d21 : std_logic;
SIGNAL ww_d22 : std_logic;
SIGNAL ww_m11 : std_logic;
SIGNAL ww_m12 : std_logic;
SIGNAL ww_m21 : std_logic;
SIGNAL ww_m22 : std_logic;
SIGNAL \i01~output_o\ : std_logic;
SIGNAL \i02~output_o\ : std_logic;
SIGNAL \i03~output_o\ : std_logic;
SIGNAL \c11~output_o\ : std_logic;
SIGNAL \c12~output_o\ : std_logic;
SIGNAL \c21~output_o\ : std_logic;
SIGNAL \c22~output_o\ : std_logic;
SIGNAL \a11~output_o\ : std_logic;
SIGNAL \a12~output_o\ : std_logic;
SIGNAL \a21~output_o\ : std_logic;
SIGNAL \a22~output_o\ : std_logic;
SIGNAL \d11~output_o\ : std_logic;
SIGNAL \d12~output_o\ : std_logic;
SIGNAL \d21~output_o\ : std_logic;
SIGNAL \d22~output_o\ : std_logic;
SIGNAL \m11~output_o\ : std_logic;
SIGNAL \m12~output_o\ : std_logic;
SIGNAL \m21~output_o\ : std_logic;
SIGNAL \m22~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \c11~0_combout\ : std_logic;
SIGNAL \c21~0_combout\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \a12~0_combout\ : std_logic;
SIGNAL \a22~0_combout\ : std_logic;
SIGNAL \d11~0_combout\ : std_logic;
SIGNAL \d21~0_combout\ : std_logic;
SIGNAL \ALT_INV_a12~0_combout\ : std_logic;
SIGNAL \ALT_INV_c21~0_combout\ : std_logic;
SIGNAL \ALT_INV_c11~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
i01 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_i01);
i02 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_i02);
i03 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_i03);
c11 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c11);
c12 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c12);
c21 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c21);
c22 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_c22);
a11 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_a11);
a12 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_a12);
a21 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_a21);
a22 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_a22);
d11 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_d11);
d12 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_d12);
d21 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_d21);
d22 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_d22);
m11 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_m11);
m12 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_m12);
m21 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_m21);
m22 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_m22);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_a12~0_combout\ <= NOT \a12~0_combout\;
\ALT_INV_c21~0_combout\ <= NOT \c21~0_combout\;
\ALT_INV_c11~0_combout\ <= NOT \c11~0_combout\;

-- Location: IOOBUF_X24_Y0_N2
\i01~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~input_o\,
	devoe => ww_devoe,
	o => \i01~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\i02~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~input_o\,
	devoe => ww_devoe,
	o => \i02~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\i03~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~input_o\,
	devoe => ww_devoe,
	o => \i03~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\c11~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_c11~0_combout\,
	devoe => ww_devoe,
	o => \c11~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\c12~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_c11~0_combout\,
	devoe => ww_devoe,
	o => \c12~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\c21~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c21~0_combout\,
	devoe => ww_devoe,
	o => \c21~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\c22~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c21~0_combout\,
	devoe => ww_devoe,
	o => \c22~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\a11~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_a12~0_combout\,
	devoe => ww_devoe,
	o => \a11~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\a12~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_a12~0_combout\,
	devoe => ww_devoe,
	o => \a12~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\a21~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a22~0_combout\,
	devoe => ww_devoe,
	o => \a21~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\a22~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a22~0_combout\,
	devoe => ww_devoe,
	o => \a22~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\d11~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d11~0_combout\,
	devoe => ww_devoe,
	o => \d11~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\d12~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d11~0_combout\,
	devoe => ww_devoe,
	o => \d12~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\d21~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d21~0_combout\,
	devoe => ww_devoe,
	o => \d21~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\d22~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d21~0_combout\,
	devoe => ww_devoe,
	o => \d22~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\m11~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_c21~0_combout\,
	devoe => ww_devoe,
	o => \m11~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\m12~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_c21~0_combout\,
	devoe => ww_devoe,
	o => \m12~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\m21~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c11~0_combout\,
	devoe => ww_devoe,
	o => \m21~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\m22~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c11~0_combout\,
	devoe => ww_devoe,
	o => \m22~output_o\);

-- Location: IOIBUF_X20_Y0_N8
\a~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\b~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\c11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c11~0_combout\ = (!\b~input_o\ & !\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \a~input_o\,
	combout => \c11~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\c21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c21~0_combout\ = (\b~input_o\ & \a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \a~input_o\,
	combout => \c21~0_combout\);

-- Location: IOIBUF_X8_Y0_N1
\c~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LCCOMB_X15_Y1_N4
\a12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a12~0_combout\ = (!\b~input_o\ & (!\c~input_o\ & !\a~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \c~input_o\,
	datac => \a~input_o\,
	combout => \a12~0_combout\);

-- Location: LCCOMB_X15_Y1_N6
\a22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \a22~0_combout\ = (\b~input_o\ & (\c~input_o\ & \a~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \c~input_o\,
	datac => \a~input_o\,
	combout => \a22~0_combout\);

-- Location: LCCOMB_X15_Y1_N0
\d11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d11~0_combout\ = (\a~input_o\ & ((\b~input_o\) # (\c~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \c~input_o\,
	datac => \a~input_o\,
	combout => \d11~0_combout\);

-- Location: LCCOMB_X15_Y1_N10
\d21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \d21~0_combout\ = (\a~input_o\) # ((\b~input_o\ & \c~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \c~input_o\,
	datac => \a~input_o\,
	combout => \d21~0_combout\);

ww_i01 <= \i01~output_o\;

ww_i02 <= \i02~output_o\;

ww_i03 <= \i03~output_o\;

ww_c11 <= \c11~output_o\;

ww_c12 <= \c12~output_o\;

ww_c21 <= \c21~output_o\;

ww_c22 <= \c22~output_o\;

ww_a11 <= \a11~output_o\;

ww_a12 <= \a12~output_o\;

ww_a21 <= \a21~output_o\;

ww_a22 <= \a22~output_o\;

ww_d11 <= \d11~output_o\;

ww_d12 <= \d12~output_o\;

ww_d21 <= \d21~output_o\;

ww_d22 <= \d22~output_o\;

ww_m11 <= \m11~output_o\;

ww_m12 <= \m12~output_o\;

ww_m21 <= \m21~output_o\;

ww_m22 <= \m22~output_o\;
END structure;


