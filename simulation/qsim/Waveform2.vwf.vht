-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/27/2024 19:18:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Basic_FQ
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Basic_FQ_vhd_vec_tst IS
END Basic_FQ_vhd_vec_tst;
ARCHITECTURE Basic_FQ_arch OF Basic_FQ_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Btn : STD_LOGIC;
SIGNAL Clock1 : STD_LOGIC;
SIGNAL DIN_RDY : STD_LOGIC;
SIGNAL DOUT_VLD : STD_LOGIC;
SIGNAL FRAME_ERROR : STD_LOGIC;
SIGNAL PARITY_ERROR : STD_LOGIC;
SIGNAL ReadBuff : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL To_Oscilator : STD_LOGIC;
SIGNAL Tx : STD_LOGIC;
SIGNAL UART_TXD : STD_LOGIC;
COMPONENT Basic_FQ
	PORT (
	Btn : IN STD_LOGIC;
	Clock1 : IN STD_LOGIC;
	DIN_RDY : OUT STD_LOGIC;
	DOUT_VLD : OUT STD_LOGIC;
	FRAME_ERROR : OUT STD_LOGIC;
	PARITY_ERROR : OUT STD_LOGIC;
	ReadBuff : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	To_Oscilator : IN STD_LOGIC;
	Tx : IN STD_LOGIC;
	UART_TXD : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Basic_FQ
	PORT MAP (
-- list connections between master ports and signals
	Btn => Btn,
	Clock1 => Clock1,
	DIN_RDY => DIN_RDY,
	DOUT_VLD => DOUT_VLD,
	FRAME_ERROR => FRAME_ERROR,
	PARITY_ERROR => PARITY_ERROR,
	ReadBuff => ReadBuff,
	rst => rst,
	To_Oscilator => To_Oscilator,
	Tx => Tx,
	UART_TXD => UART_TXD
	);

-- Clock1
t_prcs_Clock1: PROCESS
BEGIN
LOOP
	Clock1 <= '0';
	WAIT FOR 5000 ps;
	Clock1 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock1;

-- Tx
t_prcs_Tx: PROCESS
BEGIN
LOOP
	Tx <= '0';
	WAIT FOR 5000 ps;
	Tx <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Tx;

-- To_Oscilator
t_prcs_To_Oscilator: PROCESS
BEGIN
LOOP
	To_Oscilator <= '0';
	WAIT FOR 5000 ps;
	To_Oscilator <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_To_Oscilator;

-- Btn
t_prcs_Btn: PROCESS
BEGIN
	Btn <= '1';
WAIT;
END PROCESS t_prcs_Btn;

-- ReadBuff
t_prcs_ReadBuff: PROCESS
BEGIN
	ReadBuff <= '1';
WAIT;
END PROCESS t_prcs_ReadBuff;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
WAIT;
END PROCESS t_prcs_rst;
END Basic_FQ_arch;
