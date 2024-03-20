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
-- Generated on "11/15/2023 16:14:03"
                                                             
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
SIGNAL PIPO1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PIPO2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL To_Oscilator : STD_LOGIC;
SIGNAL Tx : STD_LOGIC;
COMPONENT Basic_FQ
	PORT (
	PIPO1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PIPO2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC;
	To_Oscilator : IN STD_LOGIC;
	Tx : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Basic_FQ
	PORT MAP (
-- list connections between master ports and signals
	PIPO1 => PIPO1,
	PIPO2 => PIPO2,
	rst => rst,
	To_Oscilator => To_Oscilator,
	Tx => Tx
	);

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- To_Oscilator
t_prcs_To_Oscilator: PROCESS
BEGIN
LOOP
	To_Oscilator <= '0';
	WAIT FOR 10000 ps;
	To_Oscilator <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_To_Oscilator;

-- Tx
t_prcs_Tx: PROCESS
BEGIN
LOOP
	Tx <= '0';
	WAIT FOR 20000 ps;
	Tx <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Tx;
END Basic_FQ_arch;
