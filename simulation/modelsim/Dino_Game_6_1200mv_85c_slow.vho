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

-- DATE "09/07/2022 13:02:20"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	Main IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	VGA_RED : OUT std_logic;
	VGA_GREEN : OUT std_logic;
	VGA_BLUE : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	KBclk : IN std_logic;
	KBin : IN std_logic;
	q : OUT std_logic_vector(0 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- VGA_RED	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GREEN	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLUE	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBclk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KBin	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_VGA_RED : std_logic;
SIGNAL ww_VGA_GREEN : std_logic;
SIGNAL ww_VGA_BLUE : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_KBclk : std_logic;
SIGNAL ww_KBin : std_logic;
SIGNAL ww_q : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U4|delay_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \U1|U3|Add0~0_combout\ : std_logic;
SIGNAL \U1|U3|Add0~18_combout\ : std_logic;
SIGNAL \U1|U3|Add0~22_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~24_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~25\ : std_logic;
SIGNAL \U1|U3|clk_div[2]~26_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[2]~27\ : std_logic;
SIGNAL \U1|U3|clk_div[3]~28_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[3]~29\ : std_logic;
SIGNAL \U1|U3|clk_div[4]~30_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[4]~31\ : std_logic;
SIGNAL \U1|U3|clk_div[5]~32_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[5]~33\ : std_logic;
SIGNAL \U1|U3|clk_div[6]~34_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[6]~35\ : std_logic;
SIGNAL \U1|U3|clk_div[7]~36_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[7]~37\ : std_logic;
SIGNAL \U1|U3|clk_div[8]~38_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[8]~39\ : std_logic;
SIGNAL \U1|U3|clk_div[9]~40_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[9]~41\ : std_logic;
SIGNAL \U1|U3|clk_div[10]~42_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[10]~43\ : std_logic;
SIGNAL \U1|U3|clk_div[11]~44_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[11]~45\ : std_logic;
SIGNAL \U1|U3|clk_div[12]~46_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[12]~47\ : std_logic;
SIGNAL \U1|U3|clk_div[13]~48_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[13]~49\ : std_logic;
SIGNAL \U1|U3|clk_div[14]~50_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[14]~51\ : std_logic;
SIGNAL \U1|U3|clk_div[15]~52_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[15]~53\ : std_logic;
SIGNAL \U1|U3|clk_div[16]~54_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[16]~55\ : std_logic;
SIGNAL \U1|U3|clk_div[17]~56_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[17]~57\ : std_logic;
SIGNAL \U1|U3|clk_div[18]~58_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[18]~59\ : std_logic;
SIGNAL \U1|U3|clk_div[19]~60_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[19]~61\ : std_logic;
SIGNAL \U1|U3|clk_div[20]~62_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[20]~63\ : std_logic;
SIGNAL \U1|U3|clk_div[21]~64_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[21]~65\ : std_logic;
SIGNAL \U1|U3|clk_div[22]~66_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[22]~67\ : std_logic;
SIGNAL \U1|U3|clk_div[23]~68_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[23]~69\ : std_logic;
SIGNAL \U1|U3|clk_div[24]~70_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \always2~8_combout\ : std_logic;
SIGNAL \always2~9_combout\ : std_logic;
SIGNAL \ver_reg~3_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \U1|U3|DinoImgFlag~q\ : std_logic;
SIGNAL \KBclk~input_o\ : std_logic;
SIGNAL \U1|U4|delay_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|U4|delay_clk[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|delay_clk[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_RED~output_o\ : std_logic;
SIGNAL \VGA_GREEN~output_o\ : std_logic;
SIGNAL \VGA_BLUE~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \hor_reg~0_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \hor_reg~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \ver_reg~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ver_reg~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \ver_reg~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \VGA_RED~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \always2~7_combout\ : std_logic;
SIGNAL \U1|U3|DinoPosHorTo[0]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \KBin~input_o\ : std_logic;
SIGNAL \U1|U4|KBdata[32]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[31]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[30]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[29]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[28]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[27]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[26]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[25]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[24]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[23]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[22]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[21]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[20]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[19]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[18]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[17]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[16]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[15]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[14]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[13]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[12]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[11]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[10]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[8]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U4|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U4|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U4|flag~q\ : std_logic;
SIGNAL \always2~3_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \always2~4_combout\ : std_logic;
SIGNAL \U1|U3|DinoPosHorFrom[5]~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \always2~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \always2~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \always2~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \ver_reg~1_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \always2~6_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \red~q\ : std_logic;
SIGNAL \VGA_RED~1_combout\ : std_logic;
SIGNAL \blue~q\ : std_logic;
SIGNAL \VGA_GREEN~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \hor_sync~0_combout\ : std_logic;
SIGNAL \hor_sync~q\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \ver_sync~0_combout\ : std_logic;
SIGNAL \ver_sync~q\ : std_logic;
SIGNAL \U1|U3|Add0~1\ : std_logic;
SIGNAL \U1|U3|Add0~3\ : std_logic;
SIGNAL \U1|U3|Add0~5\ : std_logic;
SIGNAL \U1|U3|Add0~7\ : std_logic;
SIGNAL \U1|U3|Add0~8_combout\ : std_logic;
SIGNAL \always2~10_combout\ : std_logic;
SIGNAL \U1|U3|address[4]~4_combout\ : std_logic;
SIGNAL \U1|U3|Add0~9\ : std_logic;
SIGNAL \U1|U3|Add0~10_combout\ : std_logic;
SIGNAL \U1|U3|address[5]~5_combout\ : std_logic;
SIGNAL \U1|U3|Add0~11\ : std_logic;
SIGNAL \U1|U3|Add0~12_combout\ : std_logic;
SIGNAL \U1|U3|address[6]~6_combout\ : std_logic;
SIGNAL \U1|U3|Add0~13\ : std_logic;
SIGNAL \U1|U3|Add0~14_combout\ : std_logic;
SIGNAL \U1|U3|address[7]~7_combout\ : std_logic;
SIGNAL \U1|U3|Add0~15\ : std_logic;
SIGNAL \U1|U3|Add0~16_combout\ : std_logic;
SIGNAL \U1|U3|address[8]~8_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U3|Add0~6_combout\ : std_logic;
SIGNAL \U1|U3|address[3]~3_combout\ : std_logic;
SIGNAL \U1|U3|Add0~2_combout\ : std_logic;
SIGNAL \U1|U3|address[1]~1_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U3|Add0~17\ : std_logic;
SIGNAL \U1|U3|Add0~19\ : std_logic;
SIGNAL \U1|U3|Add0~20_combout\ : std_logic;
SIGNAL \U1|U3|address[10]~10_combout\ : std_logic;
SIGNAL \U1|U3|address[9]~9_combout\ : std_logic;
SIGNAL \U1|U3|Add0~21\ : std_logic;
SIGNAL \U1|U3|Add0~23\ : std_logic;
SIGNAL \U1|U3|Add0~24_combout\ : std_logic;
SIGNAL \U1|U3|address[12]~12_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U3|address[0]~0_combout\ : std_logic;
SIGNAL \U1|U3|Add0~4_combout\ : std_logic;
SIGNAL \U1|U3|address[2]~2_combout\ : std_logic;
SIGNAL \U1|U3|address[11]~11_combout\ : std_logic;
SIGNAL \U1|U3|q~0_combout\ : std_logic;
SIGNAL \U1|U3|q~q\ : std_logic;
SIGNAL \U1|U3|U6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U3|U7|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U4|delay_clk\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U4|KBdata\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \U1|U3|DinoPosHorFrom\ : std_logic_vector(12 DOWNTO 0);
SIGNAL hor_reg : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U3|clk_div\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U1|U3|address\ : std_logic_vector(12 DOWNTO 0);
SIGNAL ver_reg : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|U3|DinoPosHorTo\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_ver_sync~q\ : std_logic;
SIGNAL \ALT_INV_hor_sync~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
VGA_RED <= ww_VGA_RED;
VGA_GREEN <= ww_VGA_GREEN;
VGA_BLUE <= ww_VGA_BLUE;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_KBclk <= KBclk;
ww_KBin <= KBin;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|U3|address\(12) & \U1|U3|address\(11) & \U1|U3|address\(10) & \U1|U3|address\(9) & \U1|U3|address\(8) & \U1|U3|address\(7) & \U1|U3|address\(6) & 
\U1|U3|address\(5) & \U1|U3|address\(4) & \U1|U3|address\(3) & \U1|U3|address\(2) & \U1|U3|address\(1) & \U1|U3|address\(0));

\U1|U3|U6|altsyncram_component|auto_generated|q_a\(0) <= \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|U3|address\(12) & \U1|U3|address\(11) & \U1|U3|address\(10) & \U1|U3|address\(9) & \U1|U3|address\(8) & \U1|U3|address\(7) & \U1|U3|address\(6) & 
\U1|U3|address\(5) & \U1|U3|address\(4) & \U1|U3|address\(3) & \U1|U3|address\(2) & \U1|U3|address\(1) & \U1|U3|address\(0));

\U1|U3|U7|altsyncram_component|auto_generated|q_a\(0) <= \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U1|U4|delay_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|U4|delay_clk\(1));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ver_sync~q\ <= NOT \ver_sync~q\;
\ALT_INV_hor_sync~q\ <= NOT \hor_sync~q\;

-- Location: LCCOMB_X26_Y16_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (ver_reg(8) & (\Add0~15\ $ (GND))) # (!ver_reg(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((ver_reg(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X26_Y16_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (ver_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ver_reg(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: FF_X24_Y15_N23
\U1|U3|clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[24]~70_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(24));

-- Location: LCCOMB_X32_Y16_N2
\U1|U3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~0_combout\ = \U1|U3|address\(0) $ (VCC)
-- \U1|U3|Add0~1\ = CARRY(\U1|U3|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(0),
	datad => VCC,
	combout => \U1|U3|Add0~0_combout\,
	cout => \U1|U3|Add0~1\);

-- Location: LCCOMB_X32_Y16_N20
\U1|U3|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~18_combout\ = (\U1|U3|address\(9) & (!\U1|U3|Add0~17\)) # (!\U1|U3|address\(9) & ((\U1|U3|Add0~17\) # (GND)))
-- \U1|U3|Add0~19\ = CARRY((!\U1|U3|Add0~17\) # (!\U1|U3|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(9),
	datad => VCC,
	cin => \U1|U3|Add0~17\,
	combout => \U1|U3|Add0~18_combout\,
	cout => \U1|U3|Add0~19\);

-- Location: LCCOMB_X32_Y16_N24
\U1|U3|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~22_combout\ = (\U1|U3|address\(11) & (!\U1|U3|Add0~21\)) # (!\U1|U3|address\(11) & ((\U1|U3|Add0~21\) # (GND)))
-- \U1|U3|Add0~23\ = CARRY((!\U1|U3|Add0~21\) # (!\U1|U3|address\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(11),
	datad => VCC,
	cin => \U1|U3|Add0~21\,
	combout => \U1|U3|Add0~22_combout\,
	cout => \U1|U3|Add0~23\);

-- Location: FF_X24_Y15_N21
\U1|U3|clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[23]~68_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(23));

-- Location: FF_X24_Y15_N19
\U1|U3|clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[22]~66_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(22));

-- Location: FF_X24_Y15_N17
\U1|U3|clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[21]~64_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(21));

-- Location: FF_X24_Y15_N15
\U1|U3|clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[20]~62_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(20));

-- Location: FF_X24_Y15_N13
\U1|U3|clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[19]~60_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(19));

-- Location: FF_X24_Y15_N11
\U1|U3|clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[18]~58_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(18));

-- Location: FF_X24_Y15_N9
\U1|U3|clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[17]~56_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(17));

-- Location: FF_X24_Y15_N7
\U1|U3|clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[16]~54_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(16));

-- Location: FF_X24_Y15_N5
\U1|U3|clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[15]~52_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(15));

-- Location: FF_X24_Y15_N3
\U1|U3|clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[14]~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(14));

-- Location: FF_X24_Y15_N1
\U1|U3|clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[13]~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(13));

-- Location: FF_X24_Y16_N31
\U1|U3|clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[12]~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(12));

-- Location: FF_X24_Y16_N29
\U1|U3|clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[11]~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(11));

-- Location: FF_X24_Y16_N27
\U1|U3|clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[10]~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(10));

-- Location: FF_X24_Y16_N25
\U1|U3|clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[9]~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(9));

-- Location: FF_X24_Y16_N23
\U1|U3|clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[8]~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(8));

-- Location: FF_X24_Y16_N21
\U1|U3|clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[7]~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(7));

-- Location: FF_X24_Y16_N19
\U1|U3|clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[6]~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(6));

-- Location: FF_X24_Y16_N17
\U1|U3|clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[5]~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(5));

-- Location: FF_X24_Y16_N15
\U1|U3|clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[4]~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(4));

-- Location: FF_X24_Y16_N13
\U1|U3|clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[3]~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(3));

-- Location: FF_X24_Y16_N11
\U1|U3|clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[2]~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(2));

-- Location: FF_X24_Y16_N9
\U1|U3|clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[1]~24_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(1));

-- Location: LCCOMB_X24_Y16_N8
\U1|U3|clk_div[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~24_combout\ = (hor_reg(0) & (\U1|U3|clk_div\(1) $ (VCC))) # (!hor_reg(0) & (\U1|U3|clk_div\(1) & VCC))
-- \U1|U3|clk_div[1]~25\ = CARRY((hor_reg(0) & \U1|U3|clk_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(0),
	datab => \U1|U3|clk_div\(1),
	datad => VCC,
	combout => \U1|U3|clk_div[1]~24_combout\,
	cout => \U1|U3|clk_div[1]~25\);

-- Location: LCCOMB_X24_Y16_N10
\U1|U3|clk_div[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[2]~26_combout\ = (\U1|U3|clk_div\(2) & (!\U1|U3|clk_div[1]~25\)) # (!\U1|U3|clk_div\(2) & ((\U1|U3|clk_div[1]~25\) # (GND)))
-- \U1|U3|clk_div[2]~27\ = CARRY((!\U1|U3|clk_div[1]~25\) # (!\U1|U3|clk_div\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(2),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~25\,
	combout => \U1|U3|clk_div[2]~26_combout\,
	cout => \U1|U3|clk_div[2]~27\);

-- Location: LCCOMB_X24_Y16_N12
\U1|U3|clk_div[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[3]~28_combout\ = (\U1|U3|clk_div\(3) & (\U1|U3|clk_div[2]~27\ $ (GND))) # (!\U1|U3|clk_div\(3) & (!\U1|U3|clk_div[2]~27\ & VCC))
-- \U1|U3|clk_div[3]~29\ = CARRY((\U1|U3|clk_div\(3) & !\U1|U3|clk_div[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(3),
	datad => VCC,
	cin => \U1|U3|clk_div[2]~27\,
	combout => \U1|U3|clk_div[3]~28_combout\,
	cout => \U1|U3|clk_div[3]~29\);

-- Location: LCCOMB_X24_Y16_N14
\U1|U3|clk_div[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[4]~30_combout\ = (\U1|U3|clk_div\(4) & (!\U1|U3|clk_div[3]~29\)) # (!\U1|U3|clk_div\(4) & ((\U1|U3|clk_div[3]~29\) # (GND)))
-- \U1|U3|clk_div[4]~31\ = CARRY((!\U1|U3|clk_div[3]~29\) # (!\U1|U3|clk_div\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(4),
	datad => VCC,
	cin => \U1|U3|clk_div[3]~29\,
	combout => \U1|U3|clk_div[4]~30_combout\,
	cout => \U1|U3|clk_div[4]~31\);

-- Location: LCCOMB_X24_Y16_N16
\U1|U3|clk_div[5]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[5]~32_combout\ = (\U1|U3|clk_div\(5) & (\U1|U3|clk_div[4]~31\ $ (GND))) # (!\U1|U3|clk_div\(5) & (!\U1|U3|clk_div[4]~31\ & VCC))
-- \U1|U3|clk_div[5]~33\ = CARRY((\U1|U3|clk_div\(5) & !\U1|U3|clk_div[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(5),
	datad => VCC,
	cin => \U1|U3|clk_div[4]~31\,
	combout => \U1|U3|clk_div[5]~32_combout\,
	cout => \U1|U3|clk_div[5]~33\);

-- Location: LCCOMB_X24_Y16_N18
\U1|U3|clk_div[6]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[6]~34_combout\ = (\U1|U3|clk_div\(6) & (!\U1|U3|clk_div[5]~33\)) # (!\U1|U3|clk_div\(6) & ((\U1|U3|clk_div[5]~33\) # (GND)))
-- \U1|U3|clk_div[6]~35\ = CARRY((!\U1|U3|clk_div[5]~33\) # (!\U1|U3|clk_div\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(6),
	datad => VCC,
	cin => \U1|U3|clk_div[5]~33\,
	combout => \U1|U3|clk_div[6]~34_combout\,
	cout => \U1|U3|clk_div[6]~35\);

-- Location: LCCOMB_X24_Y16_N20
\U1|U3|clk_div[7]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[7]~36_combout\ = (\U1|U3|clk_div\(7) & (\U1|U3|clk_div[6]~35\ $ (GND))) # (!\U1|U3|clk_div\(7) & (!\U1|U3|clk_div[6]~35\ & VCC))
-- \U1|U3|clk_div[7]~37\ = CARRY((\U1|U3|clk_div\(7) & !\U1|U3|clk_div[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(7),
	datad => VCC,
	cin => \U1|U3|clk_div[6]~35\,
	combout => \U1|U3|clk_div[7]~36_combout\,
	cout => \U1|U3|clk_div[7]~37\);

-- Location: LCCOMB_X24_Y16_N22
\U1|U3|clk_div[8]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[8]~38_combout\ = (\U1|U3|clk_div\(8) & (!\U1|U3|clk_div[7]~37\)) # (!\U1|U3|clk_div\(8) & ((\U1|U3|clk_div[7]~37\) # (GND)))
-- \U1|U3|clk_div[8]~39\ = CARRY((!\U1|U3|clk_div[7]~37\) # (!\U1|U3|clk_div\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(8),
	datad => VCC,
	cin => \U1|U3|clk_div[7]~37\,
	combout => \U1|U3|clk_div[8]~38_combout\,
	cout => \U1|U3|clk_div[8]~39\);

-- Location: LCCOMB_X24_Y16_N24
\U1|U3|clk_div[9]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[9]~40_combout\ = (\U1|U3|clk_div\(9) & (\U1|U3|clk_div[8]~39\ $ (GND))) # (!\U1|U3|clk_div\(9) & (!\U1|U3|clk_div[8]~39\ & VCC))
-- \U1|U3|clk_div[9]~41\ = CARRY((\U1|U3|clk_div\(9) & !\U1|U3|clk_div[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(9),
	datad => VCC,
	cin => \U1|U3|clk_div[8]~39\,
	combout => \U1|U3|clk_div[9]~40_combout\,
	cout => \U1|U3|clk_div[9]~41\);

-- Location: LCCOMB_X24_Y16_N26
\U1|U3|clk_div[10]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[10]~42_combout\ = (\U1|U3|clk_div\(10) & (!\U1|U3|clk_div[9]~41\)) # (!\U1|U3|clk_div\(10) & ((\U1|U3|clk_div[9]~41\) # (GND)))
-- \U1|U3|clk_div[10]~43\ = CARRY((!\U1|U3|clk_div[9]~41\) # (!\U1|U3|clk_div\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(10),
	datad => VCC,
	cin => \U1|U3|clk_div[9]~41\,
	combout => \U1|U3|clk_div[10]~42_combout\,
	cout => \U1|U3|clk_div[10]~43\);

-- Location: LCCOMB_X24_Y16_N28
\U1|U3|clk_div[11]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[11]~44_combout\ = (\U1|U3|clk_div\(11) & (\U1|U3|clk_div[10]~43\ $ (GND))) # (!\U1|U3|clk_div\(11) & (!\U1|U3|clk_div[10]~43\ & VCC))
-- \U1|U3|clk_div[11]~45\ = CARRY((\U1|U3|clk_div\(11) & !\U1|U3|clk_div[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(11),
	datad => VCC,
	cin => \U1|U3|clk_div[10]~43\,
	combout => \U1|U3|clk_div[11]~44_combout\,
	cout => \U1|U3|clk_div[11]~45\);

-- Location: LCCOMB_X24_Y16_N30
\U1|U3|clk_div[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[12]~46_combout\ = (\U1|U3|clk_div\(12) & (!\U1|U3|clk_div[11]~45\)) # (!\U1|U3|clk_div\(12) & ((\U1|U3|clk_div[11]~45\) # (GND)))
-- \U1|U3|clk_div[12]~47\ = CARRY((!\U1|U3|clk_div[11]~45\) # (!\U1|U3|clk_div\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(12),
	datad => VCC,
	cin => \U1|U3|clk_div[11]~45\,
	combout => \U1|U3|clk_div[12]~46_combout\,
	cout => \U1|U3|clk_div[12]~47\);

-- Location: LCCOMB_X24_Y15_N0
\U1|U3|clk_div[13]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[13]~48_combout\ = (\U1|U3|clk_div\(13) & (\U1|U3|clk_div[12]~47\ $ (GND))) # (!\U1|U3|clk_div\(13) & (!\U1|U3|clk_div[12]~47\ & VCC))
-- \U1|U3|clk_div[13]~49\ = CARRY((\U1|U3|clk_div\(13) & !\U1|U3|clk_div[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(13),
	datad => VCC,
	cin => \U1|U3|clk_div[12]~47\,
	combout => \U1|U3|clk_div[13]~48_combout\,
	cout => \U1|U3|clk_div[13]~49\);

-- Location: LCCOMB_X24_Y15_N2
\U1|U3|clk_div[14]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[14]~50_combout\ = (\U1|U3|clk_div\(14) & (!\U1|U3|clk_div[13]~49\)) # (!\U1|U3|clk_div\(14) & ((\U1|U3|clk_div[13]~49\) # (GND)))
-- \U1|U3|clk_div[14]~51\ = CARRY((!\U1|U3|clk_div[13]~49\) # (!\U1|U3|clk_div\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(14),
	datad => VCC,
	cin => \U1|U3|clk_div[13]~49\,
	combout => \U1|U3|clk_div[14]~50_combout\,
	cout => \U1|U3|clk_div[14]~51\);

-- Location: LCCOMB_X24_Y15_N4
\U1|U3|clk_div[15]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[15]~52_combout\ = (\U1|U3|clk_div\(15) & (\U1|U3|clk_div[14]~51\ $ (GND))) # (!\U1|U3|clk_div\(15) & (!\U1|U3|clk_div[14]~51\ & VCC))
-- \U1|U3|clk_div[15]~53\ = CARRY((\U1|U3|clk_div\(15) & !\U1|U3|clk_div[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(15),
	datad => VCC,
	cin => \U1|U3|clk_div[14]~51\,
	combout => \U1|U3|clk_div[15]~52_combout\,
	cout => \U1|U3|clk_div[15]~53\);

-- Location: LCCOMB_X24_Y15_N6
\U1|U3|clk_div[16]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[16]~54_combout\ = (\U1|U3|clk_div\(16) & (!\U1|U3|clk_div[15]~53\)) # (!\U1|U3|clk_div\(16) & ((\U1|U3|clk_div[15]~53\) # (GND)))
-- \U1|U3|clk_div[16]~55\ = CARRY((!\U1|U3|clk_div[15]~53\) # (!\U1|U3|clk_div\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(16),
	datad => VCC,
	cin => \U1|U3|clk_div[15]~53\,
	combout => \U1|U3|clk_div[16]~54_combout\,
	cout => \U1|U3|clk_div[16]~55\);

-- Location: LCCOMB_X24_Y15_N8
\U1|U3|clk_div[17]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[17]~56_combout\ = (\U1|U3|clk_div\(17) & (\U1|U3|clk_div[16]~55\ $ (GND))) # (!\U1|U3|clk_div\(17) & (!\U1|U3|clk_div[16]~55\ & VCC))
-- \U1|U3|clk_div[17]~57\ = CARRY((\U1|U3|clk_div\(17) & !\U1|U3|clk_div[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(17),
	datad => VCC,
	cin => \U1|U3|clk_div[16]~55\,
	combout => \U1|U3|clk_div[17]~56_combout\,
	cout => \U1|U3|clk_div[17]~57\);

-- Location: LCCOMB_X24_Y15_N10
\U1|U3|clk_div[18]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[18]~58_combout\ = (\U1|U3|clk_div\(18) & (!\U1|U3|clk_div[17]~57\)) # (!\U1|U3|clk_div\(18) & ((\U1|U3|clk_div[17]~57\) # (GND)))
-- \U1|U3|clk_div[18]~59\ = CARRY((!\U1|U3|clk_div[17]~57\) # (!\U1|U3|clk_div\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(18),
	datad => VCC,
	cin => \U1|U3|clk_div[17]~57\,
	combout => \U1|U3|clk_div[18]~58_combout\,
	cout => \U1|U3|clk_div[18]~59\);

-- Location: LCCOMB_X24_Y15_N12
\U1|U3|clk_div[19]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[19]~60_combout\ = (\U1|U3|clk_div\(19) & (\U1|U3|clk_div[18]~59\ $ (GND))) # (!\U1|U3|clk_div\(19) & (!\U1|U3|clk_div[18]~59\ & VCC))
-- \U1|U3|clk_div[19]~61\ = CARRY((\U1|U3|clk_div\(19) & !\U1|U3|clk_div[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(19),
	datad => VCC,
	cin => \U1|U3|clk_div[18]~59\,
	combout => \U1|U3|clk_div[19]~60_combout\,
	cout => \U1|U3|clk_div[19]~61\);

-- Location: LCCOMB_X24_Y15_N14
\U1|U3|clk_div[20]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[20]~62_combout\ = (\U1|U3|clk_div\(20) & (!\U1|U3|clk_div[19]~61\)) # (!\U1|U3|clk_div\(20) & ((\U1|U3|clk_div[19]~61\) # (GND)))
-- \U1|U3|clk_div[20]~63\ = CARRY((!\U1|U3|clk_div[19]~61\) # (!\U1|U3|clk_div\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(20),
	datad => VCC,
	cin => \U1|U3|clk_div[19]~61\,
	combout => \U1|U3|clk_div[20]~62_combout\,
	cout => \U1|U3|clk_div[20]~63\);

-- Location: LCCOMB_X24_Y15_N16
\U1|U3|clk_div[21]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[21]~64_combout\ = (\U1|U3|clk_div\(21) & (\U1|U3|clk_div[20]~63\ $ (GND))) # (!\U1|U3|clk_div\(21) & (!\U1|U3|clk_div[20]~63\ & VCC))
-- \U1|U3|clk_div[21]~65\ = CARRY((\U1|U3|clk_div\(21) & !\U1|U3|clk_div[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(21),
	datad => VCC,
	cin => \U1|U3|clk_div[20]~63\,
	combout => \U1|U3|clk_div[21]~64_combout\,
	cout => \U1|U3|clk_div[21]~65\);

-- Location: LCCOMB_X24_Y15_N18
\U1|U3|clk_div[22]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[22]~66_combout\ = (\U1|U3|clk_div\(22) & (!\U1|U3|clk_div[21]~65\)) # (!\U1|U3|clk_div\(22) & ((\U1|U3|clk_div[21]~65\) # (GND)))
-- \U1|U3|clk_div[22]~67\ = CARRY((!\U1|U3|clk_div[21]~65\) # (!\U1|U3|clk_div\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(22),
	datad => VCC,
	cin => \U1|U3|clk_div[21]~65\,
	combout => \U1|U3|clk_div[22]~66_combout\,
	cout => \U1|U3|clk_div[22]~67\);

-- Location: LCCOMB_X24_Y15_N20
\U1|U3|clk_div[23]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[23]~68_combout\ = (\U1|U3|clk_div\(23) & (\U1|U3|clk_div[22]~67\ $ (GND))) # (!\U1|U3|clk_div\(23) & (!\U1|U3|clk_div[22]~67\ & VCC))
-- \U1|U3|clk_div[23]~69\ = CARRY((\U1|U3|clk_div\(23) & !\U1|U3|clk_div[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(23),
	datad => VCC,
	cin => \U1|U3|clk_div[22]~67\,
	combout => \U1|U3|clk_div[23]~68_combout\,
	cout => \U1|U3|clk_div[23]~69\);

-- Location: LCCOMB_X24_Y15_N22
\U1|U3|clk_div[24]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[24]~70_combout\ = \U1|U3|clk_div\(24) $ (\U1|U3|clk_div[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(24),
	cin => \U1|U3|clk_div[23]~69\,
	combout => \U1|U3|clk_div[24]~70_combout\);

-- Location: FF_X27_Y16_N7
\ver_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_reg~3_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(9));

-- Location: LCCOMB_X27_Y16_N26
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!ver_reg(9) & !ver_reg(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datad => ver_reg(8),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y16_N10
\always2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~8_combout\ = (!ver_reg(9) & (!ver_reg(3) & (!ver_reg(4) & !hor_reg(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(3),
	datac => ver_reg(4),
	datad => hor_reg(10),
	combout => \always2~8_combout\);

-- Location: LCCOMB_X27_Y16_N0
\always2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~9_combout\ = (\always2~8_combout\ & (!ver_reg(7) & (!ver_reg(0) & !ver_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~8_combout\,
	datab => ver_reg(7),
	datac => ver_reg(0),
	datad => ver_reg(1),
	combout => \always2~9_combout\);

-- Location: LCCOMB_X27_Y16_N6
\ver_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~3_combout\ = (\Add0~18_combout\ & ((!\Equal4~0_combout\) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Add0~18_combout\,
	datad => \Equal4~0_combout\,
	combout => \ver_reg~3_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (ver_reg(5) & (ver_reg(2) & (ver_reg(6) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(5),
	datab => ver_reg(2),
	datac => ver_reg(6),
	datad => \Equal4~0_combout\,
	combout => \Equal4~2_combout\);

-- Location: FF_X24_Y15_N27
\U1|U3|DinoImgFlag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U3|clk_div\(24),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|DinoImgFlag~q\);

-- Location: FF_X40_Y15_N27
\U1|U4|delay_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U4|delay_clk[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|delay_clk\(1));

-- Location: FF_X40_Y15_N17
\U1|U4|delay_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U4|delay_clk[2]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|delay_clk\(2));

-- Location: IOIBUF_X41_Y11_N1
\KBclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KBclk,
	o => \KBclk~input_o\);

-- Location: CLKCTRL_G7
\U1|U4|delay_clk[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|U4|delay_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|U4|delay_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N26
\U1|U4|delay_clk[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|delay_clk[1]~feeder_combout\ = \U1|U4|delay_clk\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|delay_clk\(2),
	combout => \U1|U4|delay_clk[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y15_N16
\U1|U4|delay_clk[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|delay_clk[2]~feeder_combout\ = \KBclk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KBclk~input_o\,
	combout => \U1|U4|delay_clk[2]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\VGA_RED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_RED~1_combout\,
	devoe => ww_devoe,
	o => \VGA_RED~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\VGA_GREEN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_GREEN~0_combout\,
	devoe => ww_devoe,
	o => \VGA_GREEN~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\VGA_BLUE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_GREEN~0_combout\,
	devoe => ww_devoe,
	o => \VGA_BLUE~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_hor_sync~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ver_sync~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U3|q~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: LCCOMB_X28_Y16_N6
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = hor_reg(0) $ (VCC)
-- \Add1~1\ = CARRY(hor_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X28_Y16_N8
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (hor_reg(1) & (!\Add1~1\)) # (!hor_reg(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!hor_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X28_Y16_N10
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (hor_reg(2) & (\Add1~3\ $ (GND))) # (!hor_reg(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((hor_reg(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X28_Y16_N11
\hor_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(2));

-- Location: LCCOMB_X28_Y16_N12
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (hor_reg(3) & (!\Add1~5\)) # (!hor_reg(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!hor_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X28_Y16_N14
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (hor_reg(4) & (\Add1~7\ $ (GND))) # (!hor_reg(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((hor_reg(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X28_Y16_N16
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (hor_reg(5) & (!\Add1~9\)) # (!hor_reg(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!hor_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X28_Y16_N17
\hor_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(5));

-- Location: LCCOMB_X28_Y16_N18
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (hor_reg(6) & (\Add1~11\ $ (GND))) # (!hor_reg(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((hor_reg(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X28_Y16_N19
\hor_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(6));

-- Location: LCCOMB_X28_Y16_N20
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (hor_reg(7) & (!\Add1~13\)) # (!hor_reg(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!hor_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X28_Y16_N21
\hor_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(7));

-- Location: LCCOMB_X28_Y16_N22
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (hor_reg(8) & (\Add1~15\ $ (GND))) # (!hor_reg(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((hor_reg(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X28_Y16_N24
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (hor_reg(9) & (!\Add1~17\)) # (!hor_reg(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!hor_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X28_Y16_N25
\hor_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(9));

-- Location: LCCOMB_X28_Y16_N26
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \Add1~19\ $ (!hor_reg(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hor_reg(10),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X27_Y16_N8
\hor_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hor_reg~0_combout\ = (!\Equal0~2_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \Add1~20_combout\,
	combout => \hor_reg~0_combout\);

-- Location: FF_X27_Y16_N9
\hor_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hor_reg~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(10));

-- Location: FF_X28_Y16_N23
\hor_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(8));

-- Location: LCCOMB_X24_Y16_N4
\LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (hor_reg(9) & hor_reg(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hor_reg(9),
	datad => hor_reg(8),
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ver_reg(0) $ (VCC)
-- \Add0~1\ = CARRY(ver_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X28_Y16_N9
\hor_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(1));

-- Location: FF_X28_Y16_N7
\hor_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(0));

-- Location: LCCOMB_X28_Y16_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (hor_reg(3) & (hor_reg(1) & hor_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datac => hor_reg(1),
	datad => hor_reg(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y16_N4
\LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (!hor_reg(6) & (!hor_reg(7) & !hor_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(6),
	datac => hor_reg(7),
	datad => hor_reg(5),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X29_Y16_N4
\hor_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hor_reg~1_combout\ = (!\Equal0~2_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~2_combout\,
	datad => \Add1~8_combout\,
	combout => \hor_reg~1_combout\);

-- Location: FF_X29_Y16_N5
\hor_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hor_reg~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(4));

-- Location: LCCOMB_X28_Y16_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!hor_reg(8) & (!hor_reg(9) & (\LessThan13~0_combout\ & !hor_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(8),
	datab => hor_reg(9),
	datac => \LessThan13~0_combout\,
	datad => hor_reg(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y16_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (hor_reg(10) & (hor_reg(2) & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(10),
	datab => hor_reg(2),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X26_Y16_N9
\ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(0));

-- Location: LCCOMB_X26_Y16_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ver_reg(1) & (!\Add0~1\)) # (!ver_reg(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ver_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X30_Y16_N4
\ver_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~4_combout\ = (\Add0~2_combout\ & ((!\Equal1~1_combout\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add0~2_combout\,
	combout => \ver_reg~4_combout\);

-- Location: FF_X30_Y16_N5
\ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_reg~4_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(1));

-- Location: LCCOMB_X26_Y16_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (ver_reg(2) & (\Add0~3\ $ (GND))) # (!ver_reg(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((ver_reg(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X30_Y16_N31
\ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(2));

-- Location: LCCOMB_X26_Y16_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ver_reg(3) & (!\Add0~5\)) # (!ver_reg(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!ver_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y16_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (ver_reg(4) & (\Add0~7\ $ (GND))) # (!ver_reg(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((ver_reg(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X26_Y16_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (ver_reg(5) & (!\Add0~9\)) # (!ver_reg(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!ver_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X26_Y16_N19
\ver_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(5));

-- Location: LCCOMB_X26_Y16_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (ver_reg(6) & (\Add0~11\ $ (GND))) # (!ver_reg(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((ver_reg(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X26_Y16_N21
\ver_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(6));

-- Location: LCCOMB_X27_Y16_N4
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!ver_reg(5) & (!ver_reg(8) & (!ver_reg(2) & !ver_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(5),
	datab => ver_reg(8),
	datac => ver_reg(2),
	datad => ver_reg(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X27_Y16_N14
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (ver_reg(9) & (\Equal1~0_combout\ & (ver_reg(0) & ver_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => \Equal1~0_combout\,
	datac => ver_reg(0),
	datad => ver_reg(7),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y16_N0
\ver_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~0_combout\ = (\Add0~8_combout\ & ((!\Equal1~1_combout\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add0~8_combout\,
	combout => \ver_reg~0_combout\);

-- Location: FF_X26_Y16_N1
\ver_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_reg~0_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(4));

-- Location: LCCOMB_X26_Y16_N28
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (ver_reg(3) & (ver_reg(4) & !ver_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(3),
	datab => ver_reg(4),
	datac => ver_reg(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (ver_reg(7) & (!\Add0~13\)) # (!ver_reg(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!ver_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X27_Y16_N12
\ver_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~2_combout\ = (\Add0~14_combout\ & ((!\Equal1~1_combout\) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \Add0~14_combout\,
	combout => \ver_reg~2_combout\);

-- Location: FF_X27_Y16_N13
\ver_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_reg~2_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(7));

-- Location: FF_X26_Y16_N25
\ver_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(8));

-- Location: LCCOMB_X26_Y16_N4
\LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = ((!ver_reg(5) & ((!ver_reg(4)) # (!ver_reg(3))))) # (!ver_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(3),
	datab => ver_reg(4),
	datac => ver_reg(5),
	datad => ver_reg(6),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = ((!ver_reg(8) & (\LessThan12~0_combout\ & !ver_reg(7)))) # (!ver_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(8),
	datac => \LessThan12~0_combout\,
	datad => ver_reg(7),
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X27_Y16_N18
\VGA_RED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_RED~0_combout\ = (!hor_reg(10) & (\LessThan12~1_combout\ & ((\LessThan13~0_combout\) # (!\LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~0_combout\,
	datab => hor_reg(10),
	datac => \LessThan13~1_combout\,
	datad => \LessThan12~1_combout\,
	combout => \VGA_RED~0_combout\);

-- Location: LCCOMB_X28_Y16_N28
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!hor_reg(2) & (!hor_reg(1) & !hor_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(2),
	datac => hor_reg(1),
	datad => hor_reg(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X29_Y16_N18
\always2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~7_combout\ = (!hor_reg(3) & (\Equal2~0_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datab => \Equal2~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \always2~7_combout\);

-- Location: LCCOMB_X30_Y16_N26
\U1|U3|DinoPosHorTo[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|DinoPosHorTo[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U1|U3|DinoPosHorTo[0]~feeder_combout\);

-- Location: FF_X30_Y16_N27
\U1|U3|DinoPosHorTo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|DinoPosHorTo[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|DinoPosHorTo\(0));

-- Location: LCCOMB_X27_Y16_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!hor_reg(8) & (!hor_reg(10) & !hor_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(8),
	datac => hor_reg(10),
	datad => hor_reg(9),
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X41_Y12_N22
\KBin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KBin,
	o => \KBin~input_o\);

-- Location: LCCOMB_X40_Y15_N2
\U1|U4|KBdata[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[32]~feeder_combout\ = \KBin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KBin~input_o\,
	combout => \U1|U4|KBdata[32]~feeder_combout\);

-- Location: FF_X40_Y15_N3
\U1|U4|KBdata[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[32]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(32));

-- Location: LCCOMB_X40_Y15_N10
\U1|U4|KBdata[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[31]~feeder_combout\ = \U1|U4|KBdata\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(32),
	combout => \U1|U4|KBdata[31]~feeder_combout\);

-- Location: FF_X40_Y15_N11
\U1|U4|KBdata[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[31]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(31));

-- Location: LCCOMB_X40_Y15_N28
\U1|U4|KBdata[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[30]~feeder_combout\ = \U1|U4|KBdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(31),
	combout => \U1|U4|KBdata[30]~feeder_combout\);

-- Location: FF_X40_Y15_N29
\U1|U4|KBdata[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[30]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(30));

-- Location: LCCOMB_X40_Y15_N24
\U1|U4|KBdata[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[29]~feeder_combout\ = \U1|U4|KBdata\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(30),
	combout => \U1|U4|KBdata[29]~feeder_combout\);

-- Location: FF_X40_Y15_N25
\U1|U4|KBdata[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[29]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(29));

-- Location: LCCOMB_X40_Y15_N20
\U1|U4|KBdata[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[28]~feeder_combout\ = \U1|U4|KBdata\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(29),
	combout => \U1|U4|KBdata[28]~feeder_combout\);

-- Location: FF_X40_Y15_N21
\U1|U4|KBdata[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[28]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(28));

-- Location: LCCOMB_X40_Y15_N18
\U1|U4|KBdata[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[27]~feeder_combout\ = \U1|U4|KBdata\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(28),
	combout => \U1|U4|KBdata[27]~feeder_combout\);

-- Location: FF_X40_Y15_N19
\U1|U4|KBdata[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[27]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(27));

-- Location: LCCOMB_X40_Y15_N6
\U1|U4|KBdata[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[26]~feeder_combout\ = \U1|U4|KBdata\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(27),
	combout => \U1|U4|KBdata[26]~feeder_combout\);

-- Location: FF_X40_Y15_N7
\U1|U4|KBdata[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[26]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(26));

-- Location: LCCOMB_X40_Y15_N0
\U1|U4|KBdata[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[25]~feeder_combout\ = \U1|U4|KBdata\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(26),
	combout => \U1|U4|KBdata[25]~feeder_combout\);

-- Location: FF_X40_Y15_N1
\U1|U4|KBdata[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[25]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(25));

-- Location: LCCOMB_X40_Y15_N12
\U1|U4|KBdata[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[24]~feeder_combout\ = \U1|U4|KBdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(25),
	combout => \U1|U4|KBdata[24]~feeder_combout\);

-- Location: FF_X40_Y15_N13
\U1|U4|KBdata[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[24]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(24));

-- Location: LCCOMB_X40_Y15_N22
\U1|U4|KBdata[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[23]~feeder_combout\ = \U1|U4|KBdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(24),
	combout => \U1|U4|KBdata[23]~feeder_combout\);

-- Location: FF_X40_Y15_N23
\U1|U4|KBdata[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[23]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(23));

-- Location: LCCOMB_X39_Y15_N18
\U1|U4|KBdata[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[22]~feeder_combout\ = \U1|U4|KBdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(23),
	combout => \U1|U4|KBdata[22]~feeder_combout\);

-- Location: FF_X39_Y15_N19
\U1|U4|KBdata[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[22]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(22));

-- Location: LCCOMB_X39_Y15_N20
\U1|U4|KBdata[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[21]~feeder_combout\ = \U1|U4|KBdata\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(22),
	combout => \U1|U4|KBdata[21]~feeder_combout\);

-- Location: FF_X39_Y15_N21
\U1|U4|KBdata[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[21]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(21));

-- Location: LCCOMB_X39_Y15_N10
\U1|U4|KBdata[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[20]~feeder_combout\ = \U1|U4|KBdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(21),
	combout => \U1|U4|KBdata[20]~feeder_combout\);

-- Location: FF_X39_Y15_N11
\U1|U4|KBdata[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[20]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(20));

-- Location: LCCOMB_X39_Y15_N0
\U1|U4|KBdata[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[19]~feeder_combout\ = \U1|U4|KBdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(20),
	combout => \U1|U4|KBdata[19]~feeder_combout\);

-- Location: FF_X39_Y15_N1
\U1|U4|KBdata[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[19]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(19));

-- Location: LCCOMB_X39_Y15_N6
\U1|U4|KBdata[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[18]~feeder_combout\ = \U1|U4|KBdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(19),
	combout => \U1|U4|KBdata[18]~feeder_combout\);

-- Location: FF_X39_Y15_N7
\U1|U4|KBdata[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[18]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(18));

-- Location: LCCOMB_X39_Y15_N28
\U1|U4|KBdata[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[17]~feeder_combout\ = \U1|U4|KBdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(18),
	combout => \U1|U4|KBdata[17]~feeder_combout\);

-- Location: FF_X39_Y15_N29
\U1|U4|KBdata[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[17]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(17));

-- Location: LCCOMB_X39_Y15_N22
\U1|U4|KBdata[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[16]~feeder_combout\ = \U1|U4|KBdata\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(17),
	combout => \U1|U4|KBdata[16]~feeder_combout\);

-- Location: FF_X39_Y15_N23
\U1|U4|KBdata[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[16]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(16));

-- Location: LCCOMB_X39_Y15_N24
\U1|U4|KBdata[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[15]~feeder_combout\ = \U1|U4|KBdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(16),
	combout => \U1|U4|KBdata[15]~feeder_combout\);

-- Location: FF_X39_Y15_N25
\U1|U4|KBdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[15]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(15));

-- Location: LCCOMB_X39_Y15_N26
\U1|U4|KBdata[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[14]~feeder_combout\ = \U1|U4|KBdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(15),
	combout => \U1|U4|KBdata[14]~feeder_combout\);

-- Location: FF_X39_Y15_N27
\U1|U4|KBdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[14]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(14));

-- Location: LCCOMB_X39_Y15_N12
\U1|U4|KBdata[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[13]~feeder_combout\ = \U1|U4|KBdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(14),
	combout => \U1|U4|KBdata[13]~feeder_combout\);

-- Location: FF_X39_Y15_N13
\U1|U4|KBdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[13]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(13));

-- Location: LCCOMB_X39_Y15_N2
\U1|U4|KBdata[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[12]~feeder_combout\ = \U1|U4|KBdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(13),
	combout => \U1|U4|KBdata[12]~feeder_combout\);

-- Location: FF_X39_Y15_N3
\U1|U4|KBdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[12]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(12));

-- Location: LCCOMB_X39_Y15_N4
\U1|U4|KBdata[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[11]~feeder_combout\ = \U1|U4|KBdata\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(12),
	combout => \U1|U4|KBdata[11]~feeder_combout\);

-- Location: FF_X39_Y15_N5
\U1|U4|KBdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[11]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(11));

-- Location: LCCOMB_X38_Y15_N16
\U1|U4|KBdata[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[10]~feeder_combout\ = \U1|U4|KBdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(11),
	combout => \U1|U4|KBdata[10]~feeder_combout\);

-- Location: FF_X38_Y15_N17
\U1|U4|KBdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[10]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(10));

-- Location: LCCOMB_X38_Y15_N4
\U1|U4|KBdata[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[9]~feeder_combout\ = \U1|U4|KBdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(10),
	combout => \U1|U4|KBdata[9]~feeder_combout\);

-- Location: FF_X38_Y15_N5
\U1|U4|KBdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[9]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(9));

-- Location: LCCOMB_X38_Y15_N22
\U1|U4|KBdata[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[8]~feeder_combout\ = \U1|U4|KBdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(9),
	combout => \U1|U4|KBdata[8]~feeder_combout\);

-- Location: FF_X38_Y15_N23
\U1|U4|KBdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[8]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(8));

-- Location: LCCOMB_X38_Y15_N28
\U1|U4|KBdata[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[7]~feeder_combout\ = \U1|U4|KBdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(8),
	combout => \U1|U4|KBdata[7]~feeder_combout\);

-- Location: FF_X38_Y15_N29
\U1|U4|KBdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[7]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(7));

-- Location: LCCOMB_X38_Y15_N18
\U1|U4|KBdata[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[6]~feeder_combout\ = \U1|U4|KBdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(7),
	combout => \U1|U4|KBdata[6]~feeder_combout\);

-- Location: FF_X38_Y15_N19
\U1|U4|KBdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[6]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(6));

-- Location: LCCOMB_X38_Y15_N8
\U1|U4|KBdata[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[5]~feeder_combout\ = \U1|U4|KBdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(6),
	combout => \U1|U4|KBdata[5]~feeder_combout\);

-- Location: FF_X38_Y15_N9
\U1|U4|KBdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[5]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(5));

-- Location: LCCOMB_X38_Y15_N10
\U1|U4|KBdata[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[4]~feeder_combout\ = \U1|U4|KBdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(5),
	combout => \U1|U4|KBdata[4]~feeder_combout\);

-- Location: FF_X38_Y15_N11
\U1|U4|KBdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[4]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(4));

-- Location: LCCOMB_X38_Y15_N26
\U1|U4|KBdata[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[3]~feeder_combout\ = \U1|U4|KBdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(4),
	combout => \U1|U4|KBdata[3]~feeder_combout\);

-- Location: FF_X38_Y15_N27
\U1|U4|KBdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[3]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(3));

-- Location: LCCOMB_X38_Y15_N24
\U1|U4|KBdata[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[2]~feeder_combout\ = \U1|U4|KBdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(3),
	combout => \U1|U4|KBdata[2]~feeder_combout\);

-- Location: FF_X38_Y15_N25
\U1|U4|KBdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[2]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(2));

-- Location: LCCOMB_X38_Y15_N20
\U1|U4|KBdata[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[1]~feeder_combout\ = \U1|U4|KBdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(2),
	combout => \U1|U4|KBdata[1]~feeder_combout\);

-- Location: FF_X38_Y15_N21
\U1|U4|KBdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	d => \U1|U4|KBdata[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(1));

-- Location: LCCOMB_X38_Y15_N14
\U1|U4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Equal0~1_combout\ = (\U1|U4|KBdata\(4) & (!\U1|U4|KBdata\(2) & (!\U1|U4|KBdata\(5) & !\U1|U4|KBdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|KBdata\(4),
	datab => \U1|U4|KBdata\(2),
	datac => \U1|U4|KBdata\(5),
	datad => \U1|U4|KBdata\(3),
	combout => \U1|U4|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y15_N30
\U1|U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Equal0~0_combout\ = (!\U1|U4|KBdata\(8) & (\U1|U4|KBdata\(6) & (!\U1|U4|KBdata\(9) & !\U1|U4|KBdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|KBdata\(8),
	datab => \U1|U4|KBdata\(6),
	datac => \U1|U4|KBdata\(9),
	datad => \U1|U4|KBdata\(7),
	combout => \U1|U4|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y15_N0
\U1|U4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Equal0~2_combout\ = (\U1|U4|KBdata\(1) & (\U1|U4|Equal0~1_combout\ & \U1|U4|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U4|KBdata\(1),
	datac => \U1|U4|Equal0~1_combout\,
	datad => \U1|U4|Equal0~0_combout\,
	combout => \U1|U4|Equal0~2_combout\);

-- Location: FF_X38_Y15_N1
\U1|U4|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U4|Equal0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|flag~q\);

-- Location: FF_X29_Y16_N19
\U1|U3|DinoPosHorFrom[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U4|flag~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|DinoPosHorFrom\(7));

-- Location: LCCOMB_X27_Y16_N22
\always2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~3_combout\ = (hor_reg(6) & (!hor_reg(7) & \U1|U3|DinoPosHorFrom\(7))) # (!hor_reg(6) & ((\U1|U3|DinoPosHorFrom\(7)) # (!hor_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(6),
	datac => hor_reg(7),
	datad => \U1|U3|DinoPosHorFrom\(7),
	combout => \always2~3_combout\);

-- Location: LCCOMB_X27_Y16_N20
\LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (ver_reg(6) & (!\U1|U3|DinoPosHorTo\(0) & (ver_reg(7) $ (!\U1|U3|DinoPosHorFrom\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(7),
	datab => ver_reg(6),
	datac => \U1|U3|DinoPosHorTo\(0),
	datad => \U1|U3|DinoPosHorFrom\(7),
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X27_Y16_N30
\always2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~4_combout\ = (\LessThan2~0_combout\ & (\LessThan0~1_combout\ & (\always2~3_combout\ & !\LessThan3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan0~1_combout\,
	datac => \always2~3_combout\,
	datad => \LessThan3~7_combout\,
	combout => \always2~4_combout\);

-- Location: LCCOMB_X30_Y16_N20
\U1|U3|DinoPosHorFrom[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|DinoPosHorFrom[5]~0_combout\ = !\U1|U4|flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|flag~q\,
	combout => \U1|U3|DinoPosHorFrom[5]~0_combout\);

-- Location: FF_X30_Y16_N21
\U1|U3|DinoPosHorFrom[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|DinoPosHorFrom[5]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|DinoPosHorFrom\(5));

-- Location: LCCOMB_X29_Y16_N28
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (hor_reg(3) & (!hor_reg(2) & (\U1|U3|DinoPosHorFrom\(5)))) # (!hor_reg(3) & (((\U1|U3|DinoPosHorFrom\(5)) # (\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datab => hor_reg(2),
	datac => \U1|U3|DinoPosHorFrom\(5),
	datad => \Equal2~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X29_Y16_N14
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (hor_reg(5)) # ((\Equal0~0_combout\) # ((hor_reg(4)) # (!\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(5),
	datab => \Equal0~0_combout\,
	datac => hor_reg(4),
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y16_N28
\always2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~5_combout\ = (\always2~4_combout\ & ((\LessThan1~0_combout\) # ((\U1|U3|DinoPosHorTo\(0)) # (!\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \U1|U3|DinoPosHorTo\(0),
	datac => \always2~4_combout\,
	datad => \LessThan1~3_combout\,
	combout => \always2~5_combout\);

-- Location: LCCOMB_X29_Y16_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = \U1|U3|DinoPosHorFrom\(7) $ (hor_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|DinoPosHorFrom\(7),
	datad => hor_reg(7),
	combout => \LessThan1~0_combout\);

-- Location: FF_X28_Y16_N13
\hor_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(3));

-- Location: LCCOMB_X29_Y16_N2
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (hor_reg(4) & ((hor_reg(3)) # ((hor_reg(1) & hor_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(1),
	datab => hor_reg(4),
	datac => hor_reg(2),
	datad => hor_reg(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y16_N30
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!\U1|U3|DinoPosHorFrom\(5) & (!\LessThan1~0_combout\ & (hor_reg(5) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorFrom\(5),
	datab => \LessThan1~0_combout\,
	datac => hor_reg(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y16_N24
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\U1|U3|DinoPosHorTo\(0) & (ver_reg(6) & (ver_reg(7) $ (!\U1|U3|DinoPosHorFrom\(7))))) # (!\U1|U3|DinoPosHorTo\(0) & (!ver_reg(6) & (ver_reg(7) $ (!\U1|U3|DinoPosHorFrom\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorTo\(0),
	datab => ver_reg(7),
	datac => ver_reg(6),
	datad => \U1|U3|DinoPosHorFrom\(7),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X29_Y16_N8
\always2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~1_combout\ = (!\LessThan1~1_combout\ & ((\U1|U3|DinoPosHorFrom\(5)) # ((!\LessThan3~0_combout\) # (!ver_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorFrom\(5),
	datab => ver_reg(5),
	datac => \LessThan1~1_combout\,
	datad => \LessThan3~0_combout\,
	combout => \always2~1_combout\);

-- Location: LCCOMB_X29_Y16_N22
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!hor_reg(5) & (!hor_reg(6) & (\U1|U3|DinoPosHorFrom\(5) & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(5),
	datab => hor_reg(6),
	datac => \U1|U3|DinoPosHorFrom\(5),
	datad => \LessThan1~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y16_N20
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (hor_reg(5) & (\U1|U3|DinoPosHorFrom\(5) & (\U1|U3|DinoPosHorFrom\(7) $ (!hor_reg(7))))) # (!hor_reg(5) & (!\U1|U3|DinoPosHorFrom\(5) & (\U1|U3|DinoPosHorFrom\(7) $ (!hor_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(5),
	datab => \U1|U3|DinoPosHorFrom\(7),
	datac => \U1|U3|DinoPosHorFrom\(5),
	datad => hor_reg(7),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y16_N10
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\U1|U3|DinoPosHorFrom\(7) & (\LessThan0~3_combout\ & (!hor_reg(6) & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorFrom\(7),
	datab => \LessThan0~3_combout\,
	datac => hor_reg(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y16_N12
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~4_combout\) # ((!hor_reg(7) & \U1|U3|DinoPosHorFrom\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(7),
	datab => \U1|U3|DinoPosHorFrom\(7),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y16_N6
\always2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~2_combout\ = (\always2~1_combout\ & ((!\LessThan0~5_combout\) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datac => \always2~1_combout\,
	datad => \LessThan0~5_combout\,
	combout => \always2~2_combout\);

-- Location: LCCOMB_X30_Y16_N6
\LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (\U1|U3|DinoPosHorFrom\(5) & (ver_reg(1) & (ver_reg(0) & !ver_reg(2)))) # (!\U1|U3|DinoPosHorFrom\(5) & ((ver_reg(1)) # ((ver_reg(0) & !ver_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorFrom\(5),
	datab => ver_reg(1),
	datac => ver_reg(0),
	datad => ver_reg(2),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X30_Y16_N12
\LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (\U1|U3|DinoPosHorTo\(0) & (ver_reg(2) & \LessThan3~3_combout\)) # (!\U1|U3|DinoPosHorTo\(0) & ((ver_reg(2)) # (\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorTo\(0),
	datab => ver_reg(2),
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X30_Y16_N18
\LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = (\U1|U3|DinoPosHorFrom\(7) & (ver_reg(3) & (ver_reg(4) & \LessThan3~4_combout\))) # (!\U1|U3|DinoPosHorFrom\(7) & (!ver_reg(4) & ((ver_reg(3)) # (\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(3),
	datab => \U1|U3|DinoPosHorFrom\(7),
	datac => ver_reg(4),
	datad => \LessThan3~4_combout\,
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X30_Y16_N28
\LessThan3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (\LessThan3~0_combout\ & (\LessThan3~5_combout\ & (ver_reg(5) $ (!\U1|U3|DinoPosHorFrom\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(5),
	datab => \U1|U3|DinoPosHorFrom\(5),
	datac => \LessThan3~0_combout\,
	datad => \LessThan3~5_combout\,
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X30_Y16_N22
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (ver_reg(4) & (\LessThan3~0_combout\ & (\U1|U3|DinoPosHorFrom\(5) $ (!ver_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(4),
	datab => \U1|U3|DinoPosHorFrom\(5),
	datac => ver_reg(5),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X30_Y16_N8
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!\U1|U3|DinoPosHorFrom\(7) & ((\LessThan3~1_combout\) # (ver_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|DinoPosHorFrom\(7),
	datac => \LessThan3~1_combout\,
	datad => ver_reg(7),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X26_Y16_N6
\ver_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~1_combout\ = (\Add0~6_combout\ & ((!\Equal4~0_combout\) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal4~0_combout\,
	combout => \ver_reg~1_combout\);

-- Location: FF_X26_Y16_N7
\ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_reg~1_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(3));

-- Location: LCCOMB_X30_Y16_N30
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (ver_reg(4) & ((ver_reg(3)) # ((ver_reg(1) & ver_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(4),
	datab => ver_reg(1),
	datac => ver_reg(2),
	datad => ver_reg(3),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X30_Y16_N2
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\U1|U3|DinoPosHorFrom\(5) & ((ver_reg(7) & (\LessThan2~1_combout\ & ver_reg(5))) # (!ver_reg(7) & ((!ver_reg(5)))))) # (!\U1|U3|DinoPosHorFrom\(5) & (ver_reg(7) & ((\LessThan2~1_combout\) # (ver_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosHorFrom\(5),
	datab => ver_reg(7),
	datac => \LessThan2~1_combout\,
	datad => ver_reg(5),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X30_Y16_N16
\LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (ver_reg(6) & (!ver_reg(7) & (\U1|U3|DinoPosHorFrom\(7)))) # (!ver_reg(6) & ((\LessThan2~2_combout\ & (!ver_reg(7))) # (!\LessThan2~2_combout\ & ((\U1|U3|DinoPosHorFrom\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(7),
	datab => \U1|U3|DinoPosHorFrom\(7),
	datac => ver_reg(6),
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X30_Y16_N14
\always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (!\LessThan3~6_combout\ & (!\LessThan3~2_combout\ & ((!\LessThan2~3_combout\) # (!\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \LessThan3~6_combout\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan2~3_combout\,
	combout => \always2~0_combout\);

-- Location: LCCOMB_X30_Y16_N10
\always2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~6_combout\ = (\U1|U3|q~q\ & (\always2~5_combout\ & (\always2~2_combout\ & \always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|q~q\,
	datab => \always2~5_combout\,
	datac => \always2~2_combout\,
	datad => \always2~0_combout\,
	combout => \always2~6_combout\);

-- Location: LCCOMB_X30_Y16_N0
\red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\always2~6_combout\) # ((\always2~9_combout\ & (\always2~7_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~9_combout\,
	datab => \always2~7_combout\,
	datac => \Equal0~1_combout\,
	datad => \always2~6_combout\,
	combout => \red~0_combout\);

-- Location: FF_X30_Y16_N1
red : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \red~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red~q\);

-- Location: LCCOMB_X30_Y17_N12
\VGA_RED~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_RED~1_combout\ = (\VGA_RED~0_combout\ & \red~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_RED~0_combout\,
	datad => \red~q\,
	combout => \VGA_RED~1_combout\);

-- Location: FF_X30_Y16_N11
blue : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \always2~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue~q\);

-- Location: LCCOMB_X30_Y17_N30
\VGA_GREEN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GREEN~0_combout\ = (\VGA_RED~0_combout\ & \blue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_RED~0_combout\,
	datad => \blue~q\,
	combout => \VGA_GREEN~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y16_N0
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (hor_reg(9) & (hor_reg(6) & (!hor_reg(5) & hor_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(9),
	datab => hor_reg(6),
	datac => hor_reg(5),
	datad => hor_reg(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X29_Y16_N26
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!hor_reg(10) & (\Equal2~0_combout\ & (hor_reg(4) & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(10),
	datab => \Equal2~0_combout\,
	datac => hor_reg(4),
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X29_Y16_N24
\hor_sync~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hor_sync~0_combout\ = (hor_reg(3) & ((\hor_sync~q\) # ((!hor_reg(7) & \Equal2~2_combout\)))) # (!hor_reg(3) & (\hor_sync~q\ & ((!\Equal2~2_combout\) # (!hor_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datab => hor_reg(7),
	datac => \hor_sync~q\,
	datad => \Equal2~2_combout\,
	combout => \hor_sync~0_combout\);

-- Location: FF_X29_Y16_N25
hor_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \hor_sync~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hor_sync~q\);

-- Location: LCCOMB_X27_Y16_N16
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (ver_reg(9) & (!ver_reg(8) & (ver_reg(0) & !ver_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(8),
	datac => ver_reg(0),
	datad => ver_reg(7),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!ver_reg(4) & (\Equal1~1_combout\ & (!ver_reg(3) & ver_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(4),
	datab => \Equal1~1_combout\,
	datac => ver_reg(3),
	datad => ver_reg(1),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X27_Y16_N28
\ver_sync~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_sync~0_combout\ = (\Equal4~2_combout\ & ((\Equal4~1_combout\) # ((\ver_sync~q\ & !\Equal5~0_combout\)))) # (!\Equal4~2_combout\ & (((\ver_sync~q\ & !\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Equal4~1_combout\,
	datac => \ver_sync~q\,
	datad => \Equal5~0_combout\,
	combout => \ver_sync~0_combout\);

-- Location: FF_X27_Y16_N29
ver_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_sync~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ver_sync~q\);

-- Location: LCCOMB_X32_Y16_N4
\U1|U3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~2_combout\ = (\U1|U3|address\(1) & (!\U1|U3|Add0~1\)) # (!\U1|U3|address\(1) & ((\U1|U3|Add0~1\) # (GND)))
-- \U1|U3|Add0~3\ = CARRY((!\U1|U3|Add0~1\) # (!\U1|U3|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(1),
	datad => VCC,
	cin => \U1|U3|Add0~1\,
	combout => \U1|U3|Add0~2_combout\,
	cout => \U1|U3|Add0~3\);

-- Location: LCCOMB_X32_Y16_N6
\U1|U3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~4_combout\ = (\U1|U3|address\(2) & (\U1|U3|Add0~3\ $ (GND))) # (!\U1|U3|address\(2) & (!\U1|U3|Add0~3\ & VCC))
-- \U1|U3|Add0~5\ = CARRY((\U1|U3|address\(2) & !\U1|U3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(2),
	datad => VCC,
	cin => \U1|U3|Add0~3\,
	combout => \U1|U3|Add0~4_combout\,
	cout => \U1|U3|Add0~5\);

-- Location: LCCOMB_X32_Y16_N8
\U1|U3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~6_combout\ = (\U1|U3|address\(3) & (!\U1|U3|Add0~5\)) # (!\U1|U3|address\(3) & ((\U1|U3|Add0~5\) # (GND)))
-- \U1|U3|Add0~7\ = CARRY((!\U1|U3|Add0~5\) # (!\U1|U3|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(3),
	datad => VCC,
	cin => \U1|U3|Add0~5\,
	combout => \U1|U3|Add0~6_combout\,
	cout => \U1|U3|Add0~7\);

-- Location: LCCOMB_X32_Y16_N10
\U1|U3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~8_combout\ = (\U1|U3|address\(4) & (\U1|U3|Add0~7\ $ (GND))) # (!\U1|U3|address\(4) & (!\U1|U3|Add0~7\ & VCC))
-- \U1|U3|Add0~9\ = CARRY((\U1|U3|address\(4) & !\U1|U3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(4),
	datad => VCC,
	cin => \U1|U3|Add0~7\,
	combout => \U1|U3|Add0~8_combout\,
	cout => \U1|U3|Add0~9\);

-- Location: LCCOMB_X31_Y16_N24
\always2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~10_combout\ = (\always2~5_combout\ & (\always2~2_combout\ & \always2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always2~5_combout\,
	datac => \always2~2_combout\,
	datad => \always2~0_combout\,
	combout => \always2~10_combout\);

-- Location: LCCOMB_X31_Y16_N22
\U1|U3|address[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[4]~4_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~8_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~8_combout\,
	datac => \U1|U3|address\(4),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[4]~4_combout\);

-- Location: FF_X31_Y16_N23
\U1|U3|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[4]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(4));

-- Location: LCCOMB_X32_Y16_N12
\U1|U3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~10_combout\ = (\U1|U3|address\(5) & (!\U1|U3|Add0~9\)) # (!\U1|U3|address\(5) & ((\U1|U3|Add0~9\) # (GND)))
-- \U1|U3|Add0~11\ = CARRY((!\U1|U3|Add0~9\) # (!\U1|U3|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(5),
	datad => VCC,
	cin => \U1|U3|Add0~9\,
	combout => \U1|U3|Add0~10_combout\,
	cout => \U1|U3|Add0~11\);

-- Location: LCCOMB_X31_Y16_N4
\U1|U3|address[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[5]~5_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~10_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~10_combout\,
	datac => \U1|U3|address\(5),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[5]~5_combout\);

-- Location: FF_X31_Y16_N5
\U1|U3|address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[5]~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(5));

-- Location: LCCOMB_X32_Y16_N14
\U1|U3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~12_combout\ = (\U1|U3|address\(6) & (\U1|U3|Add0~11\ $ (GND))) # (!\U1|U3|address\(6) & (!\U1|U3|Add0~11\ & VCC))
-- \U1|U3|Add0~13\ = CARRY((\U1|U3|address\(6) & !\U1|U3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(6),
	datad => VCC,
	cin => \U1|U3|Add0~11\,
	combout => \U1|U3|Add0~12_combout\,
	cout => \U1|U3|Add0~13\);

-- Location: LCCOMB_X31_Y16_N6
\U1|U3|address[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[6]~6_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~12_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~12_combout\,
	datac => \U1|U3|address\(6),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[6]~6_combout\);

-- Location: FF_X31_Y16_N7
\U1|U3|address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[6]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(6));

-- Location: LCCOMB_X32_Y16_N16
\U1|U3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~14_combout\ = (\U1|U3|address\(7) & (!\U1|U3|Add0~13\)) # (!\U1|U3|address\(7) & ((\U1|U3|Add0~13\) # (GND)))
-- \U1|U3|Add0~15\ = CARRY((!\U1|U3|Add0~13\) # (!\U1|U3|address\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(7),
	datad => VCC,
	cin => \U1|U3|Add0~13\,
	combout => \U1|U3|Add0~14_combout\,
	cout => \U1|U3|Add0~15\);

-- Location: LCCOMB_X31_Y16_N20
\U1|U3|address[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[7]~7_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~14_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~14_combout\,
	datac => \U1|U3|address\(7),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[7]~7_combout\);

-- Location: FF_X31_Y16_N21
\U1|U3|address[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[7]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(7));

-- Location: LCCOMB_X32_Y16_N18
\U1|U3|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~16_combout\ = (\U1|U3|address\(8) & (\U1|U3|Add0~15\ $ (GND))) # (!\U1|U3|address\(8) & (!\U1|U3|Add0~15\ & VCC))
-- \U1|U3|Add0~17\ = CARRY((\U1|U3|address\(8) & !\U1|U3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(8),
	datad => VCC,
	cin => \U1|U3|Add0~15\,
	combout => \U1|U3|Add0~16_combout\,
	cout => \U1|U3|Add0~17\);

-- Location: LCCOMB_X31_Y16_N14
\U1|U3|address[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[8]~8_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~16_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~16_combout\,
	datac => \U1|U3|address\(8),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[8]~8_combout\);

-- Location: FF_X31_Y16_N15
\U1|U3|address[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[8]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(8));

-- Location: LCCOMB_X32_Y16_N0
\U1|U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~1_combout\ = (\U1|U3|address\(5) & (\U1|U3|address\(7) & (\U1|U3|address\(6) & !\U1|U3|address\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(5),
	datab => \U1|U3|address\(7),
	datac => \U1|U3|address\(6),
	datad => \U1|U3|address\(8),
	combout => \U1|U3|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y16_N16
\U1|U3|address[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[3]~3_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~6_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~6_combout\,
	datac => \U1|U3|address\(3),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[3]~3_combout\);

-- Location: FF_X31_Y16_N17
\U1|U3|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[3]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(3));

-- Location: LCCOMB_X31_Y16_N12
\U1|U3|address[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[1]~1_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~2_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~2_combout\,
	datac => \U1|U3|address\(1),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[1]~1_combout\);

-- Location: FF_X31_Y16_N13
\U1|U3|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(1));

-- Location: LCCOMB_X32_Y16_N30
\U1|U3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~2_combout\ = (\U1|U3|address\(2) & (\U1|U3|address\(3) & (\U1|U3|address\(1) & \U1|U3|address\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(2),
	datab => \U1|U3|address\(3),
	datac => \U1|U3|address\(1),
	datad => \U1|U3|address\(4),
	combout => \U1|U3|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y16_N22
\U1|U3|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~20_combout\ = (\U1|U3|address\(10) & (\U1|U3|Add0~19\ $ (GND))) # (!\U1|U3|address\(10) & (!\U1|U3|Add0~19\ & VCC))
-- \U1|U3|Add0~21\ = CARRY((\U1|U3|address\(10) & !\U1|U3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(10),
	datad => VCC,
	cin => \U1|U3|Add0~19\,
	combout => \U1|U3|Add0~20_combout\,
	cout => \U1|U3|Add0~21\);

-- Location: LCCOMB_X31_Y16_N2
\U1|U3|address[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[10]~10_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~20_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~20_combout\,
	datac => \U1|U3|address\(10),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[10]~10_combout\);

-- Location: FF_X31_Y16_N3
\U1|U3|address[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[10]~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(10));

-- Location: LCCOMB_X31_Y16_N8
\U1|U3|address[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[9]~9_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~18_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~18_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(9),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[9]~9_combout\);

-- Location: FF_X31_Y16_N9
\U1|U3|address[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[9]~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(9));

-- Location: LCCOMB_X32_Y16_N26
\U1|U3|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~24_combout\ = \U1|U3|address\(12) $ (!\U1|U3|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(12),
	cin => \U1|U3|Add0~23\,
	combout => \U1|U3|Add0~24_combout\);

-- Location: LCCOMB_X31_Y16_N18
\U1|U3|address[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[12]~12_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~24_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~24_combout\,
	datac => \U1|U3|address\(12),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[12]~12_combout\);

-- Location: FF_X31_Y16_N19
\U1|U3|address[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[12]~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(12));

-- Location: LCCOMB_X32_Y16_N28
\U1|U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~0_combout\ = (\U1|U3|address\(11) & (!\U1|U3|address\(10) & (!\U1|U3|address\(9) & !\U1|U3|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(11),
	datab => \U1|U3|address\(10),
	datac => \U1|U3|address\(9),
	datad => \U1|U3|address\(12),
	combout => \U1|U3|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y16_N30
\U1|U3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~3_combout\ = (\U1|U3|address\(0) & (\U1|U3|Equal0~1_combout\ & (\U1|U3|Equal0~2_combout\ & \U1|U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(0),
	datab => \U1|U3|Equal0~1_combout\,
	datac => \U1|U3|Equal0~2_combout\,
	datad => \U1|U3|Equal0~0_combout\,
	combout => \U1|U3|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y16_N10
\U1|U3|address[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[0]~0_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~0_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~0_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(0),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[0]~0_combout\);

-- Location: FF_X31_Y16_N11
\U1|U3|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(0));

-- Location: LCCOMB_X31_Y16_N26
\U1|U3|address[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[2]~2_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~4_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~4_combout\,
	datac => \U1|U3|address\(2),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[2]~2_combout\);

-- Location: FF_X31_Y16_N27
\U1|U3|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[2]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(2));

-- Location: LCCOMB_X31_Y16_N0
\U1|U3|address[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[11]~11_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~10_combout\ & (\U1|U3|Add0~22_combout\)) # (!\always2~10_combout\ & ((\U1|U3|address\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~22_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(11),
	datad => \always2~10_combout\,
	combout => \U1|U3|address[11]~11_combout\);

-- Location: FF_X31_Y16_N1
\U1|U3|address[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|address[11]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|address\(11));

-- Location: M9K_X25_Y16_N0
\U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001F0000001F0000001F0000001F00000003000000031E0000031E00",
	mem_init0 => X"00031E0000031E0000030600000306000003DE000003DE000003DE000003DE000003DE000003FE000003FE000003FE000003FE000003FF000003FF800003FF800003FF800007FF800007FFC00007FFC0001FFFC0001FFFE0001FFFF0607FFFF0607FFFF0607FFFF8607FFFF8607FFFF87FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFE3FFFFFFE1FFFFFFE007FFFFE007FFE3E007FFE1E007FFE1E007FFE0E007FFE06007FFE06007FFE06007FFE06007FFE067FFFFE067FFFFE067FFFFE067FFFFE26007FFF26007FFF3E007FFF3C007FFF1C7FFFFF007FFFFF007FFFFF007FC7FF007FC7FF007FC7FE007FC7F80007FFF80007FFF80007FFF80000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Dino_Game1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ControlUnit:U1|Dino:U3|DInoData1:U7|altsyncram:altsyncram_component|altsyncram_ak91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 4199,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y15_N0
\U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003E0000003E0000003E0000003E0000000600000F0600000F0600",
	mem_init0 => X"000F0600000F060000030600000306000003DE000003DE000003DE000003DE000003DE000003FE000003FE000003FE000003FE000003FF000003FF800003FF800003FF800007FF800007FFC00007FFC0001FFFC0001FFFE0001FFFF0607FFFF0607FFFF0607FFFF8607FFFF8607FFFF87FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFE7FFFFFFE3FFFFFFE1FFFFFFE007FFFFE007FFE3E007FFE1E007FFE1E007FFE0E007FFE06007FFE06007FFE06007FFE06007FFE067FFFFE067FFFFE067FFFFE067FFFFE26007FFF26007FFF3E007FFF3C007FFF1C7FFFFF007FFFFF007FFFFF007FC7FF007FC7FF007FC7FE007FC7F80007FFF80007FFF80007FFF80000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Dino_Game.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ControlUnit:U1|Dino:U3|DInoData:U6|altsyncram:altsyncram_component|altsyncram_pi91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 4199,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y15_N28
\U1|U3|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|q~0_combout\ = (\U1|U3|DinoImgFlag~q\ & ((\U1|U3|U6|altsyncram_component|auto_generated|q_a\(0)))) # (!\U1|U3|DinoImgFlag~q\ & (\U1|U3|U7|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoImgFlag~q\,
	datac => \U1|U3|U7|altsyncram_component|auto_generated|q_a\(0),
	datad => \U1|U3|U6|altsyncram_component|auto_generated|q_a\(0),
	combout => \U1|U3|q~0_combout\);

-- Location: FF_X24_Y15_N29
\U1|U3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|q~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|q~q\);

ww_VGA_RED <= \VGA_RED~output_o\;

ww_VGA_GREEN <= \VGA_GREEN~output_o\;

ww_VGA_BLUE <= \VGA_BLUE~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


