// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:32:28 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GBE_rx_fifo_sim_netlist.v
// Design      : GBE_rx_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "GBE_rx_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54480)
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
