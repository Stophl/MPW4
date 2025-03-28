-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Mar 24 09:29:39 2025
-- Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_1_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT is
  port (
    gtxe2_i_0 : out STD_LOGIC;
    gt0_cpllrefclklost_i : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtxe2_i_1 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtxe2_i_2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i_3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    cpll_pd0_i : in STD_LOGIC;
    cpllreset_in : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gttxreset_in0_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    gtxe2_i_8 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_11 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT is
  signal gtxe2_i_n_0 : STD_LOGIC;
  signal gtxe2_i_n_10 : STD_LOGIC;
  signal gtxe2_i_n_16 : STD_LOGIC;
  signal gtxe2_i_n_170 : STD_LOGIC;
  signal gtxe2_i_n_171 : STD_LOGIC;
  signal gtxe2_i_n_172 : STD_LOGIC;
  signal gtxe2_i_n_173 : STD_LOGIC;
  signal gtxe2_i_n_174 : STD_LOGIC;
  signal gtxe2_i_n_175 : STD_LOGIC;
  signal gtxe2_i_n_176 : STD_LOGIC;
  signal gtxe2_i_n_177 : STD_LOGIC;
  signal gtxe2_i_n_178 : STD_LOGIC;
  signal gtxe2_i_n_179 : STD_LOGIC;
  signal gtxe2_i_n_180 : STD_LOGIC;
  signal gtxe2_i_n_181 : STD_LOGIC;
  signal gtxe2_i_n_182 : STD_LOGIC;
  signal gtxe2_i_n_183 : STD_LOGIC;
  signal gtxe2_i_n_184 : STD_LOGIC;
  signal gtxe2_i_n_27 : STD_LOGIC;
  signal gtxe2_i_n_3 : STD_LOGIC;
  signal gtxe2_i_n_38 : STD_LOGIC;
  signal gtxe2_i_n_39 : STD_LOGIC;
  signal gtxe2_i_n_4 : STD_LOGIC;
  signal gtxe2_i_n_46 : STD_LOGIC;
  signal gtxe2_i_n_47 : STD_LOGIC;
  signal gtxe2_i_n_48 : STD_LOGIC;
  signal gtxe2_i_n_49 : STD_LOGIC;
  signal gtxe2_i_n_50 : STD_LOGIC;
  signal gtxe2_i_n_51 : STD_LOGIC;
  signal gtxe2_i_n_52 : STD_LOGIC;
  signal gtxe2_i_n_53 : STD_LOGIC;
  signal gtxe2_i_n_54 : STD_LOGIC;
  signal gtxe2_i_n_55 : STD_LOGIC;
  signal gtxe2_i_n_56 : STD_LOGIC;
  signal gtxe2_i_n_57 : STD_LOGIC;
  signal gtxe2_i_n_58 : STD_LOGIC;
  signal gtxe2_i_n_59 : STD_LOGIC;
  signal gtxe2_i_n_60 : STD_LOGIC;
  signal gtxe2_i_n_61 : STD_LOGIC;
  signal gtxe2_i_n_81 : STD_LOGIC;
  signal gtxe2_i_n_83 : STD_LOGIC;
  signal gtxe2_i_n_84 : STD_LOGIC;
  signal gtxe2_i_n_9 : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF10100020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0904",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 5,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => gtxe2_i_n_0,
      CPLLLOCK => gtxe2_i_0,
      CPLLLOCKDETCLK => independent_clock_bufg,
      CPLLLOCKEN => '1',
      CPLLPD => cpll_pd0_i,
      CPLLREFCLKLOST => gt0_cpllrefclklost_i,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => cpllreset_in,
      DMONITOROUT(7) => gtxe2_i_n_177,
      DMONITOROUT(6) => gtxe2_i_n_178,
      DMONITOROUT(5) => gtxe2_i_n_179,
      DMONITOROUT(4) => gtxe2_i_n_180,
      DMONITOROUT(3) => gtxe2_i_n_181,
      DMONITOROUT(2) => gtxe2_i_n_182,
      DMONITOROUT(1) => gtxe2_i_n_183,
      DMONITOROUT(0) => gtxe2_i_n_184,
      DRPADDR(8 downto 0) => B"000000000",
      DRPCLK => gtrefclk_bufg,
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15) => gtxe2_i_n_46,
      DRPDO(14) => gtxe2_i_n_47,
      DRPDO(13) => gtxe2_i_n_48,
      DRPDO(12) => gtxe2_i_n_49,
      DRPDO(11) => gtxe2_i_n_50,
      DRPDO(10) => gtxe2_i_n_51,
      DRPDO(9) => gtxe2_i_n_52,
      DRPDO(8) => gtxe2_i_n_53,
      DRPDO(7) => gtxe2_i_n_54,
      DRPDO(6) => gtxe2_i_n_55,
      DRPDO(5) => gtxe2_i_n_56,
      DRPDO(4) => gtxe2_i_n_57,
      DRPDO(3) => gtxe2_i_n_58,
      DRPDO(2) => gtxe2_i_n_59,
      DRPDO(1) => gtxe2_i_n_60,
      DRPDO(0) => gtxe2_i_n_61,
      DRPEN => '0',
      DRPRDY => gtxe2_i_n_3,
      DRPWE => '0',
      EYESCANDATAERROR => gtxe2_i_n_4,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => gtrefclk_out,
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => SR(0),
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => gt0_gttxreset_in0_out,
      GTXRXN => rxn,
      GTXRXP => rxp,
      GTXTXN => txn,
      GTXTXP => txp,
      LOOPBACK(2 downto 0) => B"000",
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => gt0_qplloutclk_out,
      QPLLREFCLK => gt0_qplloutrefclk_out,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => RXBUFSTATUS(0),
      RXBUFSTATUS(1) => gtxe2_i_n_83,
      RXBUFSTATUS(0) => gtxe2_i_n_84,
      RXBYTEISALIGNED => gtxe2_i_n_9,
      RXBYTEREALIGN => gtxe2_i_n_10,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => gtxe2_i_4(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => gtxe2_i_5(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtxe2_i_n_16,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => gtxe2_i_3(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => '0',
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => '0',
      RXDFELFOVRDEN => '0',
      RXDFELPMRESET => '0',
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => gtxe2_i_6(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => '1',
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => reset_out,
      RXMONITOROUT(6) => gtxe2_i_n_170,
      RXMONITOROUT(5) => gtxe2_i_n_171,
      RXMONITOROUT(4) => gtxe2_i_n_172,
      RXMONITOROUT(3) => gtxe2_i_n_173,
      RXMONITOROUT(2) => gtxe2_i_n_174,
      RXMONITOROUT(1) => gtxe2_i_n_175,
      RXMONITOROUT(0) => gtxe2_i_n_176,
      RXMONITORSEL(1 downto 0) => B"00",
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => gtxe2_i_7(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => rxoutclk,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => reset_out,
      RXPCSRESET => reset,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtxe2_i_n_27,
      RXPRBSSEL(2 downto 0) => B"000",
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => gtxe2_i_1,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt0_rxuserrdy_t,
      RXUSRCLK => gtxe2_i_8,
      RXUSRCLK2 => gtxe2_i_8,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => TXBUFSTATUS(0),
      TXBUFSTATUS(0) => gtxe2_i_n_81,
      TXCHARDISPMODE(7 downto 2) => B"000000",
      TXCHARDISPMODE(1 downto 0) => gtxe2_i_9(1 downto 0),
      TXCHARDISPVAL(7 downto 2) => B"000000",
      TXCHARDISPVAL(1 downto 0) => gtxe2_i_10(1 downto 0),
      TXCHARISK(7 downto 2) => B"000000",
      TXCHARISK(1 downto 0) => gtxe2_i_11(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 16) => B"000000000000000000000000000000000000000000000000",
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => TXPD(0),
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => gtxe2_i_n_38,
      TXOUTCLKPCS => gtxe2_i_n_39,
      TXOUTCLKSEL(2 downto 0) => B"100",
      TXPCSRESET => '0',
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => gtxe2_i_2,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt0_txuserrdy_t,
      TXUSRCLK => gtxe2_i_8,
      TXUSRCLK2 => gtxe2_i_8
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clocking is
  port (
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg : out STD_LOGIC;
    mmcm_locked : out STD_LOGIC;
    userclk : out STD_LOGIC;
    userclk2 : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    txoutclk : in STD_LOGIC;
    mmcm_reset : in STD_LOGIC;
    rxoutclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clocking;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clocking is
  signal clkfbout : STD_LOGIC;
  signal clkout0 : STD_LOGIC;
  signal clkout1 : STD_LOGIC;
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal txoutclk_bufg : STD_LOGIC;
  signal NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute box_type : string;
  attribute box_type of bufg_gtrefclk : label is "PRIMITIVE";
  attribute box_type of bufg_txoutclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk2 : label is "PRIMITIVE";
  attribute box_type of ibufds_gtrefclk : label is "PRIMITIVE";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
  attribute box_type of rxrecclkbufg : label is "PRIMITIVE";
begin
  gtrefclk_out <= \^gtrefclk_out\;
bufg_gtrefclk: unisim.vcomponents.BUFG
     port map (
      I => \^gtrefclk_out\,
      O => gtrefclk_bufg
    );
bufg_txoutclk: unisim.vcomponents.BUFG
     port map (
      I => txoutclk,
      O => txoutclk_bufg
    );
bufg_userclk: unisim.vcomponents.BUFG
     port map (
      I => clkout1,
      O => userclk
    );
bufg_userclk2: unisim.vcomponents.BUFG
     port map (
      I => clkout0,
      O => userclk2
    );
ibufds_gtrefclk: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
        port map (
      CEB => '0',
      I => gtrefclk_p,
      IB => gtrefclk_n,
      O => \^gtrefclk_out\,
      ODIV2 => NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 16.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 16.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 8.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 16,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => clkfbout,
      CLKFBOUT => clkfbout,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => txoutclk_bufg,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clkout0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clkout1,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => mmcm_locked,
      PSCLK => '0',
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => mmcm_reset
    );
rxrecclkbufg: unisim.vcomponents.BUFG
     port map (
      I => rxoutclk,
      O => rxuserclk2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing is
  port (
    cpll_pd0_i : out STD_LOGIC;
    cpllreset_in : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gt0_cpllreset_t : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing is
  signal cpll_reset_out : STD_LOGIC;
  signal \cpllpd_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[94]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[126]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[95]_srl32_n_1\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_wait_reg[31]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_wait_reg[31]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[63]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[63]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[94]_srl31\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[94]_srl31\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[94]_srl31 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \cpllpd_wait_reg[95]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[126]_srl31\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[126]_srl31\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[126]_srl31 ";
  attribute equivalent_register_removal of \cpllreset_wait_reg[127]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[31]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[31]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[63]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[63]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[95]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[95]_srl32\ : label is "U0/\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[95]_srl32 ";
begin
\cpllpd_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => '0',
      Q => \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[31]_srl32_n_1\
    );
\cpllpd_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllpd_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[63]_srl32_n_1\
    );
\cpllpd_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllpd_wait_reg[63]_srl32_n_1\,
      Q => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q31 => \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q => cpll_pd0_i,
      R => '0'
    );
\cpllreset_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[95]_srl32_n_1\,
      Q => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q31 => \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtrefclk_bufg,
      CE => '1',
      D => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q => cpll_reset_out,
      R => '0'
    );
\cpllreset_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => '0',
      Q => \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[31]_srl32_n_1\
    );
\cpllreset_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[63]_srl32_n_1\
    );
\cpllreset_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gtrefclk_bufg,
      D => \cpllreset_wait_reg[63]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[95]_srl32_n_1\
    );
gtxe2_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cpll_reset_out,
      I1 => gt0_cpllreset_t,
      O => cpllreset_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_gt_common is
  port (
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_gt_common;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_gt_common is
  signal gtxe2_common_i_n_2 : STD_LOGIC;
  signal gtxe2_common_i_n_5 : STD_LOGIC;
  signal NLW_gtxe2_common_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_common_i : label is "PRIMITIVE";
begin
gtxe2_common_i: unisim.vcomponents.GTXE2_COMMON
    generic map(
      BIAS_CFG => X"0000040000001000",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_QPLLLOCKDETCLK_INVERTED => '0',
      QPLL_CFG => X"06801C1",
      QPLL_CLKOUT_CFG => B"0000",
      QPLL_COARSE_FREQ_OVRD => B"010000",
      QPLL_COARSE_FREQ_OVRD_EN => '0',
      QPLL_CP => B"0000011111",
      QPLL_CP_MONITOR_EN => '0',
      QPLL_DMONITOR_SEL => '0',
      QPLL_FBDIV => B"0000100000",
      QPLL_FBDIV_MONITOR_EN => '0',
      QPLL_FBDIV_RATIO => '1',
      QPLL_INIT_CFG => X"000006",
      QPLL_LOCK_CFG => X"21E8",
      QPLL_LPF => B"1111",
      QPLL_REFCLK_DIV => 1,
      SIM_QPLLREFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_VERSION => "4.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15 downto 0) => NLW_gtxe2_common_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => '0',
      DRPRDY => NLW_gtxe2_common_i_DRPRDY_UNCONNECTED,
      DRPWE => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => gtrefclk_out,
      GTREFCLK1 => '0',
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      PMARSVD(7 downto 0) => B"00000000",
      QPLLDMONITOR(7 downto 0) => NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED(7 downto 0),
      QPLLFBCLKLOST => NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED,
      QPLLLOCK => gtxe2_common_i_n_2,
      QPLLLOCKDETCLK => independent_clock_bufg,
      QPLLLOCKEN => '1',
      QPLLOUTCLK => gt0_qplloutclk_out,
      QPLLOUTREFCLK => gt0_qplloutrefclk_out,
      QPLLOUTRESET => '0',
      QPLLPD => '1',
      QPLLREFCLKLOST => gtxe2_common_i_n_5,
      QPLLREFCLKSEL(2 downto 0) => B"001",
      QPLLRESET => \out\(0),
      QPLLRSVD1(15 downto 0) => B"0000000000000000",
      QPLLRSVD2(4 downto 0) => B"11111",
      RCALENB => '1',
      REFCLKOUTMONITOR => NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => '0',
      PRE => enablealign,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg1,
      PRE => enablealign,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg2,
      PRE => enablealign,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg3,
      PRE => enablealign,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg4,
      PRE => enablealign,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1 : entity is "gig_ethernet_pcs_pma_1_reset_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2 : entity is "gig_ethernet_pcs_pma_1_reset_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of reset_sync1 : label is "VCC:CE";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync2 : label is "VCC:CE";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync3 : label is "VCC:CE";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync4 : label is "VCC:CE";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync5 : label is "VCC:CE";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute XILINX_TRANSFORM_PINMAP of reset_sync6 : label is "VCC:CE";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg1,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg2,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg3,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg4,
      PRE => reset_sync5_0(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer is
  signal \counter_stg1[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg1[5]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg1_reg : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \counter_stg2[0]_i_3_n_0\ : STD_LOGIC;
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg2_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg2_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counter_stg30 : STD_LOGIC;
  signal \counter_stg3[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter_stg3[0]_i_5_n_0\ : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \counter_stg3_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_stg3_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset0 : STD_LOGIC;
  signal reset_i_2_n_0 : STD_LOGIC;
  signal reset_i_3_n_0 : STD_LOGIC;
  signal reset_i_4_n_0 : STD_LOGIC;
  signal reset_i_5_n_0 : STD_LOGIC;
  signal reset_i_6_n_0 : STD_LOGIC;
  signal \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \counter_stg1[5]_i_3\ : label is "soft_lutpair71";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg2_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_stg3_reg[8]_i_1\ : label is 11;
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      O => plusOp(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_stg1_reg__0\(0),
      I1 => \counter_stg1_reg__0\(1),
      O => plusOp(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_stg1_reg__0\(1),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(2),
      O => plusOp(2)
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_stg1_reg__0\(2),
      I1 => \counter_stg1_reg__0\(0),
      I2 => \counter_stg1_reg__0\(1),
      I3 => \counter_stg1_reg__0\(3),
      O => plusOp(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(3),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(4),
      O => plusOp(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => reset_i_2_n_0,
      I1 => counter_stg3_reg(0),
      I2 => reset_i_3_n_0,
      I3 => \counter_stg1[5]_i_3_n_0\,
      I4 => data_out,
      O => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(2),
      I2 => \counter_stg1_reg__0\(0),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(3),
      I5 => counter_stg1_reg(5),
      O => plusOp(5)
    );
\counter_stg1[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(3),
      I1 => \counter_stg1_reg__0\(1),
      I2 => \counter_stg1_reg__0\(0),
      I3 => \counter_stg1_reg__0\(2),
      I4 => \counter_stg1_reg__0\(4),
      O => \counter_stg1[5]_i_3_n_0\
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(0),
      Q => \counter_stg1_reg__0\(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(1),
      Q => \counter_stg1_reg__0\(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(2),
      Q => \counter_stg1_reg__0\(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(3),
      Q => \counter_stg1_reg__0\(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(4),
      Q => \counter_stg1_reg__0\(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => plusOp(5),
      Q => counter_stg1_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \counter_stg1_reg__0\(4),
      I1 => \counter_stg1_reg__0\(2),
      I2 => \counter_stg1_reg__0\(0),
      I3 => \counter_stg1_reg__0\(1),
      I4 => \counter_stg1_reg__0\(3),
      I5 => counter_stg1_reg(5),
      O => eqOp
    );
\counter_stg2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg2_reg(0),
      O => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_7\,
      Q => counter_stg2_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg2_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg2_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg2_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg2_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg2_reg[0]_i_2_n_4\,
      O(2) => \counter_stg2_reg[0]_i_2_n_5\,
      O(1) => \counter_stg2_reg[0]_i_2_n_6\,
      O(0) => \counter_stg2_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg2_reg(3 downto 1),
      S(0) => \counter_stg2[0]_i_3_n_0\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_5\,
      Q => counter_stg2_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_4\,
      Q => counter_stg2_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_6\,
      Q => counter_stg2_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_5\,
      Q => counter_stg2_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[0]_i_2_n_4\,
      Q => counter_stg2_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_7\,
      Q => counter_stg2_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg2_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg2_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[4]_i_1_n_4\,
      O(2) => \counter_stg2_reg[4]_i_1_n_5\,
      O(1) => \counter_stg2_reg[4]_i_1_n_6\,
      O(0) => \counter_stg2_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(7 downto 4)
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_6\,
      Q => counter_stg2_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_5\,
      Q => counter_stg2_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[4]_i_1_n_4\,
      Q => counter_stg2_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_7\,
      Q => counter_stg2_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg2_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg2_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg2_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg2_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg2_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg2_reg[8]_i_1_n_4\,
      O(2) => \counter_stg2_reg[8]_i_1_n_5\,
      O(1) => \counter_stg2_reg[8]_i_1_n_6\,
      O(0) => \counter_stg2_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg2_reg(11 downto 8)
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => eqOp,
      D => \counter_stg2_reg[8]_i_1_n_6\,
      Q => counter_stg2_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \counter_stg3[0]_i_3_n_0\,
      I1 => \counter_stg3[0]_i_4_n_0\,
      I2 => counter_stg2_reg(0),
      I3 => \counter_stg1[5]_i_3_n_0\,
      O => counter_stg30
    );
\counter_stg3[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_stg2_reg(3),
      I1 => counter_stg2_reg(4),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(2),
      I4 => counter_stg2_reg(6),
      I5 => counter_stg2_reg(5),
      O => \counter_stg3[0]_i_3_n_0\
    );
\counter_stg3[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => counter_stg2_reg(9),
      I1 => counter_stg2_reg(10),
      I2 => counter_stg2_reg(7),
      I3 => counter_stg2_reg(8),
      I4 => counter_stg1_reg(5),
      I5 => counter_stg2_reg(11),
      O => \counter_stg3[0]_i_4_n_0\
    );
\counter_stg3[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_stg3_reg(0),
      O => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_7\,
      Q => counter_stg3_reg(0),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_stg3_reg[0]_i_2_n_0\,
      CO(2) => \counter_stg3_reg[0]_i_2_n_1\,
      CO(1) => \counter_stg3_reg[0]_i_2_n_2\,
      CO(0) => \counter_stg3_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_stg3_reg[0]_i_2_n_4\,
      O(2) => \counter_stg3_reg[0]_i_2_n_5\,
      O(1) => \counter_stg3_reg[0]_i_2_n_6\,
      O(0) => \counter_stg3_reg[0]_i_2_n_7\,
      S(3 downto 1) => counter_stg3_reg(3 downto 1),
      S(0) => \counter_stg3[0]_i_5_n_0\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_5\,
      Q => counter_stg3_reg(10),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_4\,
      Q => counter_stg3_reg(11),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_6\,
      Q => counter_stg3_reg(1),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_5\,
      Q => counter_stg3_reg(2),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[0]_i_2_n_4\,
      Q => counter_stg3_reg(3),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_7\,
      Q => counter_stg3_reg(4),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[0]_i_2_n_0\,
      CO(3) => \counter_stg3_reg[4]_i_1_n_0\,
      CO(2) => \counter_stg3_reg[4]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[4]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[4]_i_1_n_4\,
      O(2) => \counter_stg3_reg[4]_i_1_n_5\,
      O(1) => \counter_stg3_reg[4]_i_1_n_6\,
      O(0) => \counter_stg3_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(7 downto 4)
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_6\,
      Q => counter_stg3_reg(5),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_5\,
      Q => counter_stg3_reg(6),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[4]_i_1_n_4\,
      Q => counter_stg3_reg(7),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_7\,
      Q => counter_stg3_reg(8),
      R => \counter_stg1[5]_i_1_n_0\
    );
\counter_stg3_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_stg3_reg[4]_i_1_n_0\,
      CO(3) => \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_stg3_reg[8]_i_1_n_1\,
      CO(1) => \counter_stg3_reg[8]_i_1_n_2\,
      CO(0) => \counter_stg3_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_stg3_reg[8]_i_1_n_4\,
      O(2) => \counter_stg3_reg[8]_i_1_n_5\,
      O(1) => \counter_stg3_reg[8]_i_1_n_6\,
      O(0) => \counter_stg3_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_stg3_reg(11 downto 8)
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \counter_stg3_reg[8]_i_1_n_6\,
      Q => counter_stg3_reg(9),
      R => \counter_stg1[5]_i_1_n_0\
    );
reset_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => reset_i_2_n_0,
      I1 => counter_stg3_reg(0),
      I2 => reset_i_3_n_0,
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => counter_stg3_reg(9),
      I1 => counter_stg3_reg(10),
      I2 => counter_stg3_reg(7),
      I3 => counter_stg3_reg(8),
      I4 => counter_stg2_reg(0),
      I5 => counter_stg3_reg(11),
      O => reset_i_2_n_0
    );
reset_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => reset_i_4_n_0,
      I1 => reset_i_5_n_0,
      I2 => reset_i_6_n_0,
      O => reset_i_3_n_0
    );
reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => counter_stg2_reg(3),
      I1 => counter_stg2_reg(4),
      I2 => counter_stg2_reg(1),
      I3 => counter_stg2_reg(2),
      I4 => counter_stg2_reg(6),
      I5 => counter_stg2_reg(5),
      O => reset_i_4_n_0
    );
reset_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => counter_stg2_reg(10),
      I1 => counter_stg2_reg(9),
      I2 => counter_stg2_reg(8),
      I3 => counter_stg2_reg(7),
      I4 => counter_stg1_reg(5),
      I5 => counter_stg2_reg(11),
      O => reset_i_5_n_0
    );
reset_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => counter_stg3_reg(4),
      I1 => counter_stg3_reg(3),
      I2 => counter_stg3_reg(1),
      I3 => counter_stg3_reg(2),
      I4 => counter_stg3_reg(6),
      I5 => counter_stg3_reg(5),
      O => reset_i_6_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset0,
      Q => reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_resets is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_resets;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_resets is
  signal pma_reset_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute async_reg : string;
  attribute async_reg of pma_reset_pipe : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \pma_reset_pipe_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[1]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[2]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \pma_reset_pipe_reg[3]\ : label is std.standard.true;
  attribute KEEP of \pma_reset_pipe_reg[3]\ : label is "yes";
begin
  \out\(0) <= pma_reset_pipe(3);
\pma_reset_pipe_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => pma_reset_pipe(0)
    );
\pma_reset_pipe_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(0),
      PRE => reset,
      Q => pma_reset_pipe(1)
    );
\pma_reset_pipe_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(1),
      PRE => reset,
      Q => pma_reset_pipe(2)
    );
\pma_reset_pipe_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pma_reset_pipe(2),
      PRE => reset,
      Q => pma_reset_pipe(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0 is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
resetdone_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_out,
      I1 => resetdone_0,
      O => resetdone
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11 is
  port (
    \FSM_sequential_rx_state_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxresetdone_s3 : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11 is
  signal cplllock_sync : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"008F0080"
    )
        port map (
      I0 => Q(0),
      I1 => rxresetdone_s3,
      I2 => Q(1),
      I3 => Q(2),
      I4 => cplllock_sync,
      O => \FSM_sequential_rx_state_reg[1]\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => cplllock_sync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12 is
  port (
    \FSM_sequential_rx_state_reg[1]\ : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[1]_0\ : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_0 : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_1 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    time_out_wait_bypass_s3 : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_2 : in STD_LOGIC;
    rx_fsm_reset_done_int_reg_3 : in STD_LOGIC;
    data_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12 is
  signal \FSM_sequential_rx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal reset_time_out_i_2_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[0]_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_8\ : label is "soft_lutpair41";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFEFEF"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]_2\,
      I1 => \FSM_sequential_rx_state[0]_i_3_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(3),
      O => D(0)
    );
\FSM_sequential_rx_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Q(3),
      I1 => reset_time_out_reg_2,
      I2 => data_valid_sync,
      I3 => rx_fsm_reset_done_int_reg_1,
      O => \FSM_sequential_rx_state[0]_i_3_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF24200400"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I5 => \FSM_sequential_rx_state_reg[1]_0\,
      O => D(1)
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_valid_sync,
      I1 => rx_fsm_reset_done_int_reg_1,
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]\,
      I1 => \FSM_sequential_rx_state[3]_i_4_n_0\,
      I2 => Q(0),
      I3 => reset_time_out_reg,
      I4 => \FSM_sequential_rx_state[3]_i_6_n_0\,
      I5 => \FSM_sequential_rx_state_reg[0]_0\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCCC0C4C4"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => Q(3),
      I2 => Q(1),
      I3 => \FSM_sequential_rx_state[3]_i_8_n_0\,
      I4 => Q(0),
      I5 => \FSM_sequential_rx_state_reg[3]\,
      O => D(2)
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAEFEA"
    )
        port map (
      I0 => \FSM_sequential_rx_state[0]_i_3_n_0\,
      I1 => \FSM_sequential_rx_state_reg[0]_1\,
      I2 => Q(2),
      I3 => \FSM_sequential_rx_state_reg[0]_3\,
      I4 => Q(0),
      I5 => Q(1),
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CE20CCC"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => Q(3),
      I2 => data_valid_sync,
      I3 => Q(1),
      I4 => Q(0),
      O => \FSM_sequential_rx_state[3]_i_6_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg_1,
      I1 => data_valid_sync,
      I2 => reset_time_out_reg_2,
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_valid_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFFEEEF0000"
    )
        port map (
      I0 => reset_time_out_i_2_n_0,
      I1 => reset_time_out_reg,
      I2 => reset_time_out_reg_0,
      I3 => Q(1),
      I4 => reset_time_out_reg_1,
      I5 => reset_time_out_reg_2,
      O => \FSM_sequential_rx_state_reg[1]\
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF30E0E0FF30202"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]_1\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => data_valid_sync,
      I4 => Q(3),
      I5 => mmcm_lock_reclocked,
      O => reset_time_out_i_2_n_0
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rx_fsm_reset_done_int,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => rx_fsm_reset_done_int_i_4_n_0,
      I3 => data_in,
      O => rx_fsm_reset_done_int_reg
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => Q(0),
      I1 => data_valid_sync,
      I2 => Q(2),
      I3 => reset_time_out_reg_2,
      I4 => rx_fsm_reset_done_int_reg_2,
      O => rx_fsm_reset_done_int
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040004040400"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg_0,
      I1 => Q(3),
      I2 => Q(2),
      I3 => data_valid_sync,
      I4 => rx_fsm_reset_done_int_reg_1,
      I5 => reset_time_out_reg_2,
      O => rx_fsm_reset_done_int_i_3_n_0
    );
rx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000808080008"
    )
        port map (
      I0 => rx_fsm_reset_done_int_reg_3,
      I1 => Q(1),
      I2 => Q(0),
      I3 => data_valid_sync,
      I4 => rx_fsm_reset_done_int_reg_2,
      I5 => reset_time_out_reg_2,
      O => rx_fsm_reset_done_int_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => status_vector(0),
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5 is
  port (
    reset_time_out_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg_0 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_time_out_reg_1 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_4\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_5\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_6\ : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5 is
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal cplllock_sync : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  signal \reset_time_out_i_4__0_n_0\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]\,
      I1 => \FSM_sequential_tx_state_reg[0]_0\,
      I2 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      I3 => \FSM_sequential_tx_state_reg[0]_1\,
      I4 => \FSM_sequential_tx_state_reg[0]_2\,
      I5 => \FSM_sequential_tx_state_reg[0]_3\,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F00008"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[0]_4\,
      I1 => \FSM_sequential_tx_state_reg[0]_5\,
      I2 => cplllock_sync,
      I3 => Q(2),
      I4 => Q(1),
      I5 => \FSM_sequential_tx_state_reg[0]_6\,
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => cplllock_sync,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => reset_time_out_reg_0,
      I1 => \reset_time_out_i_3__0_n_0\,
      I2 => \reset_time_out_i_4__0_n_0\,
      I3 => reset_time_out,
      O => reset_time_out_reg
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020002000F000200"
    )
        port map (
      I0 => cplllock_sync,
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => mmcm_lock_reclocked,
      I5 => Q(1),
      O => \reset_time_out_i_3__0_n_0\
    );
\reset_time_out_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505FF040505F504"
    )
        port map (
      I0 => Q(1),
      I1 => reset_time_out_reg_1,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(3),
      I5 => cplllock_sync,
      O => \reset_time_out_i_4__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6 is
  signal \^data_out\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
  data_out <= \^data_out\;
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync_reg1_0,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => \^data_out\,
      R => '0'
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_out\,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9 is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg1 : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg2 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg3 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg4 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg5 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of data_sync_reg6 : label is "VCC:CE GND:R";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1_0,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TCSZ2Ye5IRfHavlF8Mno1PI9xixWuSiNh3ssU1FQtkjW1fmNtc2c3x12slL242UQayI0rzZTqe6S
edtecLHTOnzxXpCZjjU8NFmgLPerTSDZ1W5YhyIi9j0Ap4YBpvaA1ojM0+r0Cx+dMOXohQGeyljq
+fnTaFTUe2678DxpqHk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NIzZVKMB1/8UX2qb4BB+VXCafEKXsrn7axB1cJDPqDCzSyt/2KG1NEEZTDHZVzIr8Bf9501PyXmL
VowTAAXX/RopKyKOM1xJN/qLtqXxegH2a4dIkUxDIIclIcbv/smna9VCwI7m6JhrnKsNciTTilgR
27S/h6JPpZsZAEmsNxxTC70WQhQSM8TlHJjZg3KDc5KTnvC/mVTk6I05U6x0Bdd1YR9GBvhwRqhP
B1ukL/1JVOwR9Ce9p+EHFE/xyApypCjQPGwq+8IFQgS8wltVZHX6eSMw17Q0wGCY+LHduRTA+abV
LvAR0NPf7PKQUSCECe2mBbLPO7wD4BO5RAkJeA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
udw4XxxzcaDNM1qWnRgZ2JEM1MMqnKwKVqha/krU9EyUAsyATjQEMBqjlOHw5QXMU2jjizlL20Nl
h2pF7iKo1S+7TS54Y/UIJANp+Dl46V/qfy6/yBnE4YclHON1k0jRao4C6T951tgXuCAIQEmXbr87
aJfL2dNqORH+TDKUBdc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JFe89rPDaiIUicPDNoXCg8pJUoYRyVDoW/5yE4T0Cp9xDHtuIyKQVbC7jVb92OsgJ5GHDm7DH2D2
rYZKrdCIqPt2jo7DG6bcJuDFcisZb11HLlYWNsK2Vqs9DdsTPViykeE05CD5AgfDxb983x8F1meK
w8zjeGoD44djsaRA+lvP1zLhl24q5LWFJdPSyIT7uWZwhxHqlyJu85ToXLuwZQZO76Mp+1mitxDy
vleizC5rnk/4hqxfEFS21Qi1TwCz5hdU+H3nA3dTe1KRY+obbFP7sRWKfmr9Rcf9enRvbaEbLoJA
9ADkl72jc1Aqlnd+YCGq4EmbElbWLxblpamncA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
IV5qOrW4jXfiGt6hz/YcNm+/H3ij0v503CF3Kvut91tUWldzNzyLt4pIZEWEzSmn6RcpcLNN88po
1kt45UdSBz+mL5HDQaw4J+VGD/cCBmW1jnOclCf82kwju1MIDfa2EKicjqaykCUROxV7cwg07FFp
clLfIwd4kxgSWnGzeZi1IGezx7OpBsAkBTz9ha4WttEm0+D29DF9O4GaQl6q8IBeA0QIrO10EESt
slfRi2evxdOeTZBVFoXU91OszneH/prZqyCsHeyvTa8PABTZ+Y4CH6ICZCXRn7QTNJgoYSGABuPs
87saNJgzomjyaO6IzGl1fBgMIsIurKw90DE8Jw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Eek/EeBa5kEiakvxzHC3fZ0NXCsvWnLN8FYKLyImepfBUv2jdVDY2j6Qs928DJaMO8pBuO9SGcu3
47rhcN1DAjZza5Ac83W24fngY1+YWblivVc8AoggXS1t2Y7Dy1vf9+ZxUdOvq63sje+fDJxapZwK
3HQGdtBX86RTaUS5K+HyI1FTmcIhUYmJWmxQjIxLla7FF1QZ4XpTCfqAG5i7ZKlYSoDFb8sjCRG4
XWFuk1dbL2UfZPxXZ7XHIm+03Ck/JsHtsjLCc8oTB/9MLom2HX9SjX8H6tFbEXR1NatCFWQ04JKL
kHSYD/xDlwjhN9CRvowRhNJaYSmKQT646hlNoA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gaID+cgqOdyoJPDKM9JAyimEjoxNakxuNjYf52N14HEyn4NQksF7thq/bXWc82vmfdc8aodx1+ky
i8uuKszW1WwV+apGSqk7YXBCxx3ACfMsPzNzeDQ2HVzGfznpQD80Eu7I7iwtz3k5Mr31iaeM1kQa
oddk6CkVESI8CD21PQHMVeu0LKLZJp8k8NHf3i0UOXsP5o768iecieYQh2VYXZ6HORDDyd+IpDB1
CAFBZctXco8C1w74wCB0LXUSYInc5ythxBURkPPTJ1GBuXpoQGZD2sNiI2Htl0y1toEdfgExWZ+0
+4Docnd9TgOGhAhZzUcj3c+6cQNbgCB847/G6w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
tEBTlBoXowC0cOrrCu9pEZ6t9FjMS6GWThbzsXMvR2xb9HBcccdvXT7EfASM09KkNzvlYoyNBWct
0TRl1BNzzlomu3G857U6kezS+CCRF/K2qOhhxHFxEfuM0qblRVdNHoCGGMM4PkE/rt9M7IqYoXQg
WOHI1ydpZZn08aVL9QYJgz6ZuVHNLwSpL6rjFFDXV1cB82gVFBkRP/0NxpGW2WH6YA/MJ0czV0ji
o0umOWluEwUObdytKX1lfuNYimI0ziWrovqq2osL8J7NBKDUl2R6gJ51DObsTBgC8uyUHVibyNHy
nhzTpwcBeeXdtAueCg1BlHDIwglcMUdy0sBZEyHM/CLzpxgr1A+uUcmzlWx1drrc8lRNwGMFDDJQ
9OzoHBABtNt8N3bbO8A+rE9HtsjMVr1TxHhUTxBhWcypwra+xzsGykln/IP3JBwwQR0+d+V8/Vec
5Bh03crJTvJZUbYidozNoaPOfnHi0NxFDNdL7L1i75T+H6bqeE1ADR/4

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GM0AtcDH85MjCjnA/pijf0ZCJap8X+OYUX7W1StOwznqG2XPd9DhtvTyqD0c8/7BTdeCzGUK5iqe
QiGwEcy1dCrSVZW0KtjFXllkYV2ai3/Qn7Bgg1YuzxifEFKe6ClTsByfgjqRdyZeNSAldwvx9ZtT
0ZhijV96K37zXwfXFeKDmxOZOV553ovWfXGekaS1EPmSluoDYBMQKc2XV+ZUXR7n5NI/6E3QdK7K
utsZyrFYyJdYW8Po28hQf1nWeQP6+PxQB6wi/P6sUzudntNcQ7uLRr4PTz6twPPqYwUF+7YW8baL
p/2EFPf8y6fBb+DOBCnzmGZvmq+M2qQot14r+g==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ot2lizvbpt8emXxoZl10oi4H/aTQTzrHDg0mf7DDs3BS7iyFsRmaQCG/BRF/mwjlw+EbST4/x/DJ
d6Hf6LIa6mllnMD6G+uVHQ1z31eASHPw3m+WnPMr/zCNuebPcDitgiXWmq3SAS9byYvxiwcDvjn6
CMh89pvlx8xLiFUoo5j/lAPe4cPBJwSMleQLLB989s6rByi0lVW0QiLTzakaB8DHBMvhIYEfi74m
Lxby6+nYRGrAUKPOemP0Ag/LW83Eup/Wa0jVOtxzlj3foiYhg2mWCt2zyFhgQsDA+oEsDa/KZc0F
OUzOI8vFDrwPmYRwd2ejFI9Nz3/1mb05VQmDRA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OamBwohUIPOIa5bsJvu3upqnGl4f3jNYS35bg4S059C9qVDgQJcw/it81deNA5zFvzX3Cq9CiO9K
zl02VsdpFgNPjSwEO8F47LJZ4fHx99EmESBogsNwUNitzkuYTLCb7F7ZF2WSJExQ0KsYt+TRp2UH
yQEvpM1lHQYUXxzjw08qUI5ssSnOsQFydvP8BwA/6aGrVJ+LuEgPVdMqLBn0EeAmRsynxJ7OhPGV
DlvHQwtVuBrkvjQHED/Ye43ZIeWPm/xOcjNfZjYeOvdEJqTbaviR0Fo1LFx8EX80uvdFeK55ywDN
wzoZ4cVH87f6VwR1xHdo0JpVxrajZpSZ0jPudw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 119184)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt is
  port (
    gtxe2_i : out STD_LOGIC;
    gt0_cpllrefclklost_i : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    gtxe2_i_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gtxe2_i_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i_2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_gttxreset_in0_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt0_rxuserrdy_t : in STD_LOGIC;
    gtxe2_i_7 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txuserrdy_t : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_cpllreset_t : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt is
  signal cpll_pd0_i : STD_LOGIC;
  signal cpllreset_in : STD_LOGIC;
begin
cpll_railing0_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing
     port map (
      cpll_pd0_i => cpll_pd0_i,
      cpllreset_in => cpllreset_in,
      gt0_cpllreset_t => gt0_cpllreset_t,
      gtrefclk_bufg => gtrefclk_bufg
    );
gt0_GTWIZARD_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => SR(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      cpll_pd0_i => cpll_pd0_i,
      cpllreset_in => cpllreset_in,
      gt0_cpllrefclklost_i => gt0_cpllrefclklost_i,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_out => gtrefclk_out,
      gtxe2_i_0 => gtxe2_i,
      gtxe2_i_1 => gtxe2_i_0,
      gtxe2_i_10(1 downto 0) => gtxe2_i_9(1 downto 0),
      gtxe2_i_11(1 downto 0) => gtxe2_i_10(1 downto 0),
      gtxe2_i_2 => gtxe2_i_1,
      gtxe2_i_3(15 downto 0) => gtxe2_i_2(15 downto 0),
      gtxe2_i_4(1 downto 0) => gtxe2_i_3(1 downto 0),
      gtxe2_i_5(1 downto 0) => gtxe2_i_4(1 downto 0),
      gtxe2_i_6(1 downto 0) => gtxe2_i_5(1 downto 0),
      gtxe2_i_7(1 downto 0) => gtxe2_i_6(1 downto 0),
      gtxe2_i_8 => gtxe2_i_7,
      gtxe2_i_9(1 downto 0) => gtxe2_i_8(1 downto 0),
      independent_clock_bufg => independent_clock_bufg,
      reset => reset,
      reset_out => reset_out,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM is
  port (
    data_in : out STD_LOGIC;
    gt0_rxuserrdy_t : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg6 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_out : in STD_LOGIC;
    data_sync_reg1_1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM is
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_out_0 : STD_LOGIC;
  signal \^gt0_rxuserrdy_t\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3__0_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_5_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_6_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_cplllock_n_0 : STD_LOGIC;
  signal sync_data_valid_n_0 : STD_LOGIC;
  signal sync_data_valid_n_1 : STD_LOGIC;
  signal sync_data_valid_n_5 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_3__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_4_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal \time_out_wait_bypass_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_1\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_2\ : STD_LOGIC;
  signal \time_tlock_max1_carry__0_n_3\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \time_tlock_max1_carry__1_n_3\ : STD_LOGIC;
  signal time_tlock_max1_carry_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_5_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_6_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_7_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_i_8_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_0 : STD_LOGIC;
  signal time_tlock_max1_carry_n_1 : STD_LOGIC;
  signal time_tlock_max1_carry_n_2 : STD_LOGIC;
  signal time_tlock_max1_carry_n_3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wait_time_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_time_tlock_max1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_10\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_9\ : label is "soft_lutpair43";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of check_tlock_max_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_2__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of reset_time_out_i_3 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of reset_time_out_i_4 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_5 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_6 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of time_out_1us_i_2 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of time_out_2ms_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \time_out_2ms_i_3__0\ : label is "soft_lutpair51";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of time_tlock_max1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \time_tlock_max1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair52";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1__0\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair45";
begin
  data_in <= \^data_in\;
  gt0_rxuserrdy_t <= \^gt0_rxuserrdy_t\;
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222AAAA00000C00"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(2),
      I2 => rx_state(3),
      I3 => time_tlock_max,
      I4 => reset_time_out_reg_n_0,
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABF000F0000"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_tlock_max,
      I2 => rx_state(2),
      I3 => rx_state(3),
      I4 => rx_state(1),
      I5 => rx_state(0),
      O => \FSM_sequential_rx_state[1]_i_3_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050FF2200"
    )
        port map (
      I0 => rx_state(1),
      I1 => time_out_2ms_reg_n_0,
      I2 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I3 => rx_state(0),
      I4 => rx_state(2),
      I5 => rx_state(3),
      O => \rx_state__0\(2)
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_out_2ms_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050005300"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      I1 => \wait_time_cnt[6]_i_4__0_n_0\,
      I2 => rx_state(0),
      I3 => rx_state(1),
      I4 => wait_time_cnt_reg(6),
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000023002F00"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80800080"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => time_out_2ms_reg_n_0,
      I4 => reset_time_out_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_5,
      D => \rx_state__0\(0),
      Q => rx_state(0),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_5,
      D => \rx_state__0\(1),
      Q => rx_state(1),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_5,
      D => \rx_state__0\(2),
      Q => rx_state(2),
      R => \out\(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_data_valid_n_5,
      D => \rx_state__0\(3),
      Q => rx_state(3),
      R => \out\(0)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => \^gt0_rxuserrdy_t\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt0_rxuserrdy_t\,
      R => \out\(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => rx_state(3),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => \out\(0)
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(1),
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => GTRXRESET,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => GTRXRESET,
      R => \out\(0)
    );
gtxe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTRXRESET,
      I1 => \^data_in\,
      I2 => gtxe2_i,
      O => SR(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__2\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      O => \p_0_in__2\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      O => \p_0_in__2\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      O => \p_0_in__2\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      I5 => init_wait_count_reg(5),
      O => \p_0_in__2\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \init_wait_count[6]_i_3__0_n_0\,
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(6),
      O => \init_wait_count[6]_i_1__0_n_0\
    );
\init_wait_count[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \init_wait_count[6]_i_3__0_n_0\,
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(6),
      O => \p_0_in__2\(6)
    );
\init_wait_count[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(5),
      O => \init_wait_count[6]_i_3__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \p_0_in__2\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \p_0_in__2\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \p_0_in__2\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \p_0_in__2\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \p_0_in__2\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1__0_n_0\,
      CLR => \out\(0),
      D => \p_0_in__2\(6),
      Q => init_wait_count_reg(6)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => \init_wait_count[6]_i_3__0_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(6),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => \out\(0),
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__3\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      O => \p_0_in__3\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(2),
      O => \mmcm_lock_count[2]_i_1__0_n_0\
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(3),
      O => \mmcm_lock_count[3]_i_1__0_n_0\
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_count[4]_i_1__0_n_0\
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_count[5]_i_1__0_n_0\
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I1 => mmcm_lock_count_reg(6),
      O => \mmcm_lock_count[6]_i_1__0_n_0\
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I1 => mmcm_lock_count_reg(6),
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2__0_n_0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_3__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \p_0_in__3\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[2]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[3]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[4]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[5]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[6]_i_1__0_n_0\,
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2__0_n_0\,
      D => \mmcm_lock_count[7]_i_3__0_n_0\,
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => mmcm_lock_count_reg(6),
      I3 => \mmcm_lock_reclocked_i_2__0_n_0\,
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
reset_time_out_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      O => reset_time_out_i_3_n_0
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34347674"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(3),
      I2 => rx_state(0),
      I3 => \FSM_sequential_rx_state_reg[0]_0\,
      I4 => rx_state(1),
      O => reset_time_out_i_4_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_0,
      Q => reset_time_out_reg_n_0,
      S => \out\(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0010"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(3),
      I3 => rx_state(0),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => \out\(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => data_out_0,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      O => rx_fsm_reset_done_int_i_5_n_0
    );
rx_fsm_reset_done_int_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      O => rx_fsm_reset_done_int_i_6_n_0
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_data_valid_n_1,
      Q => \^data_in\,
      R => \out\(0)
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_cplllock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11
     port map (
      \FSM_sequential_rx_state_reg[1]\ => sync_cplllock_n_0,
      Q(2 downto 0) => rx_state(3 downto 1),
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg,
      rxresetdone_s3 => rxresetdone_s3
    );
sync_data_valid: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12
     port map (
      D(2) => \rx_state__0\(3),
      D(1 downto 0) => \rx_state__0\(1 downto 0),
      E(0) => sync_data_valid_n_5,
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[3]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \FSM_sequential_rx_state[3]_i_7_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => \FSM_sequential_rx_state_reg[0]_0\,
      \FSM_sequential_rx_state_reg[0]_2\ => \FSM_sequential_rx_state[0]_i_2_n_0\,
      \FSM_sequential_rx_state_reg[0]_3\ => init_wait_done_reg_n_0,
      \FSM_sequential_rx_state_reg[1]\ => sync_data_valid_n_0,
      \FSM_sequential_rx_state_reg[1]_0\ => \FSM_sequential_rx_state[1]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[3]\ => \FSM_sequential_rx_state[3]_i_9_n_0\,
      Q(3 downto 0) => rx_state(3 downto 0),
      data_in => \^data_in\,
      data_out => data_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out_reg => sync_cplllock_n_0,
      reset_time_out_reg_0 => reset_time_out_i_3_n_0,
      reset_time_out_reg_1 => reset_time_out_i_4_n_0,
      reset_time_out_reg_2 => reset_time_out_reg_n_0,
      rx_fsm_reset_done_int_reg => sync_data_valid_n_1,
      rx_fsm_reset_done_int_reg_0 => rx_fsm_reset_done_int_i_5_n_0,
      rx_fsm_reset_done_int_reg_1 => time_out_100us_reg_n_0,
      rx_fsm_reset_done_int_reg_2 => time_out_1us_reg_n_0,
      rx_fsm_reset_done_int_reg_3 => rx_fsm_reset_done_int_i_6_n_0,
      time_out_wait_bypass_s3 => time_out_wait_bypass_s3
    );
sync_mmcm_lock_reclocked: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out_0,
      data_sync_reg1_0 => data_sync_reg6
    );
sync_time_out_wait_bypass: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16
     port map (
      data_in => \^data_in\,
      data_out => rx_fsm_reset_done_int_s2,
      data_sync_reg6_0 => data_sync_reg6
    );
time_out_100us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => time_out_2ms_i_4_n_0,
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(16),
      I3 => time_out_100us_i_2_n_0,
      I4 => time_out_100us_i_3_n_0,
      I5 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(18),
      I5 => time_out_counter_reg(14),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(1),
      I3 => time_out_counter_reg(15),
      I4 => time_out_counter_reg(13),
      O => time_out_100us_i_3_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => time_out_1us_i_2_n_0,
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(2),
      I4 => time_out_1us_i_3_n_0,
      I5 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(18),
      I5 => time_out_counter_reg(12),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => time_out_2ms_i_2_n_0,
      I1 => \time_out_2ms_i_3__0_n_0\,
      I2 => time_out_2ms_i_4_n_0,
      I3 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(7),
      I4 => time_out_100us_i_3_n_0,
      O => time_out_2ms_i_2_n_0
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(17),
      O => \time_out_2ms_i_3__0_n_0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(9),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(6),
      O => time_out_2ms_i_4_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(12),
      I4 => time_out_2ms_i_2_n_0,
      I5 => time_out_2ms_i_4_n_0,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \time_out_wait_bypass_i_2__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => time_out_wait_bypass_i_1_n_0
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => \time_out_wait_bypass_i_3__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(11),
      I3 => wait_bypass_count_reg(0),
      I4 => \time_out_wait_bypass_i_4__0_n_0\,
      O => \time_out_wait_bypass_i_2__0_n_0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(2),
      O => \time_out_wait_bypass_i_3__0_n_0\
    );
\time_out_wait_bypass_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(6),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(8),
      O => \time_out_wait_bypass_i_4__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => time_tlock_max1_carry_n_0,
      CO(2) => time_tlock_max1_carry_n_1,
      CO(1) => time_tlock_max1_carry_n_2,
      CO(0) => time_tlock_max1_carry_n_3,
      CYINIT => '0',
      DI(3) => time_tlock_max1_carry_i_1_n_0,
      DI(2) => time_tlock_max1_carry_i_2_n_0,
      DI(1) => time_tlock_max1_carry_i_3_n_0,
      DI(0) => time_tlock_max1_carry_i_4_n_0,
      O(3 downto 0) => NLW_time_tlock_max1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => time_tlock_max1_carry_i_5_n_0,
      S(2) => time_tlock_max1_carry_i_6_n_0,
      S(1) => time_tlock_max1_carry_i_7_n_0,
      S(0) => time_tlock_max1_carry_i_8_n_0
    );
\time_tlock_max1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => time_tlock_max1_carry_n_0,
      CO(3) => \time_tlock_max1_carry__0_n_0\,
      CO(2) => \time_tlock_max1_carry__0_n_1\,
      CO(1) => \time_tlock_max1_carry__0_n_2\,
      CO(0) => \time_tlock_max1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => time_out_counter_reg(15),
      DI(2) => \time_tlock_max1_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => \time_tlock_max1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \time_tlock_max1_carry__0_i_3_n_0\,
      S(2) => \time_tlock_max1_carry__0_i_4_n_0\,
      S(1) => \time_tlock_max1_carry__0_i_5_n_0\,
      S(0) => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => \time_tlock_max1_carry__0_i_1_n_0\
    );
\time_tlock_max1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      O => \time_tlock_max1_carry__0_i_2_n_0\
    );
\time_tlock_max1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => \time_tlock_max1_carry__0_i_3_n_0\
    );
\time_tlock_max1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => \time_tlock_max1_carry__0_i_4_n_0\
    );
\time_tlock_max1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      O => \time_tlock_max1_carry__0_i_5_n_0\
    );
\time_tlock_max1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_tlock_max1_carry__0_i_6_n_0\
    );
\time_tlock_max1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_tlock_max1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_time_tlock_max1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => time_tlock_max1,
      CO(0) => \time_tlock_max1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => time_out_counter_reg(18),
      DI(0) => \time_tlock_max1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_time_tlock_max1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \time_tlock_max1_carry__1_i_2_n_0\,
      S(0) => \time_tlock_max1_carry__1_i_3_n_0\
    );
\time_tlock_max1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => \time_tlock_max1_carry__1_i_1_n_0\
    );
\time_tlock_max1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(18),
      O => \time_tlock_max1_carry__1_i_2_n_0\
    );
\time_tlock_max1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => \time_tlock_max1_carry__1_i_3_n_0\
    );
time_tlock_max1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => time_tlock_max1_carry_i_1_n_0
    );
time_tlock_max1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => time_tlock_max1_carry_i_2_n_0
    );
time_tlock_max1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => time_tlock_max1_carry_i_3_n_0
    );
time_tlock_max1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_tlock_max1_carry_i_4_n_0
    );
time_tlock_max1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => time_tlock_max1_carry_i_5_n_0
    );
time_tlock_max1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      O => time_tlock_max1_carry_i_6_n_0
    );
time_tlock_max1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => time_tlock_max1_carry_i_7_n_0
    );
time_tlock_max1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => time_tlock_max1_carry_i_8_n_0
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => check_tlock_max_reg_n_0,
      I1 => time_tlock_max1,
      I2 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \time_out_wait_bypass_i_2__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg6,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[1]_i_1__0_n_0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[2]_i_1__0_n_0\
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[3]_i_1__0_n_0\
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(2),
      I4 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_1__0_n_0\
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[5]_i_1__0_n_0\
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      I2 => rx_state(3),
      O => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4__0_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[6]_i_2__0_n_0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4__0_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[6]_i_3__0_n_0\
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_4__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt0__0\(0),
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[1]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[2]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(2),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[3]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(3),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[4]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[5]_i_1__0_n_0\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \wait_time_cnt[6]_i_2__0_n_0\,
      D => \wait_time_cnt[6]_i_3__0_n_0\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM is
  port (
    mmcm_reset : out STD_LOGIC;
    gt0_cpllreset_t : out STD_LOGIC;
    data_in : out STD_LOGIC;
    gt0_txuserrdy_t : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i : in STD_LOGIC;
    gt0_cpllrefclklost_i : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    data_sync_reg1_1 : in STD_LOGIC;
    data_sync_reg1_2 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM is
  signal CPLL_RESET_i_1_n_0 : STD_LOGIC;
  signal CPLL_RESET_i_2_n_0 : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal GTTXRESET : STD_LOGIC;
  signal MMCM_RESET_i_1_n_0 : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^data_in\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal \^gt0_cpllreset_t\ : STD_LOGIC;
  signal \^gt0_txuserrdy_t\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[6]_i_3_n_0\ : STD_LOGIC;
  signal init_wait_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[7]_i_3_n_0\ : STD_LOGIC;
  signal mmcm_lock_count_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal mmcm_lock_reclocked_i_1_n_0 : STD_LOGIC;
  signal mmcm_lock_reclocked_i_2_n_0 : STD_LOGIC;
  signal \^mmcm_reset\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_i_2_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal refclk_stable_count : STD_LOGIC;
  signal \refclk_stable_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \refclk_stable_count[0]_i_9_n_0\ : STD_LOGIC;
  signal refclk_stable_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \refclk_stable_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_stable_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal refclk_stable_i_1_n_0 : STD_LOGIC;
  signal refclk_stable_i_2_n_0 : STD_LOGIC;
  signal refclk_stable_i_3_n_0 : STD_LOGIC;
  signal refclk_stable_i_4_n_0 : STD_LOGIC;
  signal refclk_stable_i_5_n_0 : STD_LOGIC;
  signal refclk_stable_i_6_n_0 : STD_LOGIC;
  signal refclk_stable_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_cplllock_n_0 : STD_LOGIC;
  signal sync_cplllock_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_2__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_3_n_0 : STD_LOGIC;
  signal \time_out_2ms_i_4__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_5_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_2_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_3_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_4_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_i_5_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wait_time_cnt0_0 : STD_LOGIC;
  signal \wait_time_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CPLL_RESET_i_2 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_7\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_8\ : label is "soft_lutpair59";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101";
  attribute SOFT_HLUTNM of MMCM_RESET_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of TXUSERRDY_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of gttxreset_i_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of pll_reset_asserted_i_2 : label is "soft_lutpair60";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \refclk_stable_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of run_phase_alignment_int_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \time_out_2ms_i_4__0\ : label is "soft_lutpair56";
  attribute ADDER_THRESHOLD of \time_out_counter_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \time_out_counter_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of time_tlock_max_i_4 : label is "soft_lutpair56";
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wait_bypass_count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair63";
begin
  data_in <= \^data_in\;
  gt0_cpllreset_t <= \^gt0_cpllreset_t\;
  gt0_txuserrdy_t <= \^gt0_txuserrdy_t\;
  mmcm_reset <= \^mmcm_reset\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF1F0000001F"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => gt0_cpllrefclklost_i,
      I2 => refclk_stable_reg_n_0,
      I3 => CPLL_RESET_i_2_n_0,
      I4 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I5 => \^gt0_cpllreset_t\,
      O => CPLL_RESET_i_1_n_0
    );
CPLL_RESET_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      O => CPLL_RESET_i_2_n_0
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => CPLL_RESET_i_1_n_0,
      Q => \^gt0_cpllreset_t\,
      R => \out\(0)
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF3F0F5F0F5F0"
    )
        port map (
      I0 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I2 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I3 => tx_state(2),
      I4 => time_out_2ms_reg_n_0,
      I5 => tx_state(1),
      O => \tx_state__0\(0)
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_out_500us_reg_n_0,
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      O => \FSM_sequential_tx_state[0]_i_3_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005A001A"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \tx_state__0\(1)
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000C0C06020C0C"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(3),
      I3 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I4 => tx_state(0),
      I5 => time_out_2ms_reg_n_0,
      O => \tx_state__0\(2)
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => reset_time_out,
      I2 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FF4444"
    )
        port map (
      I0 => time_out_wait_bypass_s3,
      I1 => tx_state(3),
      I2 => reset_time_out,
      I3 => time_out_500us_reg_n_0,
      I4 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      O => \tx_state__0\(3)
    );
\FSM_sequential_tx_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00BA000000000000"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => time_out_500us_reg_n_0,
      I3 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_3_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000300FF00AA"
    )
        port map (
      I0 => init_wait_done_reg_n_0,
      I1 => \wait_time_cnt[6]_i_4_n_0\,
      I2 => wait_time_cnt_reg(6),
      I3 => tx_state(0),
      I4 => tx_state(3),
      I5 => CPLL_RESET_i_2_n_0,
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040400040000"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => \FSM_sequential_tx_state[0]_i_3_n_0\,
      I3 => reset_time_out,
      I4 => time_tlock_max_reg_n_0,
      I5 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_cplllock_n_1,
      D => \tx_state__0\(0),
      Q => tx_state(0),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_cplllock_n_1,
      D => \tx_state__0\(1),
      Q => tx_state(1),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_cplllock_n_1,
      D => \tx_state__0\(2),
      Q => tx_state(2),
      R => \out\(0)
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sync_cplllock_n_1,
      D => \tx_state__0\(3),
      Q => tx_state(3),
      R => \out\(0)
    );
MMCM_RESET_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70004"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state(3),
      I3 => tx_state(1),
      I4 => \^mmcm_reset\,
      O => MMCM_RESET_i_1_n_0
    );
MMCM_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => MMCM_RESET_i_1_n_0,
      Q => \^mmcm_reset\,
      R => \out\(0)
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD2000"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => \^gt0_txuserrdy_t\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt0_txuserrdy_t\,
      R => \out\(0)
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(0),
      I4 => GTTXRESET,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => GTTXRESET,
      R => \out\(0)
    );
gtxe2_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => GTTXRESET,
      I1 => \^data_in\,
      I2 => gtxe2_i,
      O => gt0_gttxreset_in0_out
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => init_wait_count_reg(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      O => \p_0_in__0\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => init_wait_count_reg(0),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      O => \p_0_in__0\(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => init_wait_count_reg(1),
      I1 => init_wait_count_reg(2),
      I2 => init_wait_count_reg(0),
      I3 => init_wait_count_reg(3),
      O => \p_0_in__0\(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => init_wait_count_reg(2),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(3),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_count_reg(4),
      I5 => init_wait_count_reg(5),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \init_wait_count[6]_i_3_n_0\,
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(6),
      O => \init_wait_count[6]_i_1_n_0\
    );
\init_wait_count[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \init_wait_count[6]_i_3_n_0\,
      I1 => init_wait_count_reg(0),
      I2 => init_wait_count_reg(4),
      I3 => init_wait_count_reg(6),
      O => \p_0_in__0\(6)
    );
\init_wait_count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => init_wait_count_reg(3),
      I1 => init_wait_count_reg(1),
      I2 => init_wait_count_reg(2),
      I3 => init_wait_count_reg(5),
      O => \init_wait_count[6]_i_3_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \init_wait_count[0]_i_1_n_0\,
      Q => init_wait_count_reg(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \p_0_in__0\(1),
      Q => init_wait_count_reg(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \p_0_in__0\(2),
      Q => init_wait_count_reg(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \p_0_in__0\(3),
      Q => init_wait_count_reg(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \p_0_in__0\(4),
      Q => init_wait_count_reg(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \p_0_in__0\(5),
      Q => init_wait_count_reg(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \init_wait_count[6]_i_1_n_0\,
      CLR => \out\(0),
      D => \p_0_in__0\(6),
      Q => init_wait_count_reg(6)
    );
init_wait_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => \init_wait_count[6]_i_3_n_0\,
      I1 => init_wait_count_reg(4),
      I2 => init_wait_count_reg(6),
      I3 => init_wait_count_reg(0),
      I4 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => \out\(0),
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      O => \p_0_in__1\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mmcm_lock_count_reg(0),
      I1 => mmcm_lock_count_reg(1),
      O => \p_0_in__1\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mmcm_lock_count_reg(1),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(2),
      O => \mmcm_lock_count[2]_i_1_n_0\
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mmcm_lock_count_reg(2),
      I1 => mmcm_lock_count_reg(0),
      I2 => mmcm_lock_count_reg(1),
      I3 => mmcm_lock_count_reg(3),
      O => \mmcm_lock_count[3]_i_1_n_0\
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => mmcm_lock_count_reg(3),
      I1 => mmcm_lock_count_reg(1),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(2),
      I4 => mmcm_lock_count_reg(4),
      O => \mmcm_lock_count[4]_i_1_n_0\
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => \mmcm_lock_count[5]_i_1_n_0\
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => mmcm_lock_reclocked_i_2_n_0,
      I1 => mmcm_lock_count_reg(6),
      O => \mmcm_lock_count[6]_i_1_n_0\
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => mmcm_lock_reclocked_i_2_n_0,
      I1 => mmcm_lock_count_reg(6),
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_2_n_0\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => mmcm_lock_count_reg(6),
      I1 => mmcm_lock_reclocked_i_2_n_0,
      I2 => mmcm_lock_count_reg(7),
      O => \mmcm_lock_count[7]_i_3_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => mmcm_lock_count_reg(0),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => mmcm_lock_count_reg(1),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[2]_i_1_n_0\,
      Q => mmcm_lock_count_reg(2),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[3]_i_1_n_0\,
      Q => mmcm_lock_count_reg(3),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[4]_i_1_n_0\,
      Q => mmcm_lock_count_reg(4),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[5]_i_1_n_0\,
      Q => mmcm_lock_count_reg(5),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[6]_i_1_n_0\,
      Q => mmcm_lock_count_reg(6),
      R => sync_mmcm_lock_reclocked_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => \mmcm_lock_count[7]_i_2_n_0\,
      D => \mmcm_lock_count[7]_i_3_n_0\,
      Q => mmcm_lock_count_reg(7),
      R => sync_mmcm_lock_reclocked_n_0
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEA0000"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_count_reg(7),
      I2 => mmcm_lock_count_reg(6),
      I3 => mmcm_lock_reclocked_i_2_n_0,
      I4 => mmcm_lock_i,
      O => mmcm_lock_reclocked_i_1_n_0
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => mmcm_lock_count_reg(4),
      I1 => mmcm_lock_count_reg(2),
      I2 => mmcm_lock_count_reg(0),
      I3 => mmcm_lock_count_reg(1),
      I4 => mmcm_lock_count_reg(3),
      I5 => mmcm_lock_count_reg(5),
      O => mmcm_lock_reclocked_i_2_n_0
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_lock_reclocked_i_1_n_0,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CD55CCCCCCCC"
    )
        port map (
      I0 => tx_state(3),
      I1 => pll_reset_asserted_reg_n_0,
      I2 => gt0_cpllrefclklost_i,
      I3 => refclk_stable_reg_n_0,
      I4 => tx_state(1),
      I5 => pll_reset_asserted_i_2_n_0,
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      I2 => tx_state(2),
      O => pll_reset_asserted_i_2_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => \out\(0)
    );
\refclk_stable_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_3_n_0\,
      I1 => \refclk_stable_count[0]_i_4_n_0\,
      I2 => \refclk_stable_count[0]_i_5_n_0\,
      I3 => \refclk_stable_count[0]_i_6_n_0\,
      I4 => \refclk_stable_count[0]_i_7_n_0\,
      I5 => \refclk_stable_count[0]_i_8_n_0\,
      O => refclk_stable_count
    );
\refclk_stable_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFFFFFFF"
    )
        port map (
      I0 => refclk_stable_count_reg(13),
      I1 => refclk_stable_count_reg(12),
      I2 => refclk_stable_count_reg(10),
      I3 => refclk_stable_count_reg(11),
      I4 => refclk_stable_count_reg(9),
      I5 => refclk_stable_count_reg(8),
      O => \refclk_stable_count[0]_i_3_n_0\
    );
\refclk_stable_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => refclk_stable_count_reg(19),
      I1 => refclk_stable_count_reg(18),
      I2 => refclk_stable_count_reg(16),
      I3 => refclk_stable_count_reg(17),
      I4 => refclk_stable_count_reg(15),
      I5 => refclk_stable_count_reg(14),
      O => \refclk_stable_count[0]_i_4_n_0\
    );
\refclk_stable_count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(30),
      I1 => refclk_stable_count_reg(31),
      I2 => refclk_stable_count_reg(28),
      I3 => refclk_stable_count_reg(29),
      I4 => refclk_stable_count_reg(27),
      I5 => refclk_stable_count_reg(26),
      O => \refclk_stable_count[0]_i_5_n_0\
    );
\refclk_stable_count[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => refclk_stable_count_reg(24),
      I1 => refclk_stable_count_reg(25),
      I2 => refclk_stable_count_reg(22),
      I3 => refclk_stable_count_reg(23),
      I4 => refclk_stable_count_reg(21),
      I5 => refclk_stable_count_reg(20),
      O => \refclk_stable_count[0]_i_6_n_0\
    );
\refclk_stable_count[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      I1 => refclk_stable_count_reg(1),
      O => \refclk_stable_count[0]_i_7_n_0\
    );
\refclk_stable_count[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => refclk_stable_count_reg(6),
      I1 => refclk_stable_count_reg(7),
      I2 => refclk_stable_count_reg(4),
      I3 => refclk_stable_count_reg(5),
      I4 => refclk_stable_count_reg(3),
      I5 => refclk_stable_count_reg(2),
      O => \refclk_stable_count[0]_i_8_n_0\
    );
\refclk_stable_count[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_stable_count_reg(0),
      O => \refclk_stable_count[0]_i_9_n_0\
    );
\refclk_stable_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_7\,
      Q => refclk_stable_count_reg(0),
      R => '0'
    );
\refclk_stable_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(2) => \refclk_stable_count_reg[0]_i_2_n_1\,
      CO(1) => \refclk_stable_count_reg[0]_i_2_n_2\,
      CO(0) => \refclk_stable_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \refclk_stable_count_reg[0]_i_2_n_4\,
      O(2) => \refclk_stable_count_reg[0]_i_2_n_5\,
      O(1) => \refclk_stable_count_reg[0]_i_2_n_6\,
      O(0) => \refclk_stable_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => refclk_stable_count_reg(3 downto 1),
      S(0) => \refclk_stable_count[0]_i_9_n_0\
    );
\refclk_stable_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_5\,
      Q => refclk_stable_count_reg(10),
      R => '0'
    );
\refclk_stable_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_4\,
      Q => refclk_stable_count_reg(11),
      R => '0'
    );
\refclk_stable_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_7\,
      Q => refclk_stable_count_reg(12),
      R => '0'
    );
\refclk_stable_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[12]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[12]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[12]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[12]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[12]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(15 downto 12)
    );
\refclk_stable_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_6\,
      Q => refclk_stable_count_reg(13),
      R => '0'
    );
\refclk_stable_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_5\,
      Q => refclk_stable_count_reg(14),
      R => '0'
    );
\refclk_stable_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[12]_i_1_n_4\,
      Q => refclk_stable_count_reg(15),
      R => '0'
    );
\refclk_stable_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_7\,
      Q => refclk_stable_count_reg(16),
      R => '0'
    );
\refclk_stable_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[12]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[16]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[16]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[16]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[16]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[16]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(19 downto 16)
    );
\refclk_stable_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_6\,
      Q => refclk_stable_count_reg(17),
      R => '0'
    );
\refclk_stable_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_5\,
      Q => refclk_stable_count_reg(18),
      R => '0'
    );
\refclk_stable_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[16]_i_1_n_4\,
      Q => refclk_stable_count_reg(19),
      R => '0'
    );
\refclk_stable_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_6\,
      Q => refclk_stable_count_reg(1),
      R => '0'
    );
\refclk_stable_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_7\,
      Q => refclk_stable_count_reg(20),
      R => '0'
    );
\refclk_stable_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[16]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[20]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[20]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[20]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[20]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[20]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(23 downto 20)
    );
\refclk_stable_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_6\,
      Q => refclk_stable_count_reg(21),
      R => '0'
    );
\refclk_stable_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_5\,
      Q => refclk_stable_count_reg(22),
      R => '0'
    );
\refclk_stable_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[20]_i_1_n_4\,
      Q => refclk_stable_count_reg(23),
      R => '0'
    );
\refclk_stable_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_7\,
      Q => refclk_stable_count_reg(24),
      R => '0'
    );
\refclk_stable_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[20]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[24]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[24]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[24]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[24]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[24]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(27 downto 24)
    );
\refclk_stable_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_6\,
      Q => refclk_stable_count_reg(25),
      R => '0'
    );
\refclk_stable_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_5\,
      Q => refclk_stable_count_reg(26),
      R => '0'
    );
\refclk_stable_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[24]_i_1_n_4\,
      Q => refclk_stable_count_reg(27),
      R => '0'
    );
\refclk_stable_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_7\,
      Q => refclk_stable_count_reg(28),
      R => '0'
    );
\refclk_stable_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \refclk_stable_count_reg[28]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[28]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[28]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[28]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[28]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(31 downto 28)
    );
\refclk_stable_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_6\,
      Q => refclk_stable_count_reg(29),
      R => '0'
    );
\refclk_stable_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_5\,
      Q => refclk_stable_count_reg(2),
      R => '0'
    );
\refclk_stable_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_5\,
      Q => refclk_stable_count_reg(30),
      R => '0'
    );
\refclk_stable_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[28]_i_1_n_4\,
      Q => refclk_stable_count_reg(31),
      R => '0'
    );
\refclk_stable_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[0]_i_2_n_4\,
      Q => refclk_stable_count_reg(3),
      R => '0'
    );
\refclk_stable_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_7\,
      Q => refclk_stable_count_reg(4),
      R => '0'
    );
\refclk_stable_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[0]_i_2_n_0\,
      CO(3) => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[4]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[4]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[4]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[4]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[4]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(7 downto 4)
    );
\refclk_stable_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_6\,
      Q => refclk_stable_count_reg(5),
      R => '0'
    );
\refclk_stable_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_5\,
      Q => refclk_stable_count_reg(6),
      R => '0'
    );
\refclk_stable_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[4]_i_1_n_4\,
      Q => refclk_stable_count_reg(7),
      R => '0'
    );
\refclk_stable_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_7\,
      Q => refclk_stable_count_reg(8),
      R => '0'
    );
\refclk_stable_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \refclk_stable_count_reg[4]_i_1_n_0\,
      CO(3) => \refclk_stable_count_reg[8]_i_1_n_0\,
      CO(2) => \refclk_stable_count_reg[8]_i_1_n_1\,
      CO(1) => \refclk_stable_count_reg[8]_i_1_n_2\,
      CO(0) => \refclk_stable_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \refclk_stable_count_reg[8]_i_1_n_4\,
      O(2) => \refclk_stable_count_reg[8]_i_1_n_5\,
      O(1) => \refclk_stable_count_reg[8]_i_1_n_6\,
      O(0) => \refclk_stable_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => refclk_stable_count_reg(11 downto 8)
    );
\refclk_stable_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => refclk_stable_count,
      D => \refclk_stable_count_reg[8]_i_1_n_6\,
      Q => refclk_stable_count_reg(9),
      R => '0'
    );
refclk_stable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \refclk_stable_count[0]_i_7_n_0\,
      I1 => refclk_stable_i_2_n_0,
      I2 => refclk_stable_i_3_n_0,
      I3 => refclk_stable_i_4_n_0,
      I4 => refclk_stable_i_5_n_0,
      I5 => refclk_stable_i_6_n_0,
      O => refclk_stable_i_1_n_0
    );
refclk_stable_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => refclk_stable_count_reg(4),
      I1 => refclk_stable_count_reg(5),
      I2 => refclk_stable_count_reg(2),
      I3 => refclk_stable_count_reg(3),
      I4 => refclk_stable_count_reg(7),
      I5 => refclk_stable_count_reg(6),
      O => refclk_stable_i_2_n_0
    );
refclk_stable_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => refclk_stable_count_reg(10),
      I1 => refclk_stable_count_reg(11),
      I2 => refclk_stable_count_reg(8),
      I3 => refclk_stable_count_reg(9),
      I4 => refclk_stable_count_reg(12),
      I5 => refclk_stable_count_reg(13),
      O => refclk_stable_i_3_n_0
    );
refclk_stable_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => refclk_stable_count_reg(16),
      I1 => refclk_stable_count_reg(17),
      I2 => refclk_stable_count_reg(14),
      I3 => refclk_stable_count_reg(15),
      I4 => refclk_stable_count_reg(18),
      I5 => refclk_stable_count_reg(19),
      O => refclk_stable_i_4_n_0
    );
refclk_stable_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => refclk_stable_count_reg(22),
      I1 => refclk_stable_count_reg(23),
      I2 => refclk_stable_count_reg(20),
      I3 => refclk_stable_count_reg(21),
      I4 => refclk_stable_count_reg(25),
      I5 => refclk_stable_count_reg(24),
      O => refclk_stable_i_5_n_0
    );
refclk_stable_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => refclk_stable_count_reg(28),
      I1 => refclk_stable_count_reg(29),
      I2 => refclk_stable_count_reg(26),
      I3 => refclk_stable_count_reg(27),
      I4 => refclk_stable_count_reg(31),
      I5 => refclk_stable_count_reg(30),
      O => refclk_stable_i_6_n_0
    );
refclk_stable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => refclk_stable_i_1_n_0,
      Q => refclk_stable_reg_n_0,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"440000FF50505050"
    )
        port map (
      I0 => tx_state(3),
      I1 => txresetdone_s3,
      I2 => init_wait_done_reg_n_0,
      I3 => tx_state(1),
      I4 => tx_state(2),
      I5 => tx_state(0),
      O => \reset_time_out_i_2__0_n_0\
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => sync_cplllock_n_0,
      Q => reset_time_out,
      R => \out\(0)
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => run_phase_alignment_int_reg_n_0,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int_reg_n_0,
      R => \out\(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_TXRESETDONE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_cplllock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5
     port map (
      E(0) => sync_cplllock_n_1,
      \FSM_sequential_tx_state_reg[0]\ => \FSM_sequential_tx_state[3]_i_3_n_0\,
      \FSM_sequential_tx_state_reg[0]_0\ => \FSM_sequential_tx_state[3]_i_4_n_0\,
      \FSM_sequential_tx_state_reg[0]_1\ => \FSM_sequential_tx_state[3]_i_6_n_0\,
      \FSM_sequential_tx_state_reg[0]_2\ => time_out_2ms_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_3\ => \FSM_sequential_tx_state[3]_i_7_n_0\,
      \FSM_sequential_tx_state_reg[0]_4\ => pll_reset_asserted_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_5\ => refclk_stable_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_6\ => \FSM_sequential_tx_state[0]_i_3_n_0\,
      Q(3 downto 0) => tx_state(3 downto 0),
      data_sync_reg1_0 => data_sync_reg1_2,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => sync_cplllock_n_0,
      reset_time_out_reg_0 => \reset_time_out_i_2__0_n_0\,
      reset_time_out_reg_1 => init_wait_done_reg_n_0
    );
sync_mmcm_lock_reclocked: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      data_sync_reg6_0 => data_sync_reg1
    );
sync_time_out_wait_bypass: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9
     port map (
      data_in => \^data_in\,
      data_out => tx_fsm_reset_done_int_s2,
      data_sync_reg1_0 => data_sync_reg1
    );
time_out_2ms_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => \time_out_2ms_i_2__0_n_0\,
      I2 => time_out_2ms_i_3_n_0,
      I3 => reset_time_out,
      O => time_out_2ms_i_1_n_0
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(5),
      I5 => time_tlock_max_i_3_n_0,
      O => \time_out_2ms_i_2__0_n_0\
    );
time_out_2ms_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(14),
      I2 => \time_out_2ms_i_4__0_n_0\,
      I3 => time_out_2ms_i_5_n_0,
      O => time_out_2ms_i_3_n_0
    );
\time_out_2ms_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(6),
      O => \time_out_2ms_i_4__0_n_0\
    );
time_out_2ms_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(1),
      O => time_out_2ms_i_5_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEAAA"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(10),
      I4 => time_out_2ms_i_3_n_0,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(18),
      I5 => time_out_counter_reg(17),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => time_tlock_max_i_3_n_0,
      I1 => \time_out_counter[0]_i_3__0_n_0\,
      I2 => time_out_2ms_i_3_n_0,
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(12),
      I5 => time_out_counter_reg(5),
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(18),
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => time_out_wait_bypass_i_2_n_0,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEFFFFFFFFF"
    )
        port map (
      I0 => time_out_wait_bypass_i_3_n_0,
      I1 => time_out_wait_bypass_i_4_n_0,
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(13),
      I4 => wait_bypass_count_reg(11),
      I5 => time_out_wait_bypass_i_5_n_0,
      O => time_out_wait_bypass_i_2_n_0
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => wait_bypass_count_reg(16),
      I1 => wait_bypass_count_reg(9),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(10),
      O => time_out_wait_bypass_i_3_n_0
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(15),
      I2 => wait_bypass_count_reg(6),
      I3 => wait_bypass_count_reg(0),
      O => time_out_wait_bypass_i_4_n_0
    );
time_out_wait_bypass_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(2),
      I5 => wait_bypass_count_reg(3),
      O => time_out_wait_bypass_i_5_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => time_tlock_max_i_2_n_0,
      I2 => time_out_counter_reg(5),
      I3 => time_tlock_max_i_3_n_0,
      I4 => time_tlock_max_i_4_n_0,
      I5 => reset_time_out,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(18),
      I5 => time_out_counter_reg(17),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(11),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => time_out_2ms_i_5_n_0,
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(4),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => \^data_in\,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => \^data_in\,
      R => \out\(0)
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => time_out_wait_bypass_i_2_n_0,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => data_sync_reg1,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[1]_i_1_n_0\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[2]_i_1_n_0\
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      I1 => wait_time_cnt_reg(0),
      I2 => wait_time_cnt_reg(1),
      I3 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[3]_i_1_n_0\
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(2),
      I4 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_1_n_0\
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[5]_i_1_n_0\
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0700"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(3),
      I3 => tx_state(0),
      O => wait_time_cnt0_0
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => sel
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wait_time_cnt[6]_i_4_n_0\,
      I1 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[6]_i_3_n_0\
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(0),
      I3 => wait_time_cnt_reg(1),
      I4 => wait_time_cnt_reg(3),
      I5 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[6]_i_4_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => wait_time_cnt0(0),
      Q => wait_time_cnt_reg(0),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[1]_i_1_n_0\,
      Q => wait_time_cnt_reg(1),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[2]_i_1_n_0\,
      Q => wait_time_cnt_reg(2),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[3]_i_1_n_0\,
      Q => wait_time_cnt_reg(3),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[4]_i_1_n_0\,
      Q => wait_time_cnt_reg(4),
      R => wait_time_cnt0_0
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[5]_i_1_n_0\,
      Q => wait_time_cnt_reg(5),
      S => wait_time_cnt0_0
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => sel,
      D => \wait_time_cnt[6]_i_3_n_0\,
      Q => wait_time_cnt_reg(6),
      S => wait_time_cnt0_0
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TCSZ2Ye5IRfHavlF8Mno1PI9xixWuSiNh3ssU1FQtkjW1fmNtc2c3x12slL242UQayI0rzZTqe6S
edtecLHTOnzxXpCZjjU8NFmgLPerTSDZ1W5YhyIi9j0Ap4YBpvaA1ojM0+r0Cx+dMOXohQGeyljq
+fnTaFTUe2678DxpqHk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NIzZVKMB1/8UX2qb4BB+VXCafEKXsrn7axB1cJDPqDCzSyt/2KG1NEEZTDHZVzIr8Bf9501PyXmL
VowTAAXX/RopKyKOM1xJN/qLtqXxegH2a4dIkUxDIIclIcbv/smna9VCwI7m6JhrnKsNciTTilgR
27S/h6JPpZsZAEmsNxxTC70WQhQSM8TlHJjZg3KDc5KTnvC/mVTk6I05U6x0Bdd1YR9GBvhwRqhP
B1ukL/1JVOwR9Ce9p+EHFE/xyApypCjQPGwq+8IFQgS8wltVZHX6eSMw17Q0wGCY+LHduRTA+abV
LvAR0NPf7PKQUSCECe2mBbLPO7wD4BO5RAkJeA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
udw4XxxzcaDNM1qWnRgZ2JEM1MMqnKwKVqha/krU9EyUAsyATjQEMBqjlOHw5QXMU2jjizlL20Nl
h2pF7iKo1S+7TS54Y/UIJANp+Dl46V/qfy6/yBnE4YclHON1k0jRao4C6T951tgXuCAIQEmXbr87
aJfL2dNqORH+TDKUBdc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JFe89rPDaiIUicPDNoXCg8pJUoYRyVDoW/5yE4T0Cp9xDHtuIyKQVbC7jVb92OsgJ5GHDm7DH2D2
rYZKrdCIqPt2jo7DG6bcJuDFcisZb11HLlYWNsK2Vqs9DdsTPViykeE05CD5AgfDxb983x8F1meK
w8zjeGoD44djsaRA+lvP1zLhl24q5LWFJdPSyIT7uWZwhxHqlyJu85ToXLuwZQZO76Mp+1mitxDy
vleizC5rnk/4hqxfEFS21Qi1TwCz5hdU+H3nA3dTe1KRY+obbFP7sRWKfmr9Rcf9enRvbaEbLoJA
9ADkl72jc1Aqlnd+YCGq4EmbElbWLxblpamncA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
IV5qOrW4jXfiGt6hz/YcNm+/H3ij0v503CF3Kvut91tUWldzNzyLt4pIZEWEzSmn6RcpcLNN88po
1kt45UdSBz+mL5HDQaw4J+VGD/cCBmW1jnOclCf82kwju1MIDfa2EKicjqaykCUROxV7cwg07FFp
clLfIwd4kxgSWnGzeZi1IGezx7OpBsAkBTz9ha4WttEm0+D29DF9O4GaQl6q8IBeA0QIrO10EESt
slfRi2evxdOeTZBVFoXU91OszneH/prZqyCsHeyvTa8PABTZ+Y4CH6ICZCXRn7QTNJgoYSGABuPs
87saNJgzomjyaO6IzGl1fBgMIsIurKw90DE8Jw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Eek/EeBa5kEiakvxzHC3fZ0NXCsvWnLN8FYKLyImepfBUv2jdVDY2j6Qs928DJaMO8pBuO9SGcu3
47rhcN1DAjZza5Ac83W24fngY1+YWblivVc8AoggXS1t2Y7Dy1vf9+ZxUdOvq63sje+fDJxapZwK
3HQGdtBX86RTaUS5K+HyI1FTmcIhUYmJWmxQjIxLla7FF1QZ4XpTCfqAG5i7ZKlYSoDFb8sjCRG4
XWFuk1dbL2UfZPxXZ7XHIm+03Ck/JsHtsjLCc8oTB/9MLom2HX9SjX8H6tFbEXR1NatCFWQ04JKL
kHSYD/xDlwjhN9CRvowRhNJaYSmKQT646hlNoA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gaID+cgqOdyoJPDKM9JAyimEjoxNakxuNjYf52N14HEyn4NQksF7thq/bXWc82vmfdc8aodx1+ky
i8uuKszW1WwV+apGSqk7YXBCxx3ACfMsPzNzeDQ2HVzGfznpQD80Eu7I7iwtz3k5Mr31iaeM1kQa
oddk6CkVESI8CD21PQHMVeu0LKLZJp8k8NHf3i0UOXsP5o768iecieYQh2VYXZ6HORDDyd+IpDB1
CAFBZctXco8C1w74wCB0LXUSYInc5ythxBURkPPTJ1GBuXpoQGZD2sNiI2Htl0y1toEdfgExWZ+0
+4Docnd9TgOGhAhZzUcj3c+6cQNbgCB847/G6w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
tEBTlBoXowC0cOrrCu9pEZ6t9FjMS6GWThbzsXMvR2xb9HBcccdvXT7EfASM09KkNzvlYoyNBWct
0TRl1BNzzlomu3G857U6kezS+CCRF/K2qOhhxHFxEfuM0qblRVdNHoCGGMM4PkE/rt9M7IqYoXQg
WOHI1ydpZZn08aVL9QYJgz6ZuVHNLwSpL6rjFFDXV1cB82gVFBkRP/0NxpGW2WH6YA/MJ0czV0ji
o0umOWluEwUObdytKX1lfuNYimI0ziWrovqq2osL8J7NBKDUl2R6gJ51DObsTBgC8uyUHVibyNHy
nhzTpwcBeeXdtAueCg1BlHDIwglcMUdy0sBZEyHM/CLzpxgr1A+uUcmzlWx1drrc8lRNwGMFDDJQ
9OzoHBABtNt8N3bbO8A+rE9HtsjMVr1TxHhUTxBhWcypwra+xzsGykln/IP3JBwwQR0+d+V8/Vec
5Bh03crJTvJZUbYidozNoaPOfnHi0NxFDNdL7L1i75T+H6bqeE1ADR/4

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GM0AtcDH85MjCjnA/pijf0ZCJap8X+OYUX7W1StOwznqG2XPd9DhtvTyqD0c8/7BTdeCzGUK5iqe
QiGwEcy1dCrSVZW0KtjFXllkYV2ai3/Qn7Bgg1YuzxifEFKe6ClTsByfgjqRdyZeNSAldwvx9ZtT
0ZhijV96K37zXwfXFeKDmxOZOV553ovWfXGekaS1EPmSluoDYBMQKc2XV+ZUXR7n5NI/6E3QdK7K
utsZyrFYyJdYW8Po28hQf1nWeQP6+PxQB6wi/P6sUzudntNcQ7uLRr4PTz6twPPqYwUF+7YW8baL
p/2EFPf8y6fBb+DOBCnzmGZvmq+M2qQot14r+g==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ot2lizvbpt8emXxoZl10oi4H/aTQTzrHDg0mf7DDs3BS7iyFsRmaQCG/BRF/mwjlw+EbST4/x/DJ
d6Hf6LIa6mllnMD6G+uVHQ1z31eASHPw3m+WnPMr/zCNuebPcDitgiXWmq3SAS9byYvxiwcDvjn6
CMh89pvlx8xLiFUoo5j/lAPe4cPBJwSMleQLLB989s6rByi0lVW0QiLTzakaB8DHBMvhIYEfi74m
Lxby6+nYRGrAUKPOemP0Ag/LW83Eup/Wa0jVOtxzlj3foiYhg2mWCt2zyFhgQsDA+oEsDa/KZc0F
OUzOI8vFDrwPmYRwd2ejFI9Nz3/1mb05VQmDRA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OamBwohUIPOIa5bsJvu3upqnGl4f3jNYS35bg4S059C9qVDgQJcw/it81deNA5zFvzX3Cq9CiO9K
zl02VsdpFgNPjSwEO8F47LJZ4fHx99EmESBogsNwUNitzkuYTLCb7F7ZF2WSJExQ0KsYt+TRp2UH
yQEvpM1lHQYUXxzjw08qUI5ssSnOsQFydvP8BwA/6aGrVJ+LuEgPVdMqLBn0EeAmRsynxJ7OhPGV
DlvHQwtVuBrkvjQHED/Ye43ZIeWPm/xOcjNfZjYeOvdEJqTbaviR0Fo1LFx8EX80uvdFeK55ywDN
wzoZ4cVH87f6VwR1xHdo0JpVxrajZpSZ0jPudw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59392)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gtxe2_i_4 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i_8 : in STD_LOGIC;
    gtxe2_i_9 : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init is
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal gt0_cpllrefclklost_i : STD_LOGIC;
  signal gt0_cpllreset_t : STD_LOGIC;
  signal gt0_gtrxreset_in1_out : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \gt0_rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal gt0_rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_3_n_0\ : STD_LOGIC;
  signal \gt0_rx_cdrlock_counter[13]_i_4_n_0\ : STD_LOGIC;
  signal gt0_rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal gt0_rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal gt0_rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal gt0_rxuserrdy_t : STD_LOGIC;
  signal gt0_txuserrdy_t : STD_LOGIC;
  signal gtwizard_i_n_0 : STD_LOGIC;
  signal gtwizard_i_n_5 : STD_LOGIC;
  signal gtwizard_i_n_7 : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of gt0_rx_cdrlock_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gt0_rx_cdrlock_counter0_carry__2\ : label is 35;
begin
gt0_rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(2) => gt0_rx_cdrlock_counter0_carry_n_1,
      CO(1) => gt0_rx_cdrlock_counter0_carry_n_2,
      CO(0) => gt0_rx_cdrlock_counter0_carry_n_3,
      CYINIT => gt0_rx_cdrlock_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => gt0_rx_cdrlock_counter(4 downto 1)
    );
\gt0_rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gt0_rx_cdrlock_counter0_carry_n_0,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => gt0_rx_cdrlock_counter(8 downto 5)
    );
\gt0_rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \gt0_rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \gt0_rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \gt0_rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => gt0_rx_cdrlock_counter(12 downto 9)
    );
\gt0_rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gt0_rx_cdrlock_counter0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3 downto 1) => B"000",
      S(0) => gt0_rx_cdrlock_counter(13)
    );
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[0]_i_2_n_0\,
      I1 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(0)
    );
\gt0_rx_cdrlock_counter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I1 => gt0_rx_cdrlock_counter(4),
      I2 => gt0_rx_cdrlock_counter(5),
      I3 => gt0_rx_cdrlock_counter(7),
      I4 => gt0_rx_cdrlock_counter(6),
      I5 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      O => \gt0_rx_cdrlock_counter[0]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(10),
      O => gt0_rx_cdrlock_counter_0(10)
    );
\gt0_rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(11),
      O => gt0_rx_cdrlock_counter_0(11)
    );
\gt0_rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(12),
      O => gt0_rx_cdrlock_counter_0(12)
    );
\gt0_rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(13),
      O => gt0_rx_cdrlock_counter_0(13)
    );
\gt0_rx_cdrlock_counter[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(1),
      I1 => gt0_rx_cdrlock_counter(12),
      I2 => gt0_rx_cdrlock_counter(13),
      I3 => gt0_rx_cdrlock_counter(3),
      I4 => gt0_rx_cdrlock_counter(2),
      O => \gt0_rx_cdrlock_counter[13]_i_2_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(4),
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => gt0_rx_cdrlock_counter(7),
      I3 => gt0_rx_cdrlock_counter(6),
      O => \gt0_rx_cdrlock_counter[13]_i_3_n_0\
    );
\gt0_rx_cdrlock_counter[13]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => gt0_rx_cdrlock_counter(9),
      I1 => gt0_rx_cdrlock_counter(8),
      I2 => gt0_rx_cdrlock_counter(10),
      I3 => gt0_rx_cdrlock_counter(11),
      O => \gt0_rx_cdrlock_counter[13]_i_4_n_0\
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(1),
      O => gt0_rx_cdrlock_counter_0(1)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(2),
      O => gt0_rx_cdrlock_counter_0(2)
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(3),
      O => gt0_rx_cdrlock_counter_0(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(4),
      O => gt0_rx_cdrlock_counter_0(4)
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(5),
      O => gt0_rx_cdrlock_counter_0(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(6),
      O => gt0_rx_cdrlock_counter_0(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(7),
      O => gt0_rx_cdrlock_counter_0(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(8),
      O => gt0_rx_cdrlock_counter_0(8)
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(9),
      O => gt0_rx_cdrlock_counter_0(9)
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(0),
      Q => gt0_rx_cdrlock_counter(0),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(10),
      Q => gt0_rx_cdrlock_counter(10),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(11),
      Q => gt0_rx_cdrlock_counter(11),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(12),
      Q => gt0_rx_cdrlock_counter(12),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(13),
      Q => gt0_rx_cdrlock_counter(13),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(1),
      Q => gt0_rx_cdrlock_counter(1),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(2),
      Q => gt0_rx_cdrlock_counter(2),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(3),
      Q => gt0_rx_cdrlock_counter(3),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(4),
      Q => gt0_rx_cdrlock_counter(4),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(5),
      Q => gt0_rx_cdrlock_counter(5),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(6),
      Q => gt0_rx_cdrlock_counter(6),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(7),
      Q => gt0_rx_cdrlock_counter(7),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(8),
      Q => gt0_rx_cdrlock_counter(8),
      R => gt0_gtrxreset_in1_out
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(9),
      Q => gt0_rx_cdrlock_counter(9),
      R => gt0_gtrxreset_in1_out
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \gt0_rx_cdrlock_counter[13]_i_2_n_0\,
      I1 => \gt0_rx_cdrlock_counter[13]_i_3_n_0\,
      I2 => \gt0_rx_cdrlock_counter[13]_i_4_n_0\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => gt0_rx_cdrlocked_reg_n_0,
      O => gt0_rx_cdrlocked_i_1_n_0
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlocked_i_1_n_0,
      Q => gt0_rx_cdrlocked_reg_n_0,
      R => gt0_gtrxreset_in1_out
    );
gt0_rxresetfsm_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
     port map (
      \FSM_sequential_rx_state_reg[0]_0\ => gt0_rx_cdrlocked_reg_n_0,
      SR(0) => gt0_gtrxreset_in1_out,
      data_in => rx_fsm_reset_done_int_reg,
      data_out => data_out,
      data_sync_reg1 => gtwizard_i_n_5,
      data_sync_reg1_0 => data_sync_reg1,
      data_sync_reg1_1 => gtwizard_i_n_0,
      data_sync_reg6 => gtxe2_i_4,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gtxe2_i => gtxe2_i_8,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \out\(0)
    );
gt0_txresetfsm_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
     port map (
      data_in => data_in,
      data_sync_reg1 => gtxe2_i_4,
      data_sync_reg1_0 => gtwizard_i_n_7,
      data_sync_reg1_1 => data_sync_reg1,
      data_sync_reg1_2 => gtwizard_i_n_0,
      gt0_cpllrefclklost_i => gt0_cpllrefclklost_i,
      gt0_cpllreset_t => gt0_cpllreset_t,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtxe2_i => gtxe2_i_9,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0)
    );
gtwizard_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      SR(0) => gt0_gtrxreset_in1_out,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      gt0_cpllrefclklost_i => gt0_cpllrefclklost_i,
      gt0_cpllreset_t => gt0_cpllreset_t,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxuserrdy_t => gt0_rxuserrdy_t,
      gt0_txuserrdy_t => gt0_txuserrdy_t,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_out => gtrefclk_out,
      gtxe2_i => gtwizard_i_n_0,
      gtxe2_i_0 => gtwizard_i_n_5,
      gtxe2_i_1 => gtwizard_i_n_7,
      gtxe2_i_10(1 downto 0) => gtxe2_i_7(1 downto 0),
      gtxe2_i_2(15 downto 0) => gtxe2_i(15 downto 0),
      gtxe2_i_3(1 downto 0) => gtxe2_i_0(1 downto 0),
      gtxe2_i_4(1 downto 0) => gtxe2_i_1(1 downto 0),
      gtxe2_i_5(1 downto 0) => gtxe2_i_2(1 downto 0),
      gtxe2_i_6(1 downto 0) => gtxe2_i_3(1 downto 0),
      gtxe2_i_7 => gtxe2_i_4,
      gtxe2_i_8(1 downto 0) => gtxe2_i_5(1 downto 0),
      gtxe2_i_9(1 downto 0) => gtxe2_i_6(1 downto 0),
      independent_clock_bufg => independent_clock_bufg,
      reset => reset,
      reset_out => reset_out,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
TCSZ2Ye5IRfHavlF8Mno1PI9xixWuSiNh3ssU1FQtkjW1fmNtc2c3x12slL242UQayI0rzZTqe6S
edtecLHTOnzxXpCZjjU8NFmgLPerTSDZ1W5YhyIi9j0Ap4YBpvaA1ojM0+r0Cx+dMOXohQGeyljq
+fnTaFTUe2678DxpqHk=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NIzZVKMB1/8UX2qb4BB+VXCafEKXsrn7axB1cJDPqDCzSyt/2KG1NEEZTDHZVzIr8Bf9501PyXmL
VowTAAXX/RopKyKOM1xJN/qLtqXxegH2a4dIkUxDIIclIcbv/smna9VCwI7m6JhrnKsNciTTilgR
27S/h6JPpZsZAEmsNxxTC70WQhQSM8TlHJjZg3KDc5KTnvC/mVTk6I05U6x0Bdd1YR9GBvhwRqhP
B1ukL/1JVOwR9Ce9p+EHFE/xyApypCjQPGwq+8IFQgS8wltVZHX6eSMw17Q0wGCY+LHduRTA+abV
LvAR0NPf7PKQUSCECe2mBbLPO7wD4BO5RAkJeA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
udw4XxxzcaDNM1qWnRgZ2JEM1MMqnKwKVqha/krU9EyUAsyATjQEMBqjlOHw5QXMU2jjizlL20Nl
h2pF7iKo1S+7TS54Y/UIJANp+Dl46V/qfy6/yBnE4YclHON1k0jRao4C6T951tgXuCAIQEmXbr87
aJfL2dNqORH+TDKUBdc=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
JFe89rPDaiIUicPDNoXCg8pJUoYRyVDoW/5yE4T0Cp9xDHtuIyKQVbC7jVb92OsgJ5GHDm7DH2D2
rYZKrdCIqPt2jo7DG6bcJuDFcisZb11HLlYWNsK2Vqs9DdsTPViykeE05CD5AgfDxb983x8F1meK
w8zjeGoD44djsaRA+lvP1zLhl24q5LWFJdPSyIT7uWZwhxHqlyJu85ToXLuwZQZO76Mp+1mitxDy
vleizC5rnk/4hqxfEFS21Qi1TwCz5hdU+H3nA3dTe1KRY+obbFP7sRWKfmr9Rcf9enRvbaEbLoJA
9ADkl72jc1Aqlnd+YCGq4EmbElbWLxblpamncA==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
IV5qOrW4jXfiGt6hz/YcNm+/H3ij0v503CF3Kvut91tUWldzNzyLt4pIZEWEzSmn6RcpcLNN88po
1kt45UdSBz+mL5HDQaw4J+VGD/cCBmW1jnOclCf82kwju1MIDfa2EKicjqaykCUROxV7cwg07FFp
clLfIwd4kxgSWnGzeZi1IGezx7OpBsAkBTz9ha4WttEm0+D29DF9O4GaQl6q8IBeA0QIrO10EESt
slfRi2evxdOeTZBVFoXU91OszneH/prZqyCsHeyvTa8PABTZ+Y4CH6ICZCXRn7QTNJgoYSGABuPs
87saNJgzomjyaO6IzGl1fBgMIsIurKw90DE8Jw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Eek/EeBa5kEiakvxzHC3fZ0NXCsvWnLN8FYKLyImepfBUv2jdVDY2j6Qs928DJaMO8pBuO9SGcu3
47rhcN1DAjZza5Ac83W24fngY1+YWblivVc8AoggXS1t2Y7Dy1vf9+ZxUdOvq63sje+fDJxapZwK
3HQGdtBX86RTaUS5K+HyI1FTmcIhUYmJWmxQjIxLla7FF1QZ4XpTCfqAG5i7ZKlYSoDFb8sjCRG4
XWFuk1dbL2UfZPxXZ7XHIm+03Ck/JsHtsjLCc8oTB/9MLom2HX9SjX8H6tFbEXR1NatCFWQ04JKL
kHSYD/xDlwjhN9CRvowRhNJaYSmKQT646hlNoA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gaID+cgqOdyoJPDKM9JAyimEjoxNakxuNjYf52N14HEyn4NQksF7thq/bXWc82vmfdc8aodx1+ky
i8uuKszW1WwV+apGSqk7YXBCxx3ACfMsPzNzeDQ2HVzGfznpQD80Eu7I7iwtz3k5Mr31iaeM1kQa
oddk6CkVESI8CD21PQHMVeu0LKLZJp8k8NHf3i0UOXsP5o768iecieYQh2VYXZ6HORDDyd+IpDB1
CAFBZctXco8C1w74wCB0LXUSYInc5ythxBURkPPTJ1GBuXpoQGZD2sNiI2Htl0y1toEdfgExWZ+0
+4Docnd9TgOGhAhZzUcj3c+6cQNbgCB847/G6w==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
tEBTlBoXowC0cOrrCu9pEZ6t9FjMS6GWThbzsXMvR2xb9HBcccdvXT7EfASM09KkNzvlYoyNBWct
0TRl1BNzzlomu3G857U6kezS+CCRF/K2qOhhxHFxEfuM0qblRVdNHoCGGMM4PkE/rt9M7IqYoXQg
WOHI1ydpZZn08aVL9QYJgz6ZuVHNLwSpL6rjFFDXV1cB82gVFBkRP/0NxpGW2WH6YA/MJ0czV0ji
o0umOWluEwUObdytKX1lfuNYimI0ziWrovqq2osL8J7NBKDUl2R6gJ51DObsTBgC8uyUHVibyNHy
nhzTpwcBeeXdtAueCg1BlHDIwglcMUdy0sBZEyHM/CLzpxgr1A+uUcmzlWx1drrc8lRNwGMFDDJQ
9OzoHBABtNt8N3bbO8A+rE9HtsjMVr1TxHhUTxBhWcypwra+xzsGykln/IP3JBwwQR0+d+V8/Vec
5Bh03crJTvJZUbYidozNoaPOfnHi0NxFDNdL7L1i75T+H6bqeE1ADR/4

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GM0AtcDH85MjCjnA/pijf0ZCJap8X+OYUX7W1StOwznqG2XPd9DhtvTyqD0c8/7BTdeCzGUK5iqe
QiGwEcy1dCrSVZW0KtjFXllkYV2ai3/Qn7Bgg1YuzxifEFKe6ClTsByfgjqRdyZeNSAldwvx9ZtT
0ZhijV96K37zXwfXFeKDmxOZOV553ovWfXGekaS1EPmSluoDYBMQKc2XV+ZUXR7n5NI/6E3QdK7K
utsZyrFYyJdYW8Po28hQf1nWeQP6+PxQB6wi/P6sUzudntNcQ7uLRr4PTz6twPPqYwUF+7YW8baL
p/2EFPf8y6fBb+DOBCnzmGZvmq+M2qQot14r+g==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ot2lizvbpt8emXxoZl10oi4H/aTQTzrHDg0mf7DDs3BS7iyFsRmaQCG/BRF/mwjlw+EbST4/x/DJ
d6Hf6LIa6mllnMD6G+uVHQ1z31eASHPw3m+WnPMr/zCNuebPcDitgiXWmq3SAS9byYvxiwcDvjn6
CMh89pvlx8xLiFUoo5j/lAPe4cPBJwSMleQLLB989s6rByi0lVW0QiLTzakaB8DHBMvhIYEfi74m
Lxby6+nYRGrAUKPOemP0Ag/LW83Eup/Wa0jVOtxzlj3foiYhg2mWCt2zyFhgQsDA+oEsDa/KZc0F
OUzOI8vFDrwPmYRwd2ejFI9Nz3/1mb05VQmDRA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OamBwohUIPOIa5bsJvu3upqnGl4f3jNYS35bg4S059C9qVDgQJcw/it81deNA5zFvzX3Cq9CiO9K
zl02VsdpFgNPjSwEO8F47LJZ4fHx99EmESBogsNwUNitzkuYTLCb7F7ZF2WSJExQ0KsYt+TRp2UH
yQEvpM1lHQYUXxzjw08qUI5ssSnOsQFydvP8BwA/6aGrVJ+LuEgPVdMqLBn0EeAmRsynxJ7OhPGV
DlvHQwtVuBrkvjQHED/Ye43ZIeWPm/xOcjNfZjYeOvdEJqTbaviR0Fo1LFx8EX80uvdFeK55ywDN
wzoZ4cVH87f6VwR1xHdo0JpVxrajZpSZ0jPudw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18112)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mmcm_reset : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    gtxe2_i_4 : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gtxe2_i_5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtxe2_i_7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtxe2_i_8 : in STD_LOGIC;
    gtxe2_i_9 : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      data_in => data_in,
      data_out => data_out,
      data_sync_reg1 => data_sync_reg1,
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_out => gtrefclk_out,
      gtxe2_i(15 downto 0) => gtxe2_i(15 downto 0),
      gtxe2_i_0(1 downto 0) => gtxe2_i_0(1 downto 0),
      gtxe2_i_1(1 downto 0) => gtxe2_i_1(1 downto 0),
      gtxe2_i_2(1 downto 0) => gtxe2_i_2(1 downto 0),
      gtxe2_i_3(1 downto 0) => gtxe2_i_3(1 downto 0),
      gtxe2_i_4 => gtxe2_i_4,
      gtxe2_i_5(1 downto 0) => gtxe2_i_5(1 downto 0),
      gtxe2_i_6(1 downto 0) => gtxe2_i_6(1 downto 0),
      gtxe2_i_7(1 downto 0) => gtxe2_i_7(1 downto 0),
      gtxe2_i_8 => gtxe2_i_8,
      gtxe2_i_9 => gtxe2_i_9,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_out => reset_out,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver is
  port (
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxcharisk : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxdisperr : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxnotintable : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbufstatus : out STD_LOGIC_VECTOR ( 0 to 0 );
    txbuferr : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    data_in : out STD_LOGIC;
    rx_fsm_reset_done_int_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \rxdata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gtxe2_i : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    powerdown : in STD_LOGIC;
    reset_sync5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    txchardispval_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcharisk_reg_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    enablealign : in STD_LOGIC;
    data_sync_reg1 : in STD_LOGIC;
    \txdata_reg_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver is
  signal data_valid_reg2 : STD_LOGIC;
  signal encommaalign_int : STD_LOGIC;
  signal gtwizard_inst_n_6 : STD_LOGIC;
  signal gtwizard_inst_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxchariscomma_i_1_n_0 : STD_LOGIC;
  signal rxchariscomma_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_i_1_n_0 : STD_LOGIC;
  signal rxcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxclkcorcnt_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rxdata[7]_i_1_n_0\ : STD_LOGIC;
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdisperr_i_1_n_0 : STD_LOGIC;
  signal rxdisperr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_i_1_n_0 : STD_LOGIC;
  signal rxnotintable_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal rxreset_int : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  signal toggle_rx : STD_LOGIC;
  signal toggle_rx_i_1_n_0 : STD_LOGIC;
  signal txbufstatus_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal txchardispmode_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_reg : STD_LOGIC;
  signal txchardispval_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_reg : STD_LOGIC;
  signal txcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_reg : STD_LOGIC;
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  signal txreset_int : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair79";
begin
gtwizard_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD
     port map (
      D(1 downto 0) => rxclkcorcnt_int(1 downto 0),
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXBUFSTATUS(0) => gtwizard_inst_n_7,
      RXPD(0) => rxpowerdown,
      TXBUFSTATUS(0) => gtwizard_inst_n_6,
      TXPD(0) => txpowerdown,
      data_in => data_in,
      data_out => data_valid_reg2,
      data_sync_reg1 => data_sync_reg1,
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_out => gtrefclk_out,
      gtxe2_i(15 downto 0) => rxdata_int(15 downto 0),
      gtxe2_i_0(1 downto 0) => rxchariscomma_int(1 downto 0),
      gtxe2_i_1(1 downto 0) => rxcharisk_int(1 downto 0),
      gtxe2_i_2(1 downto 0) => rxdisperr_int(1 downto 0),
      gtxe2_i_3(1 downto 0) => rxnotintable_int(1 downto 0),
      gtxe2_i_4 => gtxe2_i,
      gtxe2_i_5(1 downto 0) => txchardispmode_int(1 downto 0),
      gtxe2_i_6(1 downto 0) => txchardispval_int(1 downto 0),
      gtxe2_i_7(1 downto 0) => txcharisk_int(1 downto 0),
      gtxe2_i_8 => rxreset_int,
      gtxe2_i_9 => txreset_int,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      reset => reset,
      reset_out => encommaalign_int,
      rx_fsm_reset_done_int_reg => rx_fsm_reset_done_int_reg,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
reclock_encommaalign: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync
     port map (
      CLK => CLK,
      enablealign => enablealign,
      reset_out => encommaalign_int
    );
reclock_rxreset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int
    );
reclock_txreset: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reset_wtd_timer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset
    );
rxbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_0_in,
      Q => rxbufstatus(0),
      R => '0'
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => gtwizard_inst_n_7,
      Q => p_0_in,
      R => '0'
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => SR(0)
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => SR(0)
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxchariscomma_double(1),
      I1 => toggle_rx,
      I2 => rxchariscomma_double(0),
      O => rxchariscomma_i_1_n_0
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rxchariscomma_i_1_n_0,
      Q => rxchariscomma(0),
      R => SR(0)
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxchariscomma_int(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxchariscomma_int(1),
      Q => \rxchariscomma_reg__0\(1),
      R => '0'
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => SR(0)
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => SR(0)
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxcharisk_double(1),
      I1 => toggle_rx,
      I2 => rxcharisk_double(0),
      O => rxcharisk_i_1_n_0
    );
rxcharisk_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rxcharisk_i_1_n_0,
      Q => rxcharisk(0),
      R => SR(0)
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxcharisk_int(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxcharisk_int(1),
      Q => \rxcharisk_reg__0\(1),
      R => '0'
    );
\rxclkcorcnt_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxclkcorcnt_reg(0),
      Q => rxclkcorcnt_double(0),
      R => SR(0)
    );
\rxclkcorcnt_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxclkcorcnt_reg(1),
      Q => rxclkcorcnt_double(1),
      R => SR(0)
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rxclkcorcnt_double(0),
      Q => Q(0),
      R => SR(0)
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rxclkcorcnt_double(1),
      Q => Q(1),
      R => SR(0)
    );
\rxclkcorcnt_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxclkcorcnt_int(0),
      Q => rxclkcorcnt_reg(0),
      R => '0'
    );
\rxclkcorcnt_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxclkcorcnt_int(1),
      Q => rxclkcorcnt_reg(1),
      R => '0'
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(8),
      I1 => toggle_rx,
      I2 => rxdata_double(0),
      O => \rxdata[0]_i_1_n_0\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(9),
      I1 => toggle_rx,
      I2 => rxdata_double(1),
      O => \rxdata[1]_i_1_n_0\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(10),
      I1 => toggle_rx,
      I2 => rxdata_double(2),
      O => \rxdata[2]_i_1_n_0\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(11),
      I1 => toggle_rx,
      I2 => rxdata_double(3),
      O => \rxdata[3]_i_1_n_0\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(12),
      I1 => toggle_rx,
      I2 => rxdata_double(4),
      O => \rxdata[4]_i_1_n_0\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(13),
      I1 => toggle_rx,
      I2 => rxdata_double(5),
      O => \rxdata[5]_i_1_n_0\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(14),
      I1 => toggle_rx,
      I2 => rxdata_double(6),
      O => \rxdata[6]_i_1_n_0\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdata_double(15),
      I1 => toggle_rx,
      I2 => rxdata_double(7),
      O => \rxdata[7]_i_1_n_0\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => SR(0)
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => SR(0)
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => SR(0)
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => SR(0)
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => SR(0)
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => SR(0)
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => SR(0)
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => SR(0)
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => SR(0)
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => SR(0)
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => SR(0)
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => SR(0)
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => SR(0)
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => SR(0)
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => SR(0)
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => SR(0)
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[0]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(0),
      R => SR(0)
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[1]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(1),
      R => SR(0)
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[2]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(2),
      R => SR(0)
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[3]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(3),
      R => SR(0)
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[4]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(4),
      R => SR(0)
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[5]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(5),
      R => SR(0)
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[6]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(6),
      R => SR(0)
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \rxdata[7]_i_1_n_0\,
      Q => \rxdata_reg[7]_0\(7),
      R => SR(0)
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdata_int(9),
      Q => rxdata_reg(9),
      R => '0'
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => SR(0)
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => SR(0)
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxdisperr_double(1),
      I1 => toggle_rx,
      I2 => rxdisperr_double(0),
      O => rxdisperr_i_1_n_0
    );
rxdisperr_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rxdisperr_i_1_n_0,
      Q => rxdisperr(0),
      R => SR(0)
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdisperr_int(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxdisperr_int(1),
      Q => \rxdisperr_reg__0\(1),
      R => '0'
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => SR(0)
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => SR(0)
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rxnotintable_double(1),
      I1 => toggle_rx,
      I2 => rxnotintable_double(0),
      O => rxnotintable_i_1_n_0
    );
rxnotintable_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => rxnotintable_i_1_n_0,
      Q => rxnotintable(0),
      R => SR(0)
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxnotintable_int(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => rxnotintable_int(1),
      Q => \rxnotintable_reg__0\(1),
      R => '0'
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => toggle_rx,
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown_double,
      R => SR(0)
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtxe2_i,
      CE => '1',
      D => rxpowerdown_double,
      Q => rxpowerdown,
      R => '0'
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => powerdown,
      Q => \rxpowerdown_reg__0\,
      R => SR(0)
    );
sync_block_data_valid: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3
     port map (
      data_out => data_valid_reg2,
      independent_clock_bufg => independent_clock_bufg,
      status_vector(0) => status_vector(0)
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => reset_sync5(0)
    );
toggle_rx_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => toggle_rx,
      O => toggle_rx_i_1_n_0
    );
toggle_rx_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => toggle_rx_i_1_n_0,
      Q => toggle_rx,
      R => SR(0)
    );
txbuferr_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => txbufstatus_reg(1),
      Q => txbuferr,
      R => '0'
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => gtwizard_inst_n_6,
      Q => txbufstatus_reg(1),
      R => '0'
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txchardispmode_reg,
      Q => txchardispmode_double(0),
      R => reset_sync5(0)
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => D(0),
      Q => txchardispmode_double(1),
      R => reset_sync5(0)
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txchardispmode_double(1),
      Q => txchardispmode_int(1),
      R => '0'
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => txchardispmode_reg,
      R => reset_sync5(0)
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg,
      Q => txchardispval_double(0),
      R => reset_sync5(0)
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_double(1),
      R => reset_sync5(0)
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txchardispval_double(1),
      Q => txchardispval_int(1),
      R => '0'
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => txchardispval_reg_reg_0(0),
      Q => txchardispval_reg,
      R => reset_sync5(0)
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg,
      Q => txcharisk_double(0),
      R => reset_sync5(0)
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_double(1),
      R => reset_sync5(0)
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txcharisk_double(1),
      Q => txcharisk_int(1),
      R => '0'
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => txcharisk_reg_reg_0(0),
      Q => txcharisk_reg,
      R => reset_sync5(0)
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(0),
      Q => txdata_double(0),
      R => reset_sync5(0)
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(2),
      Q => txdata_double(10),
      R => reset_sync5(0)
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(3),
      Q => txdata_double(11),
      R => reset_sync5(0)
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(4),
      Q => txdata_double(12),
      R => reset_sync5(0)
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(5),
      Q => txdata_double(13),
      R => reset_sync5(0)
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(6),
      Q => txdata_double(14),
      R => reset_sync5(0)
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(7),
      Q => txdata_double(15),
      R => reset_sync5(0)
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(1),
      Q => txdata_double(1),
      R => reset_sync5(0)
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(2),
      Q => txdata_double(2),
      R => reset_sync5(0)
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(3),
      Q => txdata_double(3),
      R => reset_sync5(0)
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(4),
      Q => txdata_double(4),
      R => reset_sync5(0)
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(5),
      Q => txdata_double(5),
      R => reset_sync5(0)
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(6),
      Q => txdata_double(6),
      R => reset_sync5(0)
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => txdata_reg(7),
      Q => txdata_double(7),
      R => reset_sync5(0)
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(0),
      Q => txdata_double(8),
      R => reset_sync5(0)
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => toggle_i_1_n_0,
      D => \txdata_reg_reg[7]_0\(1),
      Q => txdata_double(9),
      R => reset_sync5(0)
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => gtxe2_i,
      CE => '1',
      D => txdata_double(9),
      Q => txdata_int(9),
      R => '0'
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(0),
      Q => txdata_reg(0),
      R => reset_sync5(0)
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(1),
      Q => txdata_reg(1),
      R => reset_sync5(0)
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(2),
      Q => txdata_reg(2),
      R => reset_sync5(0)
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(3),
      Q => txdata_reg(3),
      R => reset_sync5(0)
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(4),
      Q => txdata_reg(4),
      R => reset_sync5(0)
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(5),
      Q => txdata_reg(5),
      R => reset_sync5(0)
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(6),
      Q => txdata_reg(6),
      R => reset_sync5(0)
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \txdata_reg_reg[7]_0\(7),
      Q => txdata_reg(7),
      R => reset_sync5(0)
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => reset_sync5(0)
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtxe2_i,
      CE => '1',
      D => txpowerdown_double,
      Q => txpowerdown,
      R => '0'
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => reset_sync5(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block is
  port (
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    resetdone : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    mmcm_reset : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_detect : in STD_LOGIC;
    CLK : in STD_LOGIC;
    data_in : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gtxe2_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block is
  signal enablealign : STD_LOGIC;
  signal mgt_rx_reset : STD_LOGIC;
  signal mgt_tx_reset : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rx_reset_done_i : STD_LOGIC;
  signal rxbuferr : STD_LOGIC;
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal transceiver_inst_n_11 : STD_LOGIC;
  signal transceiver_inst_n_12 : STD_LOGIC;
  signal txbuferr : STD_LOGIC;
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_an_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gig_ethernet_pcs_pma_1_core_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute B_SHIFTER_ADDR : string;
  attribute B_SHIFTER_ADDR of gig_ethernet_pcs_pma_1_core : label is "10'b0101001110";
  attribute C_1588 : integer;
  attribute C_1588 of gig_ethernet_pcs_pma_1_core : label is 0;
  attribute C_2_5G : string;
  attribute C_2_5G of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_COMPONENT_NAME : string;
  attribute C_COMPONENT_NAME of gig_ethernet_pcs_pma_1_core : label is "gig_ethernet_pcs_pma_1";
  attribute C_DYNAMIC_SWITCHING : string;
  attribute C_DYNAMIC_SWITCHING of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_ELABORATION_TRANSIENT_DIR : string;
  attribute C_ELABORATION_TRANSIENT_DIR of gig_ethernet_pcs_pma_1_core : label is "BlankString";
  attribute C_FAMILY : string;
  attribute C_FAMILY of gig_ethernet_pcs_pma_1_core : label is "zynq";
  attribute C_HAS_AN : string;
  attribute C_HAS_AN of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_HAS_AXIL : string;
  attribute C_HAS_AXIL of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_HAS_MDIO : string;
  attribute C_HAS_MDIO of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_HAS_TEMAC : string;
  attribute C_HAS_TEMAC of gig_ethernet_pcs_pma_1_core : label is "TRUE";
  attribute C_IS_SGMII : string;
  attribute C_IS_SGMII of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_RX_GMII_CLK : string;
  attribute C_RX_GMII_CLK of gig_ethernet_pcs_pma_1_core : label is "TXOUTCLK";
  attribute C_SGMII_FABRIC_BUFFER : string;
  attribute C_SGMII_FABRIC_BUFFER of gig_ethernet_pcs_pma_1_core : label is "TRUE";
  attribute C_SGMII_PHY_MODE : string;
  attribute C_SGMII_PHY_MODE of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_USE_LVDS : string;
  attribute C_USE_LVDS of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_USE_TBI : string;
  attribute C_USE_TBI of gig_ethernet_pcs_pma_1_core : label is "FALSE";
  attribute C_USE_TRANSCEIVER : string;
  attribute C_USE_TRANSCEIVER of gig_ethernet_pcs_pma_1_core : label is "TRUE";
  attribute GT_RX_BYTE_WIDTH : integer;
  attribute GT_RX_BYTE_WIDTH of gig_ethernet_pcs_pma_1_core : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of gig_ethernet_pcs_pma_1_core : label is "soft";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_1_core : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of gig_ethernet_pcs_pma_1_core : label is "true";
begin
  resetdone <= \^resetdone\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
gig_ethernet_pcs_pma_1_core: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_15
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15 downto 0) => B"0000000000000000",
      an_enable => NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED,
      an_interrupt => NLW_gig_ethernet_pcs_pma_1_core_an_interrupt_UNCONNECTED,
      an_restart_config => '0',
      basex_or_sgmii => '0',
      configuration_valid => '0',
      configuration_vector(4) => '0',
      configuration_vector(3 downto 1) => configuration_vector(2 downto 0),
      configuration_vector(0) => '0',
      correction_timer(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dcm_locked => data_in,
      drp_daddr(9 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED(9 downto 0),
      drp_dclk => '0',
      drp_den => NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED,
      drp_di(15 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED(15 downto 0),
      drp_do(15 downto 0) => B"0000000000000000",
      drp_drdy => '0',
      drp_dwe => NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED,
      drp_gnt => '0',
      drp_req => NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED,
      en_cdet => NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED,
      enablealign => enablealign,
      ewrap => NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gtx_clk => '0',
      link_timer_basex(9 downto 0) => B"0000000000",
      link_timer_sgmii(9 downto 0) => B"0000000000",
      link_timer_value(9 downto 0) => B"0000000000",
      loc_ref => NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED,
      mdc => '0',
      mdio_in => '0',
      mdio_out => NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED,
      mdio_tri => NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED,
      mgt_rx_reset => mgt_rx_reset,
      mgt_tx_reset => mgt_tx_reset,
      phyad(4 downto 0) => B"00000",
      pma_rx_clk0 => '0',
      pma_rx_clk1 => '0',
      powerdown => powerdown,
      reset => \out\(0),
      reset_done => \^resetdone\,
      rx_code_group0(9 downto 0) => B"0000000000",
      rx_code_group1(9 downto 0) => B"0000000000",
      rx_gt_nominal_latency(15 downto 0) => B"0000000011111000",
      rxbufstatus(1) => rxbuferr,
      rxbufstatus(0) => '0',
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      rxclkcorcnt(2) => '0',
      rxclkcorcnt(1 downto 0) => rxclkcorcnt(1 downto 0),
      rxdata(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxnotintable(0) => rxnotintable,
      rxphy_correction_timer(63 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED(63 downto 0),
      rxphy_ns_field(31 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED(31 downto 0),
      rxphy_s_field(47 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED(47 downto 0),
      rxrecclk => '0',
      rxrundisp(0) => '0',
      s_axi_aclk => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arready => NLW_gig_ethernet_pcs_pma_1_core_s_axi_arready_UNCONNECTED,
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awready => NLW_gig_ethernet_pcs_pma_1_core_s_axi_awready_UNCONNECTED,
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_gig_ethernet_pcs_pma_1_core_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_resetn => '0',
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_gig_ethernet_pcs_pma_1_core_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wready => NLW_gig_ethernet_pcs_pma_1_core_s_axi_wready_UNCONNECTED,
      s_axi_wvalid => '0',
      signal_detect => signal_detect,
      speed_is_100 => '0',
      speed_is_10_100 => '0',
      speed_selection(1 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED(1 downto 0),
      status_vector(15 downto 7) => NLW_gig_ethernet_pcs_pma_1_core_status_vector_UNCONNECTED(15 downto 7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      systemtimer_ns_field(31 downto 0) => B"00000000000000000000000000000000",
      systemtimer_s_field(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      tx_code_group(9 downto 0) => NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED(9 downto 0),
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txdata(7 downto 0) => txdata(7 downto 0),
      userclk => '0',
      userclk2 => CLK
    );
sync_block_rx_reset_done: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block
     port map (
      CLK => CLK,
      data_in => transceiver_inst_n_12,
      data_out => rx_reset_done_i
    );
sync_block_tx_reset_done: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0
     port map (
      CLK => CLK,
      data_in => transceiver_inst_n_11,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i
    );
transceiver_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver
     port map (
      CLK => CLK,
      D(0) => txchardispmode,
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => mgt_rx_reset,
      data_in => transceiver_inst_n_11,
      data_sync_reg1 => data_in,
      enablealign => enablealign,
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gtrefclk_bufg => gtrefclk_bufg,
      gtrefclk_out => gtrefclk_out,
      gtxe2_i => gtxe2_i,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \out\(0),
      powerdown => powerdown,
      reset_sync5(0) => mgt_tx_reset,
      rx_fsm_reset_done_int_reg => transceiver_inst_n_12,
      rxbufstatus(0) => rxbuferr,
      rxchariscomma(0) => rxchariscomma,
      rxcharisk(0) => rxcharisk,
      \rxdata_reg[7]_0\(7 downto 0) => rxdata(7 downto 0),
      rxdisperr(0) => rxdisperr,
      rxn => rxn,
      rxnotintable(0) => rxnotintable,
      rxoutclk => rxoutclk,
      rxp => rxp,
      status_vector(0) => \^status_vector\(1),
      txbuferr => txbuferr,
      txchardispval_reg_reg_0(0) => txchardispval,
      txcharisk_reg_reg_0(0) => txcharisk,
      \txdata_reg_reg[7]_0\(7 downto 0) => txdata(7 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC
  );
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support is
  signal \<const0>\ : STD_LOGIC;
  signal \^gt0_qplloutclk_out\ : STD_LOGIC;
  signal \^gt0_qplloutrefclk_out\ : STD_LOGIC;
  signal \^gtrefclk_bufg_out\ : STD_LOGIC;
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal \^mmcm_locked_out\ : STD_LOGIC;
  signal mmcm_reset : STD_LOGIC;
  signal \^pma_reset_out\ : STD_LOGIC;
  signal rxoutclk : STD_LOGIC;
  signal \^rxuserclk2_out\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal txoutclk : STD_LOGIC;
  signal \^userclk2_out\ : STD_LOGIC;
  signal \^userclk_out\ : STD_LOGIC;
begin
  gt0_qplloutclk_out <= \^gt0_qplloutclk_out\;
  gt0_qplloutrefclk_out <= \^gt0_qplloutrefclk_out\;
  gtrefclk_bufg_out <= \^gtrefclk_bufg_out\;
  gtrefclk_out <= \^gtrefclk_out\;
  mmcm_locked_out <= \^mmcm_locked_out\;
  pma_reset_out <= \^pma_reset_out\;
  rxuserclk2_out <= \^rxuserclk2_out\;
  rxuserclk_out <= \^rxuserclk2_out\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
  userclk2_out <= \^userclk2_out\;
  userclk_out <= \^userclk_out\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
core_clocking_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clocking
     port map (
      gtrefclk_bufg => \^gtrefclk_bufg_out\,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => \^gtrefclk_out\,
      gtrefclk_p => gtrefclk_p,
      mmcm_locked => \^mmcm_locked_out\,
      mmcm_reset => mmcm_reset,
      rxoutclk => rxoutclk,
      rxuserclk2_out => \^rxuserclk2_out\,
      txoutclk => txoutclk,
      userclk => \^userclk_out\,
      userclk2 => \^userclk2_out\
    );
core_gt_common_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_gt_common
     port map (
      gt0_qplloutclk_out => \^gt0_qplloutclk_out\,
      gt0_qplloutrefclk_out => \^gt0_qplloutrefclk_out\,
      gtrefclk_out => \^gtrefclk_out\,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\
    );
core_resets_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_resets
     port map (
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\,
      reset => reset
    );
pcs_pma_block_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block
     port map (
      CLK => \^userclk2_out\,
      configuration_vector(2 downto 0) => configuration_vector(3 downto 1),
      data_in => \^mmcm_locked_out\,
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_qplloutclk_out => \^gt0_qplloutclk_out\,
      gt0_qplloutrefclk_out => \^gt0_qplloutrefclk_out\,
      gtrefclk_bufg => \^gtrefclk_bufg_out\,
      gtrefclk_out => \^gtrefclk_out\,
      gtxe2_i => \^userclk_out\,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_reset => mmcm_reset,
      \out\(0) => \^pma_reset_out\,
      resetdone => resetdone,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    gtrefclk_bufg_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_U0_status_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  attribute EXAMPLE_SIMULATION of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support
     port map (
      configuration_vector(4) => '0',
      configuration_vector(3 downto 1) => configuration_vector(3 downto 1),
      configuration_vector(0) => '0',
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gtrefclk_bufg_out => gtrefclk_bufg_out,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => gtrefclk_out,
      gtrefclk_p => gtrefclk_p,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      pma_reset_out => pma_reset_out,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      rxuserclk2_out => rxuserclk2_out,
      rxuserclk_out => rxuserclk_out,
      signal_detect => signal_detect,
      status_vector(15 downto 7) => NLW_U0_status_vector_UNCONNECTED(15 downto 7),
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txp => txp,
      userclk2_out => userclk2_out,
      userclk_out => userclk_out
    );
end STRUCTURE;
