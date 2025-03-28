// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:29:39 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ gig_ethernet_pcs_pma_1_sim_netlist.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* EXAMPLE_SIMULATION = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_init
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM gt0_rxresetfsm_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM gt0_txresetfsm_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt gtwizard_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_multi_gt
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing cpll_railing0_i
       (.cpll_pd0_i(cpll_pd0_i),
        .cpllreset_in(cpllreset_in),
        .gt0_cpllreset_t(gt0_cpllreset_t),
        .gtrefclk_bufg(gtrefclk_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD_GT gt0_GTWIZARD_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_RX_STARTUP_FSM
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11 sync_cplllock
       (.\FSM_sequential_rx_state_reg[1] (sync_cplllock_n_0),
        .Q(rx_state[3:1]),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg),
        .rxresetdone_s3(rxresetdone_s3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12 sync_data_valid
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out_0),
        .data_sync_reg1_0(data_sync_reg6));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16 sync_tx_fsm_reset_done_int
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_TX_STARTUP_FSM
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .data_sync_reg1_0(data_sync_reg1_0),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5 sync_cplllock
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6 sync_mmcm_lock_reclocked
       (.SR(sync_mmcm_lock_reclocked_n_0),
        .data_out(mmcm_lock_i),
        .data_sync_reg1_0(data_sync_reg1_1),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(data_out),
        .data_sync_reg6_0(data_sync_reg1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9 sync_tx_fsm_reset_done_int
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_15 gig_ethernet_pcs_pma_1_core
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block sync_block_rx_reset_done
       (.CLK(CLK),
        .data_in(transceiver_inst_n_12),
        .data_out(rx_reset_done_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0 sync_block_tx_reset_done
       (.CLK(CLK),
        .data_in(transceiver_inst_n_11),
        .resetdone(resetdone),
        .resetdone_0(rx_reset_done_i));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver transceiver_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clocking
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_cpll_railing
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_gt_common
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_resets
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_support
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_clocking core_clocking_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_gt_common core_gt_common_i
       (.gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .out(pma_reset_out),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_block pcs_pma_block_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_10
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_11
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_12
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_13
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_14
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_15
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_4
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_5
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_6
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_7
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_8
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_9
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_transceiver
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_GTWIZARD gtwizard_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync reclock_encommaalign
       (.CLK(CLK),
        .enablealign(enablealign),
        .reset_out(encommaalign_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_1 reclock_rxreset
       (.SR(SR),
        .independent_clock_bufg(independent_clock_bufg),
        .reset_out(rxreset_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_sync_2 reclock_txreset
       (.independent_clock_bufg(independent_clock_bufg),
        .reset_out(txreset_int),
        .reset_sync5_0(reset_sync5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_reset_wtd_timer reset_wtd_timer
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_1_sync_block_3 sync_block_data_valid
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 153808)
`pragma protect data_block
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
1lzcjkv7KC8uW4WRFs38kV8JcrHbYQ==
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
