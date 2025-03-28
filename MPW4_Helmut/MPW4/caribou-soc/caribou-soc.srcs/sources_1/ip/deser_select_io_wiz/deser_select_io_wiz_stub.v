// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon Sep 13 14:10:30 2021
// Host        : LAB2steining running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/steining/Desktop/MPW3/caribou-soc/caribou-soc.srcs/sources_1/ip/deser_select_io_wiz/deser_select_io_wiz_stub.v
// Design      : deser_select_io_wiz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module deser_select_io_wiz(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, in_delay_reset, in_delay_data_ce, in_delay_data_inc, in_delay_tap_in, 
  in_delay_tap_out, delay_locked, ref_clock, bitslip, clk_in, clk_div_in, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[0:0],data_in_from_pins_n[0:0],data_in_to_device[9:0],in_delay_reset,in_delay_data_ce[0:0],in_delay_data_inc[0:0],in_delay_tap_in[4:0],in_delay_tap_out[4:0],delay_locked,ref_clock,bitslip[0:0],clk_in,clk_div_in,io_reset" */;
  input [0:0]data_in_from_pins_p;
  input [0:0]data_in_from_pins_n;
  output [9:0]data_in_to_device;
  input in_delay_reset;
  input [0:0]in_delay_data_ce;
  input [0:0]in_delay_data_inc;
  input [4:0]in_delay_tap_in;
  output [4:0]in_delay_tap_out;
  output delay_locked;
  input ref_clock;
  input [0:0]bitslip;
  input clk_in;
  input clk_div_in;
  input io_reset;
endmodule
