------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 1.11
--  \   \         Application : Spartan-6 FPGA GTP Transceiver Wizard  
--  /   /         Filename : instantiation_template.vhd
-- /___/   /\       
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Instantiation Template
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


-- Use the templates in this file to add the components generated by the wizard to your
-- design.

--**************************Component Declarations*****************************


component pcs_pma_s6_gtpwizard 
generic
(
    -- Simulation attributes  
    WRAPPER_SIM_GTPRESET_SPEEDUP    : integer   := 0; -- Set to 1 to speed up sim reset
    WRAPPER_SIMULATION              : integer   := 0  -- Set to 1 for simulation  
);
port
(
    
    --_________________________________________________________________________
    --_________________________________________________________________________
    --TILE0  (X0_Y0)

 
    ------------------------ Loopback and Powerdown Ports ----------------------
    TILE0_LOOPBACK0_IN                      : in   std_logic_vector(2 downto 0);
    TILE0_LOOPBACK1_IN                      : in   std_logic_vector(2 downto 0);
    TILE0_RXPOWERDOWN0_IN                   : in   std_logic_vector(1 downto 0);
    TILE0_RXPOWERDOWN1_IN                   : in   std_logic_vector(1 downto 0);
    TILE0_TXPOWERDOWN0_IN                   : in   std_logic_vector(1 downto 0);
    TILE0_TXPOWERDOWN1_IN                   : in   std_logic_vector(1 downto 0);
    --------------------------------- PLL Ports --------------------------------
    TILE0_CLK00_IN                          : in   std_logic;
    TILE0_CLK01_IN                          : in   std_logic;
    TILE0_GTPRESET0_IN                      : in   std_logic;
    TILE0_GTPRESET1_IN                      : in   std_logic;
    TILE0_PLLLKDET0_OUT                     : out  std_logic;
    TILE0_RESETDONE0_OUT                    : out  std_logic;
    TILE0_RESETDONE1_OUT                    : out  std_logic;
    ----------------------- Receive Ports - 8b10b Decoder ----------------------
    TILE0_RXCHARISCOMMA0_OUT                : out  std_logic;
    TILE0_RXCHARISCOMMA1_OUT                : out  std_logic;
    TILE0_RXCHARISK0_OUT                    : out  std_logic;
    TILE0_RXCHARISK1_OUT                    : out  std_logic;
    TILE0_RXDISPERR0_OUT                    : out  std_logic;
    TILE0_RXDISPERR1_OUT                    : out  std_logic;
    TILE0_RXNOTINTABLE0_OUT                 : out  std_logic;
    TILE0_RXNOTINTABLE1_OUT                 : out  std_logic;
    TILE0_RXRUNDISP0_OUT                    : out  std_logic;
    TILE0_RXRUNDISP1_OUT                    : out  std_logic;
    ---------------------- Receive Ports - Clock Correction --------------------
    TILE0_RXCLKCORCNT0_OUT                  : out  std_logic_vector(2 downto 0);
    TILE0_RXCLKCORCNT1_OUT                  : out  std_logic_vector(2 downto 0);
    --------------- Receive Ports - Comma Detection and Alignment --------------
    TILE0_RXENMCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENMCOMMAALIGN1_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN0_IN               : in   std_logic;
    TILE0_RXENPCOMMAALIGN1_IN               : in   std_logic;
    ------------------- Receive Ports - RX Data Path interface -----------------
    TILE0_RXDATA0_OUT                       : out  std_logic_vector(7 downto 0);
    TILE0_RXDATA1_OUT                       : out  std_logic_vector(7 downto 0);
    TILE0_RXRECCLK0_OUT                     : out  std_logic;
    TILE0_RXRECCLK1_OUT                     : out  std_logic;
    TILE0_RXRESET0_IN                       : in   std_logic;
    TILE0_RXRESET1_IN                       : in   std_logic;
    TILE0_RXUSRCLK0_IN                      : in   std_logic;
    TILE0_RXUSRCLK1_IN                      : in   std_logic;
    TILE0_RXUSRCLK20_IN                     : in   std_logic;
    TILE0_RXUSRCLK21_IN                     : in   std_logic;
    ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
    TILE0_RXN0_IN                           : in   std_logic;
    TILE0_RXN1_IN                           : in   std_logic;
    TILE0_RXP0_IN                           : in   std_logic;
    TILE0_RXP1_IN                           : in   std_logic;
    ----------- Receive Ports - RX Elastic Buffer and Phase Alignment ----------
    TILE0_RXBUFRESET0_IN                    : in   std_logic;
    TILE0_RXBUFRESET1_IN                    : in   std_logic;
    TILE0_RXBUFSTATUS0_OUT                  : out  std_logic_vector(2 downto 0);
    TILE0_RXBUFSTATUS1_OUT                  : out  std_logic_vector(2 downto 0);
    ---------------------------- TX/RX Datapath Ports --------------------------
    TILE0_GTPCLKOUT0_OUT                    : out  std_logic_vector(1 downto 0);
    TILE0_GTPCLKOUT1_OUT                    : out  std_logic_vector(1 downto 0);
    ------------------- Transmit Ports - 8b10b Encoder Control -----------------
    TILE0_TXCHARDISPMODE0_IN                : in   std_logic;
    TILE0_TXCHARDISPMODE1_IN                : in   std_logic;
    TILE0_TXCHARDISPVAL0_IN                 : in   std_logic;
    TILE0_TXCHARDISPVAL1_IN                 : in   std_logic;
    TILE0_TXCHARISK0_IN                     : in   std_logic;
    TILE0_TXCHARISK1_IN                     : in   std_logic;
    --------------- Transmit Ports - TX Buffer and Phase Alignment -------------
    TILE0_TXBUFSTATUS0_OUT                  : out  std_logic_vector(1 downto 0);
    TILE0_TXBUFSTATUS1_OUT                  : out  std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    TILE0_TXDATA0_IN                        : in   std_logic_vector(7 downto 0);
    TILE0_TXDATA1_IN                        : in   std_logic_vector(7 downto 0);
    TILE0_TXOUTCLK0_OUT                     : out  std_logic;
    TILE0_TXOUTCLK1_OUT                     : out  std_logic;
    TILE0_TXRESET0_IN                       : in   std_logic;
    TILE0_TXRESET1_IN                       : in   std_logic;
    TILE0_TXUSRCLK0_IN                      : in   std_logic;
    TILE0_TXUSRCLK1_IN                      : in   std_logic;
    TILE0_TXUSRCLK20_IN                     : in   std_logic;
    TILE0_TXUSRCLK21_IN                     : in   std_logic;
    --------------- Transmit Ports - TX Driver and OOB signalling --------------
    TILE0_TXN0_OUT                          : out  std_logic;
    TILE0_TXN1_OUT                          : out  std_logic;
    TILE0_TXP0_OUT                          : out  std_logic;
    TILE0_TXP1_OUT                          : out  std_logic


);
end component;






    ----------------------------- The GTP Wrapper -----------------------------


    pcs_pma_s6_gtpwizard_i : pcs_pma_s6_gtpwizard
    generic map
    (
        WRAPPER_SIM_GTPRESET_SPEEDUP    =>      0,    // Set this to 1 for simulation
        WRAPPER_SIMULATION              =>      0    // Set this to 1 for simulation
    )
    port map
    (
        --_____________________________________________________________________
        --_____________________________________________________________________
        --TILE0  (X0_Y0)
 
        ------------------------ Loopback and Powerdown Ports ----------------------
        TILE0_LOOPBACK0_IN              =>      ,
        TILE0_LOOPBACK1_IN              =>      ,
        TILE0_RXPOWERDOWN0_IN           =>      ,
        TILE0_RXPOWERDOWN1_IN           =>      ,
        TILE0_TXPOWERDOWN0_IN           =>      ,
        TILE0_TXPOWERDOWN1_IN           =>      ,
        --------------------------------- PLL Ports --------------------------------
        TILE0_CLK00_IN                  =>      tile0_gtp0_refclk_i,
        TILE0_CLK01_IN                  =>      tied_to_ground_i,
        TILE0_GTPRESET0_IN              =>      ,
        TILE0_GTPRESET1_IN              =>      ,
        TILE0_PLLLKDET0_OUT             =>      ,
        TILE0_RESETDONE0_OUT            =>      ,
        TILE0_RESETDONE1_OUT            =>      ,
        ----------------------- Receive Ports - 8b10b Decoder ----------------------
        TILE0_RXCHARISCOMMA0_OUT        =>      ,
        TILE0_RXCHARISCOMMA1_OUT        =>      ,
        TILE0_RXCHARISK0_OUT            =>      ,
        TILE0_RXCHARISK1_OUT            =>      ,
        TILE0_RXDISPERR0_OUT            =>      ,
        TILE0_RXDISPERR1_OUT            =>      ,
        TILE0_RXNOTINTABLE0_OUT         =>      ,
        TILE0_RXNOTINTABLE1_OUT         =>      ,
        TILE0_RXRUNDISP0_OUT            =>      ,
        TILE0_RXRUNDISP1_OUT            =>      ,
        ---------------------- Receive Ports - Clock Correction --------------------
        TILE0_RXCLKCORCNT0_OUT          =>      ,
        TILE0_RXCLKCORCNT1_OUT          =>      ,
        --------------- Receive Ports - Comma Detection and Alignment --------------
        TILE0_RXENMCOMMAALIGN0_IN       =>      ,
        TILE0_RXENMCOMMAALIGN1_IN       =>      ,
        TILE0_RXENPCOMMAALIGN0_IN       =>      ,
        TILE0_RXENPCOMMAALIGN1_IN       =>      ,
        ------------------- Receive Ports - RX Data Path interface -----------------
        TILE0_RXDATA0_OUT               =>      ,
        TILE0_RXDATA1_OUT               =>      ,
        TILE0_RXRECCLK0_OUT             =>      ,
        TILE0_RXRECCLK1_OUT             =>      ,
        TILE0_RXRESET0_IN               =>      ,
        TILE0_RXRESET1_IN               =>      ,
        TILE0_RXUSRCLK0_IN              =>      ,
        TILE0_RXUSRCLK1_IN              =>      ,
        TILE0_RXUSRCLK20_IN             =>      ,
        TILE0_RXUSRCLK21_IN             =>      ,
        ------- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
        TILE0_RXN0_IN                   =>      ,
        TILE0_RXN1_IN                   =>      ,
        TILE0_RXP0_IN                   =>      ,
        TILE0_RXP1_IN                   =>      ,
        ----------- Receive Ports - RX Elastic Buffer and Phase Alignment ----------
        TILE0_RXBUFRESET0_IN            =>      ,
        TILE0_RXBUFRESET1_IN            =>      ,
        TILE0_RXBUFSTATUS0_OUT          =>      ,
        TILE0_RXBUFSTATUS1_OUT          =>      ,
        ---------------------------- TX/RX Datapath Ports --------------------------
        TILE0_GTPCLKOUT0_OUT            =>      ,
        TILE0_GTPCLKOUT1_OUT            =>      ,
        ------------------- Transmit Ports - 8b10b Encoder Control -----------------
        TILE0_TXCHARDISPMODE0_IN        =>      ,
        TILE0_TXCHARDISPMODE1_IN        =>      ,
        TILE0_TXCHARDISPVAL0_IN         =>      ,
        TILE0_TXCHARDISPVAL1_IN         =>      ,
        TILE0_TXCHARISK0_IN             =>      ,
        TILE0_TXCHARISK1_IN             =>      ,
        --------------- Transmit Ports - TX Buffer and Phase Alignment -------------
        TILE0_TXBUFSTATUS0_OUT          =>      ,
        TILE0_TXBUFSTATUS1_OUT          =>      ,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        TILE0_TXDATA0_IN                =>      ,
        TILE0_TXDATA1_IN                =>      ,
        TILE0_TXOUTCLK0_OUT             =>      ,
        TILE0_TXOUTCLK1_OUT             =>      ,
        TILE0_TXRESET0_IN               =>      ,
        TILE0_TXRESET1_IN               =>      ,
        TILE0_TXUSRCLK0_IN              =>      ,
        TILE0_TXUSRCLK1_IN              =>      ,
        TILE0_TXUSRCLK20_IN             =>      ,
        TILE0_TXUSRCLK21_IN             =>      ,
        --------------- Transmit Ports - TX Driver and OOB signalling --------------
        TILE0_TXN0_OUT                  =>      ,
        TILE0_TXN1_OUT                  =>      ,
        TILE0_TXP0_OUT                  =>      ,
        TILE0_TXP1_OUT                  =>      


    );


    -----------------------Dedicated GTP Reference Clock Inputs ---------------
    -- Each dedicated refclk you are using in your design will need its own IBUFDS instance
    
    tile0_refclk_ibufds_i : IBUFDS
    port map
    (
        O                               =>      tile0_gtp0_refclk_i,
        I                               =>      ,  -- Connect to package pin AE11
        IB                              =>         -- Connect to package pin AF11
    );












