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

-- DATE "11/28/2022 21:14:09"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sumador_completo IS
    PORT (
	in_a : IN std_logic;
	in_b : IN std_logic;
	in_cin : IN std_logic;
	clk : IN std_logic;
	o_f : OUT std_logic;
	o_cout : OUT std_logic
	);
END sumador_completo;

-- Design Ports Information
-- o_f	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_cout	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_a	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_b	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_cin	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in_a : std_logic;
SIGNAL ww_in_b : std_logic;
SIGNAL ww_in_cin : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_o_f : std_logic;
SIGNAL ww_o_cout : std_logic;
SIGNAL D2_aQ_aq : std_logic;
SIGNAL in_b_ainput_o : std_logic;
SIGNAL D2_aQ_afeeder_combout : std_logic;
SIGNAL o_f_aoutput_o : std_logic;
SIGNAL o_cout_aoutput_o : std_logic;
SIGNAL clk_ainput_o : std_logic;
SIGNAL in_a_ainput_o : std_logic;
SIGNAL D1_aQ_aq : std_logic;
SIGNAL in_cin_ainput_o : std_logic;
SIGNAL D3_aQ_afeeder_combout : std_logic;
SIGNAL D3_aQ_aq : std_logic;
SIGNAL f_a0_combout : std_logic;
SIGNAL D5_aQ_aq : std_logic;
SIGNAL cout_a0_combout : std_logic;
SIGNAL D4_aQ_aq : std_logic;

BEGIN

ww_in_a <= in_a;
ww_in_b <= in_b;
ww_in_cin <= in_cin;
ww_clk <= clk;
o_f <= ww_o_f;
o_cout <= ww_o_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: FF_X57_Y1_N7
D2_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainput_o,
	d => D2_aQ_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D2_aQ_aq);

-- Location: IOIBUF_X81_Y0_N22
in_b_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_b,
	o => in_b_ainput_o);

-- Location: LCCOMB_X57_Y1_N6
D2_aQ_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- D2_aQ_afeeder_combout = in_b_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => in_b_ainput_o,
	combout => D2_aQ_afeeder_combout);

-- Location: IOOBUF_X72_Y0_N9
o_f_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D5_aQ_aq,
	devoe => ww_devoe,
	o => o_f_aoutput_o);

-- Location: IOOBUF_X83_Y0_N16
o_cout_aoutput : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => D4_aQ_aq,
	devoe => ww_devoe,
	o => o_cout_aoutput_o);

-- Location: IOIBUF_X56_Y0_N22
clk_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => clk_ainput_o);

-- Location: IOIBUF_X85_Y0_N8
in_a_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_a,
	o => in_a_ainput_o);

-- Location: FF_X57_Y1_N9
D1_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainput_o,
	asdata => in_a_ainput_o,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D1_aQ_aq);

-- Location: IOIBUF_X94_Y0_N8
in_cin_ainput : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_cin,
	o => in_cin_ainput_o);

-- Location: LCCOMB_X57_Y1_N0
D3_aQ_afeeder : cycloneiii_lcell_comb
-- Equation(s):
-- D3_aQ_afeeder_combout = in_cin_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => in_cin_ainput_o,
	combout => D3_aQ_afeeder_combout);

-- Location: FF_X57_Y1_N1
D3_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainput_o,
	d => D3_aQ_afeeder_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D3_aQ_aq);

-- Location: LCCOMB_X57_Y1_N12
f_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- f_a0_combout = D2_aQ_aq $ (D1_aQ_aq $ (D3_aQ_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D2_aQ_aq,
	datac => D1_aQ_aq,
	datad => D3_aQ_aq,
	combout => f_a0_combout);

-- Location: FF_X57_Y1_N13
D5_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainput_o,
	d => f_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D5_aQ_aq);

-- Location: LCCOMB_X57_Y1_N30
cout_a0 : cycloneiii_lcell_comb
-- Equation(s):
-- cout_a0_combout = (D2_aQ_aq & ((D1_aQ_aq) # (D3_aQ_aq))) # (!D2_aQ_aq & (D1_aQ_aq & D3_aQ_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D2_aQ_aq,
	datac => D1_aQ_aq,
	datad => D3_aQ_aq,
	combout => cout_a0_combout);

-- Location: FF_X57_Y1_N31
D4_aQ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainput_o,
	d => cout_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => D4_aQ_aq);

ww_o_f <= o_f_aoutput_o;

ww_o_cout <= o_cout_aoutput_o;
END structure;


