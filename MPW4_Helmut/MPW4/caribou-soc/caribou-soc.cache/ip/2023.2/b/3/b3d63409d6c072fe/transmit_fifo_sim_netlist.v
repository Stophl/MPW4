// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:31:20 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ transmit_fifo_sim_netlist.v
// Design      : transmit_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "transmit_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61440)
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
