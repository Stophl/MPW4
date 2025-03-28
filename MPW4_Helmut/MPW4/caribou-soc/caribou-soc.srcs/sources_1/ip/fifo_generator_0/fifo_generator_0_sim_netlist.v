// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:32:15 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [9:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [9:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [9:0]din;
  wire [9:0]dout;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "10" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "10" *) 
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
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1017" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1016" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "125" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "125" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_9 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53360)
`pragma protect data_block
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
8ZjVjxVixEA=
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
