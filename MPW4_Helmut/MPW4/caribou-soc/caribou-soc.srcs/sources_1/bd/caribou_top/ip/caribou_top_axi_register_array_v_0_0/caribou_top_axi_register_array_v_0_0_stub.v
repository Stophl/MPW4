// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:28:20 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode synth_stub
//               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_register_array_v_0_0/caribou_top_axi_register_array_v_0_0_stub.v
// Design      : caribou_top_axi_register_array_v_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_register_array_v1_0_S00_AXI,Vivado 2023.2" *)
module caribou_top_axi_register_array_v_0_0(reg_a_out, reg_a_in, reg_b_out, reg_b_in, 
  reg_c_out, reg_c_in, reg_d_out, reg_d_in, reg_e_out, reg_e_in, reg_f_out, reg_f_in, reg_g_out, 
  reg_g_in, reg_h_out, reg_h_in, S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWADDR, S_AXI_AWPROT, 
  S_AXI_AWVALID, S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WVALID, S_AXI_WREADY, 
  S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY, S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_ARVALID, 
  S_AXI_ARREADY, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="reg_a_out[31:0],reg_a_in[31:0],reg_b_out[31:0],reg_b_in[31:0],reg_c_out[31:0],reg_c_in[31:0],reg_d_out[31:0],reg_d_in[31:0],reg_e_out[31:0],reg_e_in[31:0],reg_f_out[31:0],reg_f_in[31:0],reg_g_out[31:0],reg_g_in[31:0],reg_h_out[31:0],reg_h_in[31:0],S_AXI_ARESETN,S_AXI_AWADDR[4:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[4:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY" */
/* synthesis syn_force_seq_prim="S_AXI_ACLK" */;
  output [31:0]reg_a_out;
  input [31:0]reg_a_in;
  output [31:0]reg_b_out;
  input [31:0]reg_b_in;
  output [31:0]reg_c_out;
  input [31:0]reg_c_in;
  output [31:0]reg_d_out;
  input [31:0]reg_d_in;
  output [31:0]reg_e_out;
  input [31:0]reg_e_in;
  output [31:0]reg_f_out;
  input [31:0]reg_f_in;
  output [31:0]reg_g_out;
  input [31:0]reg_g_in;
  output [31:0]reg_h_out;
  input [31:0]reg_h_in;
  input S_AXI_ACLK /* synthesis syn_isclock = 1 */;
  input S_AXI_ARESETN;
  input [4:0]S_AXI_AWADDR;
  input [2:0]S_AXI_AWPROT;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [4:0]S_AXI_ARADDR;
  input [2:0]S_AXI_ARPROT;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input S_AXI_RREADY;
endmodule
