-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Mar 24 09:29:39 2025
-- Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode funcsim -rename_top gig_ethernet_pcs_pma_1 -prefix
--               gig_ethernet_pcs_pma_1_ gig_ethernet_pcs_pma_1_sim_netlist.vhdl
-- Design      : gig_ethernet_pcs_pma_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing is
  port (
    cpll_pd0_i : out STD_LOGIC;
    cpllreset_in : out STD_LOGIC;
    gtrefclk_bufg : in STD_LOGIC;
    gt0_cpllreset_t : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common is
  port (
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    enablealign : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1 : entity is "gig_ethernet_pcs_pma_1_reset_sync";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2 is
  port (
    reset_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    reset_sync5_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2 : entity is "gig_ethernet_pcs_pma_1_reset_sync";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0 is
  port (
    resetdone : out STD_LOGIC;
    resetdone_0 : in STD_LOGIC;
    data_in : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11 is
  port (
    \FSM_sequential_rx_state_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rxresetdone_s3 : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12 is
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
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3 is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4 is
  port (
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5 is
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
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg6_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8 is
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9 is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    data_sync_reg1_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9 : entity is "gig_ethernet_pcs_pma_1_sync_block";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9 is
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 118704)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt is
  signal cpll_pd0_i : STD_LOGIC;
  signal cpllreset_in : STD_LOGIC;
begin
cpll_railing0_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing
     port map (
      cpll_pd0_i => cpll_pd0_i,
      cpllreset_in => cpllreset_in,
      gt0_cpllreset_t => gt0_cpllreset_t,
      gtrefclk_bufg => gtrefclk_bufg
    );
gt0_GTWIZARD_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM is
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
sync_RXRESETDONE: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10
     port map (
      data_out => rxresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_cplllock: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11
     port map (
      \FSM_sequential_rx_state_reg[1]\ => sync_cplllock_n_0,
      Q(2 downto 0) => rx_state(3 downto 1),
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg,
      rxresetdone_s3 => rxresetdone_s3
    );
sync_data_valid: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12
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
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out_0,
      data_sync_reg1_0 => data_sync_reg6
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM is
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
sync_TXRESETDONE: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4
     port map (
      data_out => txresetdone_s2,
      data_sync_reg1_0 => data_sync_reg1_0,
      independent_clock_bufg => independent_clock_bufg
    );
sync_cplllock: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5
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
sync_mmcm_lock_reclocked: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6
     port map (
      SR(0) => sync_mmcm_lock_reclocked_n_0,
      data_out => mmcm_lock_i,
      data_sync_reg1_0 => data_sync_reg1_1,
      independent_clock_bufg => independent_clock_bufg
    );
sync_run_phase_alignment_int: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7
     port map (
      data_in => run_phase_alignment_int_reg_n_0,
      data_out => data_out,
      data_sync_reg6_0 => data_sync_reg1
    );
sync_time_out_wait_bypass: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8
     port map (
      data_in => time_out_wait_bypass_reg_n_0,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59200)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init is
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
gt0_rxresetfsm_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
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
gt0_txresetfsm_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
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
gtwizard_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
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
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17616)
`protect data_block
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
qSjy
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD is
begin
U0: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver is
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
gtwizard_inst: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD
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
reclock_encommaalign: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync
     port map (
      CLK => CLK,
      enablealign => enablealign,
      reset_out => encommaalign_int
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1
     port map (
      SR(0) => SR(0),
      independent_clock_bufg => independent_clock_bufg,
      reset_out => rxreset_int
    );
reclock_txreset: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2
     port map (
      independent_clock_bufg => independent_clock_bufg,
      reset_out => txreset_int,
      reset_sync5_0(0) => reset_sync5(0)
    );
reset_wtd_timer: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer
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
sync_block_data_valid: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block is
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
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block is
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
gig_ethernet_pcs_pma_1_core: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_v16_2_15
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
sync_block_rx_reset_done: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block
     port map (
      CLK => CLK,
      data_in => transceiver_inst_n_12,
      data_out => rx_reset_done_i
    );
sync_block_tx_reset_done: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0
     port map (
      CLK => CLK,
      data_in => transceiver_inst_n_11,
      resetdone => \^resetdone\,
      resetdone_0 => rx_reset_done_i
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver
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
entity gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support is
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
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support : entity is "yes";
end gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support;

architecture STRUCTURE of gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support is
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
core_clocking_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking
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
core_gt_common_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common
     port map (
      gt0_qplloutclk_out => \^gt0_qplloutclk_out\,
      gt0_qplloutrefclk_out => \^gt0_qplloutrefclk_out\,
      gtrefclk_out => \^gtrefclk_out\,
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\
    );
core_resets_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets
     port map (
      independent_clock_bufg => independent_clock_bufg,
      \out\(0) => \^pma_reset_out\,
      reset => reset
    );
pcs_pma_block_i: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block
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
entity gig_ethernet_pcs_pma_1 is
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
  attribute NotValidForBitStream of gig_ethernet_pcs_pma_1 : entity is true;
  attribute EXAMPLE_SIMULATION : integer;
  attribute EXAMPLE_SIMULATION of gig_ethernet_pcs_pma_1 : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of gig_ethernet_pcs_pma_1 : entity is "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2";
end gig_ethernet_pcs_pma_1;

architecture STRUCTURE of gig_ethernet_pcs_pma_1 is
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
U0: entity work.gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support
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
