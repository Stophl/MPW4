// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:31:18 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clock_domain_fifo_sim_netlist.v
// Design      : clock_domain_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "clock_domain_fifo,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
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
