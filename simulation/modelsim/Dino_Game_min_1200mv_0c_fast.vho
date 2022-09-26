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

-- DATE "09/22/2022 15:07:32"

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
	q : OUT std_logic_vector(0 DOWNTO 0);
	qtree1 : OUT std_logic_vector(0 DOWNTO 0)
	);
END Main;

-- Design Ports Information
-- VGA_RED	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_GREEN	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLUE	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qtree1[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_qtree1 : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U2|clk_div[18]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U4|delay_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[8]~25_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[3]~15_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[4]~17_combout\ : std_logic;
SIGNAL \U1|U2|Add1~6_combout\ : std_logic;
SIGNAL \U1|U2|Add1~8_combout\ : std_logic;
SIGNAL \U1|U2|Add1~10_combout\ : std_logic;
SIGNAL \U1|U2|Add1~12_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[13]~41_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[17]~50\ : std_logic;
SIGNAL \U1|U2|clk_div[18]~51_combout\ : std_logic;
SIGNAL \U1|U3|Add0~0_combout\ : std_logic;
SIGNAL \U1|U3|Add0~2_combout\ : std_logic;
SIGNAL \U1|U3|Add0~5\ : std_logic;
SIGNAL \U1|U3|Add0~6_combout\ : std_logic;
SIGNAL \U1|U3|Add0~7\ : std_logic;
SIGNAL \U1|U3|Add0~8_combout\ : std_logic;
SIGNAL \U1|U3|Add0~9\ : std_logic;
SIGNAL \U1|U3|Add0~10_combout\ : std_logic;
SIGNAL \U1|U3|Add0~11\ : std_logic;
SIGNAL \U1|U3|Add0~12_combout\ : std_logic;
SIGNAL \U1|U3|Add0~13\ : std_logic;
SIGNAL \U1|U3|Add0~14_combout\ : std_logic;
SIGNAL \U1|U3|Add0~15\ : std_logic;
SIGNAL \U1|U3|Add0~16_combout\ : std_logic;
SIGNAL \U1|U3|Add0~17\ : std_logic;
SIGNAL \U1|U3|Add0~18_combout\ : std_logic;
SIGNAL \U1|U3|Add0~19\ : std_logic;
SIGNAL \U1|U3|Add0~20_combout\ : std_logic;
SIGNAL \U1|U3|Add0~21\ : std_logic;
SIGNAL \U1|U3|Add0~22_combout\ : std_logic;
SIGNAL \U1|U3|Add0~23\ : std_logic;
SIGNAL \U1|U3|Add0~24_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[18]~42_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[19]~44_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \ver_sync~1_combout\ : std_logic;
SIGNAL \U1|U4|flag~q\ : std_logic;
SIGNAL \U1|U4|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U4|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U4|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U3|DinoPosVerFrom[7]~0_combout\ : std_logic;
SIGNAL \KBclk~input_o\ : std_logic;
SIGNAL \KBin~input_o\ : std_logic;
SIGNAL \U1|U2|clk_div[18]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|U4|delay_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \U1|U4|KBdata[5]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[8]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[7]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[6]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[3]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[4]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[2]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[9]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|delay_clk[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[10]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[11]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[12]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[13]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[14]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[15]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[16]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[17]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[18]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[19]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[20]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[21]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[22]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[23]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[24]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[25]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[26]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[27]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[28]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[29]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[30]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|KBdata[31]~feeder_combout\ : std_logic;
SIGNAL \U1|U4|delay_clk[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_RED~output_o\ : std_logic;
SIGNAL \VGA_GREEN~output_o\ : std_logic;
SIGNAL \VGA_BLUE~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \qtree1[0]~output_o\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
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
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \hor_reg~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \ver_reg~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \ver_reg~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ver_reg~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \VGA_GREEN~0_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[2]~18_cout\ : std_logic;
SIGNAL \U1|U2|clk_div[2]~19_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[2]~20\ : std_logic;
SIGNAL \U1|U2|clk_div[3]~21_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[3]~22\ : std_logic;
SIGNAL \U1|U2|clk_div[4]~23_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[4]~24\ : std_logic;
SIGNAL \U1|U2|clk_div[5]~26\ : std_logic;
SIGNAL \U1|U2|clk_div[6]~27_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[6]~28\ : std_logic;
SIGNAL \U1|U2|clk_div[7]~30\ : std_logic;
SIGNAL \U1|U2|clk_div[8]~31_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[8]~32\ : std_logic;
SIGNAL \U1|U2|clk_div[9]~34\ : std_logic;
SIGNAL \U1|U2|clk_div[10]~35_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[10]~36\ : std_logic;
SIGNAL \U1|U2|clk_div[11]~37_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[11]~38\ : std_logic;
SIGNAL \U1|U2|clk_div[12]~39_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[12]~40\ : std_logic;
SIGNAL \U1|U2|clk_div[13]~42\ : std_logic;
SIGNAL \U1|U2|clk_div[14]~43_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[14]~44\ : std_logic;
SIGNAL \U1|U2|clk_div[15]~46\ : std_logic;
SIGNAL \U1|U2|clk_div[16]~48\ : std_logic;
SIGNAL \U1|U2|clk_div[17]~49_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[16]~47_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[15]~45_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[9]~33_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[7]~29_combout\ : std_logic;
SIGNAL \U1|U2|clk_div[5]~25_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~8_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~9\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~11_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~13_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~15_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~17_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~19_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~21_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~23_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~25_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~27_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~29_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~31_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~33_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~35_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~37_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~39_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[1]~41_cout\ : std_logic;
SIGNAL \U1|U3|clk_div[18]~43\ : std_logic;
SIGNAL \U1|U3|clk_div[19]~45\ : std_logic;
SIGNAL \U1|U3|clk_div[20]~46_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[20]~47\ : std_logic;
SIGNAL \U1|U3|clk_div[21]~48_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[21]~49\ : std_logic;
SIGNAL \U1|U3|clk_div[22]~50_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[22]~51\ : std_logic;
SIGNAL \U1|U3|clk_div[23]~52_combout\ : std_logic;
SIGNAL \U1|U3|clk_div[23]~53\ : std_logic;
SIGNAL \U1|U3|clk_div[24]~54_combout\ : std_logic;
SIGNAL \U1|U3|DinoImgFlag~q\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \always2~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \ver_reg~3_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \hor_reg~1_combout\ : std_logic;
SIGNAL \always2~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \always2~3_combout\ : std_logic;
SIGNAL \always2~4_combout\ : std_logic;
SIGNAL \always2~5_combout\ : std_logic;
SIGNAL \U1|U3|address[7]~7_combout\ : std_logic;
SIGNAL \U1|U3|address[8]~8_combout\ : std_logic;
SIGNAL \U1|U3|address[5]~5_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U3|address[11]~11_combout\ : std_logic;
SIGNAL \U1|U3|address[10]~10_combout\ : std_logic;
SIGNAL \U1|U3|address[12]~12_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U3|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U3|address[0]~0_combout\ : std_logic;
SIGNAL \U1|U3|address[1]~1_combout\ : std_logic;
SIGNAL \U1|U3|Add0~1\ : std_logic;
SIGNAL \U1|U3|Add0~3\ : std_logic;
SIGNAL \U1|U3|Add0~4_combout\ : std_logic;
SIGNAL \U1|U3|address[2]~2_combout\ : std_logic;
SIGNAL \U1|U3|address[3]~3_combout\ : std_logic;
SIGNAL \U1|U3|address[4]~4_combout\ : std_logic;
SIGNAL \U1|U3|address[6]~6_combout\ : std_logic;
SIGNAL \U1|U3|address[9]~9_combout\ : std_logic;
SIGNAL \U1|U3|q~0_combout\ : std_logic;
SIGNAL \U1|U3|q~q\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~4_combout\ : std_logic;
SIGNAL \red~0_combout\ : std_logic;
SIGNAL \red~q\ : std_logic;
SIGNAL \VGA_RED~0_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[0]~29_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[1]~10_cout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[1]~12\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[2]~13_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[2]~14\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[3]~16\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[4]~18\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[5]~19_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[5]~20\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[6]~21_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[6]~22\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[7]~23_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[7]~24\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[8]~25_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[8]~26\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[9]~27_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorTo[1]~11_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~15_cout\ : std_logic;
SIGNAL \LessThan5~17_cout\ : std_logic;
SIGNAL \LessThan5~18_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \ver_reg~4_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \green~0_combout\ : std_logic;
SIGNAL \U1|U2|Add1~1\ : std_logic;
SIGNAL \U1|U2|Add1~2_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[1]~10_cout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[1]~11_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[1]~12\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[2]~14\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[3]~16\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[4]~17_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[4]~18\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[5]~19_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[5]~20\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[6]~21_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[6]~22\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[7]~23_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[7]~24\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[8]~26\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[9]~27_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[3]~15_combout\ : std_logic;
SIGNAL \U1|U2|hudPosHorFrom[2]~13_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~15_cout\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~18_combout\ : std_logic;
SIGNAL \green~1_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[12]~0_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[1]~6_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[4]~9_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[5]~10_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~3_combout\ : std_logic;
SIGNAL \U1|U2|Add1~0_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[0]~5_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~4_combout\ : std_logic;
SIGNAL \U1|U2|Add1~26_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[13]~3_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~0_combout\ : std_logic;
SIGNAL \U1|U2|Add1~18_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[9]~14_combout\ : std_logic;
SIGNAL \U1|U2|Add1~16_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[8]~13_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~1_combout\ : std_logic;
SIGNAL \U1|U2|Equal0~2_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[14]~1_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[14]~2_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[6]~11_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[3]~8_combout\ : std_logic;
SIGNAL \U1|U2|Add1~3\ : std_logic;
SIGNAL \U1|U2|Add1~4_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[2]~7_combout\ : std_logic;
SIGNAL \U1|U2|Add1~5\ : std_logic;
SIGNAL \U1|U2|Add1~7\ : std_logic;
SIGNAL \U1|U2|Add1~9\ : std_logic;
SIGNAL \U1|U2|Add1~11\ : std_logic;
SIGNAL \U1|U2|Add1~13\ : std_logic;
SIGNAL \U1|U2|Add1~14_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[7]~12_combout\ : std_logic;
SIGNAL \U1|U2|Add1~15\ : std_logic;
SIGNAL \U1|U2|Add1~17\ : std_logic;
SIGNAL \U1|U2|Add1~19\ : std_logic;
SIGNAL \U1|U2|Add1~20_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[10]~15_combout\ : std_logic;
SIGNAL \U1|U2|Add1~21\ : std_logic;
SIGNAL \U1|U2|Add1~22_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[11]~16_combout\ : std_logic;
SIGNAL \U1|U2|Add1~23\ : std_logic;
SIGNAL \U1|U2|Add1~24_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[12]~17_combout\ : std_logic;
SIGNAL \U1|U2|Add1~25\ : std_logic;
SIGNAL \U1|U2|Add1~27\ : std_logic;
SIGNAL \U1|U2|Add1~28_combout\ : std_logic;
SIGNAL \U1|U2|address_counter_1[14]~4_combout\ : std_logic;
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\ : std_logic;
SIGNAL \green~2_combout\ : std_logic;
SIGNAL \green~3_combout\ : std_logic;
SIGNAL \green~q\ : std_logic;
SIGNAL \VGA_GREEN~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \hor_sync~0_combout\ : std_logic;
SIGNAL \hor_sync~q\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \ver_sync~0_combout\ : std_logic;
SIGNAL \ver_sync~2_combout\ : std_logic;
SIGNAL \ver_sync~q\ : std_logic;
SIGNAL \U1|U4|KBdata\ : std_logic_vector(32 DOWNTO 0);
SIGNAL ver_reg : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|U2|clk_div\ : std_logic_vector(25 DOWNTO 0);
SIGNAL hor_reg : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|U2|address_counter_1\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|U3|clk_div\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U1|U3|DinoPosVerFrom\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode39w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U2|hudPosHorFrom\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|U3|U6|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode48w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|U2|U1|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1|U3|U7|altsyncram_component|auto_generated|q_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U1|U3|address\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|U2|hudPosHorTo\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|U4|delay_clk\ : std_logic_vector(2 DOWNTO 0);
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
qtree1 <= ww_qtree1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\U1|U2|address_counter_1\(12) & \U1|U2|address_counter_1\(11) & \U1|U2|address_counter_1\(10) & \U1|U2|address_counter_1\(9) & \U1|U2|address_counter_1\(8) & 
\U1|U2|address_counter_1\(7) & \U1|U2|address_counter_1\(6) & \U1|U2|address_counter_1\(5) & \U1|U2|address_counter_1\(4) & \U1|U2|address_counter_1\(3) & \U1|U2|address_counter_1\(2) & \U1|U2|address_counter_1\(1) & 
\U1|U2|address_counter_1\(0));

\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|U2|address_counter_1\(12) & \U1|U2|address_counter_1\(11) & \U1|U2|address_counter_1\(10) & \U1|U2|address_counter_1\(9) & \U1|U2|address_counter_1\(8) & 
\U1|U2|address_counter_1\(7) & \U1|U2|address_counter_1\(6) & \U1|U2|address_counter_1\(5) & \U1|U2|address_counter_1\(4) & \U1|U2|address_counter_1\(3) & \U1|U2|address_counter_1\(2) & \U1|U2|address_counter_1\(1) & 
\U1|U2|address_counter_1\(0));

\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\U1|U2|address_counter_1\(5) & \U1|U2|address_counter_1\(4) & \U1|U2|address_counter_1\(3) & \U1|U2|address_counter_1\(2) & \U1|U2|address_counter_1\(1) & 
\U1|U2|address_counter_1\(0));

\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|U3|address\(12) & \U1|U3|address\(11) & \U1|U3|address\(10) & \U1|U3|address\(9) & \U1|U3|address\(8) & \U1|U3|address\(7) & \U1|U3|address\(6) & 
\U1|U3|address\(5) & \U1|U3|address\(4) & \U1|U3|address\(3) & \U1|U3|address\(2) & \U1|U3|address\(1) & \U1|U3|address\(0));

\U1|U3|U6|altsyncram_component|auto_generated|q_a\(0) <= \U1|U3|U6|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U1|U3|address\(12) & \U1|U3|address\(11) & \U1|U3|address\(10) & \U1|U3|address\(9) & \U1|U3|address\(8) & \U1|U3|address\(7) & \U1|U3|address\(6) & 
\U1|U3|address\(5) & \U1|U3|address\(4) & \U1|U3|address\(3) & \U1|U3|address\(2) & \U1|U3|address\(1) & \U1|U3|address\(0));

\U1|U3|U7|altsyncram_component|auto_generated|q_a\(0) <= \U1|U3|U7|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U1|U2|clk_div[18]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|U2|clk_div\(18));

\U1|U4|delay_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|U4|delay_clk\(1));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ver_sync~q\ <= NOT \ver_sync~q\;
\ALT_INV_hor_sync~q\ <= NOT \hor_sync~q\;

-- Location: M9K_X25_Y18_N0
\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFF00000000000000018FF00001FFC000000000000000000003F00000FFC000000000000000000003F00000FFC000000000000000000003F000007F8000000000000000000003F000003F0000000000000000000003F000003F0000000000000000000003F000003F0000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F000000000000000000000000000",
	mem_init2 => X"03F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003",
	mem_init1 => X"F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F0",
	mem_init0 => X"0000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003F00000000000000000000000000003FFF800000000000000000000000003FFF800000000000000000000000003FFFC00000000000000000000000003FFFC00000000000000000000000003FFFC00000000000000000000000003FFFC00000000000000000000000003FFFC00000000000000000000000003F03C",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tree_fin1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ControlUnit:U1|Huddle:U2|tree1:U1|altsyncram:altsyncram_component|altsyncram_ti91:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_depth => 16440,
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
	ena0 => \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode39w\(2),
	portaaddr => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y17_N0
\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000040001000000001000040001000040001000040001000040001000040001",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tree_fin1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ControlUnit:U1|Huddle:U2|tree1:U1|altsyncram:altsyncram_component|altsyncram_ti91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 16440,
	port_a_logical_ram_width => 1,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode48w\(2),
	portaaddr => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: FF_X21_Y19_N23
\U1|U2|hudPosHorFrom[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[8]~25_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(8));

-- Location: FF_X22_Y19_N13
\U1|U2|hudPosHorTo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[4]~17_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(4));

-- Location: FF_X22_Y19_N11
\U1|U2|hudPosHorTo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[3]~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(3));

-- Location: M9K_X25_Y20_N0
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

-- Location: FF_X22_Y21_N17
\U1|U2|clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[18]~51_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(18));

-- Location: LCCOMB_X21_Y19_N22
\U1|U2|hudPosHorFrom[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[8]~25_combout\ = (\U1|U2|hudPosHorFrom\(8) & ((GND) # (!\U1|U2|hudPosHorFrom[7]~24\))) # (!\U1|U2|hudPosHorFrom\(8) & (\U1|U2|hudPosHorFrom[7]~24\ $ (GND)))
-- \U1|U2|hudPosHorFrom[8]~26\ = CARRY((\U1|U2|hudPosHorFrom\(8)) # (!\U1|U2|hudPosHorFrom[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorFrom\(8),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[7]~24\,
	combout => \U1|U2|hudPosHorFrom[8]~25_combout\,
	cout => \U1|U2|hudPosHorFrom[8]~26\);

-- Location: LCCOMB_X22_Y19_N10
\U1|U2|hudPosHorTo[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[3]~15_combout\ = (\U1|U2|hudPosHorTo\(3) & (\U1|U2|hudPosHorTo[2]~14\ & VCC)) # (!\U1|U2|hudPosHorTo\(3) & (!\U1|U2|hudPosHorTo[2]~14\))
-- \U1|U2|hudPosHorTo[3]~16\ = CARRY((!\U1|U2|hudPosHorTo\(3) & !\U1|U2|hudPosHorTo[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(3),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[2]~14\,
	combout => \U1|U2|hudPosHorTo[3]~15_combout\,
	cout => \U1|U2|hudPosHorTo[3]~16\);

-- Location: LCCOMB_X22_Y19_N12
\U1|U2|hudPosHorTo[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[4]~17_combout\ = (\U1|U2|hudPosHorTo\(4) & (!\U1|U2|hudPosHorTo[3]~16\)) # (!\U1|U2|hudPosHorTo\(4) & ((\U1|U2|hudPosHorTo[3]~16\) # (GND)))
-- \U1|U2|hudPosHorTo[4]~18\ = CARRY((!\U1|U2|hudPosHorTo[3]~16\) # (!\U1|U2|hudPosHorTo\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(4),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[3]~16\,
	combout => \U1|U2|hudPosHorTo[4]~17_combout\,
	cout => \U1|U2|hudPosHorTo[4]~18\);

-- Location: LCCOMB_X26_Y19_N6
\U1|U2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~6_combout\ = (\U1|U2|address_counter_1\(3) & (!\U1|U2|Add1~5\)) # (!\U1|U2|address_counter_1\(3) & ((\U1|U2|Add1~5\) # (GND)))
-- \U1|U2|Add1~7\ = CARRY((!\U1|U2|Add1~5\) # (!\U1|U2|address_counter_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(3),
	datad => VCC,
	cin => \U1|U2|Add1~5\,
	combout => \U1|U2|Add1~6_combout\,
	cout => \U1|U2|Add1~7\);

-- Location: LCCOMB_X26_Y19_N8
\U1|U2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~8_combout\ = (\U1|U2|address_counter_1\(4) & (\U1|U2|Add1~7\ $ (GND))) # (!\U1|U2|address_counter_1\(4) & (!\U1|U2|Add1~7\ & VCC))
-- \U1|U2|Add1~9\ = CARRY((\U1|U2|address_counter_1\(4) & !\U1|U2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(4),
	datad => VCC,
	cin => \U1|U2|Add1~7\,
	combout => \U1|U2|Add1~8_combout\,
	cout => \U1|U2|Add1~9\);

-- Location: LCCOMB_X26_Y19_N10
\U1|U2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~10_combout\ = (\U1|U2|address_counter_1\(5) & (!\U1|U2|Add1~9\)) # (!\U1|U2|address_counter_1\(5) & ((\U1|U2|Add1~9\) # (GND)))
-- \U1|U2|Add1~11\ = CARRY((!\U1|U2|Add1~9\) # (!\U1|U2|address_counter_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(5),
	datad => VCC,
	cin => \U1|U2|Add1~9\,
	combout => \U1|U2|Add1~10_combout\,
	cout => \U1|U2|Add1~11\);

-- Location: LCCOMB_X26_Y19_N12
\U1|U2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~12_combout\ = (\U1|U2|address_counter_1\(6) & (\U1|U2|Add1~11\ $ (GND))) # (!\U1|U2|address_counter_1\(6) & (!\U1|U2|Add1~11\ & VCC))
-- \U1|U2|Add1~13\ = CARRY((\U1|U2|address_counter_1\(6) & !\U1|U2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(6),
	datad => VCC,
	cin => \U1|U2|Add1~11\,
	combout => \U1|U2|Add1~12_combout\,
	cout => \U1|U2|Add1~13\);

-- Location: FF_X22_Y21_N7
\U1|U2|clk_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[13]~41_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(13));

-- Location: LCCOMB_X22_Y21_N6
\U1|U2|clk_div[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[13]~41_combout\ = (\U1|U2|clk_div\(13) & (\U1|U2|clk_div[12]~40\ $ (GND))) # (!\U1|U2|clk_div\(13) & (!\U1|U2|clk_div[12]~40\ & VCC))
-- \U1|U2|clk_div[13]~42\ = CARRY((\U1|U2|clk_div\(13) & !\U1|U2|clk_div[12]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(13),
	datad => VCC,
	cin => \U1|U2|clk_div[12]~40\,
	combout => \U1|U2|clk_div[13]~41_combout\,
	cout => \U1|U2|clk_div[13]~42\);

-- Location: LCCOMB_X22_Y21_N14
\U1|U2|clk_div[17]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[17]~49_combout\ = (\U1|U2|clk_div\(17) & (\U1|U2|clk_div[16]~48\ $ (GND))) # (!\U1|U2|clk_div\(17) & (!\U1|U2|clk_div[16]~48\ & VCC))
-- \U1|U2|clk_div[17]~50\ = CARRY((\U1|U2|clk_div\(17) & !\U1|U2|clk_div[16]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(17),
	datad => VCC,
	cin => \U1|U2|clk_div[16]~48\,
	combout => \U1|U2|clk_div[17]~49_combout\,
	cout => \U1|U2|clk_div[17]~50\);

-- Location: LCCOMB_X22_Y21_N16
\U1|U2|clk_div[18]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[18]~51_combout\ = \U1|U2|clk_div\(18) $ (\U1|U2|clk_div[17]~50\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(18),
	cin => \U1|U2|clk_div[17]~50\,
	combout => \U1|U2|clk_div[18]~51_combout\);

-- Location: LCCOMB_X23_Y20_N0
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

-- Location: LCCOMB_X23_Y20_N2
\U1|U3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~2_combout\ = (\U1|U3|address\(1) & (!\U1|U3|Add0~1\)) # (!\U1|U3|address\(1) & ((\U1|U3|Add0~1\) # (GND)))
-- \U1|U3|Add0~3\ = CARRY((!\U1|U3|Add0~1\) # (!\U1|U3|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(1),
	datad => VCC,
	cin => \U1|U3|Add0~1\,
	combout => \U1|U3|Add0~2_combout\,
	cout => \U1|U3|Add0~3\);

-- Location: LCCOMB_X23_Y20_N4
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

-- Location: LCCOMB_X23_Y20_N6
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

-- Location: LCCOMB_X23_Y20_N8
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

-- Location: LCCOMB_X23_Y20_N10
\U1|U3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~10_combout\ = (\U1|U3|address\(5) & (!\U1|U3|Add0~9\)) # (!\U1|U3|address\(5) & ((\U1|U3|Add0~9\) # (GND)))
-- \U1|U3|Add0~11\ = CARRY((!\U1|U3|Add0~9\) # (!\U1|U3|address\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(5),
	datad => VCC,
	cin => \U1|U3|Add0~9\,
	combout => \U1|U3|Add0~10_combout\,
	cout => \U1|U3|Add0~11\);

-- Location: LCCOMB_X23_Y20_N12
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

-- Location: LCCOMB_X23_Y20_N14
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

-- Location: LCCOMB_X23_Y20_N16
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

-- Location: LCCOMB_X23_Y20_N18
\U1|U3|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~18_combout\ = (\U1|U3|address\(9) & (!\U1|U3|Add0~17\)) # (!\U1|U3|address\(9) & ((\U1|U3|Add0~17\) # (GND)))
-- \U1|U3|Add0~19\ = CARRY((!\U1|U3|Add0~17\) # (!\U1|U3|address\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|address\(9),
	datad => VCC,
	cin => \U1|U3|Add0~17\,
	combout => \U1|U3|Add0~18_combout\,
	cout => \U1|U3|Add0~19\);

-- Location: LCCOMB_X23_Y20_N20
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

-- Location: LCCOMB_X23_Y20_N22
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

-- Location: LCCOMB_X23_Y20_N24
\U1|U3|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Add0~24_combout\ = \U1|U3|Add0~23\ $ (!\U1|U3|address\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|U3|address\(12),
	cin => \U1|U3|Add0~23\,
	combout => \U1|U3|Add0~24_combout\);

-- Location: FF_X21_Y21_N13
\U1|U3|clk_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[19]~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(19));

-- Location: FF_X21_Y21_N11
\U1|U3|clk_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[18]~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(18));

-- Location: LCCOMB_X21_Y21_N10
\U1|U3|clk_div[18]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[18]~42_combout\ = (\U1|U3|clk_div\(18) & (!\U1|U3|clk_div[1]~41_cout\)) # (!\U1|U3|clk_div\(18) & ((\U1|U3|clk_div[1]~41_cout\) # (GND)))
-- \U1|U3|clk_div[18]~43\ = CARRY((!\U1|U3|clk_div[1]~41_cout\) # (!\U1|U3|clk_div\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(18),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~41_cout\,
	combout => \U1|U3|clk_div[18]~42_combout\,
	cout => \U1|U3|clk_div[18]~43\);

-- Location: LCCOMB_X21_Y21_N12
\U1|U3|clk_div[19]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[19]~44_combout\ = (\U1|U3|clk_div\(19) & (\U1|U3|clk_div[18]~43\ $ (GND))) # (!\U1|U3|clk_div\(19) & (!\U1|U3|clk_div[18]~43\ & VCC))
-- \U1|U3|clk_div[19]~45\ = CARRY((\U1|U3|clk_div\(19) & !\U1|U3|clk_div[18]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(19),
	datad => VCC,
	cin => \U1|U3|clk_div[18]~43\,
	combout => \U1|U3|clk_div[19]~44_combout\,
	cout => \U1|U3|clk_div[19]~45\);

-- Location: LCCOMB_X22_Y21_N22
\LessThan11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (!ver_reg(1) & (!ver_reg(7) & (!ver_reg(9) & !ver_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(1),
	datab => ver_reg(7),
	datac => ver_reg(9),
	datad => ver_reg(0),
	combout => \LessThan11~2_combout\);

-- Location: FF_X20_Y20_N27
\U1|U3|DinoPosVerFrom[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U3|DinoPosVerFrom[7]~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|DinoPosVerFrom\(7));

-- Location: LCCOMB_X19_Y19_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!hor_reg(10) & (!hor_reg(8) & !hor_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(10),
	datac => hor_reg(8),
	datad => hor_reg(9),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y20_N12
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (ver_reg(8)) # ((ver_reg(5) & ((ver_reg(4)) # (ver_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(5),
	datab => ver_reg(8),
	datac => ver_reg(4),
	datad => ver_reg(3),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X20_Y20_N18
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (ver_reg(7)) # ((ver_reg(6)) # ((\U1|U3|DinoPosVerFrom\(7)) # (\LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(7),
	datab => ver_reg(6),
	datac => \U1|U3|DinoPosVerFrom\(7),
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X20_Y20_N22
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!ver_reg(6) & (!ver_reg(5) & ((!ver_reg(4)) # (!ver_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(3),
	datab => ver_reg(6),
	datac => ver_reg(4),
	datad => ver_reg(5),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y19_N30
\ver_sync~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_sync~1_combout\ = (\ver_sync~q\ & (!ver_reg(3) & (ver_reg(1) & !ver_reg(4)))) # (!\ver_sync~q\ & (ver_reg(3) & (!ver_reg(1) & ver_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_sync~q\,
	datab => ver_reg(3),
	datac => ver_reg(1),
	datad => ver_reg(4),
	combout => \ver_sync~1_combout\);

-- Location: LCCOMB_X24_Y19_N14
\U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode39w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode39w\(2) = (!\U1|U2|address_counter_1\(14) & \U1|U2|address_counter_1\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|address_counter_1\(14),
	datad => \U1|U2|address_counter_1\(13),
	combout => \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode39w\(2));

-- Location: LCCOMB_X24_Y19_N8
\U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode48w[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode48w\(2) = (\U1|U2|address_counter_1\(14) & !\U1|U2|address_counter_1\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|address_counter_1\(14),
	datad => \U1|U2|address_counter_1\(13),
	combout => \U1|U2|U1|altsyncram_component|auto_generated|rden_decode|w_anode48w\(2));

-- Location: FF_X26_Y18_N17
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

-- Location: FF_X26_Y18_N23
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

-- Location: FF_X26_Y18_N5
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

-- Location: FF_X26_Y18_N7
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

-- Location: FF_X26_Y18_N29
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

-- Location: LCCOMB_X26_Y18_N30
\U1|U4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Equal0~0_combout\ = (!\U1|U4|KBdata\(8) & (!\U1|U4|KBdata\(7) & (!\U1|U4|KBdata\(9) & \U1|U4|KBdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|KBdata\(8),
	datab => \U1|U4|KBdata\(7),
	datac => \U1|U4|KBdata\(9),
	datad => \U1|U4|KBdata\(6),
	combout => \U1|U4|Equal0~0_combout\);

-- Location: FF_X26_Y18_N9
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

-- Location: FF_X26_Y18_N3
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

-- Location: FF_X26_Y18_N13
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

-- Location: FF_X26_Y18_N15
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

-- Location: FF_X26_Y18_N1
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

-- Location: LCCOMB_X26_Y18_N26
\U1|U4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|Equal0~1_combout\ = (!\U1|U4|KBdata\(5) & (\U1|U4|KBdata\(4) & (!\U1|U4|KBdata\(3) & !\U1|U4|KBdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U4|KBdata\(5),
	datab => \U1|U4|KBdata\(4),
	datac => \U1|U4|KBdata\(3),
	datad => \U1|U4|KBdata\(2),
	combout => \U1|U4|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y18_N16
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

-- Location: LCCOMB_X24_Y20_N2
\U1|U3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~2_combout\ = (\U1|U3|address\(3) & (\U1|U3|address\(1) & (\U1|U3|address\(4) & \U1|U3|address\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(3),
	datab => \U1|U3|address\(1),
	datac => \U1|U3|address\(4),
	datad => \U1|U3|address\(2),
	combout => \U1|U3|Equal0~2_combout\);

-- Location: FF_X40_Y15_N7
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

-- Location: FF_X26_Y18_N21
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

-- Location: FF_X40_Y15_N1
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

-- Location: FF_X26_Y18_N11
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

-- Location: FF_X26_Y18_N25
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

-- Location: FF_X27_Y18_N5
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

-- Location: FF_X27_Y18_N3
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

-- Location: FF_X27_Y18_N1
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

-- Location: FF_X27_Y18_N11
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

-- Location: FF_X27_Y18_N13
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

-- Location: FF_X28_Y18_N5
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

-- Location: FF_X28_Y18_N3
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

-- Location: FF_X28_Y18_N25
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

-- Location: FF_X28_Y18_N31
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

-- Location: FF_X28_Y18_N1
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

-- Location: FF_X28_Y18_N23
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

-- Location: FF_X28_Y18_N9
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

-- Location: FF_X28_Y18_N7
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

-- Location: FF_X28_Y18_N17
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

-- Location: FF_X28_Y18_N19
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

-- Location: FF_X28_Y18_N21
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

-- Location: FF_X28_Y18_N11
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

-- Location: FF_X28_Y18_N29
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

-- Location: FF_X28_Y18_N27
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

-- Location: FF_X28_Y18_N13
\U1|U4|KBdata[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U4|delay_clk[1]~clkctrl_outclk\,
	asdata => \KBin~input_o\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U4|KBdata\(32));

-- Location: LCCOMB_X26_Y18_N18
\U1|U3|DinoPosVerFrom[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|DinoPosVerFrom[7]~0_combout\ = !\U1|U4|flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|flag~q\,
	combout => \U1|U3|DinoPosVerFrom[7]~0_combout\);

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

-- Location: CLKCTRL_G13
\U1|U2|clk_div[18]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|U2|clk_div[18]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|U2|clk_div[18]~clkctrl_outclk\);

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

-- Location: LCCOMB_X26_Y18_N12
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

-- Location: LCCOMB_X26_Y18_N6
\U1|U4|KBdata[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[8]~feeder_combout\ = \U1|U4|KBdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(9),
	combout => \U1|U4|KBdata[8]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N28
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

-- Location: LCCOMB_X26_Y18_N22
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

-- Location: LCCOMB_X26_Y18_N14
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

-- Location: LCCOMB_X26_Y18_N2
\U1|U4|KBdata[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[4]~feeder_combout\ = \U1|U4|KBdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(5),
	combout => \U1|U4|KBdata[4]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N0
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

-- Location: LCCOMB_X26_Y18_N8
\U1|U4|KBdata[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[1]~feeder_combout\ = \U1|U4|KBdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(2),
	combout => \U1|U4|KBdata[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N4
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

-- Location: LCCOMB_X40_Y15_N6
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

-- Location: LCCOMB_X26_Y18_N20
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

-- Location: LCCOMB_X26_Y18_N10
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

-- Location: LCCOMB_X26_Y18_N24
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

-- Location: LCCOMB_X27_Y18_N4
\U1|U4|KBdata[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[13]~feeder_combout\ = \U1|U4|KBdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(14),
	combout => \U1|U4|KBdata[13]~feeder_combout\);

-- Location: LCCOMB_X27_Y18_N2
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

-- Location: LCCOMB_X27_Y18_N0
\U1|U4|KBdata[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[15]~feeder_combout\ = \U1|U4|KBdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|U4|KBdata\(16),
	combout => \U1|U4|KBdata[15]~feeder_combout\);

-- Location: LCCOMB_X27_Y18_N10
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

-- Location: LCCOMB_X27_Y18_N12
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

-- Location: LCCOMB_X28_Y18_N4
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

-- Location: LCCOMB_X28_Y18_N2
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

-- Location: LCCOMB_X28_Y18_N24
\U1|U4|KBdata[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[20]~feeder_combout\ = \U1|U4|KBdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(21),
	combout => \U1|U4|KBdata[20]~feeder_combout\);

-- Location: LCCOMB_X28_Y18_N30
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

-- Location: LCCOMB_X28_Y18_N0
\U1|U4|KBdata[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[22]~feeder_combout\ = \U1|U4|KBdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(23),
	combout => \U1|U4|KBdata[22]~feeder_combout\);

-- Location: LCCOMB_X28_Y18_N22
\U1|U4|KBdata[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[23]~feeder_combout\ = \U1|U4|KBdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(24),
	combout => \U1|U4|KBdata[23]~feeder_combout\);

-- Location: LCCOMB_X28_Y18_N8
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

-- Location: LCCOMB_X28_Y18_N6
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

-- Location: LCCOMB_X28_Y18_N16
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

-- Location: LCCOMB_X28_Y18_N18
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

-- Location: LCCOMB_X28_Y18_N20
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

-- Location: LCCOMB_X28_Y18_N10
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

-- Location: LCCOMB_X28_Y18_N28
\U1|U4|KBdata[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U4|KBdata[30]~feeder_combout\ = \U1|U4|KBdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U4|KBdata\(31),
	combout => \U1|U4|KBdata[30]~feeder_combout\);

-- Location: LCCOMB_X28_Y18_N26
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

-- Location: LCCOMB_X40_Y15_N0
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
	i => \VGA_RED~0_combout\,
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
	i => \VGA_GREEN~1_combout\,
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
	i => GND,
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

-- Location: IOOBUF_X23_Y29_N30
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

-- Location: IOOBUF_X23_Y29_N23
\qtree1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\,
	devoe => ww_devoe,
	o => \qtree1[0]~output_o\);

-- Location: LCCOMB_X21_Y20_N22
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (ver_reg(6) & (\Add0~11\ $ (GND))) # (!ver_reg(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((ver_reg(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

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

-- Location: LCCOMB_X19_Y19_N6
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = hor_reg(0) $ (VCC)
-- \Add1~1\ = CARRY(hor_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X20_Y19_N27
\hor_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add1~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(0));

-- Location: LCCOMB_X19_Y19_N8
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (hor_reg(1) & (!\Add1~1\)) # (!hor_reg(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!hor_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X20_Y19_N29
\hor_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add1~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hor_reg(1));

-- Location: LCCOMB_X19_Y19_N10
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (hor_reg(2) & (\Add1~3\ $ (GND))) # (!hor_reg(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((hor_reg(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y19_N12
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

-- Location: LCCOMB_X19_Y19_N14
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

-- Location: LCCOMB_X19_Y19_N16
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

-- Location: FF_X19_Y19_N17
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

-- Location: LCCOMB_X19_Y19_N18
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

-- Location: FF_X19_Y19_N19
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

-- Location: LCCOMB_X19_Y19_N20
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

-- Location: FF_X19_Y19_N21
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

-- Location: LCCOMB_X19_Y19_N22
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

-- Location: LCCOMB_X19_Y19_N24
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

-- Location: FF_X19_Y19_N25
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

-- Location: LCCOMB_X19_Y19_N26
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

-- Location: FF_X19_Y19_N23
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

-- Location: LCCOMB_X20_Y19_N24
\LessThan13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (!hor_reg(6) & (!hor_reg(5) & !hor_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(6),
	datac => hor_reg(5),
	datad => hor_reg(7),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X20_Y19_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!hor_reg(4) & (!hor_reg(9) & (!hor_reg(8) & \LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(4),
	datab => hor_reg(9),
	datac => hor_reg(8),
	datad => \LessThan13~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\hor_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hor_reg~0_combout\ = (\Add1~20_combout\ & (((!\Equal0~0_combout\) # (!hor_reg(0))) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => hor_reg(0),
	datac => \Add1~20_combout\,
	datad => \Equal0~0_combout\,
	combout => \hor_reg~0_combout\);

-- Location: FF_X19_Y19_N29
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

-- Location: FF_X19_Y19_N13
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

-- Location: LCCOMB_X20_Y19_N28
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (hor_reg(2) & (hor_reg(10) & (hor_reg(1) & hor_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(2),
	datab => hor_reg(10),
	datac => hor_reg(1),
	datad => hor_reg(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y19_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (hor_reg(0) & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => hor_reg(0),
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X21_Y20_N23
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

-- Location: LCCOMB_X21_Y20_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ver_reg(0) $ (VCC)
-- \Add0~1\ = CARRY(ver_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y20_N12
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ver_reg(1) & (!\Add0~1\)) # (!ver_reg(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ver_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X21_Y20_N14
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

-- Location: FF_X21_Y20_N15
\ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst~input_o\,
	ena => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ver_reg(2));

-- Location: FF_X21_Y20_N11
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

-- Location: LCCOMB_X21_Y20_N24
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (ver_reg(7) & (!\Add0~13\)) # (!ver_reg(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!ver_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X21_Y20_N4
\ver_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~2_combout\ = (!\Equal1~2_combout\ & \Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add0~14_combout\,
	combout => \ver_reg~2_combout\);

-- Location: FF_X21_Y20_N5
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

-- Location: LCCOMB_X20_Y20_N10
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (ver_reg(9) & (!ver_reg(8) & (ver_reg(0) & ver_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(8),
	datac => ver_reg(0),
	datad => ver_reg(7),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y20_N20
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!ver_reg(5) & (!ver_reg(6) & (!ver_reg(2) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(5),
	datab => ver_reg(6),
	datac => ver_reg(2),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X20_Y20_N6
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!ver_reg(1) & (\Equal1~1_combout\ & (ver_reg(4) & ver_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(1),
	datab => \Equal1~1_combout\,
	datac => ver_reg(4),
	datad => ver_reg(3),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X21_Y20_N16
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ver_reg(3) & (!\Add0~5\)) # (!ver_reg(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!ver_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ver_reg(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X21_Y20_N2
\ver_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~1_combout\ = (!\Equal1~2_combout\ & \Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add0~6_combout\,
	combout => \ver_reg~1_combout\);

-- Location: FF_X21_Y20_N3
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

-- Location: LCCOMB_X21_Y20_N18
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

-- Location: LCCOMB_X21_Y20_N8
\ver_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~0_combout\ = (\Add0~8_combout\ & !\Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datac => \Equal1~2_combout\,
	combout => \ver_reg~0_combout\);

-- Location: FF_X21_Y20_N9
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

-- Location: LCCOMB_X21_Y20_N20
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

-- Location: FF_X21_Y20_N21
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

-- Location: LCCOMB_X21_Y20_N26
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (ver_reg(8) & (\Add0~15\ $ (GND))) # (!ver_reg(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((ver_reg(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X21_Y20_N27
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

-- Location: LCCOMB_X20_Y20_N26
\LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (!ver_reg(7) & !ver_reg(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(7),
	datad => ver_reg(8),
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X20_Y19_N22
\LessThan13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (!hor_reg(10) & (((\LessThan13~0_combout\) # (!hor_reg(9))) # (!hor_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(8),
	datab => hor_reg(10),
	datac => \LessThan13~0_combout\,
	datad => hor_reg(9),
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X20_Y20_N16
\LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = ((!ver_reg(5) & ((!ver_reg(4)) # (!ver_reg(3))))) # (!ver_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(3),
	datab => ver_reg(6),
	datac => ver_reg(4),
	datad => ver_reg(5),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X20_Y20_N0
\VGA_GREEN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GREEN~0_combout\ = (\LessThan13~1_combout\ & (((\LessThan12~1_combout\ & \LessThan12~0_combout\)) # (!ver_reg(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => \LessThan12~1_combout\,
	datac => \LessThan13~1_combout\,
	datad => \LessThan12~0_combout\,
	combout => \VGA_GREEN~0_combout\);

-- Location: LCCOMB_X22_Y22_N14
\U1|U2|clk_div[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[2]~18_cout\ = CARRY((\U1|U3|clk_div\(1) & hor_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(1),
	datab => hor_reg(0),
	datad => VCC,
	cout => \U1|U2|clk_div[2]~18_cout\);

-- Location: LCCOMB_X22_Y22_N16
\U1|U2|clk_div[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[2]~19_combout\ = (\U1|U2|clk_div\(2) & (!\U1|U2|clk_div[2]~18_cout\)) # (!\U1|U2|clk_div\(2) & ((\U1|U2|clk_div[2]~18_cout\) # (GND)))
-- \U1|U2|clk_div[2]~20\ = CARRY((!\U1|U2|clk_div[2]~18_cout\) # (!\U1|U2|clk_div\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(2),
	datad => VCC,
	cin => \U1|U2|clk_div[2]~18_cout\,
	combout => \U1|U2|clk_div[2]~19_combout\,
	cout => \U1|U2|clk_div[2]~20\);

-- Location: FF_X22_Y22_N17
\U1|U2|clk_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[2]~19_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(2));

-- Location: LCCOMB_X22_Y22_N18
\U1|U2|clk_div[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[3]~21_combout\ = (\U1|U2|clk_div\(3) & (\U1|U2|clk_div[2]~20\ $ (GND))) # (!\U1|U2|clk_div\(3) & (!\U1|U2|clk_div[2]~20\ & VCC))
-- \U1|U2|clk_div[3]~22\ = CARRY((\U1|U2|clk_div\(3) & !\U1|U2|clk_div[2]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(3),
	datad => VCC,
	cin => \U1|U2|clk_div[2]~20\,
	combout => \U1|U2|clk_div[3]~21_combout\,
	cout => \U1|U2|clk_div[3]~22\);

-- Location: FF_X22_Y22_N19
\U1|U2|clk_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[3]~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(3));

-- Location: LCCOMB_X22_Y22_N20
\U1|U2|clk_div[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[4]~23_combout\ = (\U1|U2|clk_div\(4) & (!\U1|U2|clk_div[3]~22\)) # (!\U1|U2|clk_div\(4) & ((\U1|U2|clk_div[3]~22\) # (GND)))
-- \U1|U2|clk_div[4]~24\ = CARRY((!\U1|U2|clk_div[3]~22\) # (!\U1|U2|clk_div\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(4),
	datad => VCC,
	cin => \U1|U2|clk_div[3]~22\,
	combout => \U1|U2|clk_div[4]~23_combout\,
	cout => \U1|U2|clk_div[4]~24\);

-- Location: FF_X22_Y22_N21
\U1|U2|clk_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[4]~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(4));

-- Location: LCCOMB_X22_Y22_N22
\U1|U2|clk_div[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[5]~25_combout\ = (\U1|U2|clk_div\(5) & (\U1|U2|clk_div[4]~24\ $ (GND))) # (!\U1|U2|clk_div\(5) & (!\U1|U2|clk_div[4]~24\ & VCC))
-- \U1|U2|clk_div[5]~26\ = CARRY((\U1|U2|clk_div\(5) & !\U1|U2|clk_div[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(5),
	datad => VCC,
	cin => \U1|U2|clk_div[4]~24\,
	combout => \U1|U2|clk_div[5]~25_combout\,
	cout => \U1|U2|clk_div[5]~26\);

-- Location: LCCOMB_X22_Y22_N24
\U1|U2|clk_div[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[6]~27_combout\ = (\U1|U2|clk_div\(6) & (!\U1|U2|clk_div[5]~26\)) # (!\U1|U2|clk_div\(6) & ((\U1|U2|clk_div[5]~26\) # (GND)))
-- \U1|U2|clk_div[6]~28\ = CARRY((!\U1|U2|clk_div[5]~26\) # (!\U1|U2|clk_div\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(6),
	datad => VCC,
	cin => \U1|U2|clk_div[5]~26\,
	combout => \U1|U2|clk_div[6]~27_combout\,
	cout => \U1|U2|clk_div[6]~28\);

-- Location: FF_X22_Y22_N25
\U1|U2|clk_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[6]~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(6));

-- Location: LCCOMB_X22_Y22_N26
\U1|U2|clk_div[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[7]~29_combout\ = (\U1|U2|clk_div\(7) & (\U1|U2|clk_div[6]~28\ $ (GND))) # (!\U1|U2|clk_div\(7) & (!\U1|U2|clk_div[6]~28\ & VCC))
-- \U1|U2|clk_div[7]~30\ = CARRY((\U1|U2|clk_div\(7) & !\U1|U2|clk_div[6]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(7),
	datad => VCC,
	cin => \U1|U2|clk_div[6]~28\,
	combout => \U1|U2|clk_div[7]~29_combout\,
	cout => \U1|U2|clk_div[7]~30\);

-- Location: LCCOMB_X22_Y22_N28
\U1|U2|clk_div[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[8]~31_combout\ = (\U1|U2|clk_div\(8) & (!\U1|U2|clk_div[7]~30\)) # (!\U1|U2|clk_div\(8) & ((\U1|U2|clk_div[7]~30\) # (GND)))
-- \U1|U2|clk_div[8]~32\ = CARRY((!\U1|U2|clk_div[7]~30\) # (!\U1|U2|clk_div\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(8),
	datad => VCC,
	cin => \U1|U2|clk_div[7]~30\,
	combout => \U1|U2|clk_div[8]~31_combout\,
	cout => \U1|U2|clk_div[8]~32\);

-- Location: FF_X22_Y22_N29
\U1|U2|clk_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[8]~31_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(8));

-- Location: LCCOMB_X22_Y22_N30
\U1|U2|clk_div[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[9]~33_combout\ = (\U1|U2|clk_div\(9) & (\U1|U2|clk_div[8]~32\ $ (GND))) # (!\U1|U2|clk_div\(9) & (!\U1|U2|clk_div[8]~32\ & VCC))
-- \U1|U2|clk_div[9]~34\ = CARRY((\U1|U2|clk_div\(9) & !\U1|U2|clk_div[8]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(9),
	datad => VCC,
	cin => \U1|U2|clk_div[8]~32\,
	combout => \U1|U2|clk_div[9]~33_combout\,
	cout => \U1|U2|clk_div[9]~34\);

-- Location: LCCOMB_X22_Y21_N0
\U1|U2|clk_div[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[10]~35_combout\ = (\U1|U2|clk_div\(10) & (!\U1|U2|clk_div[9]~34\)) # (!\U1|U2|clk_div\(10) & ((\U1|U2|clk_div[9]~34\) # (GND)))
-- \U1|U2|clk_div[10]~36\ = CARRY((!\U1|U2|clk_div[9]~34\) # (!\U1|U2|clk_div\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(10),
	datad => VCC,
	cin => \U1|U2|clk_div[9]~34\,
	combout => \U1|U2|clk_div[10]~35_combout\,
	cout => \U1|U2|clk_div[10]~36\);

-- Location: FF_X22_Y21_N1
\U1|U2|clk_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[10]~35_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(10));

-- Location: LCCOMB_X22_Y21_N2
\U1|U2|clk_div[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[11]~37_combout\ = (\U1|U2|clk_div\(11) & (\U1|U2|clk_div[10]~36\ $ (GND))) # (!\U1|U2|clk_div\(11) & (!\U1|U2|clk_div[10]~36\ & VCC))
-- \U1|U2|clk_div[11]~38\ = CARRY((\U1|U2|clk_div\(11) & !\U1|U2|clk_div[10]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(11),
	datad => VCC,
	cin => \U1|U2|clk_div[10]~36\,
	combout => \U1|U2|clk_div[11]~37_combout\,
	cout => \U1|U2|clk_div[11]~38\);

-- Location: FF_X22_Y21_N3
\U1|U2|clk_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[11]~37_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(11));

-- Location: LCCOMB_X22_Y21_N4
\U1|U2|clk_div[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[12]~39_combout\ = (\U1|U2|clk_div\(12) & (!\U1|U2|clk_div[11]~38\)) # (!\U1|U2|clk_div\(12) & ((\U1|U2|clk_div[11]~38\) # (GND)))
-- \U1|U2|clk_div[12]~40\ = CARRY((!\U1|U2|clk_div[11]~38\) # (!\U1|U2|clk_div\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(12),
	datad => VCC,
	cin => \U1|U2|clk_div[11]~38\,
	combout => \U1|U2|clk_div[12]~39_combout\,
	cout => \U1|U2|clk_div[12]~40\);

-- Location: FF_X22_Y21_N5
\U1|U2|clk_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[12]~39_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(12));

-- Location: LCCOMB_X22_Y21_N8
\U1|U2|clk_div[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[14]~43_combout\ = (\U1|U2|clk_div\(14) & (!\U1|U2|clk_div[13]~42\)) # (!\U1|U2|clk_div\(14) & ((\U1|U2|clk_div[13]~42\) # (GND)))
-- \U1|U2|clk_div[14]~44\ = CARRY((!\U1|U2|clk_div[13]~42\) # (!\U1|U2|clk_div\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(14),
	datad => VCC,
	cin => \U1|U2|clk_div[13]~42\,
	combout => \U1|U2|clk_div[14]~43_combout\,
	cout => \U1|U2|clk_div[14]~44\);

-- Location: FF_X22_Y21_N9
\U1|U2|clk_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[14]~43_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(14));

-- Location: LCCOMB_X22_Y21_N10
\U1|U2|clk_div[15]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[15]~45_combout\ = (\U1|U2|clk_div\(15) & (\U1|U2|clk_div[14]~44\ $ (GND))) # (!\U1|U2|clk_div\(15) & (!\U1|U2|clk_div[14]~44\ & VCC))
-- \U1|U2|clk_div[15]~46\ = CARRY((\U1|U2|clk_div\(15) & !\U1|U2|clk_div[14]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(15),
	datad => VCC,
	cin => \U1|U2|clk_div[14]~44\,
	combout => \U1|U2|clk_div[15]~45_combout\,
	cout => \U1|U2|clk_div[15]~46\);

-- Location: LCCOMB_X22_Y21_N12
\U1|U2|clk_div[16]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|clk_div[16]~47_combout\ = (\U1|U2|clk_div\(16) & (!\U1|U2|clk_div[15]~46\)) # (!\U1|U2|clk_div\(16) & ((\U1|U2|clk_div[15]~46\) # (GND)))
-- \U1|U2|clk_div[16]~48\ = CARRY((!\U1|U2|clk_div[15]~46\) # (!\U1|U2|clk_div\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(16),
	datad => VCC,
	cin => \U1|U2|clk_div[15]~46\,
	combout => \U1|U2|clk_div[16]~47_combout\,
	cout => \U1|U2|clk_div[16]~48\);

-- Location: FF_X22_Y21_N15
\U1|U2|clk_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[17]~49_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(17));

-- Location: FF_X22_Y21_N13
\U1|U2|clk_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[16]~47_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(16));

-- Location: FF_X22_Y21_N11
\U1|U2|clk_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[15]~45_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(15));

-- Location: FF_X22_Y22_N31
\U1|U2|clk_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[9]~33_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(9));

-- Location: FF_X22_Y22_N27
\U1|U2|clk_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[7]~29_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(7));

-- Location: FF_X22_Y22_N23
\U1|U2|clk_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|clk_div[5]~25_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|clk_div\(5));

-- Location: LCCOMB_X21_Y22_N8
\U1|U3|clk_div[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~8_combout\ = (hor_reg(0) & (\U1|U3|clk_div\(1) $ (VCC))) # (!hor_reg(0) & (\U1|U3|clk_div\(1) & VCC))
-- \U1|U3|clk_div[1]~9\ = CARRY((hor_reg(0) & \U1|U3|clk_div\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(0),
	datab => \U1|U3|clk_div\(1),
	datad => VCC,
	combout => \U1|U3|clk_div[1]~8_combout\,
	cout => \U1|U3|clk_div[1]~9\);

-- Location: FF_X21_Y22_N9
\U1|U3|clk_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[1]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(1));

-- Location: LCCOMB_X21_Y22_N10
\U1|U3|clk_div[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~11_cout\ = CARRY((!\U1|U3|clk_div[1]~9\) # (!\U1|U2|clk_div\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(2),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~9\,
	cout => \U1|U3|clk_div[1]~11_cout\);

-- Location: LCCOMB_X21_Y22_N12
\U1|U3|clk_div[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~13_cout\ = CARRY((\U1|U2|clk_div\(3) & !\U1|U3|clk_div[1]~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(3),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~11_cout\,
	cout => \U1|U3|clk_div[1]~13_cout\);

-- Location: LCCOMB_X21_Y22_N14
\U1|U3|clk_div[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~15_cout\ = CARRY((!\U1|U3|clk_div[1]~13_cout\) # (!\U1|U2|clk_div\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(4),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~13_cout\,
	cout => \U1|U3|clk_div[1]~15_cout\);

-- Location: LCCOMB_X21_Y22_N16
\U1|U3|clk_div[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~17_cout\ = CARRY((\U1|U2|clk_div\(5) & !\U1|U3|clk_div[1]~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(5),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~15_cout\,
	cout => \U1|U3|clk_div[1]~17_cout\);

-- Location: LCCOMB_X21_Y22_N18
\U1|U3|clk_div[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~19_cout\ = CARRY((!\U1|U3|clk_div[1]~17_cout\) # (!\U1|U2|clk_div\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(6),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~17_cout\,
	cout => \U1|U3|clk_div[1]~19_cout\);

-- Location: LCCOMB_X21_Y22_N20
\U1|U3|clk_div[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~21_cout\ = CARRY((\U1|U2|clk_div\(7) & !\U1|U3|clk_div[1]~19_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(7),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~19_cout\,
	cout => \U1|U3|clk_div[1]~21_cout\);

-- Location: LCCOMB_X21_Y22_N22
\U1|U3|clk_div[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~23_cout\ = CARRY((!\U1|U3|clk_div[1]~21_cout\) # (!\U1|U2|clk_div\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(8),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~21_cout\,
	cout => \U1|U3|clk_div[1]~23_cout\);

-- Location: LCCOMB_X21_Y22_N24
\U1|U3|clk_div[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~25_cout\ = CARRY((\U1|U2|clk_div\(9) & !\U1|U3|clk_div[1]~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(9),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~23_cout\,
	cout => \U1|U3|clk_div[1]~25_cout\);

-- Location: LCCOMB_X21_Y22_N26
\U1|U3|clk_div[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~27_cout\ = CARRY((!\U1|U3|clk_div[1]~25_cout\) # (!\U1|U2|clk_div\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(10),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~25_cout\,
	cout => \U1|U3|clk_div[1]~27_cout\);

-- Location: LCCOMB_X21_Y22_N28
\U1|U3|clk_div[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~29_cout\ = CARRY((\U1|U2|clk_div\(11) & !\U1|U3|clk_div[1]~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(11),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~27_cout\,
	cout => \U1|U3|clk_div[1]~29_cout\);

-- Location: LCCOMB_X21_Y22_N30
\U1|U3|clk_div[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~31_cout\ = CARRY((!\U1|U3|clk_div[1]~29_cout\) # (!\U1|U2|clk_div\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(12),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~29_cout\,
	cout => \U1|U3|clk_div[1]~31_cout\);

-- Location: LCCOMB_X21_Y21_N0
\U1|U3|clk_div[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~33_cout\ = CARRY((\U1|U2|clk_div\(13) & !\U1|U3|clk_div[1]~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|clk_div\(13),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~31_cout\,
	cout => \U1|U3|clk_div[1]~33_cout\);

-- Location: LCCOMB_X21_Y21_N2
\U1|U3|clk_div[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~35_cout\ = CARRY((!\U1|U3|clk_div[1]~33_cout\) # (!\U1|U2|clk_div\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(14),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~33_cout\,
	cout => \U1|U3|clk_div[1]~35_cout\);

-- Location: LCCOMB_X21_Y21_N4
\U1|U3|clk_div[1]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~37_cout\ = CARRY((\U1|U2|clk_div\(15) & !\U1|U3|clk_div[1]~35_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(15),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~35_cout\,
	cout => \U1|U3|clk_div[1]~37_cout\);

-- Location: LCCOMB_X21_Y21_N6
\U1|U3|clk_div[1]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~39_cout\ = CARRY((!\U1|U3|clk_div[1]~37_cout\) # (!\U1|U2|clk_div\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(16),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~37_cout\,
	cout => \U1|U3|clk_div[1]~39_cout\);

-- Location: LCCOMB_X21_Y21_N8
\U1|U3|clk_div[1]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[1]~41_cout\ = CARRY((\U1|U2|clk_div\(17) & !\U1|U3|clk_div[1]~39_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|clk_div\(17),
	datad => VCC,
	cin => \U1|U3|clk_div[1]~39_cout\,
	cout => \U1|U3|clk_div[1]~41_cout\);

-- Location: LCCOMB_X21_Y21_N14
\U1|U3|clk_div[20]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[20]~46_combout\ = (\U1|U3|clk_div\(20) & (!\U1|U3|clk_div[19]~45\)) # (!\U1|U3|clk_div\(20) & ((\U1|U3|clk_div[19]~45\) # (GND)))
-- \U1|U3|clk_div[20]~47\ = CARRY((!\U1|U3|clk_div[19]~45\) # (!\U1|U3|clk_div\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(20),
	datad => VCC,
	cin => \U1|U3|clk_div[19]~45\,
	combout => \U1|U3|clk_div[20]~46_combout\,
	cout => \U1|U3|clk_div[20]~47\);

-- Location: FF_X21_Y21_N15
\U1|U3|clk_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[20]~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(20));

-- Location: LCCOMB_X21_Y21_N16
\U1|U3|clk_div[21]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[21]~48_combout\ = (\U1|U3|clk_div\(21) & (\U1|U3|clk_div[20]~47\ $ (GND))) # (!\U1|U3|clk_div\(21) & (!\U1|U3|clk_div[20]~47\ & VCC))
-- \U1|U3|clk_div[21]~49\ = CARRY((\U1|U3|clk_div\(21) & !\U1|U3|clk_div[20]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(21),
	datad => VCC,
	cin => \U1|U3|clk_div[20]~47\,
	combout => \U1|U3|clk_div[21]~48_combout\,
	cout => \U1|U3|clk_div[21]~49\);

-- Location: FF_X21_Y21_N17
\U1|U3|clk_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[21]~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(21));

-- Location: LCCOMB_X21_Y21_N18
\U1|U3|clk_div[22]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[22]~50_combout\ = (\U1|U3|clk_div\(22) & (!\U1|U3|clk_div[21]~49\)) # (!\U1|U3|clk_div\(22) & ((\U1|U3|clk_div[21]~49\) # (GND)))
-- \U1|U3|clk_div[22]~51\ = CARRY((!\U1|U3|clk_div[21]~49\) # (!\U1|U3|clk_div\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(22),
	datad => VCC,
	cin => \U1|U3|clk_div[21]~49\,
	combout => \U1|U3|clk_div[22]~50_combout\,
	cout => \U1|U3|clk_div[22]~51\);

-- Location: FF_X21_Y21_N19
\U1|U3|clk_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[22]~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(22));

-- Location: LCCOMB_X21_Y21_N20
\U1|U3|clk_div[23]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[23]~52_combout\ = (\U1|U3|clk_div\(23) & (\U1|U3|clk_div[22]~51\ $ (GND))) # (!\U1|U3|clk_div\(23) & (!\U1|U3|clk_div[22]~51\ & VCC))
-- \U1|U3|clk_div[23]~53\ = CARRY((\U1|U3|clk_div\(23) & !\U1|U3|clk_div[22]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|clk_div\(23),
	datad => VCC,
	cin => \U1|U3|clk_div[22]~51\,
	combout => \U1|U3|clk_div[23]~52_combout\,
	cout => \U1|U3|clk_div[23]~53\);

-- Location: FF_X21_Y21_N21
\U1|U3|clk_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[23]~52_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(23));

-- Location: LCCOMB_X21_Y21_N22
\U1|U3|clk_div[24]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|clk_div[24]~54_combout\ = \U1|U3|clk_div\(24) $ (\U1|U3|clk_div[23]~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|clk_div\(24),
	cin => \U1|U3|clk_div[23]~53\,
	combout => \U1|U3|clk_div[24]~54_combout\);

-- Location: FF_X21_Y21_N23
\U1|U3|clk_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U3|clk_div[24]~54_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U3|clk_div\(24));

-- Location: FF_X21_Y21_N29
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

-- Location: LCCOMB_X20_Y20_N24
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\U1|U3|DinoPosVerFrom\(7) & (((!ver_reg(7)) # (!ver_reg(5))) # (!ver_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosVerFrom\(7),
	datab => ver_reg(6),
	datac => ver_reg(5),
	datad => ver_reg(7),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X20_Y20_N4
\LessThan2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ((\LessThan2~0_combout\) # ((\LessThan2~1_combout\ & !ver_reg(7)))) # (!ver_reg(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => ver_reg(7),
	datac => ver_reg(8),
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X20_Y20_N8
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (ver_reg(8) & ((ver_reg(7)) # ((ver_reg(5) & ver_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(5),
	datab => ver_reg(8),
	datac => ver_reg(6),
	datad => ver_reg(7),
	combout => \LessThan3~0_combout\);

-- Location: FF_X19_Y19_N11
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

-- Location: LCCOMB_X19_Y19_N2
\always2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = ((!hor_reg(3) & !hor_reg(2))) # (!hor_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datac => hor_reg(2),
	datad => hor_reg(7),
	combout => \always2~0_combout\);

-- Location: LCCOMB_X20_Y20_N2
\always2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~1_combout\ = (\always2~0_combout\ & ((!\LessThan3~0_combout\) # (!\U1|U3|DinoPosVerFrom\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|DinoPosVerFrom\(7),
	datac => \LessThan3~0_combout\,
	datad => \always2~0_combout\,
	combout => \always2~1_combout\);

-- Location: LCCOMB_X21_Y20_N28
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ver_reg(9) $ (\Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X21_Y20_N30
\ver_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~3_combout\ = (!\Equal1~2_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add0~18_combout\,
	combout => \ver_reg~3_combout\);

-- Location: FF_X21_Y20_N31
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

-- Location: LCCOMB_X20_Y19_N20
\hor_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hor_reg~1_combout\ = (\Add1~8_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!hor_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(0),
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~8_combout\,
	combout => \hor_reg~1_combout\);

-- Location: FF_X20_Y19_N21
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

-- Location: LCCOMB_X19_Y19_N4
\always2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~2_combout\ = ((!hor_reg(5) & (!hor_reg(4) & !hor_reg(6)))) # (!hor_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(7),
	datab => hor_reg(5),
	datac => hor_reg(4),
	datad => hor_reg(6),
	combout => \always2~2_combout\);

-- Location: LCCOMB_X19_Y19_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!hor_reg(3) & (!hor_reg(4) & !hor_reg(2)))) # (!hor_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datab => hor_reg(6),
	datac => hor_reg(4),
	datad => hor_reg(2),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y20_N24
\always2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~3_combout\ = (\LessThan0~0_combout\ & ((hor_reg(7)) # ((hor_reg(5) & !\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => hor_reg(7),
	datac => hor_reg(5),
	datad => \LessThan0~1_combout\,
	combout => \always2~3_combout\);

-- Location: LCCOMB_X22_Y20_N10
\always2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~4_combout\ = (\always2~2_combout\ & (\always2~3_combout\ & ((!ver_reg(9)) # (!\LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => ver_reg(9),
	datac => \always2~2_combout\,
	datad => \always2~3_combout\,
	combout => \always2~4_combout\);

-- Location: LCCOMB_X22_Y20_N28
\always2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \always2~5_combout\ = (\always2~1_combout\ & (\always2~4_combout\ & ((ver_reg(9)) # (!\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => \LessThan2~2_combout\,
	datac => \always2~1_combout\,
	datad => \always2~4_combout\,
	combout => \always2~5_combout\);

-- Location: LCCOMB_X22_Y20_N4
\U1|U3|address[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[7]~7_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~14_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~14_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(7),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[7]~7_combout\);

-- Location: FF_X22_Y20_N5
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

-- Location: LCCOMB_X22_Y20_N14
\U1|U3|address[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[8]~8_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~16_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~16_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(8),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[8]~8_combout\);

-- Location: FF_X22_Y20_N15
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

-- Location: LCCOMB_X22_Y20_N16
\U1|U3|address[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[5]~5_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~10_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~10_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(5),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[5]~5_combout\);

-- Location: FF_X22_Y20_N17
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

-- Location: LCCOMB_X24_Y20_N12
\U1|U3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~1_combout\ = (\U1|U3|address\(6) & (\U1|U3|address\(7) & (!\U1|U3|address\(8) & \U1|U3|address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(6),
	datab => \U1|U3|address\(7),
	datac => \U1|U3|address\(8),
	datad => \U1|U3|address\(5),
	combout => \U1|U3|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y20_N12
\U1|U3|address[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[11]~11_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~22_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~22_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(11),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[11]~11_combout\);

-- Location: FF_X22_Y20_N13
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

-- Location: LCCOMB_X22_Y20_N26
\U1|U3|address[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[10]~10_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~20_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~20_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(10),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[10]~10_combout\);

-- Location: FF_X22_Y20_N27
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

-- Location: LCCOMB_X22_Y20_N2
\U1|U3|address[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[12]~12_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~24_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~24_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(12),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[12]~12_combout\);

-- Location: FF_X22_Y20_N3
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

-- Location: LCCOMB_X24_Y20_N6
\U1|U3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~0_combout\ = (!\U1|U3|address\(9) & (\U1|U3|address\(11) & (!\U1|U3|address\(10) & !\U1|U3|address\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|address\(9),
	datab => \U1|U3|address\(11),
	datac => \U1|U3|address\(10),
	datad => \U1|U3|address\(12),
	combout => \U1|U3|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\U1|U3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|Equal0~3_combout\ = (\U1|U3|Equal0~2_combout\ & (\U1|U3|Equal0~1_combout\ & (\U1|U3|address\(0) & \U1|U3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~2_combout\,
	datab => \U1|U3|Equal0~1_combout\,
	datac => \U1|U3|address\(0),
	datad => \U1|U3|Equal0~0_combout\,
	combout => \U1|U3|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y20_N0
\U1|U3|address[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[0]~0_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~0_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~0_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(0),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[0]~0_combout\);

-- Location: FF_X22_Y20_N1
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

-- Location: LCCOMB_X22_Y20_N6
\U1|U3|address[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[1]~1_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~2_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~2_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(1),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[1]~1_combout\);

-- Location: FF_X22_Y20_N7
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

-- Location: LCCOMB_X23_Y20_N30
\U1|U3|address[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[2]~2_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~4_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Equal0~3_combout\,
	datab => \U1|U3|Add0~4_combout\,
	datac => \U1|U3|address\(2),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[2]~2_combout\);

-- Location: FF_X23_Y20_N31
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

-- Location: LCCOMB_X22_Y20_N8
\U1|U3|address[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[3]~3_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~6_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~6_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(3),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[3]~3_combout\);

-- Location: FF_X22_Y20_N9
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

-- Location: LCCOMB_X22_Y20_N18
\U1|U3|address[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[4]~4_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~8_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~8_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(4),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[4]~4_combout\);

-- Location: FF_X22_Y20_N19
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

-- Location: LCCOMB_X22_Y20_N22
\U1|U3|address[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[6]~6_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~12_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~12_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(6),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[6]~6_combout\);

-- Location: FF_X22_Y20_N23
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

-- Location: LCCOMB_X22_Y20_N20
\U1|U3|address[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|address[9]~9_combout\ = (!\U1|U3|Equal0~3_combout\ & ((\always2~5_combout\ & (\U1|U3|Add0~18_combout\)) # (!\always2~5_combout\ & ((\U1|U3|address\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|Add0~18_combout\,
	datab => \U1|U3|Equal0~3_combout\,
	datac => \U1|U3|address\(9),
	datad => \always2~5_combout\,
	combout => \U1|U3|address[9]~9_combout\);

-- Location: FF_X22_Y20_N21
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

-- Location: M9K_X25_Y21_N0
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

-- Location: LCCOMB_X23_Y21_N4
\U1|U3|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U3|q~0_combout\ = (\U1|U3|DinoImgFlag~q\ & ((\U1|U3|U6|altsyncram_component|auto_generated|q_a\(0)))) # (!\U1|U3|DinoImgFlag~q\ & (\U1|U3|U7|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|U7|altsyncram_component|auto_generated|q_a\(0),
	datac => \U1|U3|DinoImgFlag~q\,
	datad => \U1|U3|U6|altsyncram_component|auto_generated|q_a\(0),
	combout => \U1|U3|q~0_combout\);

-- Location: FF_X23_Y21_N5
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

-- Location: LCCOMB_X22_Y21_N24
\LessThan11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = (\LessThan11~2_combout\ & (!ver_reg(3) & (!hor_reg(3) & !ver_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~2_combout\,
	datab => ver_reg(3),
	datac => hor_reg(3),
	datad => ver_reg(2),
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X20_Y20_N14
\LessThan11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (!hor_reg(10) & (!hor_reg(0) & (!hor_reg(1) & !hor_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(10),
	datab => hor_reg(0),
	datac => hor_reg(1),
	datad => hor_reg(2),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X22_Y21_N28
\LessThan11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~4_combout\ = (\LessThan11~0_combout\ & (\LessThan11~3_combout\ & (\LessThan11~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \LessThan11~3_combout\,
	datac => \LessThan11~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \LessThan11~4_combout\);

-- Location: LCCOMB_X23_Y21_N12
\red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red~0_combout\ = (\LessThan11~4_combout\) # ((\U1|U3|q~q\ & \always2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U3|q~q\,
	datac => \always2~5_combout\,
	datad => \LessThan11~4_combout\,
	combout => \red~0_combout\);

-- Location: FF_X23_Y21_N13
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

-- Location: LCCOMB_X23_Y21_N18
\VGA_RED~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_RED~0_combout\ = (\VGA_GREEN~0_combout\ & \red~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_GREEN~0_combout\,
	datad => \red~q\,
	combout => \VGA_RED~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\U1|U2|hudPosHorFrom[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[0]~29_combout\ = !\U1|U2|hudPosHorFrom\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|hudPosHorFrom\(0),
	combout => \U1|U2|hudPosHorFrom[0]~29_combout\);

-- Location: FF_X22_Y19_N29
\U1|U2|hudPosHorFrom[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[0]~29_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(0));

-- Location: LCCOMB_X22_Y19_N4
\U1|U2|hudPosHorTo[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[1]~10_cout\ = CARRY(\U1|U2|hudPosHorFrom\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(0),
	datad => VCC,
	cout => \U1|U2|hudPosHorTo[1]~10_cout\);

-- Location: LCCOMB_X22_Y19_N6
\U1|U2|hudPosHorTo[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[1]~11_combout\ = (\U1|U2|hudPosHorTo\(1) & (\U1|U2|hudPosHorTo[1]~10_cout\ $ (GND))) # (!\U1|U2|hudPosHorTo\(1) & (!\U1|U2|hudPosHorTo[1]~10_cout\ & VCC))
-- \U1|U2|hudPosHorTo[1]~12\ = CARRY((\U1|U2|hudPosHorTo\(1) & !\U1|U2|hudPosHorTo[1]~10_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(1),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[1]~10_cout\,
	combout => \U1|U2|hudPosHorTo[1]~11_combout\,
	cout => \U1|U2|hudPosHorTo[1]~12\);

-- Location: LCCOMB_X22_Y19_N8
\U1|U2|hudPosHorTo[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[2]~13_combout\ = (\U1|U2|hudPosHorTo\(2) & ((GND) # (!\U1|U2|hudPosHorTo[1]~12\))) # (!\U1|U2|hudPosHorTo\(2) & (\U1|U2|hudPosHorTo[1]~12\ $ (GND)))
-- \U1|U2|hudPosHorTo[2]~14\ = CARRY((\U1|U2|hudPosHorTo\(2)) # (!\U1|U2|hudPosHorTo[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorTo\(2),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[1]~12\,
	combout => \U1|U2|hudPosHorTo[2]~13_combout\,
	cout => \U1|U2|hudPosHorTo[2]~14\);

-- Location: FF_X22_Y19_N9
\U1|U2|hudPosHorTo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[2]~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(2));

-- Location: LCCOMB_X22_Y19_N14
\U1|U2|hudPosHorTo[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[5]~19_combout\ = (\U1|U2|hudPosHorTo\(5) & (\U1|U2|hudPosHorTo[4]~18\ & VCC)) # (!\U1|U2|hudPosHorTo\(5) & (!\U1|U2|hudPosHorTo[4]~18\))
-- \U1|U2|hudPosHorTo[5]~20\ = CARRY((!\U1|U2|hudPosHorTo\(5) & !\U1|U2|hudPosHorTo[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorTo\(5),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[4]~18\,
	combout => \U1|U2|hudPosHorTo[5]~19_combout\,
	cout => \U1|U2|hudPosHorTo[5]~20\);

-- Location: FF_X22_Y19_N15
\U1|U2|hudPosHorTo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[5]~19_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(5));

-- Location: LCCOMB_X22_Y19_N16
\U1|U2|hudPosHorTo[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[6]~21_combout\ = (\U1|U2|hudPosHorTo\(6) & ((GND) # (!\U1|U2|hudPosHorTo[5]~20\))) # (!\U1|U2|hudPosHorTo\(6) & (\U1|U2|hudPosHorTo[5]~20\ $ (GND)))
-- \U1|U2|hudPosHorTo[6]~22\ = CARRY((\U1|U2|hudPosHorTo\(6)) # (!\U1|U2|hudPosHorTo[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorTo\(6),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[5]~20\,
	combout => \U1|U2|hudPosHorTo[6]~21_combout\,
	cout => \U1|U2|hudPosHorTo[6]~22\);

-- Location: FF_X22_Y19_N17
\U1|U2|hudPosHorTo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[6]~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(6));

-- Location: LCCOMB_X22_Y19_N18
\U1|U2|hudPosHorTo[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[7]~23_combout\ = (\U1|U2|hudPosHorTo\(7) & (\U1|U2|hudPosHorTo[6]~22\ $ (GND))) # (!\U1|U2|hudPosHorTo\(7) & (!\U1|U2|hudPosHorTo[6]~22\ & VCC))
-- \U1|U2|hudPosHorTo[7]~24\ = CARRY((\U1|U2|hudPosHorTo\(7) & !\U1|U2|hudPosHorTo[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorTo\(7),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[6]~22\,
	combout => \U1|U2|hudPosHorTo[7]~23_combout\,
	cout => \U1|U2|hudPosHorTo[7]~24\);

-- Location: FF_X22_Y19_N19
\U1|U2|hudPosHorTo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[7]~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(7));

-- Location: LCCOMB_X22_Y19_N20
\U1|U2|hudPosHorTo[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[8]~25_combout\ = (\U1|U2|hudPosHorTo\(8) & ((GND) # (!\U1|U2|hudPosHorTo[7]~24\))) # (!\U1|U2|hudPosHorTo\(8) & (\U1|U2|hudPosHorTo[7]~24\ $ (GND)))
-- \U1|U2|hudPosHorTo[8]~26\ = CARRY((\U1|U2|hudPosHorTo\(8)) # (!\U1|U2|hudPosHorTo[7]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorTo\(8),
	datad => VCC,
	cin => \U1|U2|hudPosHorTo[7]~24\,
	combout => \U1|U2|hudPosHorTo[8]~25_combout\,
	cout => \U1|U2|hudPosHorTo[8]~26\);

-- Location: FF_X22_Y19_N21
\U1|U2|hudPosHorTo[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[8]~25_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(8));

-- Location: LCCOMB_X22_Y19_N22
\U1|U2|hudPosHorTo[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorTo[9]~27_combout\ = \U1|U2|hudPosHorTo\(9) $ (!\U1|U2|hudPosHorTo[8]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(9),
	cin => \U1|U2|hudPosHorTo[8]~26\,
	combout => \U1|U2|hudPosHorTo[9]~27_combout\);

-- Location: FF_X22_Y19_N23
\U1|U2|hudPosHorTo[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[9]~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(9));

-- Location: FF_X22_Y19_N7
\U1|U2|hudPosHorTo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorTo[1]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorTo\(1));

-- Location: LCCOMB_X23_Y19_N6
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((hor_reg(0) & !\U1|U2|hudPosHorFrom\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(0),
	datab => \U1|U2|hudPosHorFrom\(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X23_Y19_N8
\LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((hor_reg(1) & (!\U1|U2|hudPosHorTo\(1) & !\LessThan5~1_cout\)) # (!hor_reg(1) & ((!\LessThan5~1_cout\) # (!\U1|U2|hudPosHorTo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(1),
	datab => \U1|U2|hudPosHorTo\(1),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X23_Y19_N10
\LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\U1|U2|hudPosHorTo\(2) & (hor_reg(2) & !\LessThan5~3_cout\)) # (!\U1|U2|hudPosHorTo\(2) & ((hor_reg(2)) # (!\LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(2),
	datab => hor_reg(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X23_Y19_N12
\LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((\U1|U2|hudPosHorTo\(3) & ((!\LessThan5~5_cout\) # (!hor_reg(3)))) # (!\U1|U2|hudPosHorTo\(3) & (!hor_reg(3) & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(3),
	datab => hor_reg(3),
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X23_Y19_N14
\LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((\U1|U2|hudPosHorTo\(4) & ((hor_reg(4)) # (!\LessThan5~7_cout\))) # (!\U1|U2|hudPosHorTo\(4) & (hor_reg(4) & !\LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(4),
	datab => hor_reg(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X23_Y19_N16
\LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((\U1|U2|hudPosHorTo\(5) & ((!\LessThan5~9_cout\) # (!hor_reg(5)))) # (!\U1|U2|hudPosHorTo\(5) & (!hor_reg(5) & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(5),
	datab => hor_reg(5),
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X23_Y19_N18
\LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((\U1|U2|hudPosHorTo\(6) & (hor_reg(6) & !\LessThan5~11_cout\)) # (!\U1|U2|hudPosHorTo\(6) & ((hor_reg(6)) # (!\LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(6),
	datab => hor_reg(6),
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X23_Y19_N20
\LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~15_cout\ = CARRY((hor_reg(7) & (!\U1|U2|hudPosHorTo\(7) & !\LessThan5~13_cout\)) # (!hor_reg(7) & ((!\LessThan5~13_cout\) # (!\U1|U2|hudPosHorTo\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(7),
	datab => \U1|U2|hudPosHorTo\(7),
	datad => VCC,
	cin => \LessThan5~13_cout\,
	cout => \LessThan5~15_cout\);

-- Location: LCCOMB_X23_Y19_N22
\LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~17_cout\ = CARRY((\U1|U2|hudPosHorTo\(8) & (hor_reg(8) & !\LessThan5~15_cout\)) # (!\U1|U2|hudPosHorTo\(8) & ((hor_reg(8)) # (!\LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorTo\(8),
	datab => hor_reg(8),
	datad => VCC,
	cin => \LessThan5~15_cout\,
	cout => \LessThan5~17_cout\);

-- Location: LCCOMB_X23_Y19_N24
\LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~18_combout\ = (hor_reg(9) & ((\LessThan5~17_cout\) # (!\U1|U2|hudPosHorTo\(9)))) # (!hor_reg(9) & (\LessThan5~17_cout\ & !\U1|U2|hudPosHorTo\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(9),
	datad => \U1|U2|hudPosHorTo\(9),
	cin => \LessThan5~17_cout\,
	combout => \LessThan5~18_combout\);

-- Location: LCCOMB_X21_Y20_N0
\LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!ver_reg(6) & (!ver_reg(4) & (!ver_reg(8) & !ver_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(6),
	datab => ver_reg(4),
	datac => ver_reg(8),
	datad => ver_reg(5),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\ver_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_reg~4_combout\ = (!\Equal1~2_combout\ & \Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~2_combout\,
	datad => \Add0~2_combout\,
	combout => \ver_reg~4_combout\);

-- Location: FF_X21_Y20_N7
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

-- Location: LCCOMB_X22_Y21_N20
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (ver_reg(2) & (ver_reg(3) & ((ver_reg(1)) # (ver_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(2),
	datab => ver_reg(3),
	datac => ver_reg(1),
	datad => ver_reg(0),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X22_Y21_N18
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (ver_reg(9) & ((ver_reg(7)) # ((\LessThan7~0_combout\) # (!\LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(7),
	datac => \LessThan11~0_combout\,
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X21_Y19_N4
\green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~0_combout\ = (!hor_reg(10) & ((ver_reg(9)) # ((ver_reg(8) & ver_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(8),
	datac => hor_reg(10),
	datad => ver_reg(7),
	combout => \green~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\U1|U2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~0_combout\ = \U1|U2|address_counter_1\(0) $ (VCC)
-- \U1|U2|Add1~1\ = CARRY(\U1|U2|address_counter_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(0),
	datad => VCC,
	combout => \U1|U2|Add1~0_combout\,
	cout => \U1|U2|Add1~1\);

-- Location: LCCOMB_X26_Y19_N2
\U1|U2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~2_combout\ = (\U1|U2|address_counter_1\(1) & (!\U1|U2|Add1~1\)) # (!\U1|U2|address_counter_1\(1) & ((\U1|U2|Add1~1\) # (GND)))
-- \U1|U2|Add1~3\ = CARRY((!\U1|U2|Add1~1\) # (!\U1|U2|address_counter_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(1),
	datad => VCC,
	cin => \U1|U2|Add1~1\,
	combout => \U1|U2|Add1~2_combout\,
	cout => \U1|U2|Add1~3\);

-- Location: LCCOMB_X22_Y20_N30
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!ver_reg(4) & (!ver_reg(6) & (!ver_reg(9) & !ver_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(4),
	datab => ver_reg(6),
	datac => ver_reg(9),
	datad => ver_reg(5),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\U1|U2|hudPosHorFrom[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[1]~10_cout\ = CARRY(\U1|U2|hudPosHorFrom\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(0),
	datad => VCC,
	cout => \U1|U2|hudPosHorFrom[1]~10_cout\);

-- Location: LCCOMB_X21_Y19_N8
\U1|U2|hudPosHorFrom[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[1]~11_combout\ = (\U1|U2|hudPosHorFrom\(1) & (\U1|U2|hudPosHorFrom[1]~10_cout\ & VCC)) # (!\U1|U2|hudPosHorFrom\(1) & (!\U1|U2|hudPosHorFrom[1]~10_cout\))
-- \U1|U2|hudPosHorFrom[1]~12\ = CARRY((!\U1|U2|hudPosHorFrom\(1) & !\U1|U2|hudPosHorFrom[1]~10_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(1),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[1]~10_cout\,
	combout => \U1|U2|hudPosHorFrom[1]~11_combout\,
	cout => \U1|U2|hudPosHorFrom[1]~12\);

-- Location: FF_X21_Y19_N9
\U1|U2|hudPosHorFrom[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[1]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(1));

-- Location: LCCOMB_X21_Y19_N10
\U1|U2|hudPosHorFrom[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[2]~13_combout\ = (\U1|U2|hudPosHorFrom\(2) & (!\U1|U2|hudPosHorFrom[1]~12\)) # (!\U1|U2|hudPosHorFrom\(2) & ((\U1|U2|hudPosHorFrom[1]~12\) # (GND)))
-- \U1|U2|hudPosHorFrom[2]~14\ = CARRY((!\U1|U2|hudPosHorFrom[1]~12\) # (!\U1|U2|hudPosHorFrom\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorFrom\(2),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[1]~12\,
	combout => \U1|U2|hudPosHorFrom[2]~13_combout\,
	cout => \U1|U2|hudPosHorFrom[2]~14\);

-- Location: LCCOMB_X21_Y19_N12
\U1|U2|hudPosHorFrom[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[3]~15_combout\ = (\U1|U2|hudPosHorFrom\(3) & (\U1|U2|hudPosHorFrom[2]~14\ & VCC)) # (!\U1|U2|hudPosHorFrom\(3) & (!\U1|U2|hudPosHorFrom[2]~14\))
-- \U1|U2|hudPosHorFrom[3]~16\ = CARRY((!\U1|U2|hudPosHorFrom\(3) & !\U1|U2|hudPosHorFrom[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorFrom\(3),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[2]~14\,
	combout => \U1|U2|hudPosHorFrom[3]~15_combout\,
	cout => \U1|U2|hudPosHorFrom[3]~16\);

-- Location: LCCOMB_X21_Y19_N14
\U1|U2|hudPosHorFrom[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[4]~17_combout\ = (\U1|U2|hudPosHorFrom\(4) & ((GND) # (!\U1|U2|hudPosHorFrom[3]~16\))) # (!\U1|U2|hudPosHorFrom\(4) & (\U1|U2|hudPosHorFrom[3]~16\ $ (GND)))
-- \U1|U2|hudPosHorFrom[4]~18\ = CARRY((\U1|U2|hudPosHorFrom\(4)) # (!\U1|U2|hudPosHorFrom[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(4),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[3]~16\,
	combout => \U1|U2|hudPosHorFrom[4]~17_combout\,
	cout => \U1|U2|hudPosHorFrom[4]~18\);

-- Location: FF_X21_Y19_N15
\U1|U2|hudPosHorFrom[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[4]~17_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(4));

-- Location: LCCOMB_X21_Y19_N16
\U1|U2|hudPosHorFrom[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[5]~19_combout\ = (\U1|U2|hudPosHorFrom\(5) & (\U1|U2|hudPosHorFrom[4]~18\ $ (GND))) # (!\U1|U2|hudPosHorFrom\(5) & (!\U1|U2|hudPosHorFrom[4]~18\ & VCC))
-- \U1|U2|hudPosHorFrom[5]~20\ = CARRY((\U1|U2|hudPosHorFrom\(5) & !\U1|U2|hudPosHorFrom[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(5),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[4]~18\,
	combout => \U1|U2|hudPosHorFrom[5]~19_combout\,
	cout => \U1|U2|hudPosHorFrom[5]~20\);

-- Location: FF_X21_Y19_N17
\U1|U2|hudPosHorFrom[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[5]~19_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(5));

-- Location: LCCOMB_X21_Y19_N18
\U1|U2|hudPosHorFrom[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[6]~21_combout\ = (\U1|U2|hudPosHorFrom\(6) & (!\U1|U2|hudPosHorFrom[5]~20\)) # (!\U1|U2|hudPosHorFrom\(6) & ((\U1|U2|hudPosHorFrom[5]~20\) # (GND)))
-- \U1|U2|hudPosHorFrom[6]~22\ = CARRY((!\U1|U2|hudPosHorFrom[5]~20\) # (!\U1|U2|hudPosHorFrom\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(6),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[5]~20\,
	combout => \U1|U2|hudPosHorFrom[6]~21_combout\,
	cout => \U1|U2|hudPosHorFrom[6]~22\);

-- Location: FF_X21_Y19_N19
\U1|U2|hudPosHorFrom[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[6]~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(6));

-- Location: LCCOMB_X21_Y19_N20
\U1|U2|hudPosHorFrom[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[7]~23_combout\ = (\U1|U2|hudPosHorFrom\(7) & (\U1|U2|hudPosHorFrom[6]~22\ & VCC)) # (!\U1|U2|hudPosHorFrom\(7) & (!\U1|U2|hudPosHorFrom[6]~22\))
-- \U1|U2|hudPosHorFrom[7]~24\ = CARRY((!\U1|U2|hudPosHorFrom\(7) & !\U1|U2|hudPosHorFrom[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|hudPosHorFrom\(7),
	datad => VCC,
	cin => \U1|U2|hudPosHorFrom[6]~22\,
	combout => \U1|U2|hudPosHorFrom[7]~23_combout\,
	cout => \U1|U2|hudPosHorFrom[7]~24\);

-- Location: FF_X21_Y19_N21
\U1|U2|hudPosHorFrom[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[7]~23_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(7));

-- Location: LCCOMB_X21_Y19_N24
\U1|U2|hudPosHorFrom[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|hudPosHorFrom[9]~27_combout\ = \U1|U2|hudPosHorFrom[8]~26\ $ (!\U1|U2|hudPosHorFrom\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|hudPosHorFrom\(9),
	cin => \U1|U2|hudPosHorFrom[8]~26\,
	combout => \U1|U2|hudPosHorFrom[9]~27_combout\);

-- Location: FF_X21_Y19_N25
\U1|U2|hudPosHorFrom[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[9]~27_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(9));

-- Location: FF_X21_Y19_N13
\U1|U2|hudPosHorFrom[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[3]~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(3));

-- Location: FF_X21_Y19_N11
\U1|U2|hudPosHorFrom[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U1|U2|clk_div[18]~clkctrl_outclk\,
	d => \U1|U2|hudPosHorFrom[2]~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|hudPosHorFrom\(2));

-- Location: LCCOMB_X20_Y19_N0
\LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((!hor_reg(0) & \U1|U2|hudPosHorFrom\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(0),
	datab => \U1|U2|hudPosHorFrom\(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X20_Y19_N2
\LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((hor_reg(1) & ((!\LessThan4~1_cout\) # (!\U1|U2|hudPosHorFrom\(1)))) # (!hor_reg(1) & (!\U1|U2|hudPosHorFrom\(1) & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(1),
	datab => \U1|U2|hudPosHorFrom\(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X20_Y19_N4
\LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((hor_reg(2) & (!\U1|U2|hudPosHorFrom\(2) & !\LessThan4~3_cout\)) # (!hor_reg(2) & ((!\LessThan4~3_cout\) # (!\U1|U2|hudPosHorFrom\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(2),
	datab => \U1|U2|hudPosHorFrom\(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X20_Y19_N6
\LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((hor_reg(3) & ((!\LessThan4~5_cout\) # (!\U1|U2|hudPosHorFrom\(3)))) # (!hor_reg(3) & (!\U1|U2|hudPosHorFrom\(3) & !\LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datab => \U1|U2|hudPosHorFrom\(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X20_Y19_N8
\LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((hor_reg(4) & (\U1|U2|hudPosHorFrom\(4) & !\LessThan4~7_cout\)) # (!hor_reg(4) & ((\U1|U2|hudPosHorFrom\(4)) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(4),
	datab => \U1|U2|hudPosHorFrom\(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X20_Y19_N10
\LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((hor_reg(5) & ((\U1|U2|hudPosHorFrom\(5)) # (!\LessThan4~9_cout\))) # (!hor_reg(5) & (\U1|U2|hudPosHorFrom\(5) & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(5),
	datab => \U1|U2|hudPosHorFrom\(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X20_Y19_N12
\LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\U1|U2|hudPosHorFrom\(6) & (!hor_reg(6) & !\LessThan4~11_cout\)) # (!\U1|U2|hudPosHorFrom\(6) & ((!\LessThan4~11_cout\) # (!hor_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorFrom\(6),
	datab => hor_reg(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X20_Y19_N14
\LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((\U1|U2|hudPosHorFrom\(7) & (hor_reg(7) & !\LessThan4~13_cout\)) # (!\U1|U2|hudPosHorFrom\(7) & ((hor_reg(7)) # (!\LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorFrom\(7),
	datab => hor_reg(7),
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

-- Location: LCCOMB_X20_Y19_N16
\LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((\U1|U2|hudPosHorFrom\(8) & ((!\LessThan4~15_cout\) # (!hor_reg(8)))) # (!\U1|U2|hudPosHorFrom\(8) & (!hor_reg(8) & !\LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|hudPosHorFrom\(8),
	datab => hor_reg(8),
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

-- Location: LCCOMB_X20_Y19_N18
\LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~18_combout\ = (hor_reg(9) & (\LessThan4~17_cout\ & \U1|U2|hudPosHorFrom\(9))) # (!hor_reg(9) & ((\LessThan4~17_cout\) # (\U1|U2|hudPosHorFrom\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hor_reg(9),
	datad => \U1|U2|hudPosHorFrom\(9),
	cin => \LessThan4~17_cout\,
	combout => \LessThan4~18_combout\);

-- Location: LCCOMB_X23_Y19_N2
\green~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~1_combout\ = (\green~0_combout\ & (!\LessThan6~0_combout\ & (!\LessThan4~18_combout\ & !\LessThan5~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \green~0_combout\,
	datab => \LessThan6~0_combout\,
	datac => \LessThan4~18_combout\,
	datad => \LessThan5~18_combout\,
	combout => \green~1_combout\);

-- Location: LCCOMB_X23_Y19_N28
\U1|U2|address_counter_1[12]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[12]~0_combout\ = (\U1|U2|Equal0~2_combout\ & (!\U1|U2|Equal0~4_combout\ & ((\LessThan7~1_combout\) # (!\green~1_combout\)))) # (!\U1|U2|Equal0~2_combout\ & (((\LessThan7~1_combout\) # (!\green~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|Equal0~2_combout\,
	datab => \U1|U2|Equal0~4_combout\,
	datac => \LessThan7~1_combout\,
	datad => \green~1_combout\,
	combout => \U1|U2|address_counter_1[12]~0_combout\);

-- Location: LCCOMB_X24_Y19_N18
\U1|U2|address_counter_1[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[1]~6_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(1) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~2_combout\) # 
-- ((\U1|U2|address_counter_1\(1) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~2_combout\,
	datac => \U1|U2|address_counter_1\(1),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[1]~6_combout\);

-- Location: FF_X24_Y19_N19
\U1|U2|address_counter_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[1]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(1));

-- Location: LCCOMB_X22_Y19_N24
\U1|U2|address_counter_1[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[4]~9_combout\ = (\U1|U2|Add1~8_combout\ & (((\U1|U2|address_counter_1\(4) & \U1|U2|address_counter_1[12]~0_combout\)) # (!\U1|U2|address_counter_1[14]~2_combout\))) # (!\U1|U2|Add1~8_combout\ & (((\U1|U2|address_counter_1\(4) & 
-- \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|Add1~8_combout\,
	datab => \U1|U2|address_counter_1[14]~2_combout\,
	datac => \U1|U2|address_counter_1\(4),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[4]~9_combout\);

-- Location: FF_X22_Y19_N25
\U1|U2|address_counter_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[4]~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(4));

-- Location: LCCOMB_X22_Y19_N26
\U1|U2|address_counter_1[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[5]~10_combout\ = (\U1|U2|Add1~10_combout\ & (((\U1|U2|address_counter_1\(5) & \U1|U2|address_counter_1[12]~0_combout\)) # (!\U1|U2|address_counter_1[14]~2_combout\))) # (!\U1|U2|Add1~10_combout\ & (((\U1|U2|address_counter_1\(5) & 
-- \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|Add1~10_combout\,
	datab => \U1|U2|address_counter_1[14]~2_combout\,
	datac => \U1|U2|address_counter_1\(5),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[5]~10_combout\);

-- Location: FF_X22_Y19_N27
\U1|U2|address_counter_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[5]~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(5));

-- Location: LCCOMB_X22_Y19_N2
\U1|U2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~3_combout\ = (!\U1|U2|address_counter_1\(3) & (\U1|U2|address_counter_1\(4) & (\U1|U2|address_counter_1\(5) & \U1|U2|address_counter_1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(3),
	datab => \U1|U2|address_counter_1\(4),
	datac => \U1|U2|address_counter_1\(5),
	datad => \U1|U2|address_counter_1\(6),
	combout => \U1|U2|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y19_N30
\U1|U2|address_counter_1[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[0]~5_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(0) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~0_combout\) # 
-- ((\U1|U2|address_counter_1\(0) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~0_combout\,
	datac => \U1|U2|address_counter_1\(0),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[0]~5_combout\);

-- Location: FF_X23_Y19_N31
\U1|U2|address_counter_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[0]~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(0));

-- Location: LCCOMB_X24_Y19_N4
\U1|U2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~4_combout\ = (!\U1|U2|address_counter_1\(2) & (\U1|U2|address_counter_1\(1) & (\U1|U2|Equal0~3_combout\ & \U1|U2|address_counter_1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(2),
	datab => \U1|U2|address_counter_1\(1),
	datac => \U1|U2|Equal0~3_combout\,
	datad => \U1|U2|address_counter_1\(0),
	combout => \U1|U2|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y19_N26
\U1|U2|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~26_combout\ = (\U1|U2|address_counter_1\(13) & (!\U1|U2|Add1~25\)) # (!\U1|U2|address_counter_1\(13) & ((\U1|U2|Add1~25\) # (GND)))
-- \U1|U2|Add1~27\ = CARRY((!\U1|U2|Add1~25\) # (!\U1|U2|address_counter_1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(13),
	datad => VCC,
	cin => \U1|U2|Add1~25\,
	combout => \U1|U2|Add1~26_combout\,
	cout => \U1|U2|Add1~27\);

-- Location: LCCOMB_X24_Y19_N24
\U1|U2|address_counter_1[13]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[13]~3_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(13) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~26_combout\) # 
-- ((\U1|U2|address_counter_1\(13) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~26_combout\,
	datac => \U1|U2|address_counter_1\(13),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[13]~3_combout\);

-- Location: FF_X24_Y19_N25
\U1|U2|address_counter_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[13]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(13));

-- Location: LCCOMB_X24_Y19_N30
\U1|U2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~0_combout\ = (!\U1|U2|address_counter_1\(14) & !\U1|U2|address_counter_1\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|address_counter_1\(14),
	datad => \U1|U2|address_counter_1\(13),
	combout => \U1|U2|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y19_N18
\U1|U2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~18_combout\ = (\U1|U2|address_counter_1\(9) & (!\U1|U2|Add1~17\)) # (!\U1|U2|address_counter_1\(9) & ((\U1|U2|Add1~17\) # (GND)))
-- \U1|U2|Add1~19\ = CARRY((!\U1|U2|Add1~17\) # (!\U1|U2|address_counter_1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(9),
	datad => VCC,
	cin => \U1|U2|Add1~17\,
	combout => \U1|U2|Add1~18_combout\,
	cout => \U1|U2|Add1~19\);

-- Location: LCCOMB_X24_Y19_N0
\U1|U2|address_counter_1[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[9]~14_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(9) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~18_combout\) # 
-- ((\U1|U2|address_counter_1\(9) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~18_combout\,
	datac => \U1|U2|address_counter_1\(9),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[9]~14_combout\);

-- Location: FF_X24_Y19_N1
\U1|U2|address_counter_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[9]~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(9));

-- Location: LCCOMB_X26_Y19_N16
\U1|U2|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~16_combout\ = (\U1|U2|address_counter_1\(8) & (\U1|U2|Add1~15\ $ (GND))) # (!\U1|U2|address_counter_1\(8) & (!\U1|U2|Add1~15\ & VCC))
-- \U1|U2|Add1~17\ = CARRY((\U1|U2|address_counter_1\(8) & !\U1|U2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(8),
	datad => VCC,
	cin => \U1|U2|Add1~15\,
	combout => \U1|U2|Add1~16_combout\,
	cout => \U1|U2|Add1~17\);

-- Location: LCCOMB_X26_Y19_N30
\U1|U2|address_counter_1[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[8]~13_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(8) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~16_combout\) # 
-- ((\U1|U2|address_counter_1\(8) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~16_combout\,
	datac => \U1|U2|address_counter_1\(8),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[8]~13_combout\);

-- Location: FF_X26_Y19_N31
\U1|U2|address_counter_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[8]~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(8));

-- Location: LCCOMB_X24_Y19_N16
\U1|U2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~1_combout\ = (\U1|U2|address_counter_1\(10) & (\U1|U2|address_counter_1\(9) & (!\U1|U2|address_counter_1\(8) & \U1|U2|address_counter_1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(10),
	datab => \U1|U2|address_counter_1\(9),
	datac => \U1|U2|address_counter_1\(8),
	datad => \U1|U2|address_counter_1\(7),
	combout => \U1|U2|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y19_N2
\U1|U2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Equal0~2_combout\ = (\U1|U2|address_counter_1\(12) & (!\U1|U2|address_counter_1\(11) & (\U1|U2|Equal0~0_combout\ & \U1|U2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1\(12),
	datab => \U1|U2|address_counter_1\(11),
	datac => \U1|U2|Equal0~0_combout\,
	datad => \U1|U2|Equal0~1_combout\,
	combout => \U1|U2|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y19_N20
\U1|U2|address_counter_1[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[14]~1_combout\ = (\LessThan6~0_combout\) # (((\U1|U2|Equal0~4_combout\ & \U1|U2|Equal0~2_combout\)) # (!\green~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \green~0_combout\,
	datac => \U1|U2|Equal0~4_combout\,
	datad => \U1|U2|Equal0~2_combout\,
	combout => \U1|U2|address_counter_1[14]~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\U1|U2|address_counter_1[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[14]~2_combout\ = (\LessThan4~18_combout\) # ((\LessThan5~18_combout\) # ((\LessThan7~1_combout\) # (\U1|U2|address_counter_1[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~18_combout\,
	datab => \LessThan5~18_combout\,
	datac => \LessThan7~1_combout\,
	datad => \U1|U2|address_counter_1[14]~1_combout\,
	combout => \U1|U2|address_counter_1[14]~2_combout\);

-- Location: LCCOMB_X22_Y19_N0
\U1|U2|address_counter_1[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[6]~11_combout\ = (\U1|U2|Add1~12_combout\ & (((\U1|U2|address_counter_1\(6) & \U1|U2|address_counter_1[12]~0_combout\)) # (!\U1|U2|address_counter_1[14]~2_combout\))) # (!\U1|U2|Add1~12_combout\ & (((\U1|U2|address_counter_1\(6) & 
-- \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|Add1~12_combout\,
	datab => \U1|U2|address_counter_1[14]~2_combout\,
	datac => \U1|U2|address_counter_1\(6),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[6]~11_combout\);

-- Location: FF_X22_Y19_N1
\U1|U2|address_counter_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[6]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(6));

-- Location: LCCOMB_X22_Y19_N30
\U1|U2|address_counter_1[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[3]~8_combout\ = (\U1|U2|Add1~6_combout\ & (((\U1|U2|address_counter_1\(3) & \U1|U2|address_counter_1[12]~0_combout\)) # (!\U1|U2|address_counter_1[14]~2_combout\))) # (!\U1|U2|Add1~6_combout\ & (((\U1|U2|address_counter_1\(3) & 
-- \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|Add1~6_combout\,
	datab => \U1|U2|address_counter_1[14]~2_combout\,
	datac => \U1|U2|address_counter_1\(3),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[3]~8_combout\);

-- Location: FF_X22_Y19_N31
\U1|U2|address_counter_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[3]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(3));

-- Location: LCCOMB_X26_Y19_N4
\U1|U2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~4_combout\ = (\U1|U2|address_counter_1\(2) & (\U1|U2|Add1~3\ $ (GND))) # (!\U1|U2|address_counter_1\(2) & (!\U1|U2|Add1~3\ & VCC))
-- \U1|U2|Add1~5\ = CARRY((\U1|U2|address_counter_1\(2) & !\U1|U2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(2),
	datad => VCC,
	cin => \U1|U2|Add1~3\,
	combout => \U1|U2|Add1~4_combout\,
	cout => \U1|U2|Add1~5\);

-- Location: LCCOMB_X24_Y19_N22
\U1|U2|address_counter_1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[2]~7_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(2) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~4_combout\) # 
-- ((\U1|U2|address_counter_1\(2) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~4_combout\,
	datac => \U1|U2|address_counter_1\(2),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[2]~7_combout\);

-- Location: FF_X24_Y19_N23
\U1|U2|address_counter_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[2]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(2));

-- Location: LCCOMB_X26_Y19_N14
\U1|U2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~14_combout\ = (\U1|U2|address_counter_1\(7) & (!\U1|U2|Add1~13\)) # (!\U1|U2|address_counter_1\(7) & ((\U1|U2|Add1~13\) # (GND)))
-- \U1|U2|Add1~15\ = CARRY((!\U1|U2|Add1~13\) # (!\U1|U2|address_counter_1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(7),
	datad => VCC,
	cin => \U1|U2|Add1~13\,
	combout => \U1|U2|Add1~14_combout\,
	cout => \U1|U2|Add1~15\);

-- Location: LCCOMB_X24_Y19_N12
\U1|U2|address_counter_1[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[7]~12_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(7) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~14_combout\) # 
-- ((\U1|U2|address_counter_1\(7) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~14_combout\,
	datac => \U1|U2|address_counter_1\(7),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[7]~12_combout\);

-- Location: FF_X24_Y19_N13
\U1|U2|address_counter_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[7]~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(7));

-- Location: LCCOMB_X26_Y19_N20
\U1|U2|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~20_combout\ = (\U1|U2|address_counter_1\(10) & (\U1|U2|Add1~19\ $ (GND))) # (!\U1|U2|address_counter_1\(10) & (!\U1|U2|Add1~19\ & VCC))
-- \U1|U2|Add1~21\ = CARRY((\U1|U2|address_counter_1\(10) & !\U1|U2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(10),
	datad => VCC,
	cin => \U1|U2|Add1~19\,
	combout => \U1|U2|Add1~20_combout\,
	cout => \U1|U2|Add1~21\);

-- Location: LCCOMB_X24_Y19_N6
\U1|U2|address_counter_1[10]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[10]~15_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(10) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~20_combout\) # 
-- ((\U1|U2|address_counter_1\(10) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~20_combout\,
	datac => \U1|U2|address_counter_1\(10),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[10]~15_combout\);

-- Location: FF_X24_Y19_N7
\U1|U2|address_counter_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[10]~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(10));

-- Location: LCCOMB_X26_Y19_N22
\U1|U2|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~22_combout\ = (\U1|U2|address_counter_1\(11) & (!\U1|U2|Add1~21\)) # (!\U1|U2|address_counter_1\(11) & ((\U1|U2|Add1~21\) # (GND)))
-- \U1|U2|Add1~23\ = CARRY((!\U1|U2|Add1~21\) # (!\U1|U2|address_counter_1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(11),
	datad => VCC,
	cin => \U1|U2|Add1~21\,
	combout => \U1|U2|Add1~22_combout\,
	cout => \U1|U2|Add1~23\);

-- Location: LCCOMB_X24_Y19_N28
\U1|U2|address_counter_1[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[11]~16_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(11) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~22_combout\) # 
-- ((\U1|U2|address_counter_1\(11) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~22_combout\,
	datac => \U1|U2|address_counter_1\(11),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[11]~16_combout\);

-- Location: FF_X24_Y19_N29
\U1|U2|address_counter_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[11]~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(11));

-- Location: LCCOMB_X26_Y19_N24
\U1|U2|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~24_combout\ = (\U1|U2|address_counter_1\(12) & (\U1|U2|Add1~23\ $ (GND))) # (!\U1|U2|address_counter_1\(12) & (!\U1|U2|Add1~23\ & VCC))
-- \U1|U2|Add1~25\ = CARRY((\U1|U2|address_counter_1\(12) & !\U1|U2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|U2|address_counter_1\(12),
	datad => VCC,
	cin => \U1|U2|Add1~23\,
	combout => \U1|U2|Add1~24_combout\,
	cout => \U1|U2|Add1~25\);

-- Location: LCCOMB_X24_Y19_N10
\U1|U2|address_counter_1[12]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[12]~17_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(12) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~24_combout\) # 
-- ((\U1|U2|address_counter_1\(12) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~24_combout\,
	datac => \U1|U2|address_counter_1\(12),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[12]~17_combout\);

-- Location: FF_X24_Y19_N11
\U1|U2|address_counter_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[12]~17_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(12));

-- Location: LCCOMB_X26_Y19_N28
\U1|U2|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|Add1~28_combout\ = \U1|U2|Add1~27\ $ (!\U1|U2|address_counter_1\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|U2|address_counter_1\(14),
	cin => \U1|U2|Add1~27\,
	combout => \U1|U2|Add1~28_combout\);

-- Location: LCCOMB_X24_Y19_N26
\U1|U2|address_counter_1[14]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|address_counter_1[14]~4_combout\ = (\U1|U2|address_counter_1[14]~2_combout\ & (((\U1|U2|address_counter_1\(14) & \U1|U2|address_counter_1[12]~0_combout\)))) # (!\U1|U2|address_counter_1[14]~2_combout\ & ((\U1|U2|Add1~28_combout\) # 
-- ((\U1|U2|address_counter_1\(14) & \U1|U2|address_counter_1[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|address_counter_1[14]~2_combout\,
	datab => \U1|U2|Add1~28_combout\,
	datac => \U1|U2|address_counter_1\(14),
	datad => \U1|U2|address_counter_1[12]~0_combout\,
	combout => \U1|U2|address_counter_1[14]~4_combout\);

-- Location: FF_X24_Y19_N27
\U1|U2|address_counter_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|address_counter_1[14]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|address_counter_1\(14));

-- Location: FF_X24_Y19_N15
\U1|U2|U1|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U2|address_counter_1\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X24_Y18_N2
\U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\ = \U1|U2|U1|altsyncram_component|auto_generated|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|U2|U1|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\);

-- Location: FF_X24_Y18_N3
\U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(1));

-- Location: FF_X24_Y18_N5
\U1|U2|U1|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U2|address_counter_1\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: FF_X24_Y18_N25
\U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|U2|U1|altsyncram_component|auto_generated|address_reg_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(0));

-- Location: M9K_X25_Y19_N0
\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000003F03C000000000000000000000000FFF03C000000000000000000000000FFF03C000000000000000000000001FFF03C000000000000000000000001FFF03C000000000000000000000001FFF03C000000000000000000000001FFF03C000000000000000000000001FFF03C000000000000000000000001FFF03C000000000000000000000001E3F03C000000000000000000000001C3F03C000000000000000000000001C3F03C000000000000000000000001C3F03C000000000000000000000001C3F03C000000000000000000000001C3F03C000000000000000000000001C3F03C000000000000000000000001C3F03C00",
	mem_init2 => X"0000000000000000000001C3F03C000000000000000000000001C3F03C00000000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000",
	mem_init1 => X"000001FF8000000003FF0000000007FE000000000FFC000000001FF8000000003FF0000000007FE000000000FFC000000001FFFF00000003FFFF80000007FFFF0000000FFFFF0000001FFFFF0000003FFFFE0000007FFFFC000000FFFFF8000001FFFFF0000003FFFFE0000007FFFFE000000FFFFFC0000FFFF81F80001FFFF03F0000FFFFE07E0007FFFFC0FC000FFFFF81F8007FFFFF03F000FFFFFE07E001FFFFFC0FC003FFFFF81F8007FFFFF03F000F807FE07E001F00FFC0FC003E01FF81F8007C03FF03F000F807FE07E001F00FFC0FC003E01FF81F8007C03FF03F000F807FE07E001F00FFC0FC003E01FF81F8007C03FF03F000F807FE07E001F00F",
	mem_init0 => X"FC0FC003E01FF81F8007C03FF03F000F807FE03C001F00FFC078003E01FF80F0007C03FF00C000F807FE018001F00FFC000003E01FF8000007C03FF000000F807FE000001F00FFC000003E01FF8000007C03FF000000F807FE000001F00FFC000003E01FF8000007C03FF000000F807FE000001F00FFC000003E01FF8000007C03FF000000F807FE000001F00FFC000003E01FF8000007C03FF000000F807FE000001F00FFC000003E01FF8000003803FF0000007007FE000000E00FFC000001801FF8000001003FF0000002007FE000000000FFC000000001FF8000000003FF0000000003FC0000000003F00000000003C00000000003000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tree_fin1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ControlUnit:U1|Huddle:U2|tree1:U1|altsyncram:altsyncram_component|altsyncram_ti91:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_depth => 16440,
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
	ena0 => \U1|U2|Equal0~0_combout\,
	portaaddr => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y18_N24
\U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\ = (!\U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(1) & ((\U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(0) & 
-- (\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1~portadataout\)) # (!\U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(0) & ((\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datab => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datac => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(0),
	datad => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	combout => \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\ = (\U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\) # ((\U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & 
-- \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U2|U1|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datab => \U1|U2|U1|altsyncram_component|auto_generated|out_address_reg_a\(1),
	datad => \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~0_combout\,
	combout => \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\);

-- Location: LCCOMB_X23_Y19_N0
\green~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~2_combout\ = (!\LessThan7~1_combout\ & \green~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan7~1_combout\,
	datad => \green~1_combout\,
	combout => \green~2_combout\);

-- Location: LCCOMB_X23_Y19_N4
\green~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green~3_combout\ = (\U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\ & (\green~2_combout\ & ((!\always2~5_combout\) # (!\U1|U3|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U3|q~q\,
	datab => \U1|U2|U1|altsyncram_component|auto_generated|mux2|result_node[0]~1_combout\,
	datac => \always2~5_combout\,
	datad => \green~2_combout\,
	combout => \green~3_combout\);

-- Location: FF_X23_Y19_N5
green : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \green~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green~q\);

-- Location: LCCOMB_X24_Y20_N24
\VGA_GREEN~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_GREEN~1_combout\ = (\VGA_GREEN~0_combout\ & \green~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_GREEN~0_combout\,
	datad => \green~q\,
	combout => \VGA_GREEN~1_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (hor_reg(9) & (!hor_reg(5) & (hor_reg(6) & hor_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(9),
	datab => hor_reg(5),
	datac => hor_reg(6),
	datad => hor_reg(8),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & (\LessThan11~1_combout\ & hor_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \LessThan11~1_combout\,
	datad => hor_reg(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X21_Y19_N0
\hor_sync~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hor_sync~0_combout\ = (hor_reg(3) & ((\hor_sync~q\) # ((!hor_reg(7) & \Equal2~1_combout\)))) # (!hor_reg(3) & (\hor_sync~q\ & ((!\Equal2~1_combout\) # (!hor_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hor_reg(3),
	datab => hor_reg(7),
	datac => \hor_sync~q\,
	datad => \Equal2~1_combout\,
	combout => \hor_sync~0_combout\);

-- Location: FF_X21_Y19_N1
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

-- Location: LCCOMB_X20_Y20_N28
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (ver_reg(9) & (ver_reg(0) & (ver_reg(2) & !ver_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(9),
	datab => ver_reg(0),
	datac => ver_reg(2),
	datad => ver_reg(8),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X20_Y20_N30
\ver_sync~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_sync~0_combout\ = (!ver_reg(7) & (ver_reg(5) & (ver_reg(6) & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ver_reg(7),
	datab => ver_reg(5),
	datac => ver_reg(6),
	datad => \Equal4~0_combout\,
	combout => \ver_sync~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\ver_sync~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ver_sync~2_combout\ = (\ver_sync~1_combout\ & ((\ver_sync~q\ & ((!\Equal1~1_combout\))) # (!\ver_sync~q\ & (\ver_sync~0_combout\)))) # (!\ver_sync~1_combout\ & (((\ver_sync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ver_sync~1_combout\,
	datab => \ver_sync~0_combout\,
	datac => \ver_sync~q\,
	datad => \Equal1~1_combout\,
	combout => \ver_sync~2_combout\);

-- Location: FF_X21_Y19_N27
ver_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ver_sync~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ver_sync~q\);

ww_VGA_RED <= \VGA_RED~output_o\;

ww_VGA_GREEN <= \VGA_GREEN~output_o\;

ww_VGA_BLUE <= \VGA_BLUE~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_q(0) <= \q[0]~output_o\;

ww_qtree1(0) <= \qtree1[0]~output_o\;
END structure;


