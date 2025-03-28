// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:29:39 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top gig_ethernet_pcs_pma_1 -prefix
//               gig_ethernet_pcs_pma_1_ gig_ethernet_pcs_pma_1_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_1
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;

  wire \<const0> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;
  wire [15:7]NLW_U0_status_vector_UNCONNECTED;

  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support U0
       (.configuration_vector({1'b0,configuration_vector[3:1],1'b0}),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg_out(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector({NLW_U0_status_vector_UNCONNECTED[15:7],\^status_vector }),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtxe2_i,
    gtxe2_i_0,
    gtxe2_i_1,
    gtxe2_i_2,
    gtxe2_i_3,
    mmcm_reset,
    data_in,
    rx_fsm_reset_done_int_reg,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    reset,
    gtxe2_i_4,
    TXPD,
    RXPD,
    Q,
    gtxe2_i_5,
    gtxe2_i_6,
    gtxe2_i_7,
    out,
    gtxe2_i_8,
    gtxe2_i_9,
    data_sync_reg1,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtxe2_i;
  output [1:0]gtxe2_i_0;
  output [1:0]gtxe2_i_1;
  output [1:0]gtxe2_i_2;
  output [1:0]gtxe2_i_3;
  output mmcm_reset;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input reset;
  input gtxe2_i_4;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i_5;
  input [1:0]gtxe2_i_6;
  input [1:0]gtxe2_i_7;
  input [0:0]out;
  input gtxe2_i_8;
  input gtxe2_i_9;
  input data_sync_reg1;
  input data_out;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire [15:0]gtxe2_i;
  wire [1:0]gtxe2_i_0;
  wire [1:0]gtxe2_i_1;
  wire [1:0]gtxe2_i_2;
  wire [1:0]gtxe2_i_3;
  wire gtxe2_i_4;
  wire [1:0]gtxe2_i_5;
  wire [1:0]gtxe2_i_6;
  wire [1:0]gtxe2_i_7;
  wire gtxe2_i_8;
  wire gtxe2_i_9;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init U0
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .data_in(data_in),
        .data_out(data_out),
        .data_sync_reg1(data_sync_reg1),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtrefclk_out(gtrefclk_out),
        .gtxe2_i(gtxe2_i),
        .gtxe2_i_0(gtxe2_i_0),
        .gtxe2_i_1(gtxe2_i_1),
        .gtxe2_i_2(gtxe2_i_2),
        .gtxe2_i_3(gtxe2_i_3),
        .gtxe2_i_4(gtxe2_i_4),
        .gtxe2_i_5(gtxe2_i_5),
        .gtxe2_i_6(gtxe2_i_6),
        .gtxe2_i_7(gtxe2_i_7),
        .gtxe2_i_8(gtxe2_i_8),
        .gtxe2_i_9(gtxe2_i_9),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .reset(reset),
        .reset_out(reset_out),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT
   (gtxe2_i_0,
    gt0_cpllrefclklost_i,
    txn,
    txp,
    rxoutclk,
    gtxe2_i_1,
    txoutclk,
    gtxe2_i_2,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtxe2_i_3,
    gtxe2_i_4,
    gtxe2_i_5,
    gtxe2_i_6,
    gtxe2_i_7,
    independent_clock_bufg,
    cpll_pd0_i,
    cpllreset_in,
    gtrefclk_bufg,
    gtrefclk_out,
    SR,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    gtxe2_i_8,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtxe2_i_9,
    gtxe2_i_10,
    gtxe2_i_11);
  output gtxe2_i_0;
  output gt0_cpllrefclklost_i;
  output txn;
  output txp;
  output rxoutclk;
  output gtxe2_i_1;
  output txoutclk;
  output gtxe2_i_2;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtxe2_i_3;
  output [1:0]gtxe2_i_4;
  output [1:0]gtxe2_i_5;
  output [1:0]gtxe2_i_6;
  output [1:0]gtxe2_i_7;
  input independent_clock_bufg;
  input cpll_pd0_i;
  input cpllreset_in;
  input gtrefclk_bufg;
  input gtrefclk_out;
  input [0:0]SR;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input gtxe2_i_8;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i_9;
  input [1:0]gtxe2_i_10;
  input [1:0]gtxe2_i_11;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cpll_pd0_i;
  wire cpllreset_in;
  wire gt0_cpllrefclklost_i;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire gtxe2_i_0;
  wire gtxe2_i_1;
  wire [1:0]gtxe2_i_10;
  wire [1:0]gtxe2_i_11;
  wire gtxe2_i_2;
  wire [15:0]gtxe2_i_3;
  wire [1:0]gtxe2_i_4;
  wire [1:0]gtxe2_i_5;
  wire [1:0]gtxe2_i_6;
  wire [1:0]gtxe2_i_7;
  wire gtxe2_i_8;
  wire [1:0]gtxe2_i_9;
  wire gtxe2_i_n_0;
  wire gtxe2_i_n_10;
  wire gtxe2_i_n_16;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_3;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_46;
  wire gtxe2_i_n_47;
  wire gtxe2_i_n_48;
  wire gtxe2_i_n_49;
  wire gtxe2_i_n_50;
  wire gtxe2_i_n_51;
  wire gtxe2_i_n_52;
  wire gtxe2_i_n_53;
  wire gtxe2_i_n_54;
  wire gtxe2_i_n_55;
  wire gtxe2_i_n_56;
  wire gtxe2_i_n_57;
  wire gtxe2_i_n_58;
  wire gtxe2_i_n_59;
  wire gtxe2_i_n_60;
  wire gtxe2_i_n_61;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire gtxe2_i_n_9;
  wire independent_clock_bufg;
  wire reset;
  wire reset_out;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:16]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF10100020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0904),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(0),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gtxe2_i_n_0),
        .CPLLLOCK(gtxe2_i_0),
        .CPLLLOCKDETCLK(independent_clock_bufg),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(cpll_pd0_i),
        .CPLLREFCLKLOST(gt0_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(cpllreset_in),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(gtrefclk_bufg),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({gtxe2_i_n_46,gtxe2_i_n_47,gtxe2_i_n_48,gtxe2_i_n_49,gtxe2_i_n_50,gtxe2_i_n_51,gtxe2_i_n_52,gtxe2_i_n_53,gtxe2_i_n_54,gtxe2_i_n_55,gtxe2_i_n_56,gtxe2_i_n_57,gtxe2_i_n_58,gtxe2_i_n_59,gtxe2_i_n_60,gtxe2_i_n_61}),
        .DRPEN(1'b0),
        .DRPRDY(gtxe2_i_n_3),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt0_gttxreset_in0_out),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_out),
        .QPLLREFCLK(gt0_qplloutrefclk_out),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(gtxe2_i_n_9),
        .RXBYTEREALIGN(gtxe2_i_n_10),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],gtxe2_i_4}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:2],gtxe2_i_5}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gtxe2_i_n_16),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:16],gtxe2_i_3}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:2],gtxe2_i_6}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b1),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:2],gtxe2_i_7}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(reset),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gtxe2_i_1),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_t),
        .RXUSRCLK(gtxe2_i_8),
        .RXUSRCLK2(gtxe2_i_8),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtxe2_i_9}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtxe2_i_10}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtxe2_i_11}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gtxe2_i_2),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_t),
        .TXUSRCLK(gtxe2_i_8),
        .TXUSRCLK2(gtxe2_i_8));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_init
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtxe2_i,
    gtxe2_i_0,
    gtxe2_i_1,
    gtxe2_i_2,
    gtxe2_i_3,
    mmcm_reset,
    data_in,
    rx_fsm_reset_done_int_reg,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    reset,
    gtxe2_i_4,
    TXPD,
    RXPD,
    Q,
    gtxe2_i_5,
    gtxe2_i_6,
    gtxe2_i_7,
    out,
    gtxe2_i_8,
    gtxe2_i_9,
    data_sync_reg1,
    data_out);
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtxe2_i;
  output [1:0]gtxe2_i_0;
  output [1:0]gtxe2_i_1;
  output [1:0]gtxe2_i_2;
  output [1:0]gtxe2_i_3;
  output mmcm_reset;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input reset;
  input gtxe2_i_4;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i_5;
  input [1:0]gtxe2_i_6;
  input [1:0]gtxe2_i_7;
  input [0:0]out;
  input gtxe2_i_8;
  input gtxe2_i_9;
  input data_sync_reg1;
  input data_out;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire [13:1]data0;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire [13:0]gt0_rx_cdrlock_counter;
  wire gt0_rx_cdrlock_counter0_carry__0_n_0;
  wire gt0_rx_cdrlock_counter0_carry__0_n_1;
  wire gt0_rx_cdrlock_counter0_carry__0_n_2;
  wire gt0_rx_cdrlock_counter0_carry__0_n_3;
  wire gt0_rx_cdrlock_counter0_carry__1_n_0;
  wire gt0_rx_cdrlock_counter0_carry__1_n_1;
  wire gt0_rx_cdrlock_counter0_carry__1_n_2;
  wire gt0_rx_cdrlock_counter0_carry__1_n_3;
  wire gt0_rx_cdrlock_counter0_carry_n_0;
  wire gt0_rx_cdrlock_counter0_carry_n_1;
  wire gt0_rx_cdrlock_counter0_carry_n_2;
  wire gt0_rx_cdrlock_counter0_carry_n_3;
  wire \gt0_rx_cdrlock_counter[0]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[13]_i_4_n_0 ;
  wire [13:0]gt0_rx_cdrlock_counter_0;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire gtwizard_i_n_0;
  wire gtwizard_i_n_5;
  wire gtwizard_i_n_7;
  wire [15:0]gtxe2_i;
  wire [1:0]gtxe2_i_0;
  wire [1:0]gtxe2_i_1;
  wire [1:0]gtxe2_i_2;
  wire [1:0]gtxe2_i_3;
  wire gtxe2_i_4;
  wire [1:0]gtxe2_i_5;
  wire [1:0]gtxe2_i_6;
  wire [1:0]gtxe2_i_7;
  wire gtxe2_i_8;
  wire gtxe2_i_9;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire reset;
  wire reset_out;
  wire rx_fsm_reset_done_int_reg;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire [3:0]NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({gt0_rx_cdrlock_counter0_carry_n_0,gt0_rx_cdrlock_counter0_carry_n_1,gt0_rx_cdrlock_counter0_carry_n_2,gt0_rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(gt0_rx_cdrlock_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__0
       (.CI(gt0_rx_cdrlock_counter0_carry_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__0_n_0,gt0_rx_cdrlock_counter0_carry__0_n_1,gt0_rx_cdrlock_counter0_carry__0_n_2,gt0_rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(gt0_rx_cdrlock_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__1
       (.CI(gt0_rx_cdrlock_counter0_carry__0_n_0),
        .CO({gt0_rx_cdrlock_counter0_carry__1_n_0,gt0_rx_cdrlock_counter0_carry__1_n_1,gt0_rx_cdrlock_counter0_carry__1_n_2,gt0_rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(gt0_rx_cdrlock_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gt0_rx_cdrlock_counter0_carry__2
       (.CI(gt0_rx_cdrlock_counter0_carry__1_n_0),
        .CO(NLW_gt0_rx_cdrlock_counter0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gt0_rx_cdrlock_counter0_carry__2_O_UNCONNECTED[3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,gt0_rx_cdrlock_counter[13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[0]_i_2_n_0 ),
        .I1(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \gt0_rx_cdrlock_counter[0]_i_2 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I1(gt0_rx_cdrlock_counter[4]),
        .I2(gt0_rx_cdrlock_counter[5]),
        .I3(gt0_rx_cdrlock_counter[7]),
        .I4(gt0_rx_cdrlock_counter[6]),
        .I5(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .O(\gt0_rx_cdrlock_counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[10]),
        .O(gt0_rx_cdrlock_counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[11]),
        .O(gt0_rx_cdrlock_counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[12]),
        .O(gt0_rx_cdrlock_counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[13]),
        .O(gt0_rx_cdrlock_counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \gt0_rx_cdrlock_counter[13]_i_2 
       (.I0(gt0_rx_cdrlock_counter[1]),
        .I1(gt0_rx_cdrlock_counter[12]),
        .I2(gt0_rx_cdrlock_counter[13]),
        .I3(gt0_rx_cdrlock_counter[3]),
        .I4(gt0_rx_cdrlock_counter[2]),
        .O(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt0_rx_cdrlock_counter[13]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(gt0_rx_cdrlock_counter[7]),
        .I3(gt0_rx_cdrlock_counter[6]),
        .O(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gt0_rx_cdrlock_counter[13]_i_4 
       (.I0(gt0_rx_cdrlock_counter[9]),
        .I1(gt0_rx_cdrlock_counter[8]),
        .I2(gt0_rx_cdrlock_counter[10]),
        .I3(gt0_rx_cdrlock_counter[11]),
        .O(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[4]),
        .O(gt0_rx_cdrlock_counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[6]),
        .O(gt0_rx_cdrlock_counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[8]),
        .O(gt0_rx_cdrlock_counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[9]),
        .O(gt0_rx_cdrlock_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(gt0_gtrxreset_in1_out));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(gt0_gtrxreset_in1_out));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    gt0_rx_cdrlocked_i_1
       (.I0(\gt0_rx_cdrlock_counter[13]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[13]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[13]_i_4_n_0 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(gt0_rx_cdrlocked_reg_n_0),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_in1_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.\FSM_sequential_rx_state_reg[0]_0 (gt0_rx_cdrlocked_reg_n_0),
        .SR(gt0_gtrxreset_in1_out),
        .data_in(rx_fsm_reset_done_int_reg),
        .data_out(data_out),
        .data_sync_reg1(gtwizard_i_n_5),
        .data_sync_reg1_0(data_sync_reg1),
        .data_sync_reg1_1(gtwizard_i_n_0),
        .data_sync_reg6(gtxe2_i_4),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gtxe2_i(gtxe2_i_8),
        .independent_clock_bufg(independent_clock_bufg),
        .out(out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM gt0_txresetfsm_i
       (.data_in(data_in),
        .data_sync_reg1(gtxe2_i_4),
        .data_sync_reg1_0(gtwizard_i_n_7),
        .data_sync_reg1_1(data_sync_reg1),
        .data_sync_reg1_2(gtwizard_i_n_0),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtxe2_i(gtxe2_i_9),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt gtwizard_i
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(gt0_gtrxreset_in1_out),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtrefclk_out(gtrefclk_out),
        .gtxe2_i(gtwizard_i_n_0),
        .gtxe2_i_0(gtwizard_i_n_5),
        .gtxe2_i_1(gtwizard_i_n_7),
        .gtxe2_i_10(gtxe2_i_7),
        .gtxe2_i_2(gtxe2_i),
        .gtxe2_i_3(gtxe2_i_0),
        .gtxe2_i_4(gtxe2_i_1),
        .gtxe2_i_5(gtxe2_i_2),
        .gtxe2_i_6(gtxe2_i_3),
        .gtxe2_i_7(gtxe2_i_4),
        .gtxe2_i_8(gtxe2_i_5),
        .gtxe2_i_9(gtxe2_i_6),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
   (gtxe2_i,
    gt0_cpllrefclklost_i,
    txn,
    txp,
    rxoutclk,
    gtxe2_i_0,
    txoutclk,
    gtxe2_i_1,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    gtxe2_i_2,
    gtxe2_i_3,
    gtxe2_i_4,
    gtxe2_i_5,
    gtxe2_i_6,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk_out,
    SR,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    reset_out,
    reset,
    gt0_rxuserrdy_t,
    gtxe2_i_7,
    TXPD,
    gt0_txuserrdy_t,
    RXPD,
    Q,
    gtxe2_i_8,
    gtxe2_i_9,
    gtxe2_i_10,
    gt0_cpllreset_t);
  output gtxe2_i;
  output gt0_cpllrefclklost_i;
  output txn;
  output txp;
  output rxoutclk;
  output gtxe2_i_0;
  output txoutclk;
  output gtxe2_i_1;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]gtxe2_i_2;
  output [1:0]gtxe2_i_3;
  output [1:0]gtxe2_i_4;
  output [1:0]gtxe2_i_5;
  output [1:0]gtxe2_i_6;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk_out;
  input [0:0]SR;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input reset_out;
  input reset;
  input gt0_rxuserrdy_t;
  input gtxe2_i_7;
  input [0:0]TXPD;
  input gt0_txuserrdy_t;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]gtxe2_i_8;
  input [1:0]gtxe2_i_9;
  input [1:0]gtxe2_i_10;
  input gt0_cpllreset_t;

  wire [1:0]D;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cpll_pd0_i;
  wire cpllreset_in;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxuserrdy_t;
  wire gt0_txuserrdy_t;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire gtxe2_i;
  wire gtxe2_i_0;
  wire gtxe2_i_1;
  wire [1:0]gtxe2_i_10;
  wire [15:0]gtxe2_i_2;
  wire [1:0]gtxe2_i_3;
  wire [1:0]gtxe2_i_4;
  wire [1:0]gtxe2_i_5;
  wire [1:0]gtxe2_i_6;
  wire gtxe2_i_7;
  wire [1:0]gtxe2_i_8;
  wire [1:0]gtxe2_i_9;
  wire independent_clock_bufg;
  wire reset;
  wire reset_out;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing cpll_railing0_i
       (.cpll_pd0_i(cpll_pd0_i),
        .cpllreset_in(cpllreset_in),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gtrefclk_bufg(gtrefclk_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD_GT gt0_GTWIZARD_i
       (.D(D),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .SR(SR),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .cpll_pd0_i(cpll_pd0_i),
        .cpllreset_in(cpllreset_in),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxuserrdy_t(gt0_rxuserrdy_t),
        .gt0_txuserrdy_t(gt0_txuserrdy_t),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtrefclk_out(gtrefclk_out),
        .gtxe2_i_0(gtxe2_i),
        .gtxe2_i_1(gtxe2_i_0),
        .gtxe2_i_10(gtxe2_i_9),
        .gtxe2_i_11(gtxe2_i_10),
        .gtxe2_i_2(gtxe2_i_1),
        .gtxe2_i_3(gtxe2_i_2),
        .gtxe2_i_4(gtxe2_i_3),
        .gtxe2_i_5(gtxe2_i_4),
        .gtxe2_i_6(gtxe2_i_5),
        .gtxe2_i_7(gtxe2_i_6),
        .gtxe2_i_8(gtxe2_i_7),
        .gtxe2_i_9(gtxe2_i_8),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
   (data_in,
    gt0_rxuserrdy_t,
    SR,
    independent_clock_bufg,
    data_sync_reg6,
    out,
    gtxe2_i,
    \FSM_sequential_rx_state_reg[0]_0 ,
    data_sync_reg1,
    data_sync_reg1_0,
    data_out,
    data_sync_reg1_1);
  output data_in;
  output gt0_rxuserrdy_t;
  output [0:0]SR;
  input independent_clock_bufg;
  input data_sync_reg6;
  input [0:0]out;
  input gtxe2_i;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input data_sync_reg1;
  input data_sync_reg1_0;
  input data_out;
  input data_sync_reg1_1;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire GTRXRESET;
  wire RXUSERRDY_i_1_n_0;
  wire [0:0]SR;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire data_in;
  wire data_out;
  wire data_out_0;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire data_sync_reg6;
  wire gt0_rxuserrdy_t;
  wire gtrxreset_i_i_1_n_0;
  wire gtxe2_i;
  wire independent_clock_bufg;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_1__0_n_0 ;
  wire \init_wait_count[6]_i_3__0_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1__0_n_0 ;
  wire \mmcm_lock_count[3]_i_1__0_n_0 ;
  wire \mmcm_lock_count[4]_i_1__0_n_0 ;
  wire \mmcm_lock_count[5]_i_1__0_n_0 ;
  wire \mmcm_lock_count[6]_i_1__0_n_0 ;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_3__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [0:0]out;
  wire [6:1]p_0_in__2;
  wire [1:0]p_0_in__3;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_4_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_i_5_n_0;
  wire rx_fsm_reset_done_int_i_6_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire [3:0]rx_state__0;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire sync_cplllock_n_0;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2__0_n_0;
  wire time_out_wait_bypass_i_3__0_n_0;
  wire time_out_wait_bypass_i_4__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire time_tlock_max1_carry__0_i_1_n_0;
  wire time_tlock_max1_carry__0_i_2_n_0;
  wire time_tlock_max1_carry__0_i_3_n_0;
  wire time_tlock_max1_carry__0_i_4_n_0;
  wire time_tlock_max1_carry__0_i_5_n_0;
  wire time_tlock_max1_carry__0_i_6_n_0;
  wire time_tlock_max1_carry__0_n_0;
  wire time_tlock_max1_carry__0_n_1;
  wire time_tlock_max1_carry__0_n_2;
  wire time_tlock_max1_carry__0_n_3;
  wire time_tlock_max1_carry__1_i_1_n_0;
  wire time_tlock_max1_carry__1_i_2_n_0;
  wire time_tlock_max1_carry__1_i_3_n_0;
  wire time_tlock_max1_carry__1_n_3;
  wire time_tlock_max1_carry_i_1_n_0;
  wire time_tlock_max1_carry_i_2_n_0;
  wire time_tlock_max1_carry_i_3_n_0;
  wire time_tlock_max1_carry_i_4_n_0;
  wire time_tlock_max1_carry_i_5_n_0;
  wire time_tlock_max1_carry_i_6_n_0;
  wire time_tlock_max1_carry_i_7_n_0;
  wire time_tlock_max1_carry_i_8_n_0;
  wire time_tlock_max1_carry_n_0;
  wire time_tlock_max1_carry_n_1;
  wire time_tlock_max1_carry_n_2;
  wire time_tlock_max1_carry_n_3;
  wire time_tlock_max_i_1_n_0;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [0:0]wait_time_cnt0__0;
  wire \wait_time_cnt[1]_i_1__0_n_0 ;
  wire \wait_time_cnt[2]_i_1__0_n_0 ;
  wire \wait_time_cnt[3]_i_1__0_n_0 ;
  wire \wait_time_cnt[4]_i_1__0_n_0 ;
  wire \wait_time_cnt[5]_i_1__0_n_0 ;
  wire \wait_time_cnt[6]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_2__0_n_0 ;
  wire \wait_time_cnt[6]_i_3__0_n_0 ;
  wire \wait_time_cnt[6]_i_4__0_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max1_carry_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_time_tlock_max1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2222AAAA00000C00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[3]),
        .I3(time_tlock_max),
        .I4(reset_time_out_reg_n_0),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AABF000F0000)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050FF2200)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[1]),
        .I1(time_out_2ms_reg_n_0),
        .I2(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I3(rx_state[0]),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(rx_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050005300)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .I1(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(wait_time_cnt_reg[6]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000023002F00)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(time_out_2ms_reg_n_0),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h80800080)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(time_out_2ms_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[0]),
        .Q(rx_state[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[1]),
        .Q(rx_state[1]),
        .R(out));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[2]),
        .Q(rx_state[2]),
        .R(out));
  (* FSM_ENCODED_STATES = "release_pll_reset:0011,verify_recclk_stable:0100,wait_for_pll_lock:0010,fsm_done:1010,assert_all_resets:0001,init:0000,wait_reset_done:0111,monitor_data_valid:1001,wait_for_rxusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_data_valid_n_5),
        .D(rx_state__0[3]),
        .Q(rx_state[3]),
        .R(out));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(gt0_rxuserrdy_t),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt0_rxuserrdy_t),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(out));
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gtrxreset_i_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(GTRXRESET),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(GTRXRESET),
        .R(out));
  LUT3 #(
    .INIT(8'hEA)) 
    gtxe2_i_i_2
       (.I0(GTRXRESET),
        .I1(data_in),
        .I2(gtxe2_i),
        .O(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__2[5]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \init_wait_count[6]_i_1__0 
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(\init_wait_count[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \init_wait_count[6]_i_2__0 
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .O(\init_wait_count[6]_i_3__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(p_0_in__2[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(p_0_in__2[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(p_0_in__2[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(p_0_in__2[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(p_0_in__2[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1__0_n_0 ),
        .CLR(out),
        .D(p_0_in__2[6]),
        .Q(init_wait_count_reg[6]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[6]_i_3__0_n_0 ),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(out),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(\mmcm_lock_count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(\mmcm_lock_count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(\mmcm_lock_count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_reclocked_i_2__0_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .O(\mmcm_lock_count[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_reclocked_i_2__0_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2__0_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__3[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[2]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[3]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[4]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[5]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[6]_i_1__0_n_0 ),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(\mmcm_lock_count[7]_i_3__0_n_0 ),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_reclocked_i_2__0_n_0),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    reset_time_out_i_3
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .O(reset_time_out_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h34347674)) 
    reset_time_out_i_4
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .I4(rx_state[1]),
        .O(reset_time_out_i_4_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_0),
        .Q(reset_time_out_reg_n_0),
        .S(out));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .I3(rx_state[0]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(data_sync_reg6),
        .CE(1'b1),
        .D(data_out_0),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rx_fsm_reset_done_int_i_5
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(rx_fsm_reset_done_int_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rx_fsm_reset_done_int_i_6
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_data_valid_n_1),
        .Q(data_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(data_sync_reg6),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11 sync_cplllock
       (.\FSM_sequential_rx_state_reg[1] (sync_cplllock_n_0),
        .Q(rx_state[3:1]),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12 sync_data_valid
       (.D({rx_state__0[3],rx_state__0[1:0]}),
        .E(sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state_reg[0]_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (init_wait_done_reg_n_0),
        .\FSM_sequential_rx_state_reg[1] (sync_data_valid_n_0),
        .\FSM_sequential_rx_state_reg[1]_0 (\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .Q(rx_state),
        .data_in(data_in),
        .data_out(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(sync_cplllock_n_0),
        .reset_time_out_reg_0(reset_time_out_i_3_n_0),
        .reset_time_out_reg_1(reset_time_out_i_4_n_0),
        .reset_time_out_reg_2(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg(sync_data_valid_n_1),
        .rx_fsm_reset_done_int_reg_0(rx_fsm_reset_done_int_i_5_n_0),
        .rx_fsm_reset_done_int_reg_1(time_out_100us_reg_n_0),
        .rx_fsm_reset_done_int_reg_2(time_out_1us_reg_n_0),
        .rx_fsm_reset_done_int_reg_3(rx_fsm_reset_done_int_i_6_n_0),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out_0),
        .data_sync_reg1_0(data_sync_reg6));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(rx_fsm_reset_done_int_s2),
        .data_sync_reg6_0(data_sync_reg6));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    time_out_100us_i_1
       (.I0(time_out_2ms_i_4_n_0),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_100us_i_2_n_0),
        .I4(time_out_100us_i_3_n_0),
        .I5(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_100us_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[13]),
        .O(time_out_100us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    time_out_1us_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_1us_i_2_n_0),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_1us_i_3_n_0),
        .I5(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_out_1us_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[12]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3__0_n_0),
        .I2(time_out_2ms_i_4_n_0),
        .I3(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_100us_i_3_n_0),
        .O(time_out_2ms_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[6]),
        .O(time_out_2ms_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_2ms_i_2_n_0),
        .I5(time_out_2ms_i_4_n_0),
        .O(time_out_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2__0_n_0),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    time_out_wait_bypass_i_2__0
       (.I0(time_out_wait_bypass_i_3__0_n_0),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[0]),
        .I4(time_out_wait_bypass_i_4__0_n_0),
        .O(time_out_wait_bypass_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[2]),
        .O(time_out_wait_bypass_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    time_out_wait_bypass_i_4__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[6]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[8]),
        .O(time_out_wait_bypass_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(data_sync_reg6),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry
       (.CI(1'b0),
        .CO({time_tlock_max1_carry_n_0,time_tlock_max1_carry_n_1,time_tlock_max1_carry_n_2,time_tlock_max1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({time_tlock_max1_carry_i_1_n_0,time_tlock_max1_carry_i_2_n_0,time_tlock_max1_carry_i_3_n_0,time_tlock_max1_carry_i_4_n_0}),
        .O(NLW_time_tlock_max1_carry_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry_i_5_n_0,time_tlock_max1_carry_i_6_n_0,time_tlock_max1_carry_i_7_n_0,time_tlock_max1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__0
       (.CI(time_tlock_max1_carry_n_0),
        .CO({time_tlock_max1_carry__0_n_0,time_tlock_max1_carry__0_n_1,time_tlock_max1_carry__0_n_2,time_tlock_max1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({time_out_counter_reg[15],time_tlock_max1_carry__0_i_1_n_0,1'b0,time_tlock_max1_carry__0_i_2_n_0}),
        .O(NLW_time_tlock_max1_carry__0_O_UNCONNECTED[3:0]),
        .S({time_tlock_max1_carry__0_i_3_n_0,time_tlock_max1_carry__0_i_4_n_0,time_tlock_max1_carry__0_i_5_n_0,time_tlock_max1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__0_i_1
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(time_tlock_max1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_2
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(time_tlock_max1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_3
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(time_tlock_max1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__0_i_4
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(time_tlock_max1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry__0_i_5
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry__0_i_6
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .O(time_tlock_max1_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 time_tlock_max1_carry__1
       (.CI(time_tlock_max1_carry__0_n_0),
        .CO({NLW_time_tlock_max1_carry__1_CO_UNCONNECTED[3:2],time_tlock_max1,time_tlock_max1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_out_counter_reg[18],time_tlock_max1_carry__1_i_1_n_0}),
        .O(NLW_time_tlock_max1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,time_tlock_max1_carry__1_i_2_n_0,time_tlock_max1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry__1_i_1
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(time_tlock_max1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    time_tlock_max1_carry__1_i_2
       (.I0(time_out_counter_reg[18]),
        .O(time_tlock_max1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry__1_i_3
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(time_tlock_max1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_1
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(time_tlock_max1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    time_tlock_max1_carry_i_2
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(time_tlock_max1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_3
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(time_tlock_max1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max1_carry_i_4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(time_tlock_max1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_5
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(time_tlock_max1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    time_tlock_max1_carry_i_6
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .O(time_tlock_max1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_7
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(time_tlock_max1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    time_tlock_max1_carry_i_8
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(time_tlock_max1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    time_tlock_max_i_1
       (.I0(check_tlock_max_reg_n_0),
        .I1(time_tlock_max1),
        .I2(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(time_out_wait_bypass_i_2__0_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(data_sync_reg6),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0__0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[5]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \wait_time_cnt[6]_i_1 
       (.I0(rx_state[0]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2__0 
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3__0 
       (.I0(\wait_time_cnt[6]_i_4__0_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(wait_time_cnt0__0),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[1]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[2]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[2]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[3]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[4]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[5]_i_1__0_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\wait_time_cnt[6]_i_2__0_n_0 ),
        .D(\wait_time_cnt[6]_i_3__0_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[6]_i_1_n_0 ));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
   (mmcm_reset,
    gt0_cpllreset_t,
    data_in,
    gt0_txuserrdy_t,
    gt0_gttxreset_in0_out,
    independent_clock_bufg,
    data_sync_reg1,
    out,
    gtxe2_i,
    gt0_cpllrefclklost_i,
    data_sync_reg1_0,
    data_sync_reg1_1,
    data_sync_reg1_2);
  output mmcm_reset;
  output gt0_cpllreset_t;
  output data_in;
  output gt0_txuserrdy_t;
  output gt0_gttxreset_in0_out;
  input independent_clock_bufg;
  input data_sync_reg1;
  input [0:0]out;
  input gtxe2_i;
  input gt0_cpllrefclklost_i;
  input data_sync_reg1_0;
  input data_sync_reg1_1;
  input data_sync_reg1_2;

  wire CPLL_RESET_i_1_n_0;
  wire CPLL_RESET_i_2_n_0;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_8_n_0 ;
  wire GTTXRESET;
  wire MMCM_RESET_i_1_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire data_in;
  wire data_out;
  wire data_sync_reg1;
  wire data_sync_reg1_0;
  wire data_sync_reg1_1;
  wire data_sync_reg1_2;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_t;
  wire gt0_gttxreset_in0_out;
  wire gt0_txuserrdy_t;
  wire gttxreset_i_i_1_n_0;
  wire gtxe2_i;
  wire independent_clock_bufg;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[6]_i_1_n_0 ;
  wire \init_wait_count[6]_i_3_n_0 ;
  wire [6:0]init_wait_count_reg;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[2]_i_1_n_0 ;
  wire \mmcm_lock_count[3]_i_1_n_0 ;
  wire \mmcm_lock_count[4]_i_1_n_0 ;
  wire \mmcm_lock_count[5]_i_1_n_0 ;
  wire \mmcm_lock_count[6]_i_1_n_0 ;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_3_n_0 ;
  wire [7:0]mmcm_lock_count_reg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_1_n_0;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire mmcm_reset;
  wire [0:0]out;
  wire [6:1]p_0_in__0;
  wire [1:0]p_0_in__1;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_i_2_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire refclk_stable_count;
  wire \refclk_stable_count[0]_i_3_n_0 ;
  wire \refclk_stable_count[0]_i_4_n_0 ;
  wire \refclk_stable_count[0]_i_5_n_0 ;
  wire \refclk_stable_count[0]_i_6_n_0 ;
  wire \refclk_stable_count[0]_i_7_n_0 ;
  wire \refclk_stable_count[0]_i_8_n_0 ;
  wire \refclk_stable_count[0]_i_9_n_0 ;
  wire [31:0]refclk_stable_count_reg;
  wire \refclk_stable_count_reg[0]_i_2_n_0 ;
  wire \refclk_stable_count_reg[0]_i_2_n_1 ;
  wire \refclk_stable_count_reg[0]_i_2_n_2 ;
  wire \refclk_stable_count_reg[0]_i_2_n_3 ;
  wire \refclk_stable_count_reg[0]_i_2_n_4 ;
  wire \refclk_stable_count_reg[0]_i_2_n_5 ;
  wire \refclk_stable_count_reg[0]_i_2_n_6 ;
  wire \refclk_stable_count_reg[0]_i_2_n_7 ;
  wire \refclk_stable_count_reg[12]_i_1_n_0 ;
  wire \refclk_stable_count_reg[12]_i_1_n_1 ;
  wire \refclk_stable_count_reg[12]_i_1_n_2 ;
  wire \refclk_stable_count_reg[12]_i_1_n_3 ;
  wire \refclk_stable_count_reg[12]_i_1_n_4 ;
  wire \refclk_stable_count_reg[12]_i_1_n_5 ;
  wire \refclk_stable_count_reg[12]_i_1_n_6 ;
  wire \refclk_stable_count_reg[12]_i_1_n_7 ;
  wire \refclk_stable_count_reg[16]_i_1_n_0 ;
  wire \refclk_stable_count_reg[16]_i_1_n_1 ;
  wire \refclk_stable_count_reg[16]_i_1_n_2 ;
  wire \refclk_stable_count_reg[16]_i_1_n_3 ;
  wire \refclk_stable_count_reg[16]_i_1_n_4 ;
  wire \refclk_stable_count_reg[16]_i_1_n_5 ;
  wire \refclk_stable_count_reg[16]_i_1_n_6 ;
  wire \refclk_stable_count_reg[16]_i_1_n_7 ;
  wire \refclk_stable_count_reg[20]_i_1_n_0 ;
  wire \refclk_stable_count_reg[20]_i_1_n_1 ;
  wire \refclk_stable_count_reg[20]_i_1_n_2 ;
  wire \refclk_stable_count_reg[20]_i_1_n_3 ;
  wire \refclk_stable_count_reg[20]_i_1_n_4 ;
  wire \refclk_stable_count_reg[20]_i_1_n_5 ;
  wire \refclk_stable_count_reg[20]_i_1_n_6 ;
  wire \refclk_stable_count_reg[20]_i_1_n_7 ;
  wire \refclk_stable_count_reg[24]_i_1_n_0 ;
  wire \refclk_stable_count_reg[24]_i_1_n_1 ;
  wire \refclk_stable_count_reg[24]_i_1_n_2 ;
  wire \refclk_stable_count_reg[24]_i_1_n_3 ;
  wire \refclk_stable_count_reg[24]_i_1_n_4 ;
  wire \refclk_stable_count_reg[24]_i_1_n_5 ;
  wire \refclk_stable_count_reg[24]_i_1_n_6 ;
  wire \refclk_stable_count_reg[24]_i_1_n_7 ;
  wire \refclk_stable_count_reg[28]_i_1_n_1 ;
  wire \refclk_stable_count_reg[28]_i_1_n_2 ;
  wire \refclk_stable_count_reg[28]_i_1_n_3 ;
  wire \refclk_stable_count_reg[28]_i_1_n_4 ;
  wire \refclk_stable_count_reg[28]_i_1_n_5 ;
  wire \refclk_stable_count_reg[28]_i_1_n_6 ;
  wire \refclk_stable_count_reg[28]_i_1_n_7 ;
  wire \refclk_stable_count_reg[4]_i_1_n_0 ;
  wire \refclk_stable_count_reg[4]_i_1_n_1 ;
  wire \refclk_stable_count_reg[4]_i_1_n_2 ;
  wire \refclk_stable_count_reg[4]_i_1_n_3 ;
  wire \refclk_stable_count_reg[4]_i_1_n_4 ;
  wire \refclk_stable_count_reg[4]_i_1_n_5 ;
  wire \refclk_stable_count_reg[4]_i_1_n_6 ;
  wire \refclk_stable_count_reg[4]_i_1_n_7 ;
  wire \refclk_stable_count_reg[8]_i_1_n_0 ;
  wire \refclk_stable_count_reg[8]_i_1_n_1 ;
  wire \refclk_stable_count_reg[8]_i_1_n_2 ;
  wire \refclk_stable_count_reg[8]_i_1_n_3 ;
  wire \refclk_stable_count_reg[8]_i_1_n_4 ;
  wire \refclk_stable_count_reg[8]_i_1_n_5 ;
  wire \refclk_stable_count_reg[8]_i_1_n_6 ;
  wire \refclk_stable_count_reg[8]_i_1_n_7 ;
  wire refclk_stable_i_1_n_0;
  wire refclk_stable_i_2_n_0;
  wire refclk_stable_i_3_n_0;
  wire refclk_stable_i_4_n_0;
  wire refclk_stable_i_5_n_0;
  wire refclk_stable_i_6_n_0;
  wire refclk_stable_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_2__0_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s3;
  wire sel;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_i_2_n_0;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire [3:0]tx_state;
  wire [3:0]tx_state__0;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire [0:0]wait_time_cnt0;
  wire wait_time_cnt0_0;
  wire \wait_time_cnt[1]_i_1_n_0 ;
  wire \wait_time_cnt[2]_i_1_n_0 ;
  wire \wait_time_cnt[3]_i_1_n_0 ;
  wire \wait_time_cnt[4]_i_1_n_0 ;
  wire \wait_time_cnt[5]_i_1_n_0 ;
  wire \wait_time_cnt[6]_i_3_n_0 ;
  wire \wait_time_cnt[6]_i_4_n_0 ;
  wire [6:0]wait_time_cnt_reg;
  wire [3:3]\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFF1F0000001F)) 
    CPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt0_cpllrefclklost_i),
        .I2(refclk_stable_reg_n_0),
        .I3(CPLL_RESET_i_2_n_0),
        .I4(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I5(gt0_cpllreset_t),
        .O(CPLL_RESET_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    CPLL_RESET_i_2
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(CPLL_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(CPLL_RESET_i_1_n_0),
        .Q(gt0_cpllreset_t),
        .R(out));
  LUT6 #(
    .INIT(64'hF3FFF3F0F5F0F5F0)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I3(tx_state[2]),
        .I4(time_out_2ms_reg_n_0),
        .I5(tx_state[1]),
        .O(tx_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(reset_time_out),
        .I1(time_out_500us_reg_n_0),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_tx_state[0]_i_3 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h005A001A)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(tx_state__0[1]));
  LUT6 #(
    .INIT(64'h04000C0C06020C0C)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .I4(tx_state[0]),
        .I5(time_out_2ms_reg_n_0),
        .O(tx_state__0[2]));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(time_tlock_max_reg_n_0),
        .I1(reset_time_out),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hF4FF4444)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[3]),
        .I2(reset_time_out),
        .I3(time_out_500us_reg_n_0),
        .I4(\FSM_sequential_tx_state[3]_i_8_n_0 ),
        .O(tx_state__0[3]));
  LUT6 #(
    .INIT(64'h00BA000000000000)) 
    \FSM_sequential_tx_state[3]_i_3 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(time_out_500us_reg_n_0),
        .I3(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300FF00AA)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(init_wait_done_reg_n_0),
        .I1(\wait_time_cnt[6]_i_4_n_0 ),
        .I2(wait_time_cnt_reg[6]),
        .I3(tx_state[0]),
        .I4(tx_state[3]),
        .I5(CPLL_RESET_i_2_n_0),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0404040400040000)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .I3(reset_time_out),
        .I4(time_tlock_max_reg_n_0),
        .I5(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_tx_state[3]_i_7 
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_tx_state[3]_i_8 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(\FSM_sequential_tx_state[3]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[0]),
        .Q(tx_state[0]),
        .R(out));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[1]),
        .Q(tx_state[1]),
        .R(out));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[2]),
        .Q(tx_state[2]),
        .R(out));
  (* FSM_ENCODED_STATES = "wait_for_txoutclk:0100,release_pll_reset:0011,wait_for_pll_lock:0010,assert_all_resets:0001,init:0000,wait_reset_done:0111,reset_fsm_done:1001,wait_for_txusrclk:0110,do_phase_alignment:1000,release_mmcm_reset:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sync_cplllock_n_1),
        .D(tx_state__0[3]),
        .Q(tx_state[3]),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFFF70004)) 
    MMCM_RESET_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(mmcm_reset),
        .O(MMCM_RESET_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFD2000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt0_txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_t),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFFEF0100)) 
    gttxreset_i_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(GTTXRESET),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(GTTXRESET),
        .R(out));
  LUT3 #(
    .INIT(8'hEA)) 
    gtxe2_i_i_3
       (.I0(GTTXRESET),
        .I1(data_in),
        .I2(gtxe2_i),
        .O(gt0_gttxreset_in0_out));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[0]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[3]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[4]),
        .I5(init_wait_count_reg[5]),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \init_wait_count[6]_i_1 
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(\init_wait_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \init_wait_count[6]_i_2 
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[4]),
        .I3(init_wait_count_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[2]),
        .I3(init_wait_count_reg[5]),
        .O(\init_wait_count[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\init_wait_count[6]_i_1_n_0 ),
        .CLR(out),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg[6]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[6]_i_3_n_0 ),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(out),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg[0]),
        .I1(mmcm_lock_count_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg[1]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[2]),
        .O(\mmcm_lock_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg[2]),
        .I1(mmcm_lock_count_reg[0]),
        .I2(mmcm_lock_count_reg[1]),
        .I3(mmcm_lock_count_reg[3]),
        .O(\mmcm_lock_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg[3]),
        .I1(mmcm_lock_count_reg[1]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[2]),
        .I4(mmcm_lock_count_reg[4]),
        .O(\mmcm_lock_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(\mmcm_lock_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_reclocked_i_2_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .O(\mmcm_lock_count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_reclocked_i_2_n_0),
        .I1(mmcm_lock_count_reg[6]),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg[6]),
        .I1(mmcm_lock_reclocked_i_2_n_0),
        .I2(mmcm_lock_count_reg[7]),
        .O(\mmcm_lock_count[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[2]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[3]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[4]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[5]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[6]_i_1_n_0 ),
        .Q(mmcm_lock_count_reg[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(\mmcm_lock_count[7]_i_3_n_0 ),
        .Q(mmcm_lock_count_reg[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT5 #(
    .INIT(32'hAAEA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(mmcm_lock_count_reg[7]),
        .I2(mmcm_lock_count_reg[6]),
        .I3(mmcm_lock_reclocked_i_2_n_0),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg[4]),
        .I1(mmcm_lock_count_reg[2]),
        .I2(mmcm_lock_count_reg[0]),
        .I3(mmcm_lock_count_reg[1]),
        .I4(mmcm_lock_count_reg[3]),
        .I5(mmcm_lock_count_reg[5]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_lock_reclocked_i_1_n_0),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000CD55CCCCCCCC)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[3]),
        .I1(pll_reset_asserted_reg_n_0),
        .I2(gt0_cpllrefclklost_i),
        .I3(refclk_stable_reg_n_0),
        .I4(tx_state[1]),
        .I5(pll_reset_asserted_i_2_n_0),
        .O(pll_reset_asserted_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    pll_reset_asserted_i_2
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[2]),
        .O(pll_reset_asserted_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \refclk_stable_count[0]_i_1 
       (.I0(\refclk_stable_count[0]_i_3_n_0 ),
        .I1(\refclk_stable_count[0]_i_4_n_0 ),
        .I2(\refclk_stable_count[0]_i_5_n_0 ),
        .I3(\refclk_stable_count[0]_i_6_n_0 ),
        .I4(\refclk_stable_count[0]_i_7_n_0 ),
        .I5(\refclk_stable_count[0]_i_8_n_0 ),
        .O(refclk_stable_count));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \refclk_stable_count[0]_i_3 
       (.I0(refclk_stable_count_reg[13]),
        .I1(refclk_stable_count_reg[12]),
        .I2(refclk_stable_count_reg[10]),
        .I3(refclk_stable_count_reg[11]),
        .I4(refclk_stable_count_reg[9]),
        .I5(refclk_stable_count_reg[8]),
        .O(\refclk_stable_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \refclk_stable_count[0]_i_4 
       (.I0(refclk_stable_count_reg[19]),
        .I1(refclk_stable_count_reg[18]),
        .I2(refclk_stable_count_reg[16]),
        .I3(refclk_stable_count_reg[17]),
        .I4(refclk_stable_count_reg[15]),
        .I5(refclk_stable_count_reg[14]),
        .O(\refclk_stable_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \refclk_stable_count[0]_i_5 
       (.I0(refclk_stable_count_reg[30]),
        .I1(refclk_stable_count_reg[31]),
        .I2(refclk_stable_count_reg[28]),
        .I3(refclk_stable_count_reg[29]),
        .I4(refclk_stable_count_reg[27]),
        .I5(refclk_stable_count_reg[26]),
        .O(\refclk_stable_count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \refclk_stable_count[0]_i_6 
       (.I0(refclk_stable_count_reg[24]),
        .I1(refclk_stable_count_reg[25]),
        .I2(refclk_stable_count_reg[22]),
        .I3(refclk_stable_count_reg[23]),
        .I4(refclk_stable_count_reg[21]),
        .I5(refclk_stable_count_reg[20]),
        .O(\refclk_stable_count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \refclk_stable_count[0]_i_7 
       (.I0(refclk_stable_count_reg[0]),
        .I1(refclk_stable_count_reg[1]),
        .O(\refclk_stable_count[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \refclk_stable_count[0]_i_8 
       (.I0(refclk_stable_count_reg[6]),
        .I1(refclk_stable_count_reg[7]),
        .I2(refclk_stable_count_reg[4]),
        .I3(refclk_stable_count_reg[5]),
        .I4(refclk_stable_count_reg[3]),
        .I5(refclk_stable_count_reg[2]),
        .O(\refclk_stable_count[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_stable_count[0]_i_9 
       (.I0(refclk_stable_count_reg[0]),
        .O(\refclk_stable_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_7 ),
        .Q(refclk_stable_count_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\refclk_stable_count_reg[0]_i_2_n_0 ,\refclk_stable_count_reg[0]_i_2_n_1 ,\refclk_stable_count_reg[0]_i_2_n_2 ,\refclk_stable_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\refclk_stable_count_reg[0]_i_2_n_4 ,\refclk_stable_count_reg[0]_i_2_n_5 ,\refclk_stable_count_reg[0]_i_2_n_6 ,\refclk_stable_count_reg[0]_i_2_n_7 }),
        .S({refclk_stable_count_reg[3:1],\refclk_stable_count[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[12]_i_1 
       (.CI(\refclk_stable_count_reg[8]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[12]_i_1_n_0 ,\refclk_stable_count_reg[12]_i_1_n_1 ,\refclk_stable_count_reg[12]_i_1_n_2 ,\refclk_stable_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[12]_i_1_n_4 ,\refclk_stable_count_reg[12]_i_1_n_5 ,\refclk_stable_count_reg[12]_i_1_n_6 ,\refclk_stable_count_reg[12]_i_1_n_7 }),
        .S(refclk_stable_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[12]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[16]_i_1 
       (.CI(\refclk_stable_count_reg[12]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[16]_i_1_n_0 ,\refclk_stable_count_reg[16]_i_1_n_1 ,\refclk_stable_count_reg[16]_i_1_n_2 ,\refclk_stable_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[16]_i_1_n_4 ,\refclk_stable_count_reg[16]_i_1_n_5 ,\refclk_stable_count_reg[16]_i_1_n_6 ,\refclk_stable_count_reg[16]_i_1_n_7 }),
        .S(refclk_stable_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[16]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_6 ),
        .Q(refclk_stable_count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[20] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[20]_i_1 
       (.CI(\refclk_stable_count_reg[16]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[20]_i_1_n_0 ,\refclk_stable_count_reg[20]_i_1_n_1 ,\refclk_stable_count_reg[20]_i_1_n_2 ,\refclk_stable_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[20]_i_1_n_4 ,\refclk_stable_count_reg[20]_i_1_n_5 ,\refclk_stable_count_reg[20]_i_1_n_6 ,\refclk_stable_count_reg[20]_i_1_n_7 }),
        .S(refclk_stable_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[21] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[23] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[20]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[24] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[24]_i_1 
       (.CI(\refclk_stable_count_reg[20]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[24]_i_1_n_0 ,\refclk_stable_count_reg[24]_i_1_n_1 ,\refclk_stable_count_reg[24]_i_1_n_2 ,\refclk_stable_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[24]_i_1_n_4 ,\refclk_stable_count_reg[24]_i_1_n_5 ,\refclk_stable_count_reg[24]_i_1_n_6 ,\refclk_stable_count_reg[24]_i_1_n_7 }),
        .S(refclk_stable_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[25] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[26] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[27] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[24]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[28] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[28]_i_1 
       (.CI(\refclk_stable_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_refclk_stable_count_reg[28]_i_1_CO_UNCONNECTED [3],\refclk_stable_count_reg[28]_i_1_n_1 ,\refclk_stable_count_reg[28]_i_1_n_2 ,\refclk_stable_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[28]_i_1_n_4 ,\refclk_stable_count_reg[28]_i_1_n_5 ,\refclk_stable_count_reg[28]_i_1_n_6 ,\refclk_stable_count_reg[28]_i_1_n_7 }),
        .S(refclk_stable_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[29] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_5 ),
        .Q(refclk_stable_count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[30] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[31] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[28]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[0]_i_2_n_4 ),
        .Q(refclk_stable_count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[4]_i_1 
       (.CI(\refclk_stable_count_reg[0]_i_2_n_0 ),
        .CO({\refclk_stable_count_reg[4]_i_1_n_0 ,\refclk_stable_count_reg[4]_i_1_n_1 ,\refclk_stable_count_reg[4]_i_1_n_2 ,\refclk_stable_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[4]_i_1_n_4 ,\refclk_stable_count_reg[4]_i_1_n_5 ,\refclk_stable_count_reg[4]_i_1_n_6 ,\refclk_stable_count_reg[4]_i_1_n_7 }),
        .S(refclk_stable_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_5 ),
        .Q(refclk_stable_count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[4]_i_1_n_4 ),
        .Q(refclk_stable_count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_7 ),
        .Q(refclk_stable_count_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \refclk_stable_count_reg[8]_i_1 
       (.CI(\refclk_stable_count_reg[4]_i_1_n_0 ),
        .CO({\refclk_stable_count_reg[8]_i_1_n_0 ,\refclk_stable_count_reg[8]_i_1_n_1 ,\refclk_stable_count_reg[8]_i_1_n_2 ,\refclk_stable_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\refclk_stable_count_reg[8]_i_1_n_4 ,\refclk_stable_count_reg[8]_i_1_n_5 ,\refclk_stable_count_reg[8]_i_1_n_6 ,\refclk_stable_count_reg[8]_i_1_n_7 }),
        .S(refclk_stable_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_stable_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(refclk_stable_count),
        .D(\refclk_stable_count_reg[8]_i_1_n_6 ),
        .Q(refclk_stable_count_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    refclk_stable_i_1
       (.I0(\refclk_stable_count[0]_i_7_n_0 ),
        .I1(refclk_stable_i_2_n_0),
        .I2(refclk_stable_i_3_n_0),
        .I3(refclk_stable_i_4_n_0),
        .I4(refclk_stable_i_5_n_0),
        .I5(refclk_stable_i_6_n_0),
        .O(refclk_stable_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    refclk_stable_i_2
       (.I0(refclk_stable_count_reg[4]),
        .I1(refclk_stable_count_reg[5]),
        .I2(refclk_stable_count_reg[2]),
        .I3(refclk_stable_count_reg[3]),
        .I4(refclk_stable_count_reg[7]),
        .I5(refclk_stable_count_reg[6]),
        .O(refclk_stable_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    refclk_stable_i_3
       (.I0(refclk_stable_count_reg[10]),
        .I1(refclk_stable_count_reg[11]),
        .I2(refclk_stable_count_reg[8]),
        .I3(refclk_stable_count_reg[9]),
        .I4(refclk_stable_count_reg[12]),
        .I5(refclk_stable_count_reg[13]),
        .O(refclk_stable_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    refclk_stable_i_4
       (.I0(refclk_stable_count_reg[16]),
        .I1(refclk_stable_count_reg[17]),
        .I2(refclk_stable_count_reg[14]),
        .I3(refclk_stable_count_reg[15]),
        .I4(refclk_stable_count_reg[18]),
        .I5(refclk_stable_count_reg[19]),
        .O(refclk_stable_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    refclk_stable_i_5
       (.I0(refclk_stable_count_reg[22]),
        .I1(refclk_stable_count_reg[23]),
        .I2(refclk_stable_count_reg[20]),
        .I3(refclk_stable_count_reg[21]),
        .I4(refclk_stable_count_reg[25]),
        .I5(refclk_stable_count_reg[24]),
        .O(refclk_stable_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    refclk_stable_i_6
       (.I0(refclk_stable_count_reg[28]),
        .I1(refclk_stable_count_reg[29]),
        .I2(refclk_stable_count_reg[26]),
        .I3(refclk_stable_count_reg[27]),
        .I4(refclk_stable_count_reg[31]),
        .I5(refclk_stable_count_reg[30]),
        .O(refclk_stable_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    refclk_stable_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(refclk_stable_i_1_n_0),
        .Q(refclk_stable_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h440000FF50505050)) 
    reset_time_out_i_2__0
       (.I0(tx_state[3]),
        .I1(txresetdone_s3),
        .I2(init_wait_done_reg_n_0),
        .I3(tx_state[1]),
        .I4(tx_state[2]),
        .I5(tx_state[0]),
        .O(reset_time_out_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(sync_cplllock_n_0),
        .Q(reset_time_out),
        .R(out));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5 sync_cplllock
       (.E(sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[0] (\FSM_sequential_tx_state[3]_i_3_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_2 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_3 (\FSM_sequential_tx_state[3]_i_7_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_4 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_5 (refclk_stable_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_6 (\FSM_sequential_tx_state[0]_i_3_n_0 ),
        .Q(tx_state),
        .data_sync_reg1_0(data_sync_reg1_2),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(sync_cplllock_n_0),
        .reset_time_out_reg_0(reset_time_out_i_2__0_n_0),
        .reset_time_out_reg_1(init_wait_done_reg_n_0));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .data_sync_reg6_0(data_sync_reg1));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9 sync_tx_fsm_reset_done_int
       (.data_in(data_in),
        .data_out(tx_fsm_reset_done_int_s2),
        .data_sync_reg1_0(data_sync_reg1));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2__0_n_0),
        .I2(time_out_2ms_i_3_n_0),
        .I3(reset_time_out),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[5]),
        .I5(time_tlock_max_i_3_n_0),
        .O(time_out_2ms_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_2ms_i_4__0_n_0),
        .I3(time_out_2ms_i_5_n_0),
        .O(time_out_2ms_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[6]),
        .O(time_out_2ms_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[1]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_2ms_i_3_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_500us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_tlock_max_i_3_n_0),
        .I1(\time_out_counter[0]_i_3__0_n_0 ),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[5]),
        .O(time_out_counter));
  LUT2 #(
    .INIT(4'h8)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .I2(time_out_wait_bypass_i_2_n_0),
        .I3(run_phase_alignment_int_s3),
        .O(time_out_wait_bypass_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    time_out_wait_bypass_i_2
       (.I0(time_out_wait_bypass_i_3_n_0),
        .I1(time_out_wait_bypass_i_4_n_0),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[13]),
        .I4(wait_bypass_count_reg[11]),
        .I5(time_out_wait_bypass_i_5_n_0),
        .O(time_out_wait_bypass_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[16]),
        .I1(wait_bypass_count_reg[9]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[10]),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[0]),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[2]),
        .I5(wait_bypass_count_reg[3]),
        .O(time_out_wait_bypass_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAEA)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2_n_0),
        .I2(time_out_counter_reg[5]),
        .I3(time_tlock_max_i_3_n_0),
        .I4(time_tlock_max_i_4_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[17]),
        .O(time_tlock_max_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[11]),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_4
       (.I0(time_out_2ms_i_5_n_0),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[4]),
        .O(time_tlock_max_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(data_in),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(data_in),
        .R(out));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_s3_reg
       (.C(data_sync_reg1),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_i_2_n_0),
        .I1(tx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(data_sync_reg1),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .O(wait_time_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[0]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[2]),
        .I4(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0700)) 
    \wait_time_cnt[6]_i_1__0 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[0]),
        .O(wait_time_cnt0_0));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_time_cnt[6]_i_2 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(sel));
  LUT2 #(
    .INIT(4'h9)) 
    \wait_time_cnt[6]_i_3 
       (.I0(\wait_time_cnt[6]_i_4_n_0 ),
        .I1(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[1]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(wait_time_cnt0),
        .Q(wait_time_cnt_reg[0]),
        .R(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[1]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[1]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[2]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[2]),
        .S(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[3]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(wait_time_cnt0_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[4]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[5]_i_1_n_0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(wait_time_cnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(sel),
        .D(\wait_time_cnt[6]_i_3_n_0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(wait_time_cnt0_0));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block
   (gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    status_vector,
    resetdone,
    txn,
    txp,
    rxoutclk,
    txoutclk,
    mmcm_reset,
    out,
    signal_detect,
    CLK,
    data_in,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    configuration_vector,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gtxe2_i);
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output [6:0]status_vector;
  output resetdone;
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output mmcm_reset;
  input [0:0]out;
  input signal_detect;
  input CLK;
  input data_in;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [2:0]configuration_vector;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gtxe2_i;

  wire CLK;
  wire [2:0]configuration_vector;
  wire data_in;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire gtxe2_i;
  wire independent_clock_bufg;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire mmcm_reset;
  wire [0:0]out;
  wire powerdown;
  wire resetdone;
  wire rx_reset_done_i;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [6:0]status_vector;
  wire transceiver_inst_n_11;
  wire transceiver_inst_n_12;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire txoutclk;
  wire txp;
  wire NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_an_interrupt_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_arready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_awready_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_gig_ethernet_pcs_pma_1_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_gig_ethernet_pcs_pma_1_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED;
  wire [15:7]NLW_gig_ethernet_pcs_pma_1_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED;

  (* B_SHIFTER_ADDR = "10'b0101001110" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "gig_ethernet_pcs_pma_1" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AN = "FALSE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "FALSE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_v16_2_15 gig_ethernet_pcs_pma_1_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_gig_ethernet_pcs_pma_1_core_an_enable_UNCONNECTED),
        .an_interrupt(NLW_gig_ethernet_pcs_pma_1_core_an_interrupt_UNCONNECTED),
        .an_restart_config(1'b0),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector({1'b0,configuration_vector,1'b0}),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(data_in),
        .drp_daddr(NLW_gig_ethernet_pcs_pma_1_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_gig_ethernet_pcs_pma_1_core_drp_den_UNCONNECTED),
        .drp_di(NLW_gig_ethernet_pcs_pma_1_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_gig_ethernet_pcs_pma_1_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_gig_ethernet_pcs_pma_1_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_gig_ethernet_pcs_pma_1_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_gig_ethernet_pcs_pma_1_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .loc_ref(NLW_gig_ethernet_pcs_pma_1_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_gig_ethernet_pcs_pma_1_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_gig_ethernet_pcs_pma_1_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(out),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbuferr,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_gig_ethernet_pcs_pma_1_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_gig_ethernet_pcs_pma_1_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_gig_ethernet_pcs_pma_1_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_gig_ethernet_pcs_pma_1_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_gig_ethernet_pcs_pma_1_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_gig_ethernet_pcs_pma_1_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_gig_ethernet_pcs_pma_1_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_gig_ethernet_pcs_pma_1_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_gig_ethernet_pcs_pma_1_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_gig_ethernet_pcs_pma_1_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_gig_ethernet_pcs_pma_1_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_gig_ethernet_pcs_pma_1_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({NLW_gig_ethernet_pcs_pma_1_core_status_vector_UNCONNECTED[15:7],status_vector}),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_gig_ethernet_pcs_pma_1_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(CLK));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block sync_block_rx_reset_done
       (.CLK(CLK),
        .data_in(transceiver_inst_n_12),
        .data_out(rx_reset_done_i));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0 sync_block_tx_reset_done
       (.CLK(CLK),
        .data_in(transceiver_inst_n_11),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver transceiver_inst
       (.CLK(CLK),
        .D(txchardispmode),
        .Q(rxclkcorcnt),
        .SR(mgt_rx_reset),
        .data_in(transceiver_inst_n_11),
        .data_sync_reg1(data_in),
        .enablealign(enablealign),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtrefclk_out(gtrefclk_out),
        .gtxe2_i(gtxe2_i),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .powerdown(powerdown),
        .reset_sync5(mgt_tx_reset),
        .rx_fsm_reset_done_int_reg(transceiver_inst_n_12),
        .rxbufstatus(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .status_vector(status_vector[1]),
        .txbuferr(txbuferr),
        .txchardispval_reg_reg_0(txchardispval),
        .txcharisk_reg_reg_0(txcharisk),
        .\txdata_reg_reg[7]_0 (txdata),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking
   (gtrefclk_out,
    gtrefclk_bufg,
    mmcm_locked,
    userclk,
    userclk2,
    rxuserclk2_out,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk,
    mmcm_reset,
    rxoutclk);
  output gtrefclk_out;
  output gtrefclk_bufg;
  output mmcm_locked;
  output userclk;
  output userclk2;
  output rxuserclk2_out;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;
  input mmcm_reset;
  input rxoutclk;

  wire clkfbout;
  wire clkout0;
  wire clkout1;
  wire gtrefclk_bufg;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire mmcm_locked;
  wire mmcm_reset;
  wire rxoutclk;
  wire rxuserclk2_out;
  wire txoutclk;
  wire txoutclk_bufg;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_gtrefclk
       (.I(gtrefclk_out),
        .O(gtrefclk_bufg));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_txoutclk
       (.I(txoutclk),
        .O(txoutclk_bufg));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_userclk
       (.I(clkout1),
        .O(userclk));
  (* box_type = "PRIMITIVE" *) 
  BUFG bufg_userclk2
       (.I(clkout0),
        .O(userclk2));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
    ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk_out),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(16.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(txoutclk_bufg),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clkout1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(mmcm_locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(mmcm_reset));
  (* box_type = "PRIMITIVE" *) 
  BUFG rxrecclkbufg
       (.I(rxoutclk),
        .O(rxuserclk2_out));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_cpll_railing
   (cpll_pd0_i,
    cpllreset_in,
    gtrefclk_bufg,
    gt0_cpllreset_t);
  output cpll_pd0_i;
  output cpllreset_in;
  input gtrefclk_bufg;
  input gt0_cpllreset_t;

  wire cpll_pd0_i;
  wire cpll_reset_out;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire cpllreset_in;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire gt0_cpllreset_t;
  wire gtrefclk_bufg;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;

  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(cpll_pd0_i),
        .R(1'b0));
  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(gtrefclk_bufg),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpll_reset_out),
        .R(1'b0));
  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "U0/\\pcs_pma_block_i/transceiver_inst/gtwizard_inst/U0/gtwizard_i/cpll_railing0_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gtrefclk_bufg),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1
       (.I0(cpll_reset_out),
        .I1(gt0_cpllreset_t),
        .O(cpllreset_in));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common
   (gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gtrefclk_out,
    independent_clock_bufg,
    out);
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  input gtrefclk_out;
  input independent_clock_bufg;
  input [0:0]out;

  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_out;
  wire gtxe2_common_i_n_2;
  wire gtxe2_common_i_n_5;
  wire independent_clock_bufg;
  wire [0:0]out;
  wire NLW_gtxe2_common_i_DRPRDY_UNCONNECTED;
  wire NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED;
  wire NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED;
  wire [15:0]NLW_gtxe2_common_i_DRPDO_UNCONNECTED;
  wire [7:0]NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  GTXE2_COMMON #(
    .BIAS_CFG(64'h0000040000001000),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_QPLLLOCKDETCLK_INVERTED(1'b0),
    .QPLL_CFG(27'h06801C1),
    .QPLL_CLKOUT_CFG(4'b0000),
    .QPLL_COARSE_FREQ_OVRD(6'b010000),
    .QPLL_COARSE_FREQ_OVRD_EN(1'b0),
    .QPLL_CP(10'b0000011111),
    .QPLL_CP_MONITOR_EN(1'b0),
    .QPLL_DMONITOR_SEL(1'b0),
    .QPLL_FBDIV(10'b0000100000),
    .QPLL_FBDIV_MONITOR_EN(1'b0),
    .QPLL_FBDIV_RATIO(1'b1),
    .QPLL_INIT_CFG(24'h000006),
    .QPLL_LOCK_CFG(16'h21E8),
    .QPLL_LPF(4'b1111),
    .QPLL_REFCLK_DIV(1),
    .SIM_QPLLREFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("4.0")) 
    gtxe2_common_i
       (.BGBYPASSB(1'b1),
        .BGMONITORENB(1'b1),
        .BGPDB(1'b1),
        .BGRCALOVRD({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(1'b0),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO(NLW_gtxe2_common_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(1'b0),
        .DRPRDY(NLW_gtxe2_common_i_DRPRDY_UNCONNECTED),
        .DRPWE(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(1'b0),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .PMARSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLDMONITOR(NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED[7:0]),
        .QPLLFBCLKLOST(NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED),
        .QPLLLOCK(gtxe2_common_i_n_2),
        .QPLLLOCKDETCLK(independent_clock_bufg),
        .QPLLLOCKEN(1'b1),
        .QPLLOUTCLK(gt0_qplloutclk_out),
        .QPLLOUTREFCLK(gt0_qplloutrefclk_out),
        .QPLLOUTRESET(1'b0),
        .QPLLPD(1'b1),
        .QPLLREFCLKLOST(gtxe2_common_i_n_5),
        .QPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .QPLLRESET(out),
        .QPLLRSVD1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLRSVD2({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .RCALENB(1'b1),
        .REFCLKOUTMONITOR(NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync
   (reset_out,
    CLK,
    enablealign);
  output reset_out;
  input CLK;
  input enablealign;

  wire CLK;
  wire enablealign;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(enablealign),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(enablealign),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(enablealign),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(enablealign),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1
   (reset_out,
    independent_clock_bufg,
    SR);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]SR;

  wire [0:0]SR;
  wire independent_clock_bufg;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_reset_sync" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2
   (reset_out,
    independent_clock_bufg,
    reset_sync5_0);
  output reset_out;
  input independent_clock_bufg;
  input [0:0]reset_sync5_0;

  wire independent_clock_bufg;
  wire reset_out;
  wire [0:0]reset_sync5_0;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(reset_sync5_0),
        .Q(reset_sync_reg5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer
   (reset,
    independent_clock_bufg,
    data_out);
  output reset;
  input independent_clock_bufg;
  input data_out;

  wire \counter_stg1[5]_i_1_n_0 ;
  wire \counter_stg1[5]_i_3_n_0 ;
  wire [5:5]counter_stg1_reg;
  wire [4:0]counter_stg1_reg__0;
  wire \counter_stg2[0]_i_3_n_0 ;
  wire [11:0]counter_stg2_reg;
  wire \counter_stg2_reg[0]_i_2_n_0 ;
  wire \counter_stg2_reg[0]_i_2_n_1 ;
  wire \counter_stg2_reg[0]_i_2_n_2 ;
  wire \counter_stg2_reg[0]_i_2_n_3 ;
  wire \counter_stg2_reg[0]_i_2_n_4 ;
  wire \counter_stg2_reg[0]_i_2_n_5 ;
  wire \counter_stg2_reg[0]_i_2_n_6 ;
  wire \counter_stg2_reg[0]_i_2_n_7 ;
  wire \counter_stg2_reg[4]_i_1_n_0 ;
  wire \counter_stg2_reg[4]_i_1_n_1 ;
  wire \counter_stg2_reg[4]_i_1_n_2 ;
  wire \counter_stg2_reg[4]_i_1_n_3 ;
  wire \counter_stg2_reg[4]_i_1_n_4 ;
  wire \counter_stg2_reg[4]_i_1_n_5 ;
  wire \counter_stg2_reg[4]_i_1_n_6 ;
  wire \counter_stg2_reg[4]_i_1_n_7 ;
  wire \counter_stg2_reg[8]_i_1_n_1 ;
  wire \counter_stg2_reg[8]_i_1_n_2 ;
  wire \counter_stg2_reg[8]_i_1_n_3 ;
  wire \counter_stg2_reg[8]_i_1_n_4 ;
  wire \counter_stg2_reg[8]_i_1_n_5 ;
  wire \counter_stg2_reg[8]_i_1_n_6 ;
  wire \counter_stg2_reg[8]_i_1_n_7 ;
  wire counter_stg30;
  wire \counter_stg3[0]_i_3_n_0 ;
  wire \counter_stg3[0]_i_4_n_0 ;
  wire \counter_stg3[0]_i_5_n_0 ;
  wire [11:0]counter_stg3_reg;
  wire \counter_stg3_reg[0]_i_2_n_0 ;
  wire \counter_stg3_reg[0]_i_2_n_1 ;
  wire \counter_stg3_reg[0]_i_2_n_2 ;
  wire \counter_stg3_reg[0]_i_2_n_3 ;
  wire \counter_stg3_reg[0]_i_2_n_4 ;
  wire \counter_stg3_reg[0]_i_2_n_5 ;
  wire \counter_stg3_reg[0]_i_2_n_6 ;
  wire \counter_stg3_reg[0]_i_2_n_7 ;
  wire \counter_stg3_reg[4]_i_1_n_0 ;
  wire \counter_stg3_reg[4]_i_1_n_1 ;
  wire \counter_stg3_reg[4]_i_1_n_2 ;
  wire \counter_stg3_reg[4]_i_1_n_3 ;
  wire \counter_stg3_reg[4]_i_1_n_4 ;
  wire \counter_stg3_reg[4]_i_1_n_5 ;
  wire \counter_stg3_reg[4]_i_1_n_6 ;
  wire \counter_stg3_reg[4]_i_1_n_7 ;
  wire \counter_stg3_reg[8]_i_1_n_1 ;
  wire \counter_stg3_reg[8]_i_1_n_2 ;
  wire \counter_stg3_reg[8]_i_1_n_3 ;
  wire \counter_stg3_reg[8]_i_1_n_4 ;
  wire \counter_stg3_reg[8]_i_1_n_5 ;
  wire \counter_stg3_reg[8]_i_1_n_6 ;
  wire \counter_stg3_reg[8]_i_1_n_7 ;
  wire data_out;
  wire eqOp;
  wire independent_clock_bufg;
  wire [5:0]plusOp;
  wire reset;
  wire reset0;
  wire reset_i_2_n_0;
  wire reset_i_3_n_0;
  wire reset_i_4_n_0;
  wire reset_i_5_n_0;
  wire reset_i_6_n_0;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__0[0]),
        .I1(counter_stg1_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__0[1]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__0[2]),
        .I1(counter_stg1_reg__0[0]),
        .I2(counter_stg1_reg__0[1]),
        .I3(counter_stg1_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[4]),
        .O(plusOp[4]));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \counter_stg1[5]_i_1 
       (.I0(reset_i_2_n_0),
        .I1(counter_stg3_reg[0]),
        .I2(reset_i_3_n_0),
        .I3(\counter_stg1[5]_i_3_n_0 ),
        .I4(data_out),
        .O(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[2]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[3]),
        .I5(counter_stg1_reg),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter_stg1[5]_i_3 
       (.I0(counter_stg1_reg__0[3]),
        .I1(counter_stg1_reg__0[1]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[2]),
        .I4(counter_stg1_reg__0[4]),
        .O(\counter_stg1[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(counter_stg1_reg__0[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(counter_stg1_reg__0[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(counter_stg1_reg__0[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(counter_stg1_reg__0[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(counter_stg1_reg__0[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(counter_stg1_reg),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg__0[4]),
        .I1(counter_stg1_reg__0[2]),
        .I2(counter_stg1_reg__0[0]),
        .I3(counter_stg1_reg__0[1]),
        .I4(counter_stg1_reg__0[3]),
        .I5(counter_stg1_reg),
        .O(eqOp));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[0]),
        .O(\counter_stg2[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_7 ),
        .Q(counter_stg2_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg2_reg[0]_i_2_n_0 ,\counter_stg2_reg[0]_i_2_n_1 ,\counter_stg2_reg[0]_i_2_n_2 ,\counter_stg2_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg2_reg[0]_i_2_n_4 ,\counter_stg2_reg[0]_i_2_n_5 ,\counter_stg2_reg[0]_i_2_n_6 ,\counter_stg2_reg[0]_i_2_n_7 }),
        .S({counter_stg2_reg[3:1],\counter_stg2[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_5 ),
        .Q(counter_stg2_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_4 ),
        .Q(counter_stg2_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_6 ),
        .Q(counter_stg2_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_5 ),
        .Q(counter_stg2_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[0]_i_2_n_4 ),
        .Q(counter_stg2_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_7 ),
        .Q(counter_stg2_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\counter_stg2_reg[0]_i_2_n_0 ),
        .CO({\counter_stg2_reg[4]_i_1_n_0 ,\counter_stg2_reg[4]_i_1_n_1 ,\counter_stg2_reg[4]_i_1_n_2 ,\counter_stg2_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[4]_i_1_n_4 ,\counter_stg2_reg[4]_i_1_n_5 ,\counter_stg2_reg[4]_i_1_n_6 ,\counter_stg2_reg[4]_i_1_n_7 }),
        .S(counter_stg2_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_6 ),
        .Q(counter_stg2_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_5 ),
        .Q(counter_stg2_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[4]_i_1_n_4 ),
        .Q(counter_stg2_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_7 ),
        .Q(counter_stg2_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\counter_stg2_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg2_reg[8]_i_1_n_1 ,\counter_stg2_reg[8]_i_1_n_2 ,\counter_stg2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg2_reg[8]_i_1_n_4 ,\counter_stg2_reg[8]_i_1_n_5 ,\counter_stg2_reg[8]_i_1_n_6 ,\counter_stg2_reg[8]_i_1_n_7 }),
        .S(counter_stg2_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(eqOp),
        .D(\counter_stg2_reg[8]_i_1_n_6 ),
        .Q(counter_stg2_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter_stg3[0]_i_1 
       (.I0(\counter_stg3[0]_i_3_n_0 ),
        .I1(\counter_stg3[0]_i_4_n_0 ),
        .I2(counter_stg2_reg[0]),
        .I3(\counter_stg1[5]_i_3_n_0 ),
        .O(counter_stg30));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg3[0]_i_3 
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[2]),
        .I4(counter_stg2_reg[6]),
        .I5(counter_stg2_reg[5]),
        .O(\counter_stg3[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter_stg3[0]_i_4 
       (.I0(counter_stg2_reg[9]),
        .I1(counter_stg2_reg[10]),
        .I2(counter_stg2_reg[7]),
        .I3(counter_stg2_reg[8]),
        .I4(counter_stg1_reg),
        .I5(counter_stg2_reg[11]),
        .O(\counter_stg3[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_stg3[0]_i_5 
       (.I0(counter_stg3_reg[0]),
        .O(\counter_stg3[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_7 ),
        .Q(counter_stg3_reg[0]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_stg3_reg[0]_i_2_n_0 ,\counter_stg3_reg[0]_i_2_n_1 ,\counter_stg3_reg[0]_i_2_n_2 ,\counter_stg3_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_stg3_reg[0]_i_2_n_4 ,\counter_stg3_reg[0]_i_2_n_5 ,\counter_stg3_reg[0]_i_2_n_6 ,\counter_stg3_reg[0]_i_2_n_7 }),
        .S({counter_stg3_reg[3:1],\counter_stg3[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_5 ),
        .Q(counter_stg3_reg[10]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_4 ),
        .Q(counter_stg3_reg[11]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_6 ),
        .Q(counter_stg3_reg[1]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_5 ),
        .Q(counter_stg3_reg[2]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[0]_i_2_n_4 ),
        .Q(counter_stg3_reg[3]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_7 ),
        .Q(counter_stg3_reg[4]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\counter_stg3_reg[0]_i_2_n_0 ),
        .CO({\counter_stg3_reg[4]_i_1_n_0 ,\counter_stg3_reg[4]_i_1_n_1 ,\counter_stg3_reg[4]_i_1_n_2 ,\counter_stg3_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[4]_i_1_n_4 ,\counter_stg3_reg[4]_i_1_n_5 ,\counter_stg3_reg[4]_i_1_n_6 ,\counter_stg3_reg[4]_i_1_n_7 }),
        .S(counter_stg3_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_6 ),
        .Q(counter_stg3_reg[5]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_5 ),
        .Q(counter_stg3_reg[6]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[4]_i_1_n_4 ),
        .Q(counter_stg3_reg[7]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_7 ),
        .Q(counter_stg3_reg[8]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\counter_stg3_reg[4]_i_1_n_0 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\counter_stg3_reg[8]_i_1_n_1 ,\counter_stg3_reg[8]_i_1_n_2 ,\counter_stg3_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_stg3_reg[8]_i_1_n_4 ,\counter_stg3_reg[8]_i_1_n_5 ,\counter_stg3_reg[8]_i_1_n_6 ,\counter_stg3_reg[8]_i_1_n_7 }),
        .S(counter_stg3_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\counter_stg3_reg[8]_i_1_n_6 ),
        .Q(counter_stg3_reg[9]),
        .R(\counter_stg1[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    reset_i_1
       (.I0(reset_i_2_n_0),
        .I1(counter_stg3_reg[0]),
        .I2(reset_i_3_n_0),
        .O(reset0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    reset_i_2
       (.I0(counter_stg3_reg[9]),
        .I1(counter_stg3_reg[10]),
        .I2(counter_stg3_reg[7]),
        .I3(counter_stg3_reg[8]),
        .I4(counter_stg2_reg[0]),
        .I5(counter_stg3_reg[11]),
        .O(reset_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    reset_i_3
       (.I0(reset_i_4_n_0),
        .I1(reset_i_5_n_0),
        .I2(reset_i_6_n_0),
        .O(reset_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    reset_i_4
       (.I0(counter_stg2_reg[3]),
        .I1(counter_stg2_reg[4]),
        .I2(counter_stg2_reg[1]),
        .I3(counter_stg2_reg[2]),
        .I4(counter_stg2_reg[6]),
        .I5(counter_stg2_reg[5]),
        .O(reset_i_4_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    reset_i_5
       (.I0(counter_stg2_reg[10]),
        .I1(counter_stg2_reg[9]),
        .I2(counter_stg2_reg[8]),
        .I3(counter_stg2_reg[7]),
        .I4(counter_stg1_reg),
        .I5(counter_stg2_reg[11]),
        .O(reset_i_5_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    reset_i_6
       (.I0(counter_stg3_reg[4]),
        .I1(counter_stg3_reg[3]),
        .I2(counter_stg3_reg[1]),
        .I3(counter_stg3_reg[2]),
        .I4(counter_stg3_reg[6]),
        .I5(counter_stg3_reg[5]),
        .O(reset_i_6_n_0));
  FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(reset),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets
   (out,
    independent_clock_bufg,
    reset);
  output [0:0]out;
  input independent_clock_bufg;
  input reset;

  wire independent_clock_bufg;
  (* async_reg = "true" *) wire [3:0]pma_reset_pipe;
  wire reset;

  assign out[0] = pma_reset_pipe[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(pma_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(reset),
        .Q(pma_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(reset),
        .Q(pma_reset_pipe[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(reset),
        .Q(pma_reset_pipe[3]));
endmodule

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_support
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    gtrefclk_bufg_out,
    txp,
    txn,
    rxp,
    rxn,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output gtrefclk_bufg_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;

  wire \<const0> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire mmcm_reset;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign rxuserclk_out = rxuserclk2_out;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_clocking core_clocking_i
       (.gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .mmcm_locked(mmcm_locked_out),
        .mmcm_reset(mmcm_reset),
        .rxoutclk(rxoutclk),
        .rxuserclk2_out(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_gt_common core_gt_common_i
       (.gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out),
        .reset(reset));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_block pcs_pma_block_i
       (.CLK(userclk2_out),
        .configuration_vector(configuration_vector[3:1]),
        .data_in(mmcm_locked_out),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg_out),
        .gtrefclk_out(gtrefclk_out),
        .gtxe2_i(userclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(pma_reset_out),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block
   (data_out,
    data_in,
    CLK);
  output data_out;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(CLK),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_0
   (resetdone,
    resetdone_0,
    data_in,
    CLK);
  output resetdone;
  input resetdone_0;
  input data_in;
  input CLK;

  wire CLK;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire resetdone_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(CLK),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(CLK),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    resetdone_INST_0
       (.I0(data_out),
        .I1(resetdone_0),
        .O(resetdone));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_10
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_11
   (\FSM_sequential_rx_state_reg[1] ,
    Q,
    rxresetdone_s3,
    data_sync_reg1_0,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[1] ;
  input [2:0]Q;
  input rxresetdone_s3;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire \FSM_sequential_rx_state_reg[1] ;
  wire [2:0]Q;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;
  wire rxresetdone_s3;

  LUT5 #(
    .INIT(32'h008F0080)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(Q[0]),
        .I1(rxresetdone_s3),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .O(\FSM_sequential_rx_state_reg[1] ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_12
   (\FSM_sequential_rx_state_reg[1] ,
    rx_fsm_reset_done_int_reg,
    D,
    E,
    reset_time_out_reg,
    reset_time_out_reg_0,
    Q,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    data_in,
    \FSM_sequential_rx_state_reg[1]_0 ,
    rx_fsm_reset_done_int_reg_0,
    rx_fsm_reset_done_int_reg_1,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    mmcm_lock_reclocked,
    \FSM_sequential_rx_state_reg[0]_2 ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    rx_fsm_reset_done_int_reg_2,
    rx_fsm_reset_done_int_reg_3,
    data_out,
    independent_clock_bufg);
  output \FSM_sequential_rx_state_reg[1] ;
  output rx_fsm_reset_done_int_reg;
  output [2:0]D;
  output [0:0]E;
  input reset_time_out_reg;
  input reset_time_out_reg_0;
  input [3:0]Q;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input data_in;
  input \FSM_sequential_rx_state_reg[1]_0 ;
  input rx_fsm_reset_done_int_reg_0;
  input rx_fsm_reset_done_int_reg_1;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input mmcm_lock_reclocked;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3] ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input rx_fsm_reset_done_int_reg_2;
  input rx_fsm_reset_done_int_reg_3;
  input data_out;
  input independent_clock_bufg;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[1]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire [3:0]Q;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire rx_fsm_reset_done_int_reg_1;
  wire rx_fsm_reset_done_int_reg_2;
  wire rx_fsm_reset_done_int_reg_3;
  wire time_out_wait_bypass_s3;

  LUT5 #(
    .INIT(32'hFFEFEFEF)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0]_2 ),
        .I1(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_sequential_rx_state[0]_i_3 
       (.I0(Q[3]),
        .I1(reset_time_out_reg_2),
        .I2(data_valid_sync),
        .I3(rx_fsm_reset_done_int_reg_1),
        .O(\FSM_sequential_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF24200400)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[1]_0 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(data_valid_sync),
        .I1(rx_fsm_reset_done_int_reg_1),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .I2(Q[0]),
        .I3(reset_time_out_reg),
        .I4(\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .I5(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCC0C4C4)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[3] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEFEA)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state[0]_i_3_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[0]_1 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0CE20CCC)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(mmcm_lock_reclocked),
        .I1(Q[3]),
        .I2(data_valid_sync),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_fsm_reset_done_int_reg_1),
        .I1(data_valid_sync),
        .I2(reset_time_out_reg_2),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEEFFFFFEEEF0000)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_i_2_n_0),
        .I1(reset_time_out_reg),
        .I2(reset_time_out_reg_0),
        .I3(Q[1]),
        .I4(reset_time_out_reg_1),
        .I5(reset_time_out_reg_2),
        .O(\FSM_sequential_rx_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0FF30E0E0FF30202)) 
    reset_time_out_i_2
       (.I0(\FSM_sequential_rx_state_reg[0]_1 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_valid_sync),
        .I4(Q[3]),
        .I5(mmcm_lock_reclocked),
        .O(reset_time_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(rx_fsm_reset_done_int_i_4_n_0),
        .I3(data_in),
        .O(rx_fsm_reset_done_int_reg));
  LUT5 #(
    .INIT(32'h00040000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(Q[0]),
        .I1(data_valid_sync),
        .I2(Q[2]),
        .I3(reset_time_out_reg_2),
        .I4(rx_fsm_reset_done_int_reg_2),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_fsm_reset_done_int_reg_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(data_valid_sync),
        .I4(rx_fsm_reset_done_int_reg_1),
        .I5(reset_time_out_reg_2),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h0008000808080008)) 
    rx_fsm_reset_done_int_i_4
       (.I0(rx_fsm_reset_done_int_reg_3),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(data_valid_sync),
        .I4(rx_fsm_reset_done_int_reg_2),
        .I5(reset_time_out_reg_2),
        .O(rx_fsm_reset_done_int_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_13
   (SR,
    data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_14
   (data_out,
    data_in,
    data_sync_reg1_0);
  output data_out;
  input data_in;
  input data_sync_reg1_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_15
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_16
   (data_out,
    data_in,
    data_sync_reg6_0);
  output data_out;
  input data_in;
  input data_sync_reg6_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_4
   (data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_5
   (reset_time_out_reg,
    E,
    reset_time_out_reg_0,
    reset_time_out,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    \FSM_sequential_tx_state_reg[0]_2 ,
    \FSM_sequential_tx_state_reg[0]_3 ,
    Q,
    reset_time_out_reg_1,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[0]_4 ,
    \FSM_sequential_tx_state_reg[0]_5 ,
    \FSM_sequential_tx_state_reg[0]_6 ,
    data_sync_reg1_0,
    independent_clock_bufg);
  output reset_time_out_reg;
  output [0:0]E;
  input reset_time_out_reg_0;
  input reset_time_out;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input \FSM_sequential_tx_state_reg[0]_2 ;
  input \FSM_sequential_tx_state_reg[0]_3 ;
  input [3:0]Q;
  input reset_time_out_reg_1;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[0]_4 ;
  input \FSM_sequential_tx_state_reg[0]_5 ;
  input \FSM_sequential_tx_state_reg[0]_6 ;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[0]_2 ;
  wire \FSM_sequential_tx_state_reg[0]_3 ;
  wire \FSM_sequential_tx_state_reg[0]_4 ;
  wire \FSM_sequential_tx_state_reg[0]_5 ;
  wire \FSM_sequential_tx_state_reg[0]_6 ;
  wire [3:0]Q;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_i_4__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[0] ),
        .I1(\FSM_sequential_tx_state_reg[0]_0 ),
        .I2(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_tx_state_reg[0]_1 ),
        .I4(\FSM_sequential_tx_state_reg[0]_2 ),
        .I5(\FSM_sequential_tx_state_reg[0]_3 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000F00008)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(\FSM_sequential_tx_state_reg[0]_4 ),
        .I1(\FSM_sequential_tx_state_reg[0]_5 ),
        .I2(cplllock_sync),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\FSM_sequential_tx_state_reg[0]_6 ),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    reset_time_out_i_1
       (.I0(reset_time_out_reg_0),
        .I1(reset_time_out_i_3__0_n_0),
        .I2(reset_time_out_i_4__0_n_0),
        .I3(reset_time_out),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h020002000F000200)) 
    reset_time_out_i_3__0
       (.I0(cplllock_sync),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(mmcm_lock_reclocked),
        .I5(Q[1]),
        .O(reset_time_out_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0505FF040505F504)) 
    reset_time_out_i_4__0
       (.I0(Q[1]),
        .I1(reset_time_out_reg_1),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(cplllock_sync),
        .O(reset_time_out_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_6
   (SR,
    data_out,
    data_sync_reg1_0,
    independent_clock_bufg);
  output [0:0]SR;
  output data_out;
  input data_sync_reg1_0;
  input independent_clock_bufg;

  wire [0:0]SR;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync_reg1_0),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(data_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_7
   (data_out,
    data_in,
    data_sync_reg6_0);
  output data_out;
  input data_in;
  input data_sync_reg6_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg6_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg6_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_8
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_1_sync_block" *) 
module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_9
   (data_out,
    data_in,
    data_sync_reg1_0);
  output data_out;
  input data_in;
  input data_sync_reg1_0;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync_reg1_0;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(data_sync_reg1_0),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

module gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_transceiver
   (txn,
    txp,
    rxoutclk,
    txoutclk,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxbufstatus,
    txbuferr,
    mmcm_reset,
    data_in,
    rx_fsm_reset_done_int_reg,
    Q,
    \rxdata_reg[7]_0 ,
    independent_clock_bufg,
    gtrefclk_bufg,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gtxe2_i,
    SR,
    CLK,
    powerdown,
    reset_sync5,
    D,
    txchardispval_reg_reg_0,
    txcharisk_reg_reg_0,
    out,
    status_vector,
    enablealign,
    data_sync_reg1,
    \txdata_reg_reg[7]_0 );
  output txn;
  output txp;
  output rxoutclk;
  output txoutclk;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxbufstatus;
  output txbuferr;
  output mmcm_reset;
  output data_in;
  output rx_fsm_reset_done_int_reg;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  input independent_clock_bufg;
  input gtrefclk_bufg;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gtxe2_i;
  input [0:0]SR;
  input CLK;
  input powerdown;
  input [0:0]reset_sync5;
  input [0:0]D;
  input [0:0]txchardispval_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input [0:0]out;
  input [0:0]status_vector;
  input enablealign;
  input data_sync_reg1;
  input [7:0]\txdata_reg_reg[7]_0 ;

  wire CLK;
  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire data_sync_reg1;
  wire data_valid_reg2;
  wire enablealign;
  wire encommaalign_int;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_bufg;
  wire gtrefclk_out;
  wire gtwizard_inst_n_6;
  wire gtwizard_inst_n_7;
  wire gtxe2_i;
  wire independent_clock_bufg;
  wire mmcm_reset;
  wire [0:0]out;
  wire p_0_in;
  wire powerdown;
  wire reset;
  wire [0:0]reset_sync5;
  wire rx_fsm_reset_done_int_reg;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_int;
  wire [1:0]rxchariscomma_reg__0;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_double;
  wire rxcharisk_i_1_n_0;
  wire [1:0]rxcharisk_int;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_double;
  wire [1:0]rxclkcorcnt_int;
  wire [1:0]rxclkcorcnt_reg;
  wire \rxdata[0]_i_1_n_0 ;
  wire \rxdata[1]_i_1_n_0 ;
  wire \rxdata[2]_i_1_n_0 ;
  wire \rxdata[3]_i_1_n_0 ;
  wire \rxdata[4]_i_1_n_0 ;
  wire \rxdata[5]_i_1_n_0 ;
  wire \rxdata[6]_i_1_n_0 ;
  wire \rxdata[7]_i_1_n_0 ;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [7:0]\rxdata_reg[7]_0 ;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_int;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_double;
  wire rxnotintable_i_1_n_0;
  wire [1:0]rxnotintable_int;
  wire [1:0]rxnotintable_reg__0;
  wire rxoutclk;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxreset_int;
  wire [0:0]status_vector;
  wire toggle;
  wire toggle_i_1_n_0;
  wire toggle_rx;
  wire toggle_rx_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [0:0]txchardispval_reg_reg_0;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire [7:0]\txdata_reg_reg[7]_0 ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset_int;

  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_GTWIZARD gtwizard_inst
       (.D(rxclkcorcnt_int),
        .Q(txdata_int),
        .RXBUFSTATUS(gtwizard_inst_n_7),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(gtwizard_inst_n_6),
        .TXPD(txpowerdown),
        .data_in(data_in),
        .data_out(data_valid_reg2),
        .data_sync_reg1(data_sync_reg1),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_bufg(gtrefclk_bufg),
        .gtrefclk_out(gtrefclk_out),
        .gtxe2_i(rxdata_int),
        .gtxe2_i_0(rxchariscomma_int),
        .gtxe2_i_1(rxcharisk_int),
        .gtxe2_i_2(rxdisperr_int),
        .gtxe2_i_3(rxnotintable_int),
        .gtxe2_i_4(gtxe2_i),
        .gtxe2_i_5(txchardispmode_int),
        .gtxe2_i_6(txchardispval_int),
        .gtxe2_i_7(txcharisk_int),
        .gtxe2_i_8(rxreset_int),
        .gtxe2_i_9(txreset_int),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_reset(mmcm_reset),
        .out(out),
        .reset(reset),
        .reset_out(encommaalign_int),
        .rx_fsm_reset_done_int_reg(rx_fsm_reset_done_int_reg),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync reclock_encommaalign
       (.CLK(CLK),
        .enablealign(enablealign),
        .reset_out(encommaalign_int));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_1 reclock_rxreset
       (.SR(SR),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(rxreset_int));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_sync_2 reclock_txreset
       (.independent_clock_bufg(independent_clock_bufg),
        .reset_out(txreset_int),
        .reset_sync5_0(reset_sync5));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_reset_wtd_timer reset_wtd_timer
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
  FDRE rxbuferr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbufstatus),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(gtwizard_inst_n_7),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \rxchariscomma_double_reg[0] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(SR));
  FDRE \rxchariscomma_double_reg[1] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle_rx),
        .I2(rxchariscomma_double[0]),
        .O(rxchariscomma_i_1_n_0));
  FDRE rxchariscomma_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxchariscomma_i_1_n_0),
        .Q(rxchariscomma),
        .R(SR));
  FDRE \rxchariscomma_reg_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxchariscomma_int[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxchariscomma_int[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
  FDRE \rxcharisk_double_reg[0] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(SR));
  FDRE \rxcharisk_double_reg[1] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle_rx),
        .I2(rxcharisk_double[0]),
        .O(rxcharisk_i_1_n_0));
  FDRE rxcharisk_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxcharisk_i_1_n_0),
        .Q(rxcharisk),
        .R(SR));
  FDRE \rxcharisk_reg_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxcharisk_int[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxcharisk_int[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
  FDRE \rxclkcorcnt_double_reg[0] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxclkcorcnt_reg[0]),
        .Q(rxclkcorcnt_double[0]),
        .R(SR));
  FDRE \rxclkcorcnt_double_reg[1] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxclkcorcnt_reg[1]),
        .Q(rxclkcorcnt_double[1]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_double[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_double[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \rxclkcorcnt_reg_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle_rx),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle_rx),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle_rx),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle_rx),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle_rx),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle_rx),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle_rx),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle_rx),
        .I2(rxdata_double[7]),
        .O(\rxdata[7]_i_1_n_0 ));
  FDRE \rxdata_double_reg[0] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(SR));
  FDRE \rxdata_double_reg[10] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(SR));
  FDRE \rxdata_double_reg[11] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(SR));
  FDRE \rxdata_double_reg[12] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(SR));
  FDRE \rxdata_double_reg[13] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(SR));
  FDRE \rxdata_double_reg[14] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(SR));
  FDRE \rxdata_double_reg[15] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(SR));
  FDRE \rxdata_double_reg[1] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(SR));
  FDRE \rxdata_double_reg[2] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(SR));
  FDRE \rxdata_double_reg[3] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(SR));
  FDRE \rxdata_double_reg[4] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(SR));
  FDRE \rxdata_double_reg[5] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(SR));
  FDRE \rxdata_double_reg[6] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(SR));
  FDRE \rxdata_double_reg[7] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(SR));
  FDRE \rxdata_double_reg[8] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(SR));
  FDRE \rxdata_double_reg[9] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(SR));
  FDRE \rxdata_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[0]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [0]),
        .R(SR));
  FDRE \rxdata_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[1]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [1]),
        .R(SR));
  FDRE \rxdata_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[2]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [2]),
        .R(SR));
  FDRE \rxdata_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[3]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [3]),
        .R(SR));
  FDRE \rxdata_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[4]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [4]),
        .R(SR));
  FDRE \rxdata_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[5]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [5]),
        .R(SR));
  FDRE \rxdata_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[6]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [6]),
        .R(SR));
  FDRE \rxdata_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rxdata[7]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [7]),
        .R(SR));
  FDRE \rxdata_reg_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
  FDRE \rxdisperr_double_reg[0] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(SR));
  FDRE \rxdisperr_double_reg[1] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle_rx),
        .I2(rxdisperr_double[0]),
        .O(rxdisperr_i_1_n_0));
  FDRE rxdisperr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxdisperr_i_1_n_0),
        .Q(rxdisperr),
        .R(SR));
  FDRE \rxdisperr_reg_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdisperr_int[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxdisperr_int[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
  FDRE \rxnotintable_double_reg[0] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(SR));
  FDRE \rxnotintable_double_reg[1] 
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle_rx),
        .I2(rxnotintable_double[0]),
        .O(rxnotintable_i_1_n_0));
  FDRE rxnotintable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxnotintable_i_1_n_0),
        .Q(rxnotintable),
        .R(SR));
  FDRE \rxnotintable_reg_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxnotintable_int[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxnotintable_int[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_double_reg
       (.C(CLK),
        .CE(toggle_rx),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown_double),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_reg__0),
        .R(SR));
  gig_ethernet_pcs_pma_1_gig_ethernet_pcs_pma_1_sync_block_3 sync_block_data_valid
       (.data_out(data_valid_reg2),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE toggle_reg
       (.C(CLK),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(reset_sync5));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_rx_i_1
       (.I0(toggle_rx),
        .O(toggle_rx_i_1_n_0));
  FDRE toggle_rx_reg
       (.C(CLK),
        .CE(1'b1),
        .D(toggle_rx_i_1_n_0),
        .Q(toggle_rx),
        .R(SR));
  FDRE txbuferr_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(gtwizard_inst_n_6),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(reset_sync5));
  FDRE \txchardispmode_double_reg[1] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(D),
        .Q(txchardispmode_double[1]),
        .R(reset_sync5));
  FDRE \txchardispmode_int_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(txchardispmode_reg),
        .R(reset_sync5));
  FDRE \txchardispval_double_reg[0] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(reset_sync5));
  FDRE \txchardispval_double_reg[1] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_double[1]),
        .R(reset_sync5));
  FDRE \txchardispval_int_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispval_reg_reg_0),
        .Q(txchardispval_reg),
        .R(reset_sync5));
  FDRE \txcharisk_double_reg[0] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(reset_sync5));
  FDRE \txcharisk_double_reg[1] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(reset_sync5));
  FDRE \txcharisk_int_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_reg),
        .R(reset_sync5));
  FDRE \txdata_double_reg[0] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[10] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_double[10]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[11] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_double[11]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[12] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_double[12]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[13] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_double[13]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[14] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_double[14]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[15] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_double[15]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[1] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[2] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[3] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[4] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[5] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[6] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[7] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[8] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_double[8]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[9] 
       (.C(CLK),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_double[9]),
        .R(reset_sync5));
  FDRE \txdata_int_reg[0] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_reg[0]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_reg[1]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_reg[2]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_reg[3]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_reg[4]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_reg[5]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_reg[6]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_reg[7]),
        .R(reset_sync5));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(reset_sync5));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(gtxe2_i),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(reset_sync5));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TCSZ2Ye5IRfHavlF8Mno1PI9xixWuSiNh3ssU1FQtkjW1fmNtc2c3x12slL242UQayI0rzZTqe6S
edtecLHTOnzxXpCZjjU8NFmgLPerTSDZ1W5YhyIi9j0Ap4YBpvaA1ojM0+r0Cx+dMOXohQGeyljq
+fnTaFTUe2678DxpqHk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NIzZVKMB1/8UX2qb4BB+VXCafEKXsrn7axB1cJDPqDCzSyt/2KG1NEEZTDHZVzIr8Bf9501PyXmL
VowTAAXX/RopKyKOM1xJN/qLtqXxegH2a4dIkUxDIIclIcbv/smna9VCwI7m6JhrnKsNciTTilgR
27S/h6JPpZsZAEmsNxxTC70WQhQSM8TlHJjZg3KDc5KTnvC/mVTk6I05U6x0Bdd1YR9GBvhwRqhP
B1ukL/1JVOwR9Ce9p+EHFE/xyApypCjQPGwq+8IFQgS8wltVZHX6eSMw17Q0wGCY+LHduRTA+abV
LvAR0NPf7PKQUSCECe2mBbLPO7wD4BO5RAkJeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
udw4XxxzcaDNM1qWnRgZ2JEM1MMqnKwKVqha/krU9EyUAsyATjQEMBqjlOHw5QXMU2jjizlL20Nl
h2pF7iKo1S+7TS54Y/UIJANp+Dl46V/qfy6/yBnE4YclHON1k0jRao4C6T951tgXuCAIQEmXbr87
aJfL2dNqORH+TDKUBdc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JFe89rPDaiIUicPDNoXCg8pJUoYRyVDoW/5yE4T0Cp9xDHtuIyKQVbC7jVb92OsgJ5GHDm7DH2D2
rYZKrdCIqPt2jo7DG6bcJuDFcisZb11HLlYWNsK2Vqs9DdsTPViykeE05CD5AgfDxb983x8F1meK
w8zjeGoD44djsaRA+lvP1zLhl24q5LWFJdPSyIT7uWZwhxHqlyJu85ToXLuwZQZO76Mp+1mitxDy
vleizC5rnk/4hqxfEFS21Qi1TwCz5hdU+H3nA3dTe1KRY+obbFP7sRWKfmr9Rcf9enRvbaEbLoJA
9ADkl72jc1Aqlnd+YCGq4EmbElbWLxblpamncA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IV5qOrW4jXfiGt6hz/YcNm+/H3ij0v503CF3Kvut91tUWldzNzyLt4pIZEWEzSmn6RcpcLNN88po
1kt45UdSBz+mL5HDQaw4J+VGD/cCBmW1jnOclCf82kwju1MIDfa2EKicjqaykCUROxV7cwg07FFp
clLfIwd4kxgSWnGzeZi1IGezx7OpBsAkBTz9ha4WttEm0+D29DF9O4GaQl6q8IBeA0QIrO10EESt
slfRi2evxdOeTZBVFoXU91OszneH/prZqyCsHeyvTa8PABTZ+Y4CH6ICZCXRn7QTNJgoYSGABuPs
87saNJgzomjyaO6IzGl1fBgMIsIurKw90DE8Jw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Eek/EeBa5kEiakvxzHC3fZ0NXCsvWnLN8FYKLyImepfBUv2jdVDY2j6Qs928DJaMO8pBuO9SGcu3
47rhcN1DAjZza5Ac83W24fngY1+YWblivVc8AoggXS1t2Y7Dy1vf9+ZxUdOvq63sje+fDJxapZwK
3HQGdtBX86RTaUS5K+HyI1FTmcIhUYmJWmxQjIxLla7FF1QZ4XpTCfqAG5i7ZKlYSoDFb8sjCRG4
XWFuk1dbL2UfZPxXZ7XHIm+03Ck/JsHtsjLCc8oTB/9MLom2HX9SjX8H6tFbEXR1NatCFWQ04JKL
kHSYD/xDlwjhN9CRvowRhNJaYSmKQT646hlNoA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gaID+cgqOdyoJPDKM9JAyimEjoxNakxuNjYf52N14HEyn4NQksF7thq/bXWc82vmfdc8aodx1+ky
i8uuKszW1WwV+apGSqk7YXBCxx3ACfMsPzNzeDQ2HVzGfznpQD80Eu7I7iwtz3k5Mr31iaeM1kQa
oddk6CkVESI8CD21PQHMVeu0LKLZJp8k8NHf3i0UOXsP5o768iecieYQh2VYXZ6HORDDyd+IpDB1
CAFBZctXco8C1w74wCB0LXUSYInc5ythxBURkPPTJ1GBuXpoQGZD2sNiI2Htl0y1toEdfgExWZ+0
+4Docnd9TgOGhAhZzUcj3c+6cQNbgCB847/G6w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tEBTlBoXowC0cOrrCu9pEZ6t9FjMS6GWThbzsXMvR2xb9HBcccdvXT7EfASM09KkNzvlYoyNBWct
0TRl1BNzzlomu3G857U6kezS+CCRF/K2qOhhxHFxEfuM0qblRVdNHoCGGMM4PkE/rt9M7IqYoXQg
WOHI1ydpZZn08aVL9QYJgz6ZuVHNLwSpL6rjFFDXV1cB82gVFBkRP/0NxpGW2WH6YA/MJ0czV0ji
o0umOWluEwUObdytKX1lfuNYimI0ziWrovqq2osL8J7NBKDUl2R6gJ51DObsTBgC8uyUHVibyNHy
nhzTpwcBeeXdtAueCg1BlHDIwglcMUdy0sBZEyHM/CLzpxgr1A+uUcmzlWx1drrc8lRNwGMFDDJQ
9OzoHBABtNt8N3bbO8A+rE9HtsjMVr1TxHhUTxBhWcypwra+xzsGykln/IP3JBwwQR0+d+V8/Vec
5Bh03crJTvJZUbYidozNoaPOfnHi0NxFDNdL7L1i75T+H6bqeE1ADR/4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GM0AtcDH85MjCjnA/pijf0ZCJap8X+OYUX7W1StOwznqG2XPd9DhtvTyqD0c8/7BTdeCzGUK5iqe
QiGwEcy1dCrSVZW0KtjFXllkYV2ai3/Qn7Bgg1YuzxifEFKe6ClTsByfgjqRdyZeNSAldwvx9ZtT
0ZhijV96K37zXwfXFeKDmxOZOV553ovWfXGekaS1EPmSluoDYBMQKc2XV+ZUXR7n5NI/6E3QdK7K
utsZyrFYyJdYW8Po28hQf1nWeQP6+PxQB6wi/P6sUzudntNcQ7uLRr4PTz6twPPqYwUF+7YW8baL
p/2EFPf8y6fBb+DOBCnzmGZvmq+M2qQot14r+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ot2lizvbpt8emXxoZl10oi4H/aTQTzrHDg0mf7DDs3BS7iyFsRmaQCG/BRF/mwjlw+EbST4/x/DJ
d6Hf6LIa6mllnMD6G+uVHQ1z31eASHPw3m+WnPMr/zCNuebPcDitgiXWmq3SAS9byYvxiwcDvjn6
CMh89pvlx8xLiFUoo5j/lAPe4cPBJwSMleQLLB989s6rByi0lVW0QiLTzakaB8DHBMvhIYEfi74m
Lxby6+nYRGrAUKPOemP0Ag/LW83Eup/Wa0jVOtxzlj3foiYhg2mWCt2zyFhgQsDA+oEsDa/KZc0F
OUzOI8vFDrwPmYRwd2ejFI9Nz3/1mb05VQmDRA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OamBwohUIPOIa5bsJvu3upqnGl4f3jNYS35bg4S059C9qVDgQJcw/it81deNA5zFvzX3Cq9CiO9K
zl02VsdpFgNPjSwEO8F47LJZ4fHx99EmESBogsNwUNitzkuYTLCb7F7ZF2WSJExQ0KsYt+TRp2UH
yQEvpM1lHQYUXxzjw08qUI5ssSnOsQFydvP8BwA/6aGrVJ+LuEgPVdMqLBn0EeAmRsynxJ7OhPGV
DlvHQwtVuBrkvjQHED/Ye43ZIeWPm/xOcjNfZjYeOvdEJqTbaviR0Fo1LFx8EX80uvdFeK55ywDN
wzoZ4cVH87f6VwR1xHdo0JpVxrajZpSZ0jPudw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 153488)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
