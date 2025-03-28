// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:28:20 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_register_array_v_0_0/caribou_top_axi_register_array_v_0_0_sim_netlist.v
// Design      : caribou_top_axi_register_array_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "caribou_top_axi_register_array_v_0_0,axi_register_array_v1_0_S00_AXI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axi_register_array_v1_0_S00_AXI,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module caribou_top_axi_register_array_v_0_0
   (reg_a_out,
    reg_a_in,
    reg_b_out,
    reg_b_in,
    reg_c_out,
    reg_c_in,
    reg_d_out,
    reg_d_in,
    reg_e_out,
    reg_e_in,
    reg_f_out,
    reg_f_in,
    reg_g_out,
    reg_g_in,
    reg_h_out,
    reg_h_in,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN caribou_top_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN caribou_top_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [31:0]reg_a_in;
  wire [31:0]reg_a_out;
  wire [31:0]reg_b_in;
  wire [31:0]reg_b_out;
  wire [31:0]reg_c_in;
  wire [31:0]reg_c_out;
  wire [31:0]reg_d_in;
  wire [31:0]reg_d_out;
  wire [31:0]reg_e_in;
  wire [31:0]reg_e_out;
  wire [31:0]reg_f_in;
  wire [31:0]reg_f_out;
  wire [31:0]reg_g_in;
  wire [31:0]reg_g_out;
  wire [31:0]reg_h_in;
  wire [31:0]reg_h_out;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  caribou_top_axi_register_array_v_0_0_axi_register_array_v1_0_S00_AXI U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .reg_a_in(reg_a_in),
        .reg_a_out(reg_a_out),
        .reg_b_in(reg_b_in),
        .reg_b_out(reg_b_out),
        .reg_c_in(reg_c_in),
        .reg_c_out(reg_c_out),
        .reg_d_in(reg_d_in),
        .reg_d_out(reg_d_out),
        .reg_e_in(reg_e_in),
        .reg_e_out(reg_e_out),
        .reg_f_in(reg_f_in),
        .reg_f_out(reg_f_out),
        .reg_g_in(reg_g_in),
        .reg_g_out(reg_g_out),
        .reg_h_in(reg_h_in),
        .reg_h_out(reg_h_out));
endmodule

(* ORIG_REF_NAME = "axi_register_array_v1_0_S00_AXI" *) 
module caribou_top_axi_register_array_v_0_0_axi_register_array_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    reg_a_out,
    reg_b_out,
    reg_c_out,
    reg_d_out,
    reg_e_out,
    reg_f_out,
    reg_g_out,
    reg_h_out,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    reg_d_in,
    reg_c_in,
    reg_b_in,
    reg_a_in,
    reg_h_in,
    reg_g_in,
    reg_f_in,
    reg_e_in,
    S_AXI_WSTRB,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]reg_a_out;
  output [31:0]reg_b_out;
  output [31:0]reg_c_out;
  output [31:0]reg_d_out;
  output [31:0]reg_e_out;
  output [31:0]reg_f_out;
  output [31:0]reg_g_out;
  output [31:0]reg_h_out;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input S_AXI_ACLK;
  input [2:0]S_AXI_AWADDR;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input [31:0]S_AXI_WDATA;
  input [2:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input [31:0]reg_d_in;
  input [31:0]reg_c_in;
  input [31:0]reg_b_in;
  input [31:0]reg_a_in;
  input [31:0]reg_h_in;
  input [31:0]reg_g_in;
  input [31:0]reg_f_in;
  input [31:0]reg_e_in;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_a_in;
  wire [31:0]reg_a_out;
  wire [31:0]reg_b_in;
  wire [31:0]reg_b_out;
  wire [31:0]reg_c_in;
  wire [31:0]reg_c_out;
  wire [31:0]reg_d_in;
  wire [31:0]reg_d_out;
  wire [31:0]reg_data_out;
  wire [31:0]reg_e_in;
  wire [31:0]reg_e_out;
  wire [31:0]reg_f_in;
  wire [31:0]reg_f_out;
  wire [31:0]reg_g_in;
  wire [31:0]reg_g_out;
  wire [31:0]reg_h_in;
  wire [31:0]reg_h_out;
  wire [2:0]sel0;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .S(\slv_reg0[31]_i_1_n_0 ));
  FDSE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .S(\slv_reg0[31]_i_1_n_0 ));
  FDSE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .S(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[4]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_AWREADY),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(reg_d_in[0]),
        .I1(reg_c_in[0]),
        .I2(sel0[1]),
        .I3(reg_b_in[0]),
        .I4(sel0[0]),
        .I5(reg_a_in[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(reg_h_in[0]),
        .I1(reg_g_in[0]),
        .I2(sel0[1]),
        .I3(reg_f_in[0]),
        .I4(sel0[0]),
        .I5(reg_e_in[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(reg_d_in[10]),
        .I1(reg_c_in[10]),
        .I2(sel0[1]),
        .I3(reg_b_in[10]),
        .I4(sel0[0]),
        .I5(reg_a_in[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(reg_h_in[10]),
        .I1(reg_g_in[10]),
        .I2(sel0[1]),
        .I3(reg_f_in[10]),
        .I4(sel0[0]),
        .I5(reg_e_in[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(reg_d_in[11]),
        .I1(reg_c_in[11]),
        .I2(sel0[1]),
        .I3(reg_b_in[11]),
        .I4(sel0[0]),
        .I5(reg_a_in[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(reg_h_in[11]),
        .I1(reg_g_in[11]),
        .I2(sel0[1]),
        .I3(reg_f_in[11]),
        .I4(sel0[0]),
        .I5(reg_e_in[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(reg_d_in[12]),
        .I1(reg_c_in[12]),
        .I2(sel0[1]),
        .I3(reg_b_in[12]),
        .I4(sel0[0]),
        .I5(reg_a_in[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(reg_h_in[12]),
        .I1(reg_g_in[12]),
        .I2(sel0[1]),
        .I3(reg_f_in[12]),
        .I4(sel0[0]),
        .I5(reg_e_in[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(reg_d_in[13]),
        .I1(reg_c_in[13]),
        .I2(sel0[1]),
        .I3(reg_b_in[13]),
        .I4(sel0[0]),
        .I5(reg_a_in[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(reg_h_in[13]),
        .I1(reg_g_in[13]),
        .I2(sel0[1]),
        .I3(reg_f_in[13]),
        .I4(sel0[0]),
        .I5(reg_e_in[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(reg_d_in[14]),
        .I1(reg_c_in[14]),
        .I2(sel0[1]),
        .I3(reg_b_in[14]),
        .I4(sel0[0]),
        .I5(reg_a_in[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(reg_h_in[14]),
        .I1(reg_g_in[14]),
        .I2(sel0[1]),
        .I3(reg_f_in[14]),
        .I4(sel0[0]),
        .I5(reg_e_in[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(reg_d_in[15]),
        .I1(reg_c_in[15]),
        .I2(sel0[1]),
        .I3(reg_b_in[15]),
        .I4(sel0[0]),
        .I5(reg_a_in[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(reg_h_in[15]),
        .I1(reg_g_in[15]),
        .I2(sel0[1]),
        .I3(reg_f_in[15]),
        .I4(sel0[0]),
        .I5(reg_e_in[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(reg_d_in[16]),
        .I1(reg_c_in[16]),
        .I2(sel0[1]),
        .I3(reg_b_in[16]),
        .I4(sel0[0]),
        .I5(reg_a_in[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(reg_h_in[16]),
        .I1(reg_g_in[16]),
        .I2(sel0[1]),
        .I3(reg_f_in[16]),
        .I4(sel0[0]),
        .I5(reg_e_in[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(reg_d_in[17]),
        .I1(reg_c_in[17]),
        .I2(sel0[1]),
        .I3(reg_b_in[17]),
        .I4(sel0[0]),
        .I5(reg_a_in[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(reg_h_in[17]),
        .I1(reg_g_in[17]),
        .I2(sel0[1]),
        .I3(reg_f_in[17]),
        .I4(sel0[0]),
        .I5(reg_e_in[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(reg_d_in[18]),
        .I1(reg_c_in[18]),
        .I2(sel0[1]),
        .I3(reg_b_in[18]),
        .I4(sel0[0]),
        .I5(reg_a_in[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(reg_h_in[18]),
        .I1(reg_g_in[18]),
        .I2(sel0[1]),
        .I3(reg_f_in[18]),
        .I4(sel0[0]),
        .I5(reg_e_in[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(reg_d_in[19]),
        .I1(reg_c_in[19]),
        .I2(sel0[1]),
        .I3(reg_b_in[19]),
        .I4(sel0[0]),
        .I5(reg_a_in[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(reg_h_in[19]),
        .I1(reg_g_in[19]),
        .I2(sel0[1]),
        .I3(reg_f_in[19]),
        .I4(sel0[0]),
        .I5(reg_e_in[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(reg_d_in[1]),
        .I1(reg_c_in[1]),
        .I2(sel0[1]),
        .I3(reg_b_in[1]),
        .I4(sel0[0]),
        .I5(reg_a_in[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(reg_h_in[1]),
        .I1(reg_g_in[1]),
        .I2(sel0[1]),
        .I3(reg_f_in[1]),
        .I4(sel0[0]),
        .I5(reg_e_in[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(reg_d_in[20]),
        .I1(reg_c_in[20]),
        .I2(sel0[1]),
        .I3(reg_b_in[20]),
        .I4(sel0[0]),
        .I5(reg_a_in[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(reg_h_in[20]),
        .I1(reg_g_in[20]),
        .I2(sel0[1]),
        .I3(reg_f_in[20]),
        .I4(sel0[0]),
        .I5(reg_e_in[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(reg_d_in[21]),
        .I1(reg_c_in[21]),
        .I2(sel0[1]),
        .I3(reg_b_in[21]),
        .I4(sel0[0]),
        .I5(reg_a_in[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(reg_h_in[21]),
        .I1(reg_g_in[21]),
        .I2(sel0[1]),
        .I3(reg_f_in[21]),
        .I4(sel0[0]),
        .I5(reg_e_in[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(reg_d_in[22]),
        .I1(reg_c_in[22]),
        .I2(sel0[1]),
        .I3(reg_b_in[22]),
        .I4(sel0[0]),
        .I5(reg_a_in[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(reg_h_in[22]),
        .I1(reg_g_in[22]),
        .I2(sel0[1]),
        .I3(reg_f_in[22]),
        .I4(sel0[0]),
        .I5(reg_e_in[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(reg_d_in[23]),
        .I1(reg_c_in[23]),
        .I2(sel0[1]),
        .I3(reg_b_in[23]),
        .I4(sel0[0]),
        .I5(reg_a_in[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(reg_h_in[23]),
        .I1(reg_g_in[23]),
        .I2(sel0[1]),
        .I3(reg_f_in[23]),
        .I4(sel0[0]),
        .I5(reg_e_in[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(reg_d_in[24]),
        .I1(reg_c_in[24]),
        .I2(sel0[1]),
        .I3(reg_b_in[24]),
        .I4(sel0[0]),
        .I5(reg_a_in[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(reg_h_in[24]),
        .I1(reg_g_in[24]),
        .I2(sel0[1]),
        .I3(reg_f_in[24]),
        .I4(sel0[0]),
        .I5(reg_e_in[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(reg_d_in[25]),
        .I1(reg_c_in[25]),
        .I2(sel0[1]),
        .I3(reg_b_in[25]),
        .I4(sel0[0]),
        .I5(reg_a_in[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(reg_h_in[25]),
        .I1(reg_g_in[25]),
        .I2(sel0[1]),
        .I3(reg_f_in[25]),
        .I4(sel0[0]),
        .I5(reg_e_in[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(reg_d_in[26]),
        .I1(reg_c_in[26]),
        .I2(sel0[1]),
        .I3(reg_b_in[26]),
        .I4(sel0[0]),
        .I5(reg_a_in[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(reg_h_in[26]),
        .I1(reg_g_in[26]),
        .I2(sel0[1]),
        .I3(reg_f_in[26]),
        .I4(sel0[0]),
        .I5(reg_e_in[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(reg_d_in[27]),
        .I1(reg_c_in[27]),
        .I2(sel0[1]),
        .I3(reg_b_in[27]),
        .I4(sel0[0]),
        .I5(reg_a_in[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(reg_h_in[27]),
        .I1(reg_g_in[27]),
        .I2(sel0[1]),
        .I3(reg_f_in[27]),
        .I4(sel0[0]),
        .I5(reg_e_in[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(reg_d_in[28]),
        .I1(reg_c_in[28]),
        .I2(sel0[1]),
        .I3(reg_b_in[28]),
        .I4(sel0[0]),
        .I5(reg_a_in[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(reg_h_in[28]),
        .I1(reg_g_in[28]),
        .I2(sel0[1]),
        .I3(reg_f_in[28]),
        .I4(sel0[0]),
        .I5(reg_e_in[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(reg_d_in[29]),
        .I1(reg_c_in[29]),
        .I2(sel0[1]),
        .I3(reg_b_in[29]),
        .I4(sel0[0]),
        .I5(reg_a_in[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(reg_h_in[29]),
        .I1(reg_g_in[29]),
        .I2(sel0[1]),
        .I3(reg_f_in[29]),
        .I4(sel0[0]),
        .I5(reg_e_in[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(reg_d_in[2]),
        .I1(reg_c_in[2]),
        .I2(sel0[1]),
        .I3(reg_b_in[2]),
        .I4(sel0[0]),
        .I5(reg_a_in[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(reg_h_in[2]),
        .I1(reg_g_in[2]),
        .I2(sel0[1]),
        .I3(reg_f_in[2]),
        .I4(sel0[0]),
        .I5(reg_e_in[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(reg_d_in[30]),
        .I1(reg_c_in[30]),
        .I2(sel0[1]),
        .I3(reg_b_in[30]),
        .I4(sel0[0]),
        .I5(reg_a_in[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(reg_h_in[30]),
        .I1(reg_g_in[30]),
        .I2(sel0[1]),
        .I3(reg_f_in[30]),
        .I4(sel0[0]),
        .I5(reg_e_in[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(reg_d_in[31]),
        .I1(reg_c_in[31]),
        .I2(sel0[1]),
        .I3(reg_b_in[31]),
        .I4(sel0[0]),
        .I5(reg_a_in[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(reg_h_in[31]),
        .I1(reg_g_in[31]),
        .I2(sel0[1]),
        .I3(reg_f_in[31]),
        .I4(sel0[0]),
        .I5(reg_e_in[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(reg_d_in[3]),
        .I1(reg_c_in[3]),
        .I2(sel0[1]),
        .I3(reg_b_in[3]),
        .I4(sel0[0]),
        .I5(reg_a_in[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(reg_h_in[3]),
        .I1(reg_g_in[3]),
        .I2(sel0[1]),
        .I3(reg_f_in[3]),
        .I4(sel0[0]),
        .I5(reg_e_in[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(reg_d_in[4]),
        .I1(reg_c_in[4]),
        .I2(sel0[1]),
        .I3(reg_b_in[4]),
        .I4(sel0[0]),
        .I5(reg_a_in[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(reg_h_in[4]),
        .I1(reg_g_in[4]),
        .I2(sel0[1]),
        .I3(reg_f_in[4]),
        .I4(sel0[0]),
        .I5(reg_e_in[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(reg_d_in[5]),
        .I1(reg_c_in[5]),
        .I2(sel0[1]),
        .I3(reg_b_in[5]),
        .I4(sel0[0]),
        .I5(reg_a_in[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(reg_h_in[5]),
        .I1(reg_g_in[5]),
        .I2(sel0[1]),
        .I3(reg_f_in[5]),
        .I4(sel0[0]),
        .I5(reg_e_in[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(reg_d_in[6]),
        .I1(reg_c_in[6]),
        .I2(sel0[1]),
        .I3(reg_b_in[6]),
        .I4(sel0[0]),
        .I5(reg_a_in[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(reg_h_in[6]),
        .I1(reg_g_in[6]),
        .I2(sel0[1]),
        .I3(reg_f_in[6]),
        .I4(sel0[0]),
        .I5(reg_e_in[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(reg_d_in[7]),
        .I1(reg_c_in[7]),
        .I2(sel0[1]),
        .I3(reg_b_in[7]),
        .I4(sel0[0]),
        .I5(reg_a_in[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(reg_h_in[7]),
        .I1(reg_g_in[7]),
        .I2(sel0[1]),
        .I3(reg_f_in[7]),
        .I4(sel0[0]),
        .I5(reg_e_in[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(reg_d_in[8]),
        .I1(reg_c_in[8]),
        .I2(sel0[1]),
        .I3(reg_b_in[8]),
        .I4(sel0[0]),
        .I5(reg_a_in[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(reg_h_in[8]),
        .I1(reg_g_in[8]),
        .I2(sel0[1]),
        .I3(reg_f_in[8]),
        .I4(sel0[0]),
        .I5(reg_e_in[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(reg_d_in[9]),
        .I1(reg_c_in[9]),
        .I2(sel0[1]),
        .I3(reg_b_in[9]),
        .I4(sel0[0]),
        .I5(reg_a_in[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(reg_h_in[9]),
        .I1(reg_g_in[9]),
        .I2(sel0[1]),
        .I3(reg_f_in[9]),
        .I4(sel0[0]),
        .I5(reg_e_in[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[2]),
        .O(p_1_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[31]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_2 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_3 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .O(slv_reg_wren__2));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[0]),
        .Q(reg_a_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[10]),
        .Q(reg_a_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[11]),
        .Q(reg_a_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[12]),
        .Q(reg_a_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[13]),
        .Q(reg_a_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[14]),
        .Q(reg_a_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[15]),
        .Q(reg_a_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[16]),
        .Q(reg_a_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[17]),
        .Q(reg_a_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[18]),
        .Q(reg_a_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[19]),
        .Q(reg_a_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[1]),
        .Q(reg_a_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[20]),
        .Q(reg_a_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[21]),
        .Q(reg_a_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[22]),
        .Q(reg_a_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[23]),
        .Q(reg_a_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[24]),
        .Q(reg_a_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[25]),
        .Q(reg_a_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[26]),
        .Q(reg_a_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[27]),
        .Q(reg_a_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[28]),
        .Q(reg_a_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[29]),
        .Q(reg_a_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[2]),
        .Q(reg_a_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[30]),
        .Q(reg_a_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[31]),
        .Q(reg_a_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[3]),
        .Q(reg_a_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[4]),
        .Q(reg_a_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[5]),
        .Q(reg_a_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[6]),
        .Q(reg_a_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[7]),
        .Q(reg_a_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[8]),
        .Q(reg_a_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[9]),
        .Q(reg_a_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_b_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_b_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_b_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_b_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_b_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_b_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_b_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_b_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_b_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_b_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_b_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_b_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_b_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_b_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_b_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_b_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_b_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_b_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_b_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_b_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_b_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_b_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_b_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_b_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_b_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_b_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_b_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_b_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_b_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_b_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_b_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_b_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(S_AXI_WSTRB[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_c_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_c_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_c_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_c_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_c_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_c_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_c_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_c_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_c_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_c_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_c_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_c_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_c_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_c_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_c_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_c_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_c_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_c_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_c_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_c_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_c_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_c_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_c_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_c_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_c_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_c_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_c_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_c_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_c_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_c_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_c_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_c_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_WSTRB[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_WSTRB[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_WSTRB[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(S_AXI_WSTRB[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_d_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_d_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_d_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_d_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_d_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_d_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_d_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_d_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_d_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_d_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_d_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_d_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_d_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_d_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_d_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_d_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_d_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_d_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_d_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_d_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_d_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_d_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_d_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_d_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_d_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_d_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_d_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_d_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_d_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_d_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_d_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_d_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_e_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_e_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_e_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_e_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_e_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_e_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_e_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_e_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_e_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_e_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_e_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_e_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_e_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_e_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_e_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_e_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_e_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_e_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_e_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_e_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_e_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_e_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_e_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_e_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_e_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_e_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_e_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_e_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_e_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_e_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_e_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg4_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_e_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(S_AXI_WSTRB[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_f_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_f_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_f_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_f_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_f_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_f_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_f_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_f_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_f_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_f_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_f_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_f_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_f_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_f_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_f_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_f_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_f_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_f_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_f_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_f_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_f_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_f_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_f_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_f_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_f_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_f_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_f_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_f_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_f_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_f_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_f_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg5_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_f_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(S_AXI_WSTRB[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_g_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_g_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_g_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_g_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_g_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_g_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_g_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_g_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_g_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_g_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_g_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_g_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_g_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_g_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_g_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_g_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_g_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_g_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_g_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_g_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_g_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_g_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_g_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_g_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_g_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_g_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_g_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_g_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_g_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_g_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_g_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg6_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_g_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(S_AXI_WSTRB[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(reg_h_out[0]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(reg_h_out[10]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(reg_h_out[11]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(reg_h_out[12]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(reg_h_out[13]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(reg_h_out[14]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(reg_h_out[15]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(reg_h_out[16]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(reg_h_out[17]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(reg_h_out[18]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(reg_h_out[19]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(reg_h_out[1]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(reg_h_out[20]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(reg_h_out[21]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(reg_h_out[22]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(reg_h_out[23]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(reg_h_out[24]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(reg_h_out[25]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(reg_h_out[26]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(reg_h_out[27]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(reg_h_out[28]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(reg_h_out[29]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(reg_h_out[2]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(reg_h_out[30]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(reg_h_out[31]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(reg_h_out[3]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(reg_h_out[4]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(reg_h_out[5]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(reg_h_out[6]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(reg_h_out[7]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(reg_h_out[8]),
        .R(\slv_reg0[31]_i_1_n_0 ));
  FDRE \slv_reg7_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(reg_h_out[9]),
        .R(\slv_reg0[31]_i_1_n_0 ));
endmodule
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
