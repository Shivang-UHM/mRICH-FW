--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 1.11
--  \   \         Application : Spartan-6 FPGA GTP Transceiver Wizard
--  /   /         Filename : demo_tb_imp.vhd
-- /___/   /\      
-- \   \  /  \ 
--  \___\/\___\ 
--
--
-- Module DEMO_TB_IMP
-- Generated by Xilinx Spartan-6 FPGA GTP Transceiver Wizard
-- 
-- 
-- (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;                  -- for Printing
use std.textio.all;

entity DEMO_TB_IMP is
end DEMO_TB_IMP;

architecture RTL of DEMO_TB_IMP is

--*************************Parameter Declarations******************************

    constant   GTP0_REFCLK_PERIOD        :   time :=  8.0 ns;
    constant   GTP1_REFCLK_PERIOD        :   time :=  8.0 ns;    
  
--**************************** Component Declarations *************************

    component pcs_pma_s6_gtpwizard_top 
    port
    (
        TILE0_GTP0_REFCLK_PAD_N_IN        :   in std_logic;
        TILE0_GTP0_REFCLK_PAD_P_IN        :   in std_logic;
        GTP0_RESET_IN                     :   in std_logic;
        GTP1_RESET_IN                     :   in std_logic;
        TILE0_GTP0_PLLLKDET_OUT           :   out std_logic;
        TRACK_DATA_OUT                    :   out std_logic;
        RXN_IN                            :   in std_logic_vector(1 downto 0);
        RXP_IN                            :   in std_logic_vector(1 downto 0);
        TXN_OUT                           :   out std_logic_vector(1 downto 0);
        TXP_OUT                           :   out std_logic_vector(1 downto 0)
    );
    end component;


--************************Internal Register Declarations***********************

--************************** Register Declarations ****************************        

    signal  gtp0_refclk_n_r         :   std_logic;
    signal  gtp1_refclk_n_r         :   std_logic;
    signal  drp_clk_r               :   std_logic;
    signal  gtp0_usrclk_r           :   std_logic;
    signal  gtp1_usrclk_r           :   std_logic;
    signal  gsr_r                   :   std_logic;
    signal  gts_r                   :   std_logic;
    signal  reset_i                 :   std_logic;
    signal  track_data_high_r       :   std_logic;
    signal  track_data_low_r        :   std_logic;    

--********************************Wire Declarations**********************************
    
    ----------------------------------- Global Signals ------------------------------
    signal  gtp0_refclk_p_r         :   std_logic;
    signal  gtp1_refclk_p_r         :   std_logic;    
    signal  tied_to_ground_i        :   std_logic;
    ---------------------------- Example Module Connections -------------------------
    signal  rxn_in_i                :   std_logic_vector(1 downto 0);
    signal  rxp_in_i                :   std_logic_vector(1 downto 0);
    signal  txn_out_i               :   std_logic_vector(1 downto 0);
    signal  txp_out_i               :   std_logic_vector(1 downto 0);

    signal  tile0_gtp0_plllkdet_i     :   std_logic;
    signal  tile0_gtp1_plllkdet_i     :   std_logic;    

    signal  track_data_i            :   std_logic;


--*********************************Main Body of Code**********************************
begin

    -- ------------------------------- Tie offs ------------------------------- 
    
    tied_to_ground_i        <=  '0';
    
    -- ------------------------- MGT Serial Connections -----------------------

    rxn_in_i                <=  txn_out_i;
    rxp_in_i                <=  txp_out_i;  


    ---------------------- Generate Reference Clock input  --------------------
    
    process
    begin
        gtp0_refclk_n_r  <=  '1';
        wait for GTP0_REFCLK_PERIOD/2;
        gtp0_refclk_n_r  <=  '0';
        wait for GTP0_REFCLK_PERIOD/2;
    end process;

    gtp0_refclk_p_r <= not gtp0_refclk_n_r;
    
    process
    begin
        gtp1_refclk_n_r  <=  '1';
        wait for GTP1_REFCLK_PERIOD/2;
        gtp1_refclk_n_r  <=  '0';
        wait for GTP1_REFCLK_PERIOD/2;
    end process;

    gtp1_refclk_p_r <= not gtp1_refclk_n_r;
                 

 
                
    ---------------------------------- Resets ----------------------------------
    
    process
    begin
        reset_i <= '1';
        wait for 100 ns;
        reset_i <= '0';
        wait; 
    end process;
    
    -------------------------------- Track Data --------------------------------
    
    process

    procedure tbprint (message : in string) is
      variable outline : line;
    begin
      write(outline, string'("## Time: "));
      write(outline, NOW, RIGHT, 0, ps);
      write(outline, string'("  "));
      write(outline, string'(message)); 
      writeline(output,outline);
    end tbprint;

    begin
        track_data_high_r <= '0';
        wait for 197 us;
        if (track_data_i = '1') then
            track_data_high_r <= '1';
        end if;
        wait for 2 us;
        if ((track_data_high_r = '1') and (track_data_low_r = '0')) then
            tbprint("------- TEST PASSED -------");
            assert false report "Simulation Stopped." severity failure;
        else
            tbprint("####### ERROR: TEST FAILED ! #######");
            assert false report "Test Failed." severity failure;
        end if;
    end process;
    
    process
    begin
        track_data_low_r <= '0';
        wait for 197 us;
        wait until track_data_i = '0';
        track_data_low_r <= '1';
    end process; 
   
    ------------------- Instantiate an pcs_pma_s6_gtpwizard_top module  -----------------

    pcs_pma_s6_gtpwizard_top_i : pcs_pma_s6_gtpwizard_top
    port map
    (
        TILE0_GTP0_REFCLK_PAD_N_IN       =>  gtp0_refclk_n_r,
        TILE0_GTP0_REFCLK_PAD_P_IN       =>  gtp0_refclk_p_r,
        GTP0_RESET_IN               =>  reset_i,
        GTP1_RESET_IN               =>  reset_i,
        TILE0_GTP0_PLLLKDET_OUT          =>  tile0_gtp0_plllkdet_i,
        TRACK_DATA_OUT              =>  track_data_i,
        RXN_IN                      =>  rxn_in_i,
        RXP_IN                      =>  rxp_in_i,
        TXN_OUT                     =>  txn_out_i,
        TXP_OUT                     =>  txp_out_i
    );


end RTL;

