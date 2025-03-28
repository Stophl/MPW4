// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:29:39 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub -rename_top gig_ethernet_pcs_pma_1 -prefix
//               gig_ethernet_pcs_pma_1_ gig_ethernet_pcs_pma_1_stub.v
// Design      : gig_ethernet_pcs_pma_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2" *)
module gig_ethernet_pcs_pma_1(gtrefclk_p, gtrefclk_n, gtrefclk_out, 
  gtrefclk_bufg_out, txp, txn, rxp, rxn, resetdone, userclk_out, userclk2_out, rxuserclk_out, 
  rxuserclk2_out, pma_reset_out, mmcm_locked_out, independent_clock_bufg, gmii_txd, 
  gmii_tx_en, gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, configuration_vector, 
  status_vector, reset, signal_detect, gt0_qplloutclk_out, gt0_qplloutrefclk_out)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk_p,gtrefclk_n,txp,txn,rxp,rxn,resetdone,pma_reset_out,mmcm_locked_out,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],status_vector[15:0],reset,signal_detect,gt0_qplloutrefclk_out" */
/* synthesis syn_force_seq_prim="gtrefclk_out" */
/* synthesis syn_force_seq_prim="gtrefclk_bufg_out" */
/* synthesis syn_force_seq_prim="userclk_out" */
/* synthesis syn_force_seq_prim="userclk2_out" */
/* synthesis syn_force_seq_prim="rxuserclk_out" */
/* synthesis syn_force_seq_prim="rxuserclk2_out" */
/* synthesis syn_force_seq_prim="independent_clock_bufg" */
/* synthesis syn_force_seq_prim="gt0_qplloutclk_out" */;
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out /* synthesis syn_isclock = 1 */;
  output gtrefclk_bufg_out /* synthesis syn_isclock = 1 */;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out /* synthesis syn_isclock = 1 */;
  output userclk2_out /* synthesis syn_isclock = 1 */;
  output rxuserclk_out /* synthesis syn_isclock = 1 */;
  output rxuserclk2_out /* synthesis syn_isclock = 1 */;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg /* synthesis syn_isclock = 1 */;
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
  output gt0_qplloutclk_out /* synthesis syn_isclock = 1 */;
  output gt0_qplloutrefclk_out;
endmodule
