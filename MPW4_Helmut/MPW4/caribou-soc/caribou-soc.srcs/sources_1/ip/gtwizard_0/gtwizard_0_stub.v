// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon Sep 13 14:17:42 2021
// Host        : LAB2steining running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/steining/Desktop/MPW3/caribou-soc/caribou-soc.srcs/sources_1/ip/gtwizard_0/gtwizard_0_stub.v
// Design      : gtwizard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gtwizard_0,gtwizard_v3_6_10,{protocol_file=Start_from_scratch}" *)
module gtwizard_0(SYSCLK_IN, SOFT_RESET_RX_IN, 
  DONT_RESET_ON_DATA_ERROR_IN, GT0_TX_FSM_RESET_DONE_OUT, GT0_RX_FSM_RESET_DONE_OUT, 
  GT0_DATA_VALID_IN, gt0_cpllfbclklost_out, gt0_cplllock_out, gt0_cplllockdetclk_in, 
  gt0_cpllreset_in, gt0_gtrefclk0_in, gt0_gtrefclk1_in, gt0_drpaddr_in, gt0_drpclk_in, 
  gt0_drpdi_in, gt0_drpdo_out, gt0_drpen_in, gt0_drprdy_out, gt0_drpwe_in, 
  gt0_dmonitorout_out, gt0_eyescanreset_in, gt0_rxuserrdy_in, gt0_eyescandataerror_out, 
  gt0_eyescantrigger_in, gt0_rxusrclk_in, gt0_rxusrclk2_in, gt0_rxdata_out, gt0_gtxrxp_in, 
  gt0_gtxrxn_in, gt0_rxbyteisaligned_out, gt0_rxbyterealign_out, gt0_rxcommadet_out, 
  gt0_rxdfelpmreset_in, gt0_rxmonitorout_out, gt0_rxmonitorsel_in, gt0_rxoutclk_out, 
  gt0_rxoutclkfabric_out, gt0_gtrxreset_in, gt0_rxpmareset_in, gt0_rxslide_in, 
  gt0_rxresetdone_out, gt0_gttxreset_in, GT0_QPLLOUTCLK_IN, GT0_QPLLOUTREFCLK_IN)
/* synthesis syn_black_box black_box_pad_pin="SYSCLK_IN,SOFT_RESET_RX_IN,DONT_RESET_ON_DATA_ERROR_IN,GT0_TX_FSM_RESET_DONE_OUT,GT0_RX_FSM_RESET_DONE_OUT,GT0_DATA_VALID_IN,gt0_cpllfbclklost_out,gt0_cplllock_out,gt0_cplllockdetclk_in,gt0_cpllreset_in,gt0_gtrefclk0_in,gt0_gtrefclk1_in,gt0_drpaddr_in[8:0],gt0_drpclk_in,gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_dmonitorout_out[7:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxusrclk_in,gt0_rxusrclk2_in,gt0_rxdata_out[39:0],gt0_gtxrxp_in,gt0_gtxrxn_in,gt0_rxbyteisaligned_out,gt0_rxbyterealign_out,gt0_rxcommadet_out,gt0_rxdfelpmreset_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_rxoutclk_out,gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxpmareset_in,gt0_rxslide_in,gt0_rxresetdone_out,gt0_gttxreset_in,GT0_QPLLOUTCLK_IN,GT0_QPLLOUTREFCLK_IN" */;
  input SYSCLK_IN;
  input SOFT_RESET_RX_IN;
  input DONT_RESET_ON_DATA_ERROR_IN;
  output GT0_TX_FSM_RESET_DONE_OUT;
  output GT0_RX_FSM_RESET_DONE_OUT;
  input GT0_DATA_VALID_IN;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllreset_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  output [7:0]gt0_dmonitorout_out;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  output [39:0]gt0_rxdata_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxslide_in;
  output gt0_rxresetdone_out;
  input gt0_gttxreset_in;
  input GT0_QPLLOUTCLK_IN;
  input GT0_QPLLOUTREFCLK_IN;
endmodule
