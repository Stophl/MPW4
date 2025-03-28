// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Feb 18 14:57:52 2020
// Host        : steining-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/steining/Desktop/MPW2/caribou-soc/caribou-soc.srcs/sources_1/ip/selectio_ADC_H2/selectio_ADC_H2_stub.v
// Design      : selectio_ADC_H2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module selectio_ADC_H2(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, bitslip, clk_in, clk_div_in, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[0:0],data_in_from_pins_n[0:0],data_in_to_device[13:0],bitslip[0:0],clk_in,clk_div_in,io_reset" */;
  input [0:0]data_in_from_pins_p;
  input [0:0]data_in_from_pins_n;
  output [13:0]data_in_to_device;
  input [0:0]bitslip;
  input clk_in;
  input clk_div_in;
  input io_reset;
endmodule
