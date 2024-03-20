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
-- Generated on "11/15/2023 14:40:36"
                                                             
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
SIGNAL o : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL o5 : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL OUT : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL To : STD_LOGIC;
SIGNAL Tx : STD_LOGIC;
COMPONENT Basic_FQ
	PORT (
	o : OUT STD_LOGIC_VECTOR(0 TO 3);
	o5 : OUT STD_LOGIC_VECTOR(0 TO 3);
	\OUT\ : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	\To\ : IN STD_LOGIC;
	Tx : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Basic_FQ
	PORT MAP (
-- list connections between master ports and signals
	o => o,
	o5 => o5,
	\OUT\ => OUT,
	rst => rst,
	\To\ => To,
	Tx => Tx
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- To
t_prcs_To: PROCESS
BEGIN
	To <= '0';
WAIT;
END PROCESS t_prcs_To;

-- Tx
t_prcs_Tx: PROCESS
BEGIN
	Tx <= '0';
WAIT;
END PROCESS t_prcs_Tx;
END Basic_FQ_arch;
