// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:32:29 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/GBE_rx_fifo/GBE_rx_fifo_sim_netlist.v
// Design      : GBE_rx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GBE_rx_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module GBE_rx_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "6" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "7" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "505" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "504" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "125" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "125" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  GBE_rx_fifo_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54384)
`pragma protect data_block
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
obDiJ8G9
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
