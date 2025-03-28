// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:31:20 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/transmit_fifo_1/transmit_fifo_sim_netlist.v
// Design      : transmit_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "transmit_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module transmit_fifo
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 64000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
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
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
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
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "2kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2036" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2035" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "50" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "64" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  transmit_fifo_fifo_generator_v13_2_9 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61280)
`pragma protect data_block
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
oF0mYOI=
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
