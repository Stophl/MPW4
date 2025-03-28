// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:31:18 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim
//               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/clock_domain_fifo/clock_domain_fifo_sim_netlist.v
// Design      : clock_domain_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "clock_domain_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module clock_domain_fifo
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 32000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
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
  (* C_IMPLEMENTATION_TYPE_AXIS = "11" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "12" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "11" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "12" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "504" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "503" *) 
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
  (* C_RD_FREQ = "50" *) 
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
  (* C_WR_FREQ = "32" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  clock_domain_fifo_fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 52768)
`pragma protect data_block
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
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
