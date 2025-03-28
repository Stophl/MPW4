// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 24 09:32:15 2025
// Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53376)
`pragma protect data_block
g844DtHQV1dpC/FyQpagqNcylzNfOIiXaSA6F00A9lZ7fbqTA6rLADndOnyvh1SOJ0eOWnvAITYC
L/ZdYzGJkIGqk07eYFvV1JwGuLTI05w8MwMz4hO0M25Zmx1iFvts5jJbmopxYsUfNhjdrMOp2r93
gp/wk3WnkAzJT7H5tSRg4tbC/PNcQiycqREjlJn+stJj4KbdC9vrjpP/776BvSNsx3h/QwkKVudS
44lA+lKko8eLrNsRfbACgzvuv75kVuq4qAWW3HzTslyndf3sDPqWY9BGQ9fidSTCnnvOrJ3QPYZY
t+Vcb1fGeEC23Xokm1NzH/kdisTqkZws12RZDng4mkxgr0/5oVL3Yar95v9NkMSZ0PgB+WLIvw9C
DHhbGfw/RGfF51rjLBh0uJuzdQ4jcHLz3lW6XwnpvpMdNsjHXCf1C165RChGQcXariDqAQ0mkNxy
xdTymZ8Qqr/J2TDuAi+MVLXynYXMH2NCVZ4BBwIxlinbv4jxRnI2Bi4+ZxxEDYGqEyp8sgl9R+1S
NXnoMrWwMVPY/6Ol1F9PJMfER9UYyZALG9Ws04BGxybT6fY9dWe8THgSZC3gmsq/fhMjlds15rbY
L+JPR4Lwln/IOixgUbPp+2Tq53b1S9lN5bAG8tcVURxZFRtxOj8BolZGfp8gzwrdUbLlpCMShtKq
Q8lfKZ55L2neXepMpWS+KltbNUHWUS1fA7Z6x9C4EGdz4y73yQtr4z2v0GD1dUFRmHDwaSby+7BG
OjWqA9+boqu62GsicpmDFaV7WtdPBLdJZ45+VD94SVA7pjPgyKDC/FGj94A2HMqGl0Vdad2CVwm5
VfRqMn122Em9sMEKwSqSUDHbapgUwdE6xZeNPe2DkB/ecqNENiT6nhLJFGzm243B5y7yrCKKSvN4
asrEtoFc0W9fJbOGHhb9zBdRQOemCKzC+oDu7iDEzv77w/2L0WC482UYe0skSi8q+vQspahkRtf2
svGTB0gHQwixS3q6jnsHwaKLIAfHFtlhDBYkN0zpn6pvVvc9a3C6ovLFATQ+pW/V55Ykxzlp/7y8
g8fAM0mKOzsnRTR8Lueq/i5iYKCOrYdmSPOVUaImGr4864FriHOpB3/OGL9KWm7A3mHy9I4Plrpg
A7aRNZqP/sWyEZmd18z/eRusrSaS15QVnJfTQ/9Z1kczmHf8BgQoTKnYDlqnqocqFgeFtnRQQTj7
uzZ77GYAcC6d95MiGS1vy+q01WAleWcw7pXxe9L9dMfYJ51b1jDb3x7Y0RSVEvLcHrkzETsIx158
4TkeMjjrxCf1nNNFoseP7slg8cpJbMgMkh9EEUqTqZn3u3hypqjo8wP7MeVvE1RALX1Oqn8cAYTJ
UOtUWOZWZAOcdtppi5UnHfRq5W2J54PRoyVmvOjYu9N0KDCpAOlFdNwxRJfg/9GpZ0l4+4xIrJnP
fn8e7ONkUBMQFH4/eEXPBCKBt7e3pcf2RK4dVCCRSuyUV0Xj2yBpU3WiE/nzcqa+9AUFW7+Gf7Dk
K8+UvK5J92f1OpvARtMdIec138EbQxOfsBfbH9JK50HSvmkVt/pjkI5YMkoBoZrNzsqs5dYWPea8
OyTFtNfVfDqCiU2Y0b41TuJaKuwrnIic5gk7YO6BjmlGOGONBUTnTCQXRfHU6Rpsprei4vsr0ED4
Z4nBZufZX3/dPj6dqeoxw946fA5AEkPVRu1p1dxt5TeepYVYoGfAOVoSqy8wvdDDqpR/r5Y9YtiN
jkALwDn3wuPqda4C5dp0rzU8eEi+McsHXJkaroBdJgy9y5l02LsT4e+8YfcDyRhZArQTWZVZVaTT
wKUzfWM1H+rjSTgJBekEwUHJE1wuV0oFKhJi63FsfeVSM+4rFCDAFoqVODcHwtfhL3ezk+Goa5ng
PNc3PQrFHSd31L+f5CTB8nxhPbmcf40w2hq+GCIqsATzLqNCd8IVfqRBRdLfIq881Azyk+aZH0hz
qYGzYdTliMe4C+OJllAmVMLCv9+Lb6XIZk9AjBX38G5sUPDi4k/WkL6co3W/vnB1bYLy9JyhWQc0
wPXJo80pAb1uhgPVxOLOy2tXb81HTT8NX3yzB8GReg66Gw/42L1lO3p9GkReJRiRk3ju+lg3Js+t
eHTRWzFwP2phnda+FmniK0c3GzRKFkhzEDuVj4oqez97oSjGMT1Zj2ZqbckjK4772q49vA6tStN3
vLpC5bznONmZJVmpON03yBa4/AzvSx01Iq62Gmea60bqwwBqMGwVoMBExg1TekMlevtsTpKYsy9b
rEJEUV77B9WrWmqM+B2cCKAvqkJUHwIjsZP0xPMn5ofKVFhQlw2ZtRm8N7KhFiW8L9+DsJnCfJ+w
2OhWQJEcRgcYcGISkaZcgHw9JcncH5JVUsR5bCOIrp6psblfeoCG94uQA3R7zHLWR6XPqttuHLE4
p7OiCTUzY/WSKRtFIpyG+S0m/92j/GrMzSikaeo7F0r6MaVXOQdQ5pbV2HJYf2ORU80qpB/gTATT
4BCX9wx0KFCVsjOvlbMKa2ZB1kDkQ40yKKBq9Qn5KzftVJBbxkbvn69adV668rwbsQUOJlO6MceI
iD1vlZLn7NCXEwcR+UTxXPB4levZBgWUTTbOZ/nkzuwvG9pmQmojlyzACwKRy/rEASVd3sd5hKuy
CBSR754OSrPploJ4UQYt0GGHB4wFSXsMzb7w/UmdYz6bwT2hRxC4DJF1eYh0O6yqRJii+m4n7S10
BB7ddDZPyPh0NHdN1n8p8+Z1S59235+rLjmFA54Gek/Sz+tYSD1F+JhzmPlfxYf5SNCfvgB2yXqt
pVk/u/iEovplA6aBBDrqzxJPmfiN3g+ohIsR5BpHm4P+rJJ6wWOQO4Jy0vZQ7AebKpem/B5SxugD
VpNfyJCV5DBEc8is1D2NjphuKNyxadGWLxGEA3FLSyTRDjlSA7Y6ChuDtQmrNob1PaAhRHlAtuJI
I5l0zyONcWT2ib6cCR4oqygcIsEDt0b6/ZzPOxe/ceN+W9vy4TEjJxSYxJUD4/70Zm+6Z/7Nta8r
MnIIqPE5Y7kh6ucCOu8VGWynelcNIHg8fFeaLpl9cuwASiCor22NHQUuBXQcNWVNucjoyjT+c9JE
jNWBVxKRZpiBgjwZTFGRglu8TP8Sy2xXKNSEAn9hRgM7Wf33RevZ8t2iAwoaXFreZjDXs2LTDcMR
XOrNdHnHrn2xpnSStpWAuz22OI385L8K0iwIe5CMwowCBTUKMQo+DO0QJXuO4eEH5f6Tu7bPmZO1
QZz1fE/HZAOWvfY+T7E+cw7Dv+AH2mxCneO+BRLwARliGB8nZvCd+GRJ0GW8Z7LGt8O8cMTnV31q
OFDDyIxvp95IVU1lCr+14GbZEO2o7CVTWhXuZYE75YNjJ5eejCWdEgeKFWRGYDRfPiWRAUcJUCHh
0c7C7PQ/Y8CpgwZzT1JERR6kJVEhd0X0bR6sGVL7OHggc6SAQ/ewa9iy7BndQGpsTXbzeEh0GkE2
z0KVrw15vLxS6Wl2ujgPFJ7acGW0Kc1o9smz45FzDezTm5xJObY8GG5j+iGcJz6bMm48ReQ0U3QT
de4nRi4sqIe/i/8SzAZz9IqRlYjHXITMxox8btVHiqrUBGIqlqWwVX1GuQ6X4EUVyVFhu+sBt4rx
+/lftIZwjbw0PvpwP9AP/d2kkkLh60uQuwfM9EP4efNszed/Ey5KN4+3UzF87KoHi0i0xgyXQDyN
GaIKXVF9H7IkaZgj8DoSH/UdhNmyyB2sWNZpAncaKaavTHCV3QpL+VLY8Qcu3QnyLlgOnaWS3HdN
2ZBuO7hQW5h5MyB/bxyJioaaAwNU2j6oBnvqZcqxc4hdEJddsmo2TgATI9L1IeyPQBnThzrkTOKG
M1xGH5404HyACrzb3+Vfs9fPL4sjzZn0ghnkGXXsRp007t/zTvVzlLdtvoqTsddXRItJYKJIv01x
UFM8lrW2HfYx2+N2y+LaCrOFfcAub9+7hWRbgLUZG+Tdqi+/I5y9/O9icDFDUV5MCDl3lAO797iT
CouUj8RhrPAsRgNwLd5b+l5BS8eTQClI1pkOWM+zveI/MC229KtX5qydOdQ4FZN3OZhAL4uAsdW9
/0K8EP5EerN6HwlMl6jzyvLLVjiFbn9Xjroz4FU7WaaiXcsnXSnqChmlYtasildfXPVvHTAGYwUn
LvjRnrDy3ZkZJqMqti0dSjHHeUXLqxtS/ymBf/XvHGFssEpLkcJhORmKHnaI8OQB45MVqG8jT/le
6NJz7332A7V2Hs09jdxK/hY8Cy8tZO3A+KMLKSHO9khluWblJ8fby67ngv38G7ekNVM+2eAwhsUT
P/7Ljcb9kHKsUJcDIflyjdzGxiicVXuDN5DO2ScShk5bVqYJKygtyIyPm+0GCPgR6AP5YGETEtqs
++Obe3hDAeKp4KAvm9k8TjmKfK1obscf12zmTlrulHjUehodVMtdi2GWWMm4n0lFYWHtTnQaic0N
MCIQrWf8GTFxajFrz2rE/t6Vt4rhMS4HVrLm2AIYW0rn+hkUNuCi3eHTE9XzJhNe5p77Rlt9yX3k
JpRA1WySSDEzo4GT4sf/Z9MlGUYIp177AJ61FOxolEoQQDC/6EoUn+vOvArKD3ld+ywe6YOSxhqu
J5zm8wkv+B08Iw6xjtEE+QTdg26tIVEM1mHe+KdgfuzTJHeqhHmeD4rXZRE7ydvFLVO0b6XFii2m
fUh0PB04xmoznMi4nBIRBPpcbTEmF4RPxRMifVeDwyjJYatT3pIqjpwpyixrMMMVuEw0m5TkqA6S
q8Ibk29n8LOPCk1+nauLpjP5VP/g/hRPktKtxXtq573swNQMKyiMEDb8rWwSlpXFdVROtap++1Up
WRmic1TKvjR53Z/CpD+bgxtLXaWHwRH73TKUxQCpILfrQrc4TUE4jbMotoDYheZVjBp1MYjFfgMv
d8VLha6sX1VdFyWook+Bi5iudZ0LmEJgthPrhxJ5OKNJmwEDfCtnamaoornYupbT29Q1vIDL76n7
jfidqLRTSfTX8oxIbJlD7Kgii+hoct4BgrxBL3EqsYUtdBalseBbx62p4RTBBhdJ4uSd1hUHoSfD
tjaeq4D/sbyaxLUbIJu0zU9Xz4ORs9WxVTRfaUVij5XoVwgA2yHQl2M6te09faiEr/H0I24aVV5v
rF2wXIiZfwsobMHU/uoZr2HVu3/FPrSB0bflvheknjkNdPF2XA8biX8EomC++Z9dPc6CdrOWQJW3
HAhG8ibevgmGFdOp9woIhHRJrq7lgGWTjwoTD5N4cdoiQqZsGg0RGDs4gusQN6h2vg0C0gBSt2kD
5Bnx/gwPjxTW8pOTKYNoIW4R6RnZ7npzsXU+tz1wjIgyHRhfI2C1Wm/rHSseQw06aSuxFZx3E3Fr
unP2y5Lpauaf50ivOPcZVWZoG22NrqNWFhdxJWIaMJvwa636w3xALNVfRRXp49LQZ9VZpzKuocL7
sJxwZoxI6hO4H7b1o7tg2k2wz0MDjnXp+aHWmsbUg7x+po5JcKvHJzvWSMapzWL54wgdVR7VcekK
wA5SP0yzeScc8qSLzDT8Fh6M0yA4PxxaGEheNC4A3qTtzi3ZIMbP96C16IQSW+XRkfZL/C9JH5UH
7WPmw1wgyz0+icAx/noCZQjOS5Mt4e+RVq0oKJY6kkXGiAPE4p81aGjHSbnKaT0trWXol2j12Sws
APuvwWtP7DRvyDXzq25eh0JIjo3RvmyJ+vCNlpogOyjfnSPdSmO2blc6OCLCuzSJvaOZ5H7DJJYY
OYUiYaeGwP0IT/1kjVbuwwfPm5VkTzBkmoit/tgGG5rQIPkHvYdYnF17oLzMc93t5DVRF1H+t3RZ
z3Tnyx9lEzd9chJgB2624sBKaOh6EwZxS5/X1rQ2Rj5V7I/dKkEIZH+oC/AL+Dqn7cx2rFCLjpGH
b4O8sQl/UjH/YQjLOzWu06Huj9zfm28Fj/33zVHl7yIoQp9zB4dS2ZNFq8zKq83ZYFPdLm6ZA+DB
6+Sk76APVSo/o4diOLcq85qHz8kmnGcrX33Bb1KEOCKgXufmogO1DX8KggnZGPMcS+BCkK8CwNm5
Ledja2uH9SkNSrT5+1wMX5pCF31PYBWc98pBz+w7B4kw4YmO7mdJ/g2w1L6439LPDnyNT2/60mZg
tkRL8zzeAikonZkYUp8UqXiyScwXiNK1MqhuJ7OuTGx4snXpoP8Vg7RedhhJDU/+r6HPY/P3jwOv
hwtFlv/zk1okdlcSDwaI2tPYrWu4aW4y1KQqxtO3071muJ6wEM6Fn7vuOgtu7w3THL6JgZJhju/a
ymVDhTWLf6nqHgQmewxEWdwmvalQHBnyU/h6xbhepWWmt+pN4Zwf5T/xXwe29GOZNiATxNS+cV4p
nSqG2Te8qBInma2IJwIUGXtaDoMtVmjGXhcMEJjm8yVapRKNCqsEb3+c+C1OMsE4qyzWrSRdPo1h
b6wTkNRO30vElyx0iuQ8UE+IqjH9gom5Qtg/Il17As7Zzwn6urulu9sL65ktMaNqCgTHhLW867L1
TuGz+5BnqEHoIdLhYCd/Iu3m9J1A49VAWmUmFJ4xbRTRestGB1ucfMye/FEeKj1RFz2AlGwJ8fEZ
pZM2MgDuZO0br/Xrx/UCttXX+0nz75pBINcGe4GIA0ZiPw4mrWQAoan8JnUpb26WkOlz1XecXPfA
kEePkre3Qh5iSrZbi5ixqmwCIGdEtIMbsabURjThRbRM1A4I7bJoy+j/982VfrmCJowGAR3ekEOg
43t3+LST+DW/E8QEj0N5wzMTCzmHEAieLBe2/OBbZmowvzZBZxdI3cERwEmb+9TzadhBPxv9LuPQ
wMJ6l/ryTewtR9Tyy2XMnMSn3YT2payOWQ8qOHo3IZFir8qEkDoL+E9m+lRkX/CzeP6zMceHHO3s
U64EcWZhxr7RDlrV2vjn22qtCCXOCrGChMOuMEBkyFfOe5EgXYByJhpxB/5vNpIrnphysJxXig7Y
oLwNfk2CcWiOXNbuN+xL1r+RfGGNPt/2ZgCFAMEwkBy9JlqiG/KYfS8kM9VlftddtL725/amNYH8
VGhoC5o2HMoRgnAkmCNlbWyPtmTUIDiz+6TjPzdtNjYWxecwXwQm21U/JpUZk6RqF4UbehGZ8tcL
JnLwwKpyYixEHI5zpnaqpU9SECZXgUw7d0eIEXVQpxveWpJccNHZUTAEOtig3dXfadpPgtZjcwYh
2AlXmdyYMu4hToK8E1dqZPruzaULMrDbyU3c2vhGmqb0esnTPJZTsFgU08UA9Wl5vG4bVlgzcowb
3MX+su95rfX2ytUR9cDo83situShlMD6vxEUBmeu1lBVn+UfUgL8cJ+YmAL+unHEV5+9yTjKs9Eg
nJ3htFa+RbklG6KwFw2nRcHgPCtZhY/RHBQRr9ZRdEF/+ndYyVj2AKus10MT3Pll8p3WGvA86XWu
YZi9GCaVKWtZ+TODH0Y7nibgm5u9eKWtQZvqYu+IRmjiHQkxKpwMm9I2fTwmikQzzE/9ruBPuiWe
RdkFrgMO1UCGfxfYzQyjKH1/L8ONUuWSflbp/B3sUpDQGu9zkr6RhU4Y0r8FpowK5i+oQGLjiefS
Nevxt76F6HM0gydApNdbTdzoYPkOjgvsBcTYZA45hQsT/EzlFVLBpHxo9crPVaMtsky2ez4zP7Il
+AXEcvje8YJS6OwNYNd/gM0t5VuCywrJgPRY+JmwDqXuwvdG5jo+7zZXlFY0ApOSpyMDAL1atafT
a2Wxp+Mwy34wy27e81AeNFzIeGCixhOlTaJzH0M7OL+RJPqN7x8OflLDtopQRUdOGBvJiwRr5Wj+
F4pSDp15v7FHGdnjoyUraCdX5FyEQQLTEjL+4m29uiQrA+UIjcT3ge2HYGLYst9C0kAXorC8hMyk
HKeBnkSrQm43K3SdIMkimRbkuwz8SzB8gYIGX749EVQmeojN7HfTjm/dWHbbOz3moV8hWNr96qv5
q8u0k+NayAkMpAeYaaJbiaHIX3FYX3EkJol0xr7FZ3y0ybQrTWjir7J4Mx99EU0V46FsJqnXDnys
+xp/Ack6Y8R5mw0pcDgziCp1IZjuYYzDuXxEBG4qBd7auuFFNFlHF2t3NhsOziSfKl5Nlrl9c2h8
NPAVstadIyMJHN7mZr0aYNtsDpy2fsU4CoMXlZoQi/5LKdCPk2y6Ti/z1r0HO/gAO4V21C8cnm+9
C9pYXG9BmKmIba5ltkJCkwlo3ZXHpfmoLyr1LZMJhE9C14z4mPtsj7cvRq0mLldS6wvzXs9VE77z
WKCVfCVUVh/LkwIFxyq7CYFkNA0BwBHcjTQ4Qa0iBeYwWRqQFzClK7PyAv+QmkRW0F5muyFNJ8hK
ZJSaGC6GjOiclmverBAm0tnGUg8n5c5gcjldWyC0fCmzr+DmWw1ipGfa7i5zyVqxDL7A0JtZkA14
cVIQHM4UA/6dYP9Ym5IahC6AFbkg5cM+DxdAox14Ib+yAevJuRNDriiE7VNG+rGX742Wf7zgubU7
CdOrdJ0sdGRdJ0tC1De1L0rm7fToumSCx6+MA88yewlHczXItb3WIMgCMQeaeL6mRSjO48IDzy+L
8Wnsz62nOIMjGNJp7FKcna+EtfKhQR0eymhD62pKiR69Gqcov8Du2pN9Bj3y6S2oRRrsTAHbqvSO
oKcOAwNQWGWoRKdZNQCbPS1rntI4dek9kumLQj7BBpiACxfpbbC5vgpBJ4LdCJH911NtJ/oZsOYx
vevXtz20cVpvh6ny5Si69C0WVi6SvabFFfztS8lMz6jlMXvWGwUUAjzxtNh4j6XgVpvPKkFhdh/6
mmQYf4OeCXoj3noEEkyzgpibkoJzAlEmDB3822xtEajRSsj22xvUJJQYGVtkKPJ8jmm6Bi/Sp+aQ
Yv64kaVrCNp4nRWaWQgnwvENhOu5iQJYuUBeys8k5o/pQFd89uqOJINlCYI0eQOKtsxNAvDafuqR
970iP0AvnrL6Cwuwb5YYMqBUwZF0hEOWZHy2wm5sskl/Bd5Bg1R3Fk4qOaUiAbdGFsusjdhuSBxl
Ojd0UwxwzcHBVEhkFR0umjzNc9ARAIHIgi9/ae6IZY0TkQaXo4V6LWhZr2Mt8zNgmaEySmXQza6f
TfffXznNPaR6H1y8EKgq7yn+jfXVQAnpvnEHSCUmw8OWff1E1BD8hjOS1h7HKMGTuEYIFx17rAFb
GqXFinUP7U1vIMF2KpbUtgIBmbMxQoJ8ChBnJiT+dvwfF+iDa7+UqehTcmbS5leHHwb2hVqv9Vof
//VXpEmDxqzOtytTrlBWwbp3IdwrWrFPJJrw7NdHqvG4XFc9d9KYHVigx5Wz0sQCF8m0m6R57Lbl
NDlR1BYrwh0F85dSlbKaVbf/lHlmsOsVhj2jeoPDggR0k+pnFKUTExC7qAYcy0DV6dmfiL7uHRum
EYjzlKvhRjGBw0PX+iOs+Mt3/1y9zbcfzpPOrsU/fBZox6xhOTFtoGzfMGFgawl+dex8FoSewDNI
hZUR3hAoRO7PxnCzGEg+iSouakNwLUI1h7nHSCoTANPn9aM48Yyb40efseSi2LYBayvCTOud7psY
EWS1jpffn1NhxBcyDUvd34Wtebz/YsKkYvJBTym/UsKSmPqBTQ5dgYyWf+hALvXEZZT6OUTjr6Up
zxAb8WjQtcTQq3hBZYfLMtsWmPvrWIJa8WLsazEJFCi6SgDUjFJft9qPXNk2vP14Gns8cOg3egEc
h9+aI/FcC3tNI6oK/loqk3+KkrXh4CGFjF5d63uaKMclHFUckoGypfMEuCyNZvCGNwTznZ1VepEj
AKNxInJHL3TgzI01I9rMcg7wdqpOClqcQUOXBaZXrQAptmnm4m9pwe8isrxdYFhGIcfpOyyV097N
JF2TiP9tvF9bKXsQKeXNCKidqks2lbAoH2qzJlPj1ihIuBw5X9HcaaCiR6obSphgaWQkj03CkX+Q
HgvbH0jzL1XC2aYoS/BXZgdLcBTENUV3x2er6X5EQPeVZWm2vwf7JfhN5RfwQNyIpzj+oKeiijX0
xsUZ5eqL4UEoW4R6Joh/yfSOq6o4iakadj4qfaOAyNOtqyleR2Oas/mO+/reAjEyDYSD5dX6Gvss
5NQCkH54twTQG50Yq1DLIMN845UJnIv8XCxWZ7BrPvOP4obiL6KrjIPROjsjYdiYHZibf9T+LOIn
GMDro2LdtXI6z44s8Jicsjv9ZsE2UZOiUKWqwCtSCfTq1nOEYw4L3rAMQaEkZYLMFsGt1DKH7jTI
ACUbQ3XmZv22y+Ex23ETOFLemUpKVSqDYMnU87RfWz27LbSMHuV2+v19h6NOvh3Rj2RHgeDMPUi8
iacfdGzHWs+ia2Fr5AAny7KkbIpl0I0rujz95p3uH32qhE7nO2nDH1M2kK0wH/oE4Hn4rLxp0rUK
SOlzpLkW8f2rnK3Fp3hpp7XII+vaz2nijUcz1YM6PULgPI+5c4AwMbi+BtvtgyYH6rjkO1L4SGs6
wMlKV2hPh24i5hS1F1NfiIzufrx8KKyqPRwwSgh9+qxlvHqEGqnYOO11qyebazV8uoDAZfiZovKw
Prz9Jt1NpFQUn3tZ2Sx7zWF3wjyuwyGe95ydQNW+2Nd2B1d9H4Wq4IUpuPAWaHH5OfjZNxeu9Bcc
r5Fc7LLs65cyeqgdX3OyM/6cV0Fu3rP4oHRYiDPO9k9sFUJBeCXAaRk2Jd9zYQifO14Jxs5YCRVN
qBuO+KisyDzIdUJUzV0fspzUc6WV6AKE5A5AjIJhGFBJkkBnIA/rWJw8ehSpR8n/DAG/V+cbQuWl
6953S+fLLT4CfeL/+isD8zwcLGtTKw40AtfOkOECix6zLB3UhfdB+PfUwNTr3tghoxObDPrHVXWm
yePUO0/SnKdq1ZM51IZLmfEomlYdcksd1KrUGYqWoYpVQzqO5pKYt/6in+vSkPB+G4c3tmhezy7D
pQmcFls/imgTSNPA7gt3x09++9FS8/qDwNwdvkTRFOE/9JZFFcaUNAihnHjwaOtohQRIX8P7kRjO
7bpgy+byY1t5Mh9JZQL/9WXLhUYO6VocYTaN2USOf8/aBCqwabheZJuOWp5wELANrtVIWwxeXws8
zlwWWpq7JXES4MurhBPCUjzjVpkqTUeViAk6rx5s7xkx81LLI9GLW+LPh+dkBCT0EU9M67WpMx22
nC9MqIK+OfEc3W1JJb99yJ0viGPxCUuZDyffUjaXXeANKaVZbQ0FbXKnAo0XIlxeNz3+bwIPjIdi
sFGz8QYYTKtBS38tNgsy/y1M+R65035kwep7KPj/8heMHDttMxllNq9AW+J2eTLk69Sibgk3W40j
TI8zMDqGvjfkpZl11bHcKo0lS2EJ5poexb4VhriJatIfnt7wSHTpihBC2Aj1QFTMNsdOq3TRmwIc
MbouNXMkgTe4FmviZJW74HBmFfId9E3Y85sl8a6/ixyraum0hezDF9/UXT+fY5blFsEuYkuE0aVG
HdasL2QcZPuCUYs1Hi2E5aOZLWh8dRyRRX/F6q7BDM7xxd7YEZS37GSr3xTM4D/1lYNMWoV12fwv
DoEKQ91x72yvn/bKfYoQBN0URdfHCqQr1EGHY9KFSl0y8eE0fXSOtLkwK2ZztE7Sk9/t7L5dn4H4
gu37MQLpXk9rDbcTqmesoNQkRYhiksFkks6tZWAhI7EwNbhy/dVbAoKquOZAErA9UaXv617Ubs9G
lyjlJVn51S/v88be1gpZ0saP2l3yc5TjNz3UDA3GIT3GVMdYwwqkwwn8LHBcnEzGxD/KNA/Fb9tF
Sj8CrXsTfMsju2HF8NHy/tKL7aUFeR/pS2jtAKtlWlTTR7OwoMhetwq25RHRxiYFpWWyksYsc/Cu
Z4H99JDNih7rCB2aLsxphCKqM9RaJCh+hoT3dIerDvD3y9ol/FoKm3i2sfvApF9WPuTaN03rcpiX
DVMoNS6wGDXpZVI9h/v6mtb9Kar/7vVeALyvg+v+S/uuCJElYwjthWxAOWUwykY5iIE4LiLb8FSy
7sef+UGxcy+t2KeVKvXZYEb1goKUJ79nkri0UNMHIYesMbTmza/9kyTRDLgXSTiJsb8261a+WWip
cpLuR2DunPE90YanjZiCBvIoByQOWm5UwF/GXBDMazDtyI55Wk4YpypuYX2851vcuZUqJIx+of3a
kZUihDCkCXYGzpcgTyRg+ZezBbI36HBtuy5nKcFzPeAAz1gqq7mg0D9GJcjeT32ZcAF3hL+rHjcz
oldYFupSsqul8WFys3Vc4wxujEDmk/9kkFT/4/Yg+WNkYvHXCiUopjbTCgzritDAV4QreG+qZcvz
aHn7GRUrkhBqKIpZWMTvLlC5dJm7018wlHBIN/a1SMsM6vmxnV5/Kk9PA/LvDu29BgBdH6WHx6Vl
89ffI9tPOPmlkClZXRrrRSyFu/fvEHT6B3hIUrFL1rwZf3t1X4KrF+iDFxcd7WLk1WGc8lP7YvbD
Pt4CrGNmy3cXC931lZzYamMjS0pizZwowJG+5bX6Gkl4hVHz2jQd6vPfkZ/ixWWjrQy/ozFGMM+b
10V0nr+5fKqTrw83U3a7rrgBx0yB4ctF8UzO+anbgU3d8Qg/H0H2j4EpO98J4OHvFuj/YZRpeF4y
XOBNMiTRnfUq281LG7rmGsyHQAhGUkmW1HJ+j2TBO0fmvfwN5MhzySH05+DN1ccLguZ5awmJqhPr
1Mq1aG/pCufs0/rvyGmkqdy72ubxex9LOW4cfocv1ghQAVL9PbBUxHYKTnKoliUlD+hW0sR1Pk4b
u08kO8/s73zwbECVgsi214V8IOBUv315Wo4mBysu5GB1Q1sRT10jwnKlt+9QmJ0WWxNhNUhpbFWw
2ZOiMFOo2TChSTlRVgFcq68i4dBa5WgcYJgMlhuYE4iU7rmFikZhRQhuhe8Po+YEGJP10KBJdusp
xX+bTpzk+oBEvgey0UsD4RdIaTK/aoCy1LTDeQZOo94uILx2lM+YfbydjY60BdYxD9Sxz7kEadTJ
M+EWZuw/ANHjmIbgDelOTb8p7d5kaSP2fA1wjm3RdDM6OuQoOMX3v0FH9nn9HFM03FL65dz8fGkO
nitgs9DcmucLPhID3lEuDNzMs0heTLv6eDRjvGru54eo2j8l5OEnE/l1TvMAAopYkKLXbgF5L0Yt
4vkx+7EqZ21eN4/+Pq0Q2TENOKnCI23Iy3vtrSshFB2PNgZdRhZJq3HEMixxLbCBdFG8F1C/mqzL
ZC+Dhb+aXhPqRktJEIF57gEJdM3+NQsq2VxI/61gsgbh4qbli2rDBtYscxhi4yDoiJjVHXy2TN/2
FFBmYKI+eJTbBczmdzzWguCaqoW0ddE6piX1cbxsAStiXMCYCZbjUSa94JtBJnlseqJRmmm32JEO
okWjhhpoog3nnES28vz910gOkxLMoLz0+7intV854GZZoql7O/Qy1vm7V5iQqSa560qlLsvc12Z4
AlUAH/1JOMm91TdKDdTNtHzvpFNWHEV5OGaHvb3iqTs2ftoRFUcA6a2o7qkGe2ftTmk+gqE1tYtk
bFusxExrm9sUPpVs/QMdY+vHRXnGT74p+sIcKsegsqjEyYmunXWvEXFU0ERuMylRvI7oG+H/B0Zb
UBK0cjYdbVBlm8ao6NTpoxWR3BGnYiUwCEDiq54VVTa5e5DOIRiLYuv822pCw5IuPp80xqrAMMpc
F0FbImJ5PLaWDUbUnHlIpRtNw3QsSLhwNoBX9dR8l7FJYD8cRBs6wteLpyRqGmH5h4irUIZtlst0
uNJkNdP7Vql+/kCzm7sQnxhnl9vDFcrzNoWM8nTAIKPMYkC+GunFRyO8kHfZMe67LcdVYzPrG5jZ
3mIFk3E0x/XqU7SwjMdWqdFghb0Avl1rpvuXAkMsA+CQliRjgtO2ytxOcaOR+kjOeYdBunPKuHhN
Tvn3bFyPEfn3g0iPHwu6Qf1sGaP+gddRiuBQwJoQhHVyYhhlp8U7SE2HbED3MZZv5EJJdReH0UwK
DWynCB07lGEw7X5QY9NwUrzkbkARBRqr6vzDG5LTPNIv+pxRFGWOC82YWLrymUDhyY50xLKek1ct
sUBe5F4SOw/OJAlp8jNnBQYMHzqqiZy8667+xPLlD00pQxt1vpCkQwdrL1XqDNvAONg1h6MlMC4K
q03gQNZII1EIfD/Z9hXZngDCllIjOMG5fXF8DM3tdDY3ATOskym97zG5U96fyYDEiW7/xZHpM9na
bDzAmFADdkfGyAiNdOj3LAhmPdnUC3UDYh9pQ96R+n0ZF/cZAOX+B5GzoPfFjGNoAgiZXkaQiBpN
HkQTShmwAuIuv+w07sankQQL5luJsf3fNxvHU6fTofWfgF84JbvCjeV2NxLiAxomTz8O+S/YvZTv
7wr0jEONaG4Jf7cn9qSp0H3ev8NoA06RJFBkF06oAQ/lM/l9o/lSfGlkcH6x+d6avWXp2mQKcsp1
kn5c2F4xvFQ7axjC2o1S2VYOVvnXJCSyQmf0yHccBKltfESdYXG7HKMEhryH/CiheORLPG5mR/7M
LAJ6EP5HncXoc0SSdSPzEMpqwzm0Px13KPkv7hruGPCFVnXVHRpuVv9x03uMy6T73iixo2WI8yZ+
Yb73NScfwpV0aUWwQIkgMs9MOupIlaIg2K5Y/ZTGmEaFCo6dmjjgH41frZYi8XHxYfbzjFtz7ueB
Xr7i8ygAITDPgsT/N/uHX5kmY15HR0k5tGTmqVLX5ANVyb6xZQD7gEsVcIZiF6kRvt1Vpjv/E5aU
1Z4dsp8ZplnW0z0xu7MdeTGQbk3dubf4HztctkKhY8FR5zC8cSKblv1YcFU5VUlBezpEPreqEPik
XHcsfypKiIAfqzBJmQKhkuM02iR9zi1GhVT1aTfcdbbnNBckKjt1WbIIuzsBUpAx2MWXzcYHmV1q
OyssbBYrH/Bof2h4xEEz+2TwIdM4D17QnbP2ZD7vXTH+TBiuGkaQBL46ho1pfIvYLd/QMgKiV6N+
7/jxRvCsRv94k98q7hsgcGKmvWOP+tvo01JiO3QgGStGfS/yGBV/JSc0ttVHoGm/k+CEx53oX7pS
U3pU85CmpDHoDNqdZjNUo1DM6pY9HcU117ySlfeSF5zAxa+afK5nOTyuR9nkWVZgAtM58fTqS4PP
ljfnTjSHBoWweAjKDudPbYZJX5lCtu8QY6DFWzH7egFs7Y3nbFrYFcSBgEa6cAHDNcgUhk7KXoyb
tStAoprthy27xrZzGohCmMALz/JXnnd42/JSOHnz3E225C0WysKKfDuH/HG7BVxBw4t3yEOKDtF9
rEY6aB79U3CB3XSKhskbckJWiX5vxQxuVh9niGLugUcjNynA+Ud4xazr/ok7u2aC6Kq7UkUrH01v
38tGeS03Rd6ti6w/ESgO10d773g8itaw1xhmwd8bK5RXqnG305+a11vO48fYFwahfSluDbxfvIGx
92ShrFx2J6MNHufDkTIYmr/3w3XmnDxA+As0YqVEjNvsym/6+qeTTUJ4kNfvw3hGYmUYEgUMmBZe
/SwWUJeHOvvEkY3XJB6UtXHsbgLNrrj7znRehneOhUK+9RqpR8vSk6WE1KW7WBLs+Etzp7of9xz7
afpnk4b4RCx85GJRIZ5cQO1SL+zJUio9096oUWAYESLfXg6JsWXKRbXHqnq3Iwo2VfO0T9thoDZK
ezTvlmsQN3nnkU78+ThDUsKrv65ayqAjNTG0YpSnuYFrJmjZBEII7FzJw9lb7dIB3Deko90zQdYs
2g5N8Yv3AcIATJLFs/QDqoErnHXMjaQP2SagOcaK5SpZg4cllo4e7ZH1/Af4HOR35HP7Ugs5N0y4
HseJAkxuKt7fDBNDpi1dPboHnZ6OtRFr8sKUnKGKdUriSl4Hg3aGUHNoQpmHpnbM7Fn7TgI3P9Ax
zQfz1zLP6xClOHmNTYn0jX3nJDE74nToYmkqhu7TEqLOWTQ7wCWsCwj3f4S8snhFtA9/cQAes5KX
2rKYOFNNk2gnxG8pcwXepGo3vFLxg7eeDpqtwkdPrNXuLe49LSCfGZRP3O2di8t56GoZcvOePxGS
hPI/ENdzBvbq12xKcypzXq69rcSm3p4lPjHkR6vRE/uI9b5mLiPTXK7B4ZWERvF/T0ByLqh6CXOY
X61ZUdjwK+iOsIL5KWkmAc8Y/X1wktfg9IaFPVkBwiiIGLFQoQD6l9gagCqPfaerr+LDYKbuHmY8
D/0FUW88kPTDzJz6BclfrlsjmwQRlWs+ltvnJtxJfCFNpwhnleagpplQrxwdd5RaLRupKVMYyf7a
gh/c18hAXiNAobhJDDoOE9/tydC4QtCOmz3YZHsS9SoJXii8bW22RIi6/GKJPaEkGDRq5yvKzvla
8oQUkNB0EQoAcjPh7Gf1gGV789hm8Y9IMTrLw1E4MXYlYsArkN4XzUdqrsRPiCElD+k5u8uxkDXt
iKZwuxfAwY9LQJe0ZGLC0mpuM0x+lbnGRyqiDjBDeR0+SFnp3WWRPPjuLERdX8IOMFa5bOpwsnLM
jIzwVruMu9yrTMJYT1TdOrgBoNI6djOa7bU1Ce9po/Sb/pxH/D+V6YNd79GHUsZ+IncNdbt18bUP
K8mpqP9payZbU9AbLgv9fFzBkRz+7kCgQr+sE0KuyJh+1K2anl+D+gaVGKMI5MxgdG+b6uGJtU4E
exvMTgLdxK/AeYuCwAYKBKRstjdunfGa1a9XHwIEXSPtZ3W1BRk1N+ygHpVzbyres7zMRvAFVQk0
jQDUoSZKHZSe5G5DPj904fZu9NszZm2+Z3oSykd6kPFJk9ClfUruBUizc9EU5XJTrWmIZkZreU0O
b2ekfrevTl0xvRO9K6MHExHll9N/7n4JPS93ZXAriVYCjQ+TPSbqfKm792bMtZmWZjUosVL6LAOB
Z+7NSjd0McxwMlbQW3Uax1wV56ur5C4DEhQH7VE3dChJV2jB6zkweAH/+D/YEpVetDqij744X1K2
xHDZZR+eT6+enI7lpUPIv34ruGhJPa6RPAL7qnzRZy5K0uf6GKOEMcRsLx5ViU4tfdq3XCG30Zuv
+TWTWPeX6Emhbpi16kcpTjiGkYc4mtPD4rQPNjksBH98R8Z+QKJKZYEcn4Kmk6b6yRVVjZouFt7e
Ne82SaWs1+MY6XYN8TXLwZqt6Z42OPXDAeTdyJrlKfN338gSx/xFKFunm/jZ3wLaBFWxZ6mffbgm
A68DH0gVzR4sZu9pPVaoLY5ELvVpsEvcNmeSyqge9wyRv+hVjAzlivzD2GjIjsYlFs28QCzDVXMb
XriR0Ig8FYFdfjGMwfhBtapUMOhbtKTjMrff4BJ8EW4sQIxcIrun7cALrx0bTQKCYdQJmV/trL/4
QGagzJQFHtQnI2XaNw67dyoLBauodV7F5gHOeHfKKyj6fCG1KXv+dgAhskrxyV+mwq+EC+m5q8fu
JV6MJe/xmVmnn1U0me3kNCW9VtOct4F529L+YTlTloTrwxBKsJmcKvGVafMTxuCGEGAo2VUhpt71
NUhPuWCag/PITiu8ta/L9aMKFwisdUPArADEIVlHBpLMCzCH9lQnzhKQ7MA2AVeXD5REokoWdN4L
641vl+NXx0yJw8raACio0xkggd0/4YgLI8zj4KHTa+i0krStm9Wh+y2Nsvti6Fv+WkKAJw2BaSw+
a3BBsumIjktNvkLvN0h6+UbfLem+SM69zagupMCGQZYRmN0BriA/0QNPYRxL8XeXAQqIavoDHKL4
FZT+sDjN3BK+jtl624Y2geRPtiq1Gfy+xS+dtUWcDHVjIkhO3xT3YFFslHWVL5U3Z6f1BWFT2WxA
T0/gKZPWUWKMNiUy659jXmhlT5CR3FDdJ5cDZ5nQKTEi7unehE4fPkFMKjUo4d2egJSK0rQuPG1/
WP6P5ncM7cI/ydRXoyLzKH2ev2dRdnmtxZRXgX+9B9ZHqJcLgTaE5sz9m+izSdInSJpsFfDQFmR3
R32eBBBn9fRUBt+eoA6k7oQVJ+sX7OaQ/H16coGm+C/yfQzkLb/hLiiz8E3fsiFHGUwabVKHuJgX
c2Xz+KqSR8uoBzf9H7n5Al6/lrl90rxMgkiha8TTznQE5t2LcknrB1RtICD4t1ioayA2PjZ/vGeY
++GbNB2Hj27ogUOMGsngOQnhTABZAyaN7l3Q1cUuoCcmhP9sjPiXe5Eo32xqCek4Lnd7UmjVpiCc
tB+fRiIQ5Q8qGuTlMflr7rT7hdA3YmSWhm0hTEqMxU+vum5+qUsujlG3/cRidF8ptSuqd0MEObXe
x2/FX76GAlxe5+Q0Wv9WSQKUlMSWMVNgvYVcvsX29LZ2cDktMy1ZhoB0X+rNjsaHGTsHBY74ScXV
k3/EARVpIkLLCJt5gZENrEGdsxPhthpJhiSQxVHD+faUJRy/w1AHZVt7fiLDvCln/RwF1NN/27i9
ANqhqkrLgzjGCSV9cfF/cGuqW9wltzSotckuqwKpZrRJ2eVdLT6gd6uHzuXvCkWH5VL0er02Yc2s
EYEiBzy/+WVjkgV4VKoEeS9Dmx8y53GCdxpENApUrJ8FNadK7L9Fu6QgII/ns9u4uUR3Qkcrw6sc
P2dIdCv5WW+bzw2E5IgW6M/J6GyRdIvLO0ZrmW/+JBKtOYOy7eV1EZ3TLiv2Zcb9shWdokdSMmXC
ZDiMSFO9strMawsEgSxc+MDhcv4tkHX5FbAz+6JLr3wwdukJTxwRjlr4+Yu4w4XVEuwdcZUBMOMF
eLirQMed4MFDoK27TlImzYFfnX0DZ1cMJaoinhQDHdi5Y9t1P8nEhQWLD4d9P2jfbmFAgpkolRvd
qycYqC3FuHf2EGlKFEB6OvgnH9ACm/ZGJBR+dpkaUJZm9aVp6QLawU47j7jiJsSyU/t87FsW9XZY
U4l0+pbSpDIur9oTZyE7wHVKUDZlQw8EhVvSXAgANR3cnLBDjv9nscWGMutJPfgh9leTWIJuPrqf
RvwgwYRtRGPF3nD6lhT2aC8kpKspfrU+9w2nqCoGrSQ6qMD/Vzl964Ia2SCzodBNVlk37ijxiQFv
xcB9yXi8gKYE5ksMoPL/btoPJHxQUA/aEsUpIJoN/b/FpL9XTfqJP2zmZMNpJjSpZ5a5RGHZ22FL
QFSOLqHsWdWkSRLC5vISUizZ6ZPu7sVkp0QS6to7jVRRUe7jnwodIv3cF8svbeaPG1vG1A7I7ntz
IcnCXs+cPzNYowWsthRcSULnYj2CKxVng65mVGKj+McnwS4fW8NgmC26gD+rX6o1ij9Oo2wW8vTY
RiDozFoLK9ZbGXOB0gZyAVfXKRIl0/0IL7GQSjfbSsvsw4N4JM7UfGvbzr6hal33vKzMdjXJ9wTV
60+Q60KMLBKHxo9tulwgz0fwMmdgImne3B5kCOWOSq5QWK+vDT6c1fcciJQ6dVamk6NI6jOyXjtY
elfkaXgxaKrmbZnHRixeEEp53Kvj6chC9Q6/SXwJUyTUhrEoL//hkboZF1iamjMFNF4JMlChXM7J
fg/yQl2bXqWAtkShK+7kB00T/EL50c3HPQmNC2NPT7VcA5eWvVihoYvqgb1wLabPrdr3Z2YIw3ET
dNJ3nXtyEibBwKizhLjVFzSTGCA1UPnGt59Ib9ykf7AJmSNdGprwopQwaLdBrLbTd9nh3509ydYA
2kH2dVK4AlfQHPWAmGMVBvJu4Wn6Z2dCs8wvz5QT89OF5MJ6kace2GgyCcHXI58VCQfnsHMC8Grs
UFBeXsfdDDi3b+nhqGGE6wf3gfY1Sw5KFRpnyXQXUoDDkm3lIFAs9oFQvIKzJsysb64KS4ThxOsA
UyUgqgS0m6WXtj4DxdyJj6FAHTZrVhnH60nklVvUf7MKhGiP89Wr+cP48BFnMD3GaX5bwqzwNTjP
QFWS0lTKHXC/kJwzCv62hembROYECNtSjHyFnla58ItH4FtBdKf99QqqQFSObWaCY+Jvt0+yosj6
4w1K/0K3fjshhGdjHJM4XuII3gUtIFkfvtU1QOk5XKHCw6y4nKhv3oYasNaYGRAFoJ3+artSUffs
JgHzgBYnjGu8VMJ4wSbgh51P4NTEPjOJ+MbIcLhZ8fbsnZmDlnsmrju0/SQyXXb7MtdYTXA3S1lG
UCcyHIjpDfY+e7VI0sgqVNS6tnjjA6hI4A3Tk/u/LcEXsWGNmaeetiMXNwfKuRRceC2yMpcNsUXd
8gfmPY6lGrOZjnt14uXHZRCaQdlpsPzseuquseNVYQEWffaZp8FruH2CMEyVsvSjfB457tK/AKbr
tA9gOd4iHiXWAHecec20IGh3i14jzsroIDQRys3/PSNm5AK70l9N84c5ZkHM4xOOAO2FFbpvrCQc
0BB0w2KW+tw49/90f+OHxi0H1Ar9UcTuE6NtSf8vuUHAvzVvNTQ84/fQHM/Jf6ZeizhRWwT5VFj6
xFi+iuXjs4CZnU5ykcvM4iBXPaUgEtmT7nqmEn4gmCXzr9O1CNEuV+486myxjVPF82bwUEOYdrvw
cxWrR8JMyxy4X8+SM7Cy55drbPDA7GCbcDF/lHpISq/1p+xAY6e+ATdo+Xtq6On8uu0kI521AR9Z
r/n0LH+uDR47AR3oID/szKo5YSfa9Ql8VPFVz24FjJh3XxJVfd0nEzESMuCMu4IpiBCxhqhiq6jA
0CAJSMBRGZ2E2A68qJwripi7RNG0c/jyFmz+yBT5wkubhWlG7pOdgaNeqOLJJh2Q7NQu/1Y8Xqh2
IvT7Ecj2GI0QbbSKTnG/ln1rqNkE9bvc4H5dKnITfKokNfbms8ENYiRkL5Ud3pgUOX0VR/YZDD01
4FlOu3BxjVmflM4/Ep7UA3Iu865GBTj9PO2NTRizx7CJCCZBVOwWqP2pS+dTbdZlMUcubNxwHwp1
ilGMk2ZyS5KPZeisCQE+1PQyd+TPcbqH+StKVqrVhw1MndlDRZesi37YjiuFumKBK/IEv+qIb7mq
JQAwIkbLlgsiTjz3MAEDsjmuq+thFPtLw4TOVPxZm8Xhuai6c1XcMvQ1K8bi95qjf5efi2wl4tlV
2Nd5l60tS2su0lnDpzzTBiAiZJ7UnNMA5EyKUww901f6EoocAjpy9K6B0lSN53aqv90X8p/Hd6AH
Jpr3lv0Uj9cl76aJnEhRUMBxKAYQDFixkzHTRaG71Iikupu5ffek3SfBLKCXE7ZBoliT//2hiIho
yf5IzgFO8K7U37U3gPSLOH/GOwUx/kCBZZCiMWsnVg3zClQfagg+in/SEZ418aI1AsW6xU/Czqsn
TZs2f8ceWfzePMceuVdXmee/EqK419HGIgt0L2eTA+mrU6LIGhYq+08eV9AV8ysXDTvxg75rrXIt
IlbRrYlyt2Dm4RPHhhRDSrxKHwBcqtS2JDqW2zcBFGVu9udwn6hQGN6Z7RtTNbbrr+5VF4MZq4V3
Yn/bE9r/XpqMR/mgz9aej5UcY8djsl0CnQNppgoJ/7qFJvokFTiWsuYJ2KXfNC1zg/kJbyjpxSnM
3j6Gxjn7wSnsOj9Fe0DNl4B2joRWlXBQlIQsRvbij5t18evrr0KmWo+XyuNfzWNuL5aWb5QCGBKh
LbK2uGOEmeH3lKsfwaTatjk3M80yXhwCj0Bwyh73KhyhgkOd77mVYls+mTBkr7zvh/2ksGTalIGd
m3LGtAi5OefXkbo8vEULZsaJ5yerxe3IQbNJfc7GGly7QhcsS1IdZIAEhqR2zjm94y6VyqVlZ+hG
taYXgrHFqoQIfnY6JNKhd9pi37r0bMkACPNoRUczSJ9D4AhqBgmogrbfp9Fdx0VsQLdlBs3t9h9c
mCT2solaOExS08CeUI1mTGbZGSSIEwkg3WylDrBqqze+2h59eM1I/vKwsNFDrGfhmRsRUaMwLML2
FFxuEAQhAh1rsnsZQl3ph04hlDiEEZmM3ld/F6JUeIfpOnvb7/M7RhpgoCJJ9QNL/B+ng+nl+aBZ
gK8PWCRY3g5I5iGDFFEglyXN9X17+Ro+ro5syP9RmP9WWCisDULvzpfcRqmqaVAx6fjnsaX5jWbA
+/QXlCMLoJxVv90jxsdo/V357H5Btk19qRVB/I+CNLcrgeiKsGiIsRp08J4+tWMtvuthaPlr3iaC
CfDd4UkHaq0H7NKaxqKeRha/0W3W5YnmYi5ZVG1MCEZGzw9QgsUYnhazVR7y0/DcXNlN4P6IySsU
sF9aa5TJGv6rBl5lpw2+sPVetdCOa94a7MGx55ohFXqllH5/uXy82rcU7PR38LsF0VObaFeEpH98
+XVY+jNCQlQC1Z+WrTO4/Qn4E1OakZg32r4AsC5WtKd9cV73KAtFP6HCNxqvCjvPGMq+AtGXvvrD
j8WZuB4vd8fZcC4aDdpiqUvE7Vx3ldzNATfcq6pltIxlujNIAa0IpL6DByQ8zLnfeQMgt0eIOW7Y
Luu/k8mRRINIZhytF4vFrh34GQAMmmb7BhB5ugLWwAvEuShqp+EVSmfZkFt0x1Y20Ko+XcrCrh8O
SPFFvLGYcbwKYZ2/5WL8T92DVbfrW1WL60ZIreKcgveesxg6FgQg7lnRhMGsO0OVk5dM7IjzA9Lw
6nYFQGps2Cp4uA+ssNVZHm1Kn1OIsymu+nCWn61fzvenKEjZzg4zy7L6FmB9fILOvlFSNK/8yWeW
P7fNDUJB6g6xP8eC2CCgksi2AbWHOjDRmxx47FtS5h0pMs4FWT2odFhl+M1zf007E8FCxWvx+bz/
yErhw6Xz6PsJmWIZA28tdDXsAT9fISKBStZJuocb/iqmySHXKKFfbMvM3BjUDwZMoT4pri6KMZ5R
d8RS21IuD75bJ+xW8VJ0hG1S1cwHwBCI8v2olQnta+pAzQTbAlIxPtDIk1kZ2cPddKXe2trvETIa
ou0vsEpMk2mQZuOl6+UsdencHO3YnyswhMhIXLRG0GrcNTaHGw69COjkA9r8a5sd83CFaY2BWjUm
IorGILZ8i3U+S7G+qiGWve7neZI21y5PlNBQ2PlRUWJ3xdfbbdfKiX4/3eO6ZYfp1v+O3W5XIo1a
TEYC/+PPJxzeEAkDmeuF0YjNCG29z9TbJaS+EVMPa2PR5JeNf4K22VEBlfHP4HAG5uv2EPy6LckY
sauvROA5d+Fq8Mkb3Cdwfs5OzInCBTY913DwoPMmh4nPuUofff86yW9o7MJpDk0nRVTyeEFbqhEf
JntC1yRuzHTaAZjw0NnZoNwX6ei9x0WeocMgLS+NBMWJcAuFl1LaY9fBz5K5qL8Gp34ztDlOBsLK
U4GG8BIqO054UNqVbIVlDRN//tIvF37AgfFI/J2SHGJs0OIx7iSdQ43eoolFTr0uBOSxqJGfGDBV
2EhYV/42JwEP2Hr57MqQ1WvXYAmsWmgZ3f5eotIVD0qydUsRggXPfJqvva+rglBkg1H94D6jAsdX
o4WYyRTxOwB6EMfqMLEWPW8tNRaop3Vcbu/06qtsNHvavfhkLVq0vbd1CaTSYzVXuSMXZUfvf4yV
kGrkk2FVBlTPr/REMxKaW19faurJZGqCKu6+012fyIlkbD++iQwrTBf3gFVBBZXcfsiP3i0vUrQd
QIEbgCZXA1nogsLeFqFKY3wjkCcSWSU1yOV0UKuM9wP0N7+5SsHlbFIldEEB9izvLSrv+/9wsTOO
kxeyNZNsSAweedwoII1gSAAodL44NHQhvMRQE5uzJNOIMQP90N56OsJeLpY4SD+i/YP/b3IJkc4W
Y7HMXmHpaIr83kuBF8sc0alE9uiXZJaeNIbWqAmRdeIrrQGbbE5xd2vKuatAgT8nvrTGR9OA0P2h
HirHGbImDGyASRzxY16/3or087yP6dvRPEXICPMS/OKt225M926dUHPDrCEWBgQ/qrqviAcfzxWs
X2uXjXceDHNigAZLegdTfKLP2UMBtw9AkSApING3vXPaBEpIo6FRWQQ2Fvci3K6fLeMk3E+w+9uj
W+Uq+0N3L81ZZb/eIypHH8Pm0dOJS+7gqYFmIjfKjOFcjr2hhxc6COnqlZckx/few9NMEO4yYIre
/ICxvvbXMa0WLpuYj26Y8Cl4vW0GQqrCoW9Go2nk9quqIpREfghQc8mXc498/9LyC1Xxm0C2iv3Q
1UEmGfiaAsaqmc8Ai2i57HLfMHi2/Kl/SQ0d6zLtZ3NeCJnEk+2Ka1+vOa3+r7bQmuzeWPVlEx2z
hp+MzIlOkwsZoj3dKIKoQVsriW+dj9m5m3Pyk8SrS2ilkn0Bt0+ndSrgxlF1l0lDEzH/Ui7IOcD5
wfaTXtgXDWVUnsalWtnfl9zdyNVgQil8vXtgoeU8RnH5UOJ7lbbtnRlDHbBIDqQ2xhOyHdOemX2F
44Wl3DZ2cFvllk/n+u0qEh52AAmLOcgUF6jcIIAQVRpT61WKe82e8+unfdLu3vfb0xrXNsx8S5gg
bz6loStJUfyaeLsa10hdzV32lNApsXDOavJFA9qpTwK/+qVz+yf/GIS5U/VxjcRd2E2IupNqUAhS
Jz44wTy0/VLCmK0OFYxjYFGMHsiaN+5io67MGTZdbPBsU1lpnT/QkeWJTSD6OdUuivH+GVvCoAP1
iFJr1LhX5+5VEYDDKbM17zo/8YqDwDjV++5MkSs/kp4ogzXHF762ba8h0HM5WiuR+146VxxeC8XA
AE8B6NoZBm8YPgSko8TvJdjU8IicJQVQxnPeda41gxTq14/u0Tw5BPQNh6UCDLQeISpmlKRpE8gU
DenWeopM4f4R8dJJsmfYysnvv3MElr9i2zlqLMqMtxOjDR6sj7MqGvEkDdekIWhLZPZvOt7up07A
IBH+Jkllk7kg877jIg0sAJrh1T9N+5h0nKiCPJ9/nuFJE3vd2MIfrTmsqaaPAqruv3gYyr0IMMOb
X+xw1jUzyJlNsW74jd2YcB6yVbhhy2uh5wYHb4zpk6e5lyak/4MtcXGyi2C2N59HDX+wwuwnmro6
G6kiZb8+GhIVGkwsj7BRBT4nWcqlfwTh4TzAp7ODvs//3GuJbpI1rd3vLc7yfORl7pYMkmZuXF0N
tYmEw45nmyiRR+7NW6/TNCuUseHY0NgE8G0m7vOYRcnXQIMVOiP9Qz0aBu79K0ruicwDzInZg0Pd
xpPwwbDCYLIkJ3539GbmdJ7gEaxPzYSPJDTukgUR/Nuob9N3tAyQUNJMzfK8EVO3of1lcJLGQ1EW
RiiIk4YyOAfW/hb2u1lGtnSrwyqn7Rcr3B2LTBGTEfiXn38f9mYEERCcMTbNSA6vBwutMHAgXeRl
Zlk3NFwnE4AKPmEsOcHVj7Gc6Jm2yFN+vWyFpEJpLBh9vlcbPtkmQg8ux/I+2Z0/b9bDX73x4JJg
keNJdlDumeR05WBn/a8mZEfdtLS/PMSFDw58e+8qp/b/RaEv9ncPGf0ZmfYadeSdT7FxBLrgnG9d
CiBJR8wC0pC87SopadKNXTl0vK80LWiCKFd1JvwWrcqjjysFBrEF0n+mwPZcmDnnEPAdumiyzQAf
Nfk1lkXLmtg44xGAJJnsq7h4Qv2zcJoiCF4Re+m9DI5YY8OmqHQbFBYN6/lZNEbKTik1cUkD+hLc
grOR2V+4xzWHktpiT8QWcgTzeojFyx7m7xUUGrik68RuKDt0TyzyiHfdv4TRS98c/18LxT0NBMAv
56hxIgvNn0rBSp7xFNvOPrruSLzbPnZf7PcbHW7JR1LcaDJqi3zFM/+g/ZDJ3ET6pNMYyxG2BUB6
ycIenUJeOamkoAVVZ9eURmarMjgb6TUGQdabPp8sfeBfZdQVRN+c9t2dv3ERsJZ+bhRKdsCqc15Y
NQmr9U87SaKmARY2sDZeV6qGg4u43I8iwyawE+76Delyrx1KHiCxl9F1dU3e7rNdTA/mXmZIh+V2
GNOIsDrXC0A3tVgGQBoFGe8pZQ3PxJDIoAvVAG5H0nabtu8mLC7TbyJt6U0DEcsOG4w62wd2tMuf
Vdg4VTXs+RBAubfyj3vFXqdFQQ48IGPG3VZ+KG/JbeMvSLUDW1lMSKwRKIBpL029QnjcGKLDTqhJ
Jc7xdvNnrL6Ga8imhp7f4M/O/JKS4gAzMh3K5f2OfFfuZnsar/KJbhOnaeAsvmW6aDIU+eBJx/Bw
qrlvza83N6X2vFJOn62nc0LgjyVnMMQIllvqXkMTuc/8dnl+8WcNVVncigYNHZMP8yb0bzV8cye/
RSg0yMz+KGMGilIjqwtuoPr/HTxGx94/Tromc2g1bYyG34oUY88Fgzx8dFxP/gCDUlYgCFlGImiO
MOIIpeTkKfcW7e2e4UvTROKeb2wxrZ2dXh6Kbpd1Kpd5nTISC2Wkjb5PDKe/sHUFQCbXIBuz7/bn
LMSBtDQFet4KdifOgQGGyjJVK/N7xGQMQ6EGKZYf7/C4xnT9s6ADbkrsYMfC/3aiooynWrsJC7y1
ROV6iyVa3MzUPBcQNUzO4Lfv8WCqj4fohaLkDmMNjHZ3kdnDNqsVkKmhr5sHdKeAGV78FIGr9YA8
PCjVFQn4R9LftEiIGeQpyhwzgQklrp4n39ub/fmvbGTy8XSyPVysCaWVNkSbquq1LW04adNBptLz
Owdr9273mCNq840rhAe4ROJ8mAJpVvJtN6jtkgxj9eompfoKkHbl7YdI/ltt0NTMKgbzFQiInDjr
qGhDdNvcKyfSwgy2Cd6jIeESgwsHWAKEoOJ2ucxUg5+GautGxKQATjykVo+15pDs1t4EBt6qJ7O4
6OFpN4Nn9z+I1UPgdyHxIA5EkxcQ08jpwwhtjJJ6EAkZQynqcgIWxlHm7nNBOEzFHfggf2L9wINl
jFTMQ1iGudL72x0Lqwkuu9v5Im9flYHc2osfBLac1B0CHVySIp5FnfJ32kjLu5pnpqM+VWZvtSvW
9E6rDiFU3vKAUK31jwX8ww9PPkGzgQEFr5C9jnuqsWcpkd/ynmZ1o47pxOUBhlTreKWgjlWwHNdT
UWwRKrCTKx5lWi33sDg5/mMb+QWcLH7aGAdgx+Mzhb5bPggpB2XCPC3mQodx5prlb1SWHFZf5M0j
R/l5b/jxxL8r819EkAiuH2mYuiGjaoWpjWRIVZcWkLHhiC1zyEfiLRrwM+ak8mG6sNW15hzuSxhs
/r3rYpv4Fd6OAe4dPMHlcVMMDM5yFT7uVsAd3yKHFMFWYuJ8khyQ8sFdyISjJVNKCHIHL/uo0CLx
32sZdo/8gT4/LIs2gLoYGjKTi+8Eo0IhJADqfWi4DbdaIGhQtG0bQV5e4ahYJGOUsBsgOBgJXXIb
lOBsQRajuTUy5Bu/Pibfkq39wts1EZGPW1lgcnvq3+MIFAlLHEJIsuhmtD/iiBBDZM0UsfgMWXOH
EjoJJPJjPTUTs0vccu5J8RXqqorFNjXdKca1BmxLEPDBwTui6kp1RctyCHqbfj1DI8+vBmybBorL
fOYTEKZeXxmnXULNPCY1vj/YWpgSFOxaVGr4Wq/yfuhBYbXczYG3NChQzQNaXLW44KmzvI6cP1F/
3hceBPy0pd2ZOjZk4wGNTUENbs0PWPlTeKEKz5BhQkNFJ8ytB6JwjIHfNc3QDHrBzzIhWxRY6AdT
9pZUU3NFQQfCZg/eKuHo//+IKqloqH9JseQ9O7ESKNegYZP8842D5wXa0fqI30mceqEy7bZ9lUuW
mxTBuFijayu8JB4PqQch7P+0ISzJq2RTfHLZDTntd7ci78Zl7J4LzzXfVp8CRrz/HD7LSpu9DOSl
WeDNQfxF1I4gBuleD4sywycTBHvJfEvnBL6fyzV66C1h1te8ObkW2+5RZ8bLgWEFXjeaNV7Mv3QS
TAthQglWllrxxO1aMRMaJ5xsVpnvhuTC0rM3JqGtEDYIUWU3UBylr8ORJfCeWdNyHCcS/Z+M1bIn
9TuKT9QYClIFNlLDQ4+OW/254wdQLuH2tV+VBFCif+MXlC4sq9Hyh/YrkYH+rzRavkygYm+hj9Wo
ZDKGNSgpP+l/RYvpliynK6oLo7/ZZpNFyKBeSJqSJ/5gwTyItE4N0Mrl9JlCTSx5bOzKEpppEEed
ippZvRABFuZkW8zZj1SlWxm9D7rgrTknT7+X2BmDHJaP+y2L6dNpfj7TwdbElGN7P5684WE5WBsx
BzOZ/oqikc34ZM8JMVde1FC+BgNfGF5RH73XTv/7bMBq9QlPbzTcs0ubZ2STazo3IbIByy3TfIv5
Mj3uJ+OMA+GpZbMzHieBKWyNNBEjJOSVPQnX0qZhB19OU4ajKFNpCoQQFTHAUnkwo4Pc4NcNzjCa
8K5AYOkAyRi+GVAkiMMlynySmF8U8/bdQP72Pb0khGGj/Zn/HlLqE9hC+4PCTuZPt30JK/eqbw3k
ydzTs+tTg1ZChmyEzZQHiXftsIpM9675H6yAvoZLDN5mJZW337ChOHoep6tK8us4ie3cuP61um/0
F2UKsZEA4GzDe34ZeRr+RA3gr1hROPjp3gNDfSPtleXM/tTOF0yXMYuDUXUG24qOcs1DMIVTZeWA
/fuizVnUk6LqDUbLchJQuPDcL/FpuCHhp1oMDSX8y8UylCDIoV7QBoYebaUqtptA2dg7B/rO9GkI
hFIknoReY+ObW2Dnc7xRoGET2pt9bi23LZSvyVW0TqxIvjm/xvq/HMXeZOSigJ+Axu6Z5RPi60l7
xeo3T2LVTtnYnh3GYnrpUZ6qxjPHTD6BSx7zNT539aihHIDLJgnDqB49TbJfjDC+BAfSQIXnU9aD
HFPZaea/7Be9dKGKi2bM8gWBzUiq6xKR9EBK7wK3sTKcdfbkgnruLkLOJHE9gB35rN2peoSGoOb8
/3grX0vr76okM+UmRWTAwHe9xYcd29DCM7ZOLbYvdjOns2LGBZsLbU+zfx0bOUamkrXKv3T+G6HS
r6toXaSlDGYsitYfbJvWVV1KSHTl/dNu5hUeMQxbGa95ugenGWxH80u3qe/lA19OG+pzgOFRegZY
Gvm7ysMBPYJtVJ0dMaS/3dEWPutLC1yz4Nwvi9sdWsjpYWe8srUrNy++5O+O3pSoRcVwsq5YVGFH
8H5ftRNWHgKyDACr7y/bdmbRLoEJQ/l2/ddYqofU8ZS/qIzdjFIx05zC0BmM2ESj3G98pCkEFEV+
zpfg08Hxi4BleZoQ4+PY1W1MoMksRUnqW9dSsHWRrzHpgahB9UZ8HN++dEMQaKgmz88GP6L41aH6
1M9KVsiQx+wdF/bK56fBrzTkmmyGjUaudlsxJdoBADYQOawov2gyJrIXZG7MlCPA1gbFMml/2UIH
Db27GHXvVCvHPRxPzkiN7P2jiC1dNZLlhV8UsoG4x6utBwVBNkMrp7Fmr+CbOZ3M0I5ZGogmAdAf
qknv6OoxpugVZBLSj+/V2KrtXDDeU8B2BsMNMB9zA09NV6g3p4M0f1Kbx3b8OWzEG9GrOpMtNYmk
BVziJNaAq1D9OrtVBvwe0dmC/Htog5nlCjaKb5juLIn1AHSX+tz19o3iTxemhveUw45Fj424xhPD
7FrHrFGkAUjWyJJiXLzFTWx4aRhghFS5jUnoU1uLoItESSEejx44VvGyIhC0VJ38uSSa750NKZj/
OfSmv3C9qVx/CRJqwxs3ElTcIbFBFG6YCzyKBtgd8LqDpFJWOUy9mAv/oCpVxMca3lqSOWcudl5B
PMt4e175mCYd7VCDPjVh5kApw6mXv7brAjevuK13BmN3fF+ePGuv3xdLzPaYuKOQ/rTbIUYHzaED
NrwuFM6Bi51ieHPMiaA73EBe4cxlMMle1vTdAdjvTPkvlkTjXFlYGI64aeHg/F5/KZYF2PA4tjJi
7XBeAfrsGr9eCp2yqfcAMQy95uxc/+j8J+6BHPTJL3CFhZGc3FXkK2gyMxpVexSBIG/h+oR7TJl2
qQ3Wn6AvyMRAwFx1KOFz4TWIrI/y8s82O2WhdotDNkpz79X/QZnARptB9/QydSCZ8VGOnCGIfiFU
B9mtbEsNnKUUMHbtdqdFIuCiUz9Yy953AIfwuyziOg8lB9kvQ1rm5bmZLkm2UtMyeCH4Jn7ZWHAc
tPzoVndP3i6BYSTB0qtj0lkzqEjHrh3Z7Mj77BLDdzE66fX3jl6+rft/TgkJhevHprrR18uTUDav
EBeaCLLHlp0WZLRe6UTV4jGQwHUbLMjbV0v0xoICGZ/+Hds3ZdXwXjnIn1lyATG7iceavimQKC8S
yaZSlwsXVChgRx5A5rfLaSukZERjd1aBTTL9ECCw4a//2ZUDpFaLxn8+JCwCHzePxPAYPDLrvIMh
+ZIuZzuls666qm3ymmOTRJPsizOUa8zfwoEEryOn1fd1OgJtD+YVuI4KNb1KDa6ZRtMXihN48V46
sDa4XNQ56fr3PrGeDuNdO9YLZgox4Wg6YsuCeNLn+Eha6qLQMdJuuzp/UQMrUAREcn2NgeSFSf0c
OVcxLJqstsombYBn4wq49FnZw4rdEoKkv28UEEdKmcA1PDngoXbFFLipXZZW4xf29u/z5v9RCbnd
YIyk+rGnQxGU8blhNv5VxYCUYNVErZHLmOizIczNGO9DhgqIxVnqdvP3pZIeDTi+G21VfVJx0/k5
SVviOqpgpFoPwrNvNV2Rb2HzZpQop5bTPi0tLCd0uU/VnMwv2Xa9GbEF0BpRRq9dwHjP5t/e3qBc
hAjG7//xOfsyDQs+hTY8jAKwzHsh1mZIw1GCsnrrcs3CnTv/ive8QcKlvgvht6WXeNLVsgTSdvmQ
xPExxdjN/vFtiavT4l7IprpKJApNYkxDqvgPNFvE/+NsJv/QSx58JWQd5Wv6OcXqQXU8LV4NbHMl
dZLLdpptFtnShjh2fnoi6FJ+UOCWkVsTPRqReCdWqs049SvPpBHfzUgTIoPGrqVx77iFqSIM7txR
k8olTivahXZ+MLl+kGkoNBzXdxBC3UlzhpLLMsmOSY37PO84bstomY42kUTR5YscZAAwF0Fa+gOh
FZcZ7LpHI7TlfQ/qkCxAoX6yLcE75wfMYJaKZtlNA+ojAPxpQQBpZPM0vz1mtNxRTkQmtrMH/8Gf
5cNs06GtQE7OxpJKXaGr9llVmfdieND2p8x9ymJnQci5N8mkr7G1yKLFxUvXGj1t2TMdFyb8yakf
S2eY86H6U/e3cfqq0Ms61Nu5cj1yqry6/Bzr2Wuq/HxV7MN4R6yz9I26w/Gax5SMk9QJLUlB6wSm
fRTFPTQV8JSgAxRj5jRPIQ0T8kd/bQWonE8GC/jM3OBCNH4OqrwEjqbAyiecSOqgf/8axdV/P71X
787SRTcbF0/kM/uBK33fF+fIyrBDtKcNiNEkshmP4did6vOqd9nb4oAr0GNAVZkwNyoTZ9Y7Kd2X
sgZxyIWT7jrxcwv68ONAHmZLb75PpnTvgzP9Swf0ZhhDaz+ZlcFdybiPgK0qCqDaJ+72uf92ytm/
RE94p98zcabs4vVKUhCVrP1y83cKgsl8Dvwy8VwTbGlD32K/qugxkCW31T2eYjRcPnT/s2pTMci0
nxgc4wZuca5qo9pbWUwme8Kxv4bQTu1qoTg/ri/ERThZJbV/9vTX4T672jQNZC0Oma1Ctd3Sx42F
SfiFVh2rnZ5zEf338i+ENpVGHQ0zCBw8fI+vnMeyNs6YMfuZB+qJbeaWhW6Z7rhUu9hwjGETOiHZ
eVpAoZjjxAyi6YNNm9LQw+44wECfYkB/4lBg62jfcoLb28xO3XcrW7fbDWClmFa/8ogIxyWR7Hp/
odY+1FSnKlByd0nmQ/KPab2vaKH6idTgc9sm8v3dgMcjlqCMof9FHyUOBc4iPbB8pGUi/GDpw7Zh
T/0pCQ8luR0dJKXKaOrZ57QTJsfSla7Nq013RDz/f37bvY2WJsDTVX0w2nkPV6zf/oVbT0kIEyu9
Lbn4/RM9LKtOAecsrRa2u4REj3gVTk/B/9SyHEI2kjJyXW9z4sFWFBbPROc2S6boOi+CDhcmO8MR
KItqmGzrUXOogvUGR87H+hk86CRdxyl1PeTM1bsypYmXwjpRNAikkPEunCNZq+wByl8vvNalf9dR
3noTXV31kbtreqBIAAdwe6iYwiyWpdGMrnwgDGMBFqDJvC4dNSR510XsHCqQqrKlkvq0wUeox/nz
wPhAHYsSdJpX7MEhDkgiOcQYK0Y+IH8bHSXi3KqO3AXQCiKMHxSXOgRX6yDENCYlikrmRKlEZTti
t4I2w147vd987G6P7m3lpraI89TG6nGpiCknOadgaG+4TXjo2qf296ZhXk2FpgzPDok0TP42WcqL
QOUhXEXmJKQUphVRXjUjkW2zepnaQFEA3vYPy6ZbGAB1CEy4Qax3ueU37qwdFuMfD+FjjUxcmL1w
NqWiTprO1WLIjY+gb3rW61bWlFVss0dz+roXW5n6RmNRvOyGTLUs+71+2TuQsEdtJwslx96BydMr
D3avw7Y9KzWeiROYtp7OFt1XVaHW4CcwZMkpi45lKWGiDVqLzztkH+OEr2j4HrGX3u1hlv8ZR8aR
QAz4MC+cpvgt2bvRVn7A5TGQ0tUJs52Z8w7XG7A68IifTHQjWcqUGmlqVakK+Poian7+a5mfKWhn
RrSVX/BbOag6MY8SKufTE3u7wHVbNvyuJQsMby6jz2vIMIExLLGr2q/vbhiNRdy9uJFDyyhxF17m
aOmaBxd67qkIXBHPhQs5dG235qRmda91VH1rOIu+wOyIRcMDFAMlvOl8JgWN+dGWWD4zjLaoXFkO
yOEPLgOZx1eAmSrbb5THCMUM9bRIcVf7qWFCz3oHFdYeLS5sP99cX7UqxiLi3rXbb4Y4jqpPzFSD
aadMZwtVnZ5nTgJB392oBq6mUmGIYcS8ucWbsPsi0pWrDcp7mx6iIoJ1NpAeeDTyKWckOG9r4sCR
WmmIDDsymVfpDGrooa1PBl2Ylun3Q9O+dI7ZDuaz5chQZJshcE8t37njqGZvV2PDc1CR92RscBR0
rQxG5IPjbE4kESqJqX8BNLHaiQbJ30G3iYpR3CcCeH+m3YK6YVIunyxUSrFoKZ0rOWocA16bzgJY
7H1C7NR9ygAhDJ3q2fp7Ry9R+q8qp22btZFRKqy2wYWY6qrdPyc3f9XcdHVWNSUYFUJOjKw1+2QZ
Vpz6c9XlABZoWiX+NBB5zTbMW3V8jK+0F3Gwko/Z7IntXlgKtj5Ho8VsVk3P2uFbYiHYbxISg04F
lHh4+kCuhgBC+WWDM7YhAtLF9jr0hX9Ypntrm6yQTcDdQlD5PwKpw3vFpocLKyD6YdIShJc9uUbt
9f7ofFDUyTX4R42LXWjy0TvaWUOqTUqZDx8c4V4v6NuGtyDHuVRPMYKUCQowL+nsQP5H1qaTksh9
iatTS6dhQb2WIkOARiyeldOpZ59hdOFHd1OGKOfJ6QaU/ufB/ZdHA1FJllRYJYxSQDWUx2eLX/9D
eigd7l4Dp/VWQzeZd7ApbuzENIu9eQ1eEKF0f+6rLdRC35U7jG5nt5h1j2aSn8sTALeboOUnivNd
RDFZcDqHT2e1ujJzbEgJNP9L8FHwWb8OveTHwrQkdhVd1aG+8Nru/t6Tdukz1k5FZItZye44eplr
8QtLKFU7uMKyJIYZQSxt5pYgofgRoTs+q2Kkz0FtbHtakO0a/fPQ1POBzVvPQPYS6AC4jxWU4k3x
XMFARfJem3KilZ0xsKOuHXc1vN+qyq3hH1orJgVUhMtgy97d4RTaUirHEqB6cB8e2kfc9Pt8HdE0
LV112RHVtHBiJ4pxL4UK2YvFxXhgfX5n9T4Z4KfFyyIlKZjVjTC9iJfHRo+dsqAYcZ22GjcXh5Pg
c9KSkQPPIBI5ezT8DJnSqdqGiXqUkuX3fHida6Ps1HhU5drwyea6d/dp49uaiJVhBJarKjNYiHle
znjrXoZAwVjnRgiy9lAXjsG0IlADuXycIBKuPxnwxPU1SKRIi+yucmUrt+KSD9KJMtiAohT4XPmo
Ag0QGnf/wq/8GOVaDW2q35IxQSyubLIkiecWJq1Oxy1qXH91o4M4yJWg/M8JvqY65Tk149+S8Cfh
BzzdfN591RatYkxiSmTFTr63B6lRJ8DOfLTpPTwzrRJwfQ3g09pqFFKNvz/sS+gT+/lnAjCBqMIe
IpDW8rmSsF/LSQsMORcD7aUDfrJRZ74vQUjohvwItfIf+v88hBlLoNWAeZkqvRX+ff/FKhOoFQ6r
8rUlQlgRWf78twIrnTzHnrkWg4hmOw+1WvPLkz1D+J7UZkEqoVbjtdRvSCd3qoPIw88MpHyIFaPv
SS1kF+3y3fdB6pGJ81IcDaPdkzPmj1FYhDq5jCORD8s2ZOFVUkk6x5JnSY0jxoB0UIvrD8sHCVUW
3HZ3Y2fNkNIBFrstKBm1L6N7ISPPqOBLXT+2i1cHqQpLiFiKbRmZUJo15wgkxcVTAxqbchgLxuQc
IWhkaMo9GFHN4PdLrSBiKwexksmGkfPOxBFx/l+FzL2MP3ecORk9dg+MAMGy0tmP3DjZkP9HLuYH
Tc2CfuuE/PvjT8IzF4NmyuOLyt4AF8NhRlgqp5aTzC/cBkwOBzFE3kOATyyNKODiakb4H5d6IBJ6
m8/9RHIeFsWqfYr9GH7JvILBwgb6h4tpCoTANqLo9P9xi4slB9McKOFiWHpweSpb72We7cO+jriW
FYyV5eva8ML64TNkxr4lj2MjWJCGAoEgOpU1/mVA6Gp2CBWMciw7fejYebQjuVxHmeAB3xPXVcv8
Bo/OJ//wtSD6xM//ROxGjQl1AnD+mCiYNYANs15p6qv7iwwLyffQsDVDy/o+S9VD+HYCy8U4sLqT
bhuA6lmawNunWTi7OxR3wtWbN4J3yL0TyFwuoPCIiBfMXPmziJnrN0jS0mwxgqzV40L4ZC0W9+IB
jpKjdlQNmhUSHGF8qq2AakU+K2uESIc5T+2mV0tI+oUz6Hfww3zykSaRroIalP3Yxn1gmCMeZXhS
mFMFmXNrXL7oDto+DnieZKvzav1BNzat/YDODqFGWFflkx0L7jyKdCtvoYlikQkiZllbhe9BkvIj
WAyUhq+YikiIzJDNPvJj5JevXpSEcHS3JBt1EVczlIgadk4Iu8zXecDg5BeMOh9ni5X5E0CrD1UV
+8+CrMwW7MZB0pqTIi6SNezTc4KYi0gOu+mUI0D9e98uRnsN25JcphnSAO0pXWxkH6GI/k0E8OAc
KSKYn/4v4Z625g4sH4Ahg1KgdQZtXYuCX2lTO1lZKefosZ/u3YF0urO76LrILCcLD1EnOG3DpY2E
jteeV8i0Yw1XU9zDyQgBvcezMNxo/E6hPepu1dGcxXLrgKgIyINydjl8EckzMQFFxRGDN8KthlWg
nqIAovrSCS4wv9jIABApG+0+R15D/fiBSqI+0Bc8QZZowo9MGqcySIOj5uedZ+SyFP9M5FxgjUnz
F0DRDKt1xqedhWGK1zNzFsPNpuCF7xqDYHuHaW6ZAb1SwS2hRBpHASgm6Yq0WRCSEEY2zIvk2TQy
/vGyftduH53pPZatvQjmtryiE5n2/KO772MSTq7eGUDl177740NXmwNvAX/Nt74MDEtf+PRWqCtN
u5AKb5FB3g3k7sk6ElYg45/sJqYikO+3LpMiqAwKDN9rvITDkQliqdN4s/yNmV+4+6ralI4LnfiE
5WoUXgGqqeMz2i7k7tQxTenjL8JSD2zvlvBtU0k2BcKICh3TgxDrXcg2m7nk+otkZxOSBPogNstr
8aAD+JANfN+QTeRRndGF/9dQD6FycEyWi303NFEQQXjoDxqRJOjq0ffVatGKL78EsgUtSmVwlUPV
IiohRy32eWLHU80C50KoRr70C9WQJ/ZFrMJnpy+LctiNWIa048VpbAl2V408Pwgg1FDf7wusOeJR
ltqve1t5La2BqwEeeHNxpMTjKC9+IzdPOPvzEmhT0sXoKCGtQtbirE4H+bRfQThWkNhRvrXvVJa8
XThs4p3jIELVHWg2dVmgkGXiL2il2wOKpkBgbTijlhsnfo5iJe02UmseS2Vyyt2t7gwIGGkyXKPX
H4Gj1z8JXfUBu4TVnpgdFUEtMI2tTDDEr8oQoIHY1mZ2DEI8CZnzP83OzAS59NoBAQFZFdQmif3C
u30iUvVYoGRnqQk7dzuSP/wVhqIrpi5t1gXYPKg3i/leLtehsbr1Wo04GJvikznbYYQi1vd/DTJC
QarGgzlGigptuv7qJ+1i5VXEcEHTR/qx4DM852uvXc0WAUPoo8pSdgLnfX5vwBneYPeHBQ+N93oL
HOVCWkS1pbwvBvGRwQOwSiMhMpKK4c14WbIWRQ0pAtIQHVo7hmzOknOvysSNmEzZ1wL92wpToiP9
e1svDqTtH01oBj3LiUqL+mvk8paAwNJHHOGoxx/syZHAI2EkFk4h2+ikV4fL0h8aBhqqMHMoQl9u
CV/QQ/TONVwNxcZuBfbM+uQN5yoOfFB3UvXOSAdC8RFA5FXWVkygIY+HPiMQqA/usWN1L5YnHaaU
j+q+M8ar+V2qnqBzqjfzkl+0pimXxY5J2g2fGckfdpU/G2+vL+qKQnBaZwj6eKLTJTwouAjsybji
BMbNXy7Df0vtszhzgm4f0ZlMkg4XZ0KN3B5+9BXOoMzxQ+FYXtq8GD3i95KE8wLqOxKlfplh+M+g
n3lsBLonRhfhQTfvkHhprD4jdo2xpMVGizbCLSfClr3gsFsfvM28TWZMSa819CJ6pCI81GH63oP6
ObGsW2YbVzAaz7F20GEPsO2938zeBGTC9BnPXOWZZldn5Bm0YfQK8k3Q/UXG3JXwuXUOtzNU1kFv
+EtghjooMdJ3zernRq4jwW6UKcBPY+LAA753Tu/spoPEmcbNgaPVH1ckZOMIUxMU4YZTSItxUa1H
0gQ+3jfaqLNrcKOjOm2W1QGAM7h0Z+iaRsFwhZwj8JJxEhp301A8c/IQYjH+JnTRRREBIUWO/DZD
NznjOw2UWcsGBLljfRC4bQSXilrEXe0c3qE+aABNmd5Y9FAFN/cnYFzwts5UW18klzyYW4dzYryN
PprhIh74pjQunS8/mjOBMtPjE+f5DPp5A5LH44DyJLXVKxWOBxKLXnel8z6i5hB3N9hucq60ogNu
rcba489r/a5T4mWPLa56z43UO7FzY7/QhZVg7mZpkSIKI8A/He+ZCTc57zdB6Lr7BUpzbPPKCYNe
+aPbkWJQNzqdDSrJJZCLaVzTwi796T4V35c3wAVWOB3KuTCvHDPW03pIPiPTLkvROFYdpe+95q5r
HT4by6mlvF+YYOzJtHwGz2k3EBXnuoxhl+mvqXspU41AAE+F0Ygx3FeIWZOfK9D+6+sa6MHOCfvq
e6GEI8yXoZ0beGRfMoplOMZmaLIrKXqLhTnMf/oBqRuO9s3IsHLk1Yp5s2/A6yoIg/FTlTxpMm26
72CfNHrD0dgaVGUb7t0tA4Mca1VogJX2DnBQ3gPNjim2KZVdA5WDuO+eoQvQNmDkSYO/iii0p3XN
N/oMKPuU4o6enoEhRhCyj6K4bleUqx75Hrm51DmOYy+rUnb8yH9vaN3ECslTklgZvjSwb4ag8TTL
gewbSGbPjevY9AOJ1tfItO2uqZ5rseYITYYma/SqSrHfSjHibcJVP9LuzZA/J5mkTB/WwE6EC90k
23w/RdqLcKcMGnQYsV1gjvr53H9BCRQrTAPHmL9yh6zQJRn0t23YFGRdnAX024hbbhQhZlTvtpll
NnNxqgpyd+xHnXxDj1kjplGt/2DAbOT54JxbLOln2ahEMjfXSfyXd294n8Hllcx/DGONjGEC/m+I
h+MG3J5/o2r0Os4DxU+kBPZYE8Bz9ylQ5iB2aHSFsUaUtCVla1o2nUwJ+CnF9UtqHWOG5W0WP40X
h2WxMGrIWzz11KJm9X82lLoaCtDYiQ+GxFiNDi23CDzWTYFc/H4L5luZ188Qe6E2M/2QKePPj7Gr
nr/Zmxy48QBCS37KsIvaWatS/tjmPj9vK19jgjo1qJjkTy98GGH3fsT/RIUWcoVO+Hq71faS5xB8
d+DcDAAxTP2YJ9h8v9/7OLVTqIB+tbZfaR9i+E2UZIvEQ83ADVANO9d2ntv6gi8KYXO1waEiK2CN
SZBUI+dA8A5U4WkqSpqsfiypiUBApMr7PrrNyWtW4J6cKlstUGNldhcIns1JcNkk1ZCLJUO01swf
fip2FFQel8VKVSaiZx0yb2ps7aZa/AVaoR/vBowdX3+1xaulWk93qiZCu1EA9M8NkqizCgg3foaV
tXiU7kPAK4GqPIa3af1OY3xQYqB4wYK5m+EJPahmHPKUh+CbuYk0U6t5YFl7m5cyvnmzvN5zWx87
AkYprA72y8tWKj7G/tSiqAJpJXD/vi1rwxg4Ml6UCOwUo5z9rg1DhtOODLhzUBTrxUSR7GvF9++4
3T29QojrhjQIDfFYCeyfFxcgwaEyK1BOyIyhnZ4lugbWXxwqJ1E+VCNMb2C+nsD4fRKgDGiMKKSB
d49wl8nOK8BmfKobgUv9pXOp77JEjcazIL9miqeTeDvpH994OSUb79VzBkiePIchoFf+FG2WscBE
AjkbrSd7Uhg0eF3afgxbrbH0yaWJaXJGCnc+K62hNshJS0gChsOW+4kR5YKG9SNGD7IEMDewsQMJ
ODusGun1kpqwTFJW0BxptMEGoV+gbYej9e8lS2TBJhAl5DDBF+8mW3M6fcZ7crzn1PlratpeDW8v
+dhuA9GP5b7eSb7UgDfDqAZHoxfxhuTFYfg8fxPfyPvtdrGa+v5sQZTa5LfxXpvcBiDYayMHX7v0
lRprtYGda1tKnAPtxekJy5UTx852w9jgdczFY/U8TZ43+3IC9t0G9Jg9ZnyY+a3cj37V/EwmoBC9
tBrF7NEfuE5NmS7xWiaoRs3ebActhn2mThBEtivBt4tOXhFjkUrq7/S7u1N1PfmwDnV0UEfBqP5x
El+TIFrQ0gMC7UrcYw9pvoIa7hhOmyKve7xgEYAvdzYSiY9OwHr36Bj0XIwx7YciRLDnMXGOa2+C
s8vw0Ov9xBZaVSlvqk8aQ0HE7WUG9zm5YQ/Laoqk02ojcBSaLiV/evtpE0hA+mcq/o4noSFWXbLM
iBT4ZLHm8YgPXWUELzR7UmStdq9JKqImQqe9B5W3WtCxgpxChtX3DHvZK4HmTJoTFlK/udweV9L2
KOON0EqVu07zQXhNPOZXDe5+rkSmHwX/s3/KxmA9izByOP1aOymVWiBkms9PxtU5oSDiMU1Wo0/C
dHr8XKdi8ldcYJTAKt3XNGGyD3yWepFdb4Gug2PBCxv0tRYg6zLADujJLKotJcoGGodV+/ERD0OR
CpTLtHSoVcAptI+wWHjSIdLUG9xaLrzFVTZPmCWSH8pvXo16J2CsdQnmK+eNZexc+9rE/mxyCQKo
D2Utigcdmv+wmBGdPCo3niU2k+X+xIBadSRuPUX7qQSBnUPNhMI6ltSeI/lRNS4iztEPTVRaYV1j
wwrHSDV/93yC/eFLPgMlmrDV3zopgEITFw3gg+t3C0K6CO58dM4UgqtFfWW0UmBKasBbPx9SlncH
oz0GXsyyhq9Xiamg52iwCYL04aPTu5//DKHwyC+wtvc3lU2sg3EVpl+lD2K5po9HvVu6Yi+Rd+r2
6wnhZ7Qic0630qNIodfwQ5Lp5zi6Qb3R3eb8/VVrtwp3HO5RYeItjh1MLKCW7M5oFL30j42pXrK/
IacsBCeeZjt6TOYw4zf9HAY0id90aZR8Wg8DdEvCfbl38UJmJgJN5+GMU1qvHF8CHNNpeAWSpcU8
fW8g1fUd4pN/Q/XIOqQvraYMqi7s5Ud/nLputR8R2f+6qrT4yDui4Z8QBxTf0n8X1Nc3dNnyD2zn
5pFGRiqkeACsg+mNaOgyTP46PgwvUs9m9283GeBkZxwZ3EQIUIfbv1jGQSmjhY13+ryKKoqpqw2r
tSqCVN2By9VnpYDLPbypg74oqopvajAov2tl3u+yh/COq4wiW/7BiwA1TKYCi5Hm3qBqzS+nEpfD
5VPVU42hAgqElGL0kAPbX3fHqjVVhGViM83ML/e0IQ40hdtfFTX2N+JiHRRsKEP7U3T/a8/hzCXU
smvPxcluswmE7v+/bV5qJA8BLF3OEabc4P7hHATIQ6eUh3aFb91zTgVtTiA2Z6iDZTxGBBeuL7JT
3aEWM+/sNeDbkir2MWuiE0srIFN//+D8w+jyqPnaSVlwWh1jsAQWxo8e6Jyz4czo8SUkh00IB6VO
Ngy4HH9+Fbfarv45SV6i6iJfO2JvfJ8uP3qYm9BNkfPWjhhCrZkFZT7GFXr7coqQp4lukbtWB79K
adQKTHi4fs6NNQmoeo8jvNNXYxT6IJJ7NN6KEJ1mTPV7pfkjZikacCn0BpB1/dGFfC8JBpsFiG+t
9F5pNwP8v3/1WBRqxqdi8rsG2Wp6TDm7fICbxMQBjk7RENHGLYmSv9dRyUcc4QuMLgqI6NVeTG0E
A64F0RObZy1vuDi0dltX09OXFIgGmHDmVUP8YYWhgvMG7mRXzXeHpfVXMg5AImKD3qC3iFuWzYKj
HDkucaKmkpREoDudJvoEDTtYS+CDIS9Y+Q43cH9DjUWdOkj0gtV4MWVyKAeZJXqx9OcQLywBZWXB
kWIwxtM9LKm20wGCJJz3uROSs+kvaeiaONqGQrb2iMRVthyhvD1B9nO4SPR8Mw/oKiEkZ8hGhpH2
PtmEXTxNwnYgC/tskUD2KfBnAONCzMyXqL6IjsLedz72fM3+lYnI3SB+LMVlWFg/ahSSfA5IQTXK
UrdVwgny0/bNPvSyFMUgUV8TxTVx5S/EM/wZ7DRWShHtBOsCFASWaLt4y2lceh3p/wzwtNK8+tpZ
akDsvH3vh0kwwbizgOdgQDSrz+WOnQRv8EKdrFM3bYiyI60eT64ybFjZ8oUq9ev02h35Jcfgu3Lx
/fGDtmgwN6Isll5/L9bncOgoONLdAHN+TzqE86By6IsT6Tie+BQnDH3lOVE3/5CvNibIsS0xG3+s
CwVP9IPbSNMccMn+c7J4ehvhH8oR3f9BRk8i1mjrF7qv4zK+BbPyRrpn9HVlluzdtioNpdbKWh8V
jHMUBSmgRbIr3U6DHvN57Es0jcnOyynrKscE8C4xBkrZiD5H69Cdyv+6J074VNGv6CWh8et+s+3P
NvqjIZfJP4CnAc38UpoubLKGHdd8q+sWgjrHkN3ukOgbu1F8OdFnux+B5ArTpHHTOxpEfUQijF2l
QaCyyhSlqinez+DS+74pEBE51mmStYHvENFIIRM0nkAhEPEX9XD/NlZFlbrFaJfopZ/ye5frUUVZ
4dt2x17JEjheNA6fGvVPL4JRsQ5HIAuZ/ZNuXH3G+fp+YwqixyIft7HjpZJxId2w51Ulkh+/5ZiT
j2ho7E7oAelnyFMyX7w54ZB410Qtd5vM9/g0ugp5nQNCt3b1n7aLWOaG2dC+v/dlZQWqHcTD/pPb
b3M9qL9AujXau54Mof7oawzdjX29kxSmhU1FxR5mTiWJzSVa7RCn8m/NyaclhilXfKBwhFTe+fZs
ltD0tLSnVzks5usdJnxwk6FtbIZzOAfCV7y3wfdbOYH6uatL1A+vhwtxhvmse8VTtefhuQfXEf/1
CS3O/75TnPc8RfD6MQRPxuD+7N73cZKB757akhxaG/Q82X2l+bQenaotxB4GwS7uMMxUpFV8T+cb
qtDTn87MNqtDMsP1iIjwImObfo6T8S8Y9sotHb5n50Ot3N660cdOtjJ+f3+caLI4wCLDm5saHjJR
kKaJRkbwLr0j1QmZCNocJF14NMo0Rxe7PQkI0lAmNpMLFFYY4hDm6dosQaKSha6EuErcaNzarc+l
sIExT5vZWV13TxPJ8rPzrTx5GOHEZBhLyYK9bHZ9MDx/C4Q0Eik4mYLEQHuJ5jmPjqKbRC5ANXjC
21RWyzOOoJB0s1/8o7UAaTCfd4O2U4UYyPlBKPqDk5ZI05pHZSLMyfbZELjxW87rnpPioAV8fovR
k1Cy+J9FkS6je/uOUO3ZSq+NkMRXPI7kr1AHy7FTawuQa6Y9ZGj0a7DC24FbhnPWq4RNoggnvoSZ
gvLWlMFJ36HSElktHCqwOcBwicAlKGH3WICiaCdRloQIqqtc3mEq0YAL8WfMJ+jYXaV3rOKI9n2g
H5Ijhu72ZkZYBz7j8nyHtpy16Lx+WlM7HL4+yhiYlyaoxeq1vz8yGQ5W63d/2phTAV/GSpogx8Um
nXHrPY23VtyFpgKwHak92cKgjoxgOcMawrYWYRHGBeYx/9Wc3sJZHRDiTi7VqcbgA93W6/LEqDoR
Hbip+EUrRt1q9SsRye1p+JeJgvOul+yXDHUrXOlmGKx85QcX0Fg6VwLEMF2YZtAU9OptWQ04IUZN
4B6tpLxhEFKCUG0Ly39Ncfzt6BIxAKWMEbDj6H7jIgK/nyyi4LDp+OlFxiLNpN5BZdspzN/UtLEn
MeltxU6ZfuLVobWnUeCc70yxH4nfuby9+E9E5VJdihrQ8FUwsmefw1w3PyVHzbIQTELj6gFgs7Dz
/hLcBb1tgcF1pG5YdS3iks+6hUpVD91LlxMWbCT/ypyxIXd6CCd/dBFWzVg6ZBzyEK78SmfVxchq
iUg8AgAdh/WA/FlkbH/mCeJ7aa8yplQQrnEOmz8omlqeSCjorPshrOTsa5EUHEnnHoRY9Ped+nJg
ho4h63z6yP/w74yxIW37Lrx40m1LZCw5JW/qP9n59wxJT3HuVF8v6uLDgjmkQ4f7I3H85S6wfrGd
wcM/dPYtldUE7hR65PyHeX0IBKof0m89hGkvZopuiTIzo5ULPr1PeJRw1va9gev9RLRKpq+nM2R/
95ang8wW/2spHgFsMmJmTWV66Oofa6oVMYcv3qdc86tl4oX+x/893YK0KbScy72XGxzZ29pKL33z
IXheLjmKaZE49x+zqqcb+3pbuktAluUY73yEL48mXkEZU+hEkdX4ho3LIQcFHpn+NTw1FMhygieo
OZQHsIxgNP0Bu7IJ6cA8AWP8hH872azWZhtkWwQpv1t0abhhKeRoTEo5yDPgNnGlhzIZ55BZVJV8
d6rPJaCB+7uZGNjD7j8Rt5q8QhUeYGU+GwJJViZ3bjQ5G8ugabU3n4Nf/Od6ybZL4p4qXqtTR5WN
FRqScJ3Rv6pyTIUwPjFbVjZekr5dxgtdsn1Ph4gFEZ9ZMBNvrFjd31pxf0Pc8x8yj5f9LmpB/xdV
a0Zg1R7fUnb5sg5m9TK8RJOoN1eQUOqsg8W2yiZk184Ihn7jf3GEvkccj/QVHU8NNYbtDLOY2Uzg
kRFhHJU1ybjjK78Bf8wbmrDsQ2oYs9u3AOcoBIU60HgPXzjvSXcs7f1V8KVE7zyNplpX1apzQd+x
8x1IHLCvVl8camDJRW37mksDsymlqzDQkhSelTm5QzWn/6Dya5ywd+R5UTRI1wlEDdOcEJHIs5Lj
vVQ0fbWzd8hPb/XYG3I2Y/af3vRuR4wbT7T8dg5JPk4j6WgLZbQMkKRnEXjXi+QgFYkEtQO/bvVb
0o8kd8GPRLph7TXkgCgOtpFx8I4lExGHtHgb2Xb3Ss0mTswx4v9LzHW3hCO8GN33g/27/6HVq2DR
4idCt6F6xZ9uqx7MHbbBoUfcs86bxCYXhOAdOq+FyfdDbWof4ggSevaO+SODq904m4eBdackxlny
o+6g4CC4tpvK7QoGnkXbJ894dFVMivgo4f+ElKGAbIyAOhWg5Ht62DyHhgMl8lycemMMmjeDo2Dc
JHcAdihszM06GTmjWwrRRJvKgFjffiznq+J4OL9F1Go0+31RixfXGiSj/N66pPvHy2lX/rXtIvq7
F8rpMofn8dfVSn1I+S3AhlHW9Wn3Agx22DZyTLvV6hu5DjtoybUVtXqovdbypYdTGlsjFC2eIHFN
bSSQNf75LsmmzArpPDbJCPd7NIkLogP0aVQl3YqUtldswGXz6mkUz6u3RLW2oCcYFgX5BFSZ7LCv
RdUmpxiVS0Bp1pdhv6mouYfT04qnAZd/W1Nb8sKEg+dNe4UcnmtFHsSJSVlKS3yAwa4FXOaQfYaI
Dj1/mAFYoMwRSob/Neq2ZP02jB9R1zcKlQmL7EmOt77CNcx0CGTJlwssWPNul4YL6obaK3GeP+T4
YQU3D96N8F6HRRsBClqMqxFp9F+VsbB+B53pZ2PlJpd2AL/Qq6y3qcbF+JXZG1Ok/2jrYd+p+lFs
BAD7w1MIEfIaSCKhuUhHdGoZo7e97E/psWfyJ3gbEkI83lXA963aTsXejx6nb7WE0ZCJSp9bdK19
7iBJHXBLwhnCma7atQiFUQ533akpYLPu2k1iibtjYqRhjUavTP4HUJRJbDB71fF9bcbAIY5yNXTa
jjaJZoMbjsVChmjxdy0ieTgW3suIIpepdgw5ODehSiXbf+KBdJTcPXt4hl4am1SM9xvwYi09lJp0
MSATgWxi8eoStLy+rN16Ra3HIro4S+MiV/kwVINXOMAghqshC4jTv4VMu00cOvuQLrCHp67UQAMD
SEn3cRAVksfSpVmuo6MMh4ByBL5oQ48Ll/vVsajeYQfheeli+DZcZtfnHqeVB4ZGxqG9vPoCHIu/
UTHUyAecPl8W8EqdkFq90S+653edMq3dWwPytlVBJPPu3Y4piejg2bzxA8hdGMnVylqsLOstH4HA
06E2qzj8+GN3R/e39H/nS7Uis1u3GCDzqDuNR0yn4BFDW98Q4eKMOH/qzssTaLc4DqoFs2eSTxSx
W5SKDBqhDQ42mGXGN48yFHiU8rHdOpYKpedU2wYyKMO46ycSuPyabf3VzMTw1Bg9jiQzCLri81YJ
pRqfs3wBVX51xerpGPN+7ImWQb6rkWHOh8el4aYpYxFom+ZFWge7/q+VIjY5b1VOCDrIpidR0uXA
mDcanO7+0hRl47qf8ixlHvVVe/ykHym+sbI2nTJjZ3hOSTKGhkCbk2jiT2a7O2mm16y/xC198cwa
KHogsnYQvTmjhnHKWPdaHAJO+Iw4btHZlFpMoG82Ot0f5Ma5HmOfLCEmy/CvdKpsUpOnW2ng4PR9
WnKMtVAHcGBGbPs3QHWmi/aJ14k3xMOjGikcqa6rcXRhHv2swgkfxxjZYwMxGvuIQkDJJzl1IT4E
GXluhwr4vmMQMElQgnY9fbqUzvERm/i+KX6KkPOX01Kv1FjXiEoPwHCm+0pQeH1pXxR+KU5LWyQj
LUJQRBcpOcYD0s9SyNVqezDpaBkA179H9fNYVwnoef9VABBGuycA1eYlJcn9LFfPaCBdmzFdgAy2
VXbW5vzZbrdg6329V8dRz6cAlxy8YWT2W2y15VpIVvyIOBy9anyVV/5FYUbHLp38LcNa3ccqaMWt
LvkiDmAzIU445jgKqDo5LtIorEae9h2Oi4g/mdp9kqfzXwpNvTpUjT6d0X3gbrn6MeH92gEw3N35
C4phMHmf3Iw0fHfERDRB9qDdD20caXE361nwkc4LPvuhlDgxqe+A1kEghBv4Dseo0fIfTVklo/6e
7qrDLAObnI2cUc3UBBwBuZZi9Kvo7eGwbZkeUTH8DZajW5Q7LOwrdC48cmoqchvPfJnNaeUDk3Pz
Y1lPHUl/5box7q6k1HekVr1IzAhJ7v5S37ddXXljtrS+oo6WFHdur9W7eP0Zac8bYx8MnyWf8Xk1
MoOldYo5h7JvF10WQV0YzeYio+8KRVxaALSxUUeHc+BE9Lccu8MZfzsCoero2LY/WoF+/6jzPnzO
TcGR7eynjrQHtWtrwkGuwX6QiGyw/m29gdexJf6Iws5Xk09Rp2065w/Wt6pFd4Hba6crXCXpxuNd
Or/TdRK2T/aPnkOJAfoeSqJ2zZQzPlh0vqoonmEboeuQd1YHOW5sPlPYgHa/Z0D9IMOA/8NGXAuO
E6SM73Gjo8fYiujlA+zy1HwwD0A1PDFFYlls/Hw0lxhmqnjS5qgTVlBZxu6obE4o9As0dTY2Aw9M
cahoQwxJ4KTTR/rbP24KrzynikduhD2rpyPBGrBcteFpK0V4kdVO9b3SZTbbO0EzePyyHZMOoN6K
ouvuSr/poe0Ye/NOn5g+ciZ+26vJos2ppFht9FzY3qkW0Kpbd2UJBxT4YuPK8lNdQjUxJyMbAIwi
ahC8x7q4r0q47Ie1ZBD2MZ3CIewxvJRWnaSi9/JlwgI3D46amGayMh2FiUGamxeBbF2POB2/HD+M
0fY8gOsHAlfLnEmplGdwahQuLDNSnH2VFGEwe3/MtQZtQttLvKY9C2SyXqbai+uY5pzvXkeOVrlZ
smmj3L8BCd/Aea5vkD0jcNkrAWHDkp9A+T9yi4nz3gVUtSnUJ35gQpHVKl2Z4cfeLv/lAc1z8d12
0H4Wdd5XSXZgb03hLr5VGh0jHFip6ljI1UqmdXWaY4aW4m1soc/KLb7wyhzs9Owbu2777j3nxGPm
Z9RfeKu0qcAgg6ojSf98mEDoQdjW5IlGiUwioWJV3ZWwhjE/Ji6mDw0iJHj7qIvvJ2n8BV6xY1YL
hYiHftOiLsgOgBhFcJu+RHk4hpWtcP0nlP77LK6VKNz0XYpN924iJpDqlgN3H+H+TOBJ/FvuXIfu
lg+J3XYLliwCiZiiFjGU3FmyVAyltRNdlIYG0J4CXSqxcn0yZlry+QC9NM3U19a67DdQ7zZL7zeu
xwIS4dD/gB2C2sJDafE29VQykVG7+H7sCXlY7bc5x/mf1l/DgoXmdXMw7ecdzildv6ObJPGk1N8O
FHePBYsPhNMz8wiBG+Ad1IFwkmAL5SNijTe4zcnidfGeUawHV3cipwgP544iePHUtoSMaPIM9oEQ
ezsgu6NVMgDxAkgA26WAHA0xpNYP5BzaohRzqXzSODQJTL80KhW0DOptkqcGImSsQcYebE704geY
RV43gYos+B6bq4jhZ+pFbSBJ5EJKtiAmSPEOD9lAk5ULP5Q6NsmVj1pA0bahw14NfQSBh8kSaav4
SqWKK8PXK8NOW9l7A1XMdNa9nm6ZLvA/9cyAIK1X7ruigqrKDOF6JQzEeXCrgl9q5e7j3zKebyvB
YtaQMH+7KH05ZamSrS9PlRWhLhE2lAcwYndSQxd5bvkD3UK31L6qEzhvi33X+HFtsv5fFXm9T+HA
zwuJs/d+N1pe5L9eV1293FBRkNQzrNyTiLLylUDDyBOb0kSRJmfqkfm0ed7w1hHy3u1GJjyMI4Zk
H0ONZ3c7XiTihk0fb33zSraxpoXBBKSCyA2MA/jIelfTCy3+pXLvQyjNgga4SPlEx68gLkPPAmQj
l1pzimE3NtKrhrgDF8CmehndQz2ubulfBFojWPzlWD+Oa4XV5stwG4BsWewAsnVB+5gzi8h+E3mf
GoxK6VBM8kTjLrD4sKaPsw7JMdTETTq/XTTNTuV+vOnvRPRlqVbVJqB5qDVSJMYKVjxXapHlVUz6
i70fv5JHf1iLgr3E7h7khb35tj3NmMU1zrjNt6Es1TGWluqPaBZKgjMsxEWyBL8xi066aPxn01Mc
SoLaq7AIIkjEtqKR0S1pO00kZHN1xhnqJeqQexFRFV9k6zx61rAPn8xJPKvZRL56GhIuqVwNWt1T
gVi8KBamwF8QoSS8kqYLFDzPpxfblVKgP7ueLtD7B1CoizaPE5VrgQ754ptXh0fXOmg6jSi82R1F
BRfGhg0j4owAizIFGFxaLHlVB2etz1Vt++C0/het3m1OvEKBID2oi5JMJM0hWx2rkifilEJN+qgk
bME2HVqBu7yOUfGIfhsqlIjSrMnyMWpN+EX6PjJZupqGETh1wVztu2NXNsl55lsMjiIY2ZTQKN5V
fhUy0TUELyBOeiuIbTnO3HskkOr/6yH011TsxTPSHazZbfCkIjIdQ5I6/CzVXcGOMROCIFV3e68i
f1PgTKuOoU3vgA7I1IEfdXt0x08YF/1UT/apYfY/cQUP4mzx0wq9n38HrDN6VEuWdreaN3T8qn+n
Hk2sz7IOXQkwWeHK0wecFr30QtpDZI+1dcu3aA/JrRxtJPTAal9VDY0wV14Bn2ggSakzCsUGEePp
GzW5+ddNdMIWUw72UjUfWbPKO891znxtVCey+mBTINjKXOhXowda70iaMcf6ZuQzS8AosNfPey1r
MAwSY7JFuP91Sun6SSfSc1X1EnkkbzlIUlQJNW7tv9gq4UPZv65LiUwhyq9B03ucQz1kzJ1lIF8I
85puYHFPYha1k2Wf/0Tql7KJkvtB/xWCSZEiHhYKcsmrgGlpNN5bEaUjOtA0idoKNe6wc5IUnep1
n36HXQytB63/ArIflWHMZ4vLxoxCBYU6eoKqAFlfyuGeU3urBbWEV2/Qz+8BwE9oU43ncA8o7Qqt
WPzEIvfGyAB/Y0epB6Ts4Okp96QZgyrwqKjghsHqFyTBw1OSDsl3CqQp17zholnXB1tES9/wk49Y
T1w2K5JqxGW9oHofXIYaXJMf6nC2MxVqlZVDA9HvHcWKThw18k2iUqnBgoIR3uBu2JqElb3LPwOB
5nFzWxxWQI0kG9O1YLFGYzLp+CnrtxpArgH5w41/KbgQONGlxYnK4koIMgIe03ssnBybe0minv59
bet81WS4JiT6cqXATwTlcPCidk2yldmqO7z8hrWaenBA/tW/w78mt0ivJN040brwhRrdXBCPiBYI
bFfPvwcNPx4k1DVY+pVwl1t9clmrXvisu44s/Kt0A4Q7nUeikV3DxAXvZ+YRkMP8a+baUgCAfwNQ
chr1RmL4bcXIDu7Fc1nvPhohl+SrEkNyP59i7kdMbJJ+gx/WO3YV1qVeTmtNUYKXaxQ6exk0v/56
HFo0Z4fgumJKzd/tFqet6nZj5YTGmVr7yDxnOV/Lvbl8cMzdJqZIPEBeIvISiPMqrd8uN99il+iL
7CfW8+10wW8nU9GR/9lCUn44WxaOcwZsbaZSiqZE14UrhY6naTkj2OXLRYtTgh5X+dbw1teNnmd3
aBieVbl+WXkuZ7alT3uDA+UhTLrjsacAquPg2R9Tmkzk+zdnP2oDJxO2DrsiqCGyv64XMSTUdbAi
0/WmHuXJxc0rAyyMZSNGU9FKUtF586+3O12qmEUeV09KYPjCdUuvuzRSdGVUVKe/oPpln2KwWJWf
UTZF8ty1cree1pgwPy70NkgTicqmWuXdg97dERhdj2n4XDKZB6gjI7XVgX77NicQCUUNbDFh9SF2
f5ImIDAiKEQAobluscXLId1SSHYOR87zhsLodjRcLQfEPC7KGGeo97MV32JEHD/Qq3ua8oOHAvXy
z8pAEGSX8M8pwl//+J08RGOc8toLr/K7eSkfrGYMWjjsfJ4TgvPeXo1XlZnDxEOP1QL5NIhRddE6
EEQBIou97NWw5VzFfez8zUaGH6qqPQEn4WGqGZo8Xc55H2Vkf0WMAK8zTLX+9a+beFTDmkSOlsCV
wXY9AEHSaroUtVHHHz/YsQ+kwkmftVZrJSy+XhnNOZmHTtJniduaKzZt20PljbjLbgmra0hOGhv0
H1QepYEJ64ki2j5bp/5lkVtVE5Ju5cYv+oE2SApagc30HvWP205TrGz4vyG38n91rC4g1sHpa8Es
MvLw9+hNm0x7blRS00XJEVpbzEN9O9Ex+r4viVV3iF7Oj/GGy2RwXepxZ9++189YpVmq+ByVdtmL
qa+QKzGwWa6uzUSAGh+9ydjZgLNPheIVlJhcWgFnGBVRkDaCjHl5/asIm60/iZSvVlxHB5aKI8xv
grwpuqPufALksMsbWY+dIlGqslT3TgQdN7ZMOB00vWkDa+h9/T2Pm4AY86PFFiMfb2ADKDeS1GLa
74RPFMMJu5yXnXLi7FQWaBtdAMoFt8KeujFHXi6yXG7apfHp3hJVI/xD3S0ZexfWSsBuNB2IT07M
nLFQYDE+WB0QezKcFnytA/6t04Utf9WaHgE33ydZITkrO+PNPN3m03DPqhpKTZOZwhuD7NIZzbxn
/gzhNL8bclPuqxQ3caGWjW+Omwqybp+FRHZKmPXXDAqzPv0lw0mGepLuYtabGOsLuEdJ7rnYdNzo
FlKSaYarVirS9j9Fx75UklMHKHrVTucqwxXfvfx80OD6wfJke5iXcMiZgfC1Oxm6JPdxcdhVtdzO
R4NmtNzxCrDhoFWXV+hP6ne3CsxE+kWv+SIR/9aP3Xfwts7TZeSmaqgQSRYwjhTCW+2iM3qdnQpL
1LDYQea7/m4Kw/nueYtHLzl3oOeXfy1Yzv/15S/SS553YQqTzsyr45FIdkI0Bltg9BIh3Af+IjC4
rbGySm4edOZlwWMcxoPDRWc9Jx3Q1/ffPIDxs7MADJe1NrsYatvL//h6ej69ZeRw+FVPCBZ3yucL
oQ3njK/PbwoQtHq46cQYYwYw8SwG2D7QIza6ZrV0lL+vxgi+QGySfueEItl/veJgZlycSHE2HYYo
sQn6ZQu+62p6YXg/mWIuXaeRV83h+fHKenwE4Lq9lROH8jq4rIuyRTBeewA41lnrlCTz/5+6oF/i
1qEqexjggLKJeGYTQKRdwq1qSSh64csL81I93kCmW+b7DB7ET7Yqw0cmNT/28E4uQ7x0Ucgf8ff9
ix/SfZkccnsf+sxrfIA4+XOnDCd8eU9V4IoqGcZ9SgnAfMqmZ1mUGKv/cii0gXbDBL+6UkGBgl1i
pSn4hSHXZ85B1hdCZYh5hcrPB72jEb5mWS5/bJBU0m8spf+GNQOoDJBpua5pB6DeHfZuq1ffgpqH
Y0ms3Q5QDSbs7qEa7K8Ghh/nDGgae7MeoTAfQJcFgtJiqBZ1bw5LytDcFqvU7X1HCGymgeNNm5hy
++rrNpGDFYkEsHIAO/4+eYtaA9kI/mi8SKdCxkg7SxnO8hZGIF5+hGyzDUu9rckigjJeLCx/hARD
uRV+yeYbctndi5st8cOF0JVF/oW3FvZ0uumgiPs8i2ax5w1AzJCeiAhMkdVaOk7PVY7ZlwCZFgvB
efEpbb4qnN73H83gJ9xu+JMlMTf5GoH8o8A7WkQJcoE8gfE9bAjf95LG3RkdhhYF3LG3/q/cPWn5
A3bEtFx1rnJeS+WUbTCf+tT/QltpyxSGpuZ8Qd3Nau0XMesznz9Jhylcc1/qZET4QazLI71X3eDE
AhBI4a0P7frWtdCZyR4YqnWJaSQtqYMFQxJMBkwNYJYHDiwRnHFEaIrNrotcc6Ql3enQ8KVfixuw
Hs7tx3Xa9hpcQInmp3ddA8VC6NA2rvQ96CDIyQOzowbWO1guTO6iCZhJuucLhu/FkMnt4G8eWGg9
PpdOCoemEyjzXsq9LBFuQ384hn6eMaVOhyPlnBrZZImdsbdTFeW3YUcC9ssUcER2KCBUGkYjeVTh
bCxvU0IyQvZayAI0BtnKKrxPnRki2WNpsXyFmEL3L70wUiOYfIxPO1KokOom0Od+wCSqVoVl2XEE
RPIwjQms4VnGzF5cn6pxYfk5YtXoehANsxelepVxZXFC+Cx1IjpjuZkloTiXPvqcWzGX5IvEE47V
Mk7XDXYS9p3uwr9mtOy6HiU4+DU2m9/Sie8Tse3lTXO8KZYPTVpuD7hypRQ+Cw0t2IoD2AhVKpvz
cBLOpkPga20c6ChIRSyQIvNxeH2mHJieHcoYqvJKqUlSh64TCuPMPDcSFxsanjxuJzTqI5ctu905
F5vM15Zi3ryjfZJSvB0KbH66IPR/wxd6xRruMI3qIKvRW82uch5MU0WJMbWZ+x40bI+JKYdvJeCD
ATg+F7lksgZP1PQOBhK5Rb4LA98AdhAn8b6Feo+o3/cnOwcNCpa2c2W4zOWg6D/mFC1Wo8ne5YAt
Zn/13nZ+dabcF5o8OAjOqDinoFAtLephtZooK00nAdjxSSUUrolmjFFAJJg+w9TwvloA28kTNMS7
wyjpHAtbRdUeOC0aunW6rOMIoNE/GRQbkjcz/Ul0u6Yln6RYYqLZEkskLCgoBF3xxbGH4+1pLuI5
L1JUDMiSCkggFFJkU4PzRjr7+cPjU4tL/os6xuumFJ0BYwUOHLF7410zp/U1faNEjnKm9yk5NBq8
suMRaDxISrmKld1ATUCJ8NCRcKloOXNKXXCQrt3tYRjrm4FZPiaNX3S0LutmRk7KfATVP8k/dEzA
8HnVo3JpRwgq87/Zc/ZrWEpUFso3eoiwVs8KqCk4KOsddCuXs8VPpESdFXyPXcZKeTESPoohsRgC
vxaJR96N5xtKVLV00iATclRmAN13rImAKttu6HB3kCnaBOqSppJVPohIbxHjhumXPh2qdOzIbxd4
RH6SY+Cl3C239n0YkqfkuqgT/N4Pk+DzActC0qOlkG2nCN5BbQNsPtNFS933rN5mmaK5W4P0DqAt
i4UL842q416IjIMZjuubMSXR2wulH3XMmvwbVJgAzRqUi+718KIXDayWWSja7jQfbAXPBL8upTSs
hfQP2ui8vdQbRAmAglQblAP9IY5m4VyfPBRqDkYiMLuldt2IjqKwESlNBUXit79bMJxZ7YiNIytM
RoLYgVqAHdUnmAxfMW+a+HJfOMUCFGSZ9kv3BaV73dmHBAc3W0pPAomcJLnQttCXkuaptUB7HNbH
r3cYF5NAmfW63oJPL8avIIyklHGKA9R8/3HRrGdZ+RGe5oEpPUQZ7bNKCF0XJs+XKkwVTqEXGfhK
FLFE3+3zPYDvcKHWcBp+7oTC3PJarr4Y0aKNwXL8O4HW1/ev7vhsRr0CvA5929ZNv8Z40m4AkLwE
MQUPm5kBXPvMP9txW0rqXHPZLy+8TsuI6xCG8xKXRLlp+miMcnHRd77wl6YV8P8viU5uXloWPnAx
/AKkKnG1dmrOCOzN1dtIdTHVS5I5J56O+l3dxzE3NW9STM/s/2YRPU88g/TmBffrTURFIEP0UNYk
KwNEqeNlJ3DuwHhKRzV6xkIa5Tfulan1+cgzto9Te5LHUav0b48JdnjKRluGGw6Asdn9qmCKmlgM
3EH5KF//fJf/7SxONJUYqVq8xE8ozKSN5grLSLgw2lse5MTiUacvMsTN65hUGcBNRJBW0jMvybIE
OdMh+1E/T05yZRatvK8e0W2HuEjEQr1xFZRk5VFY6AwJjkicNWKOeT0o0/duKi0TxwJK5GtnEqQs
vkuMN4K68YJ2OreVxDzj2g4/sR4MddqOylqH1TpYW3TTa0mI7Ar5wTsdA8DdE8sOVLA2PttgGAD1
3p5r6pLJENk7FMDpA7Yc5wtVSkOoXRep6m0M7OHc3YAsD4cJhlTrqqmMHygfy9ru9Z6944mJOyI3
Z7GIMVHW+iWSV9RrXXuYOwIn55StgX2RBDMaUQg1nAxkIneT+LBb186sUAkOqL6K5dp5AMO3TLgx
NClPkSd5QetRSsvDDNkKFjXb8jyTf7Oe09ag51ugpXiFm/zxEwNKhVEu9YH8hy68xdYyFjLm6uX1
/hcKLZsG/e62GywRlGkitXnY9qV+oWcZ73Kg4LuPxjPyb3zAD3EgGzLNRziEL7gqKbk/HN1J+uMC
R68H6DK8gjrfEtYEsrGaeZBrPgdDhFF4SY50Vozkl2Kb3q5/fqk2EekN27q2WvtMis42Ly4Jb9un
ytFBwztx9Qwroqyo1pnCA70xYGegR++UMQZnPdtWvbzS7vzHlmb9O83WW6imxD8lGKlaw5l+C7sd
1Nr9CoK+lJx1BBFqpxopGgFmmZ3SRpUqTxZCBCOftsdhfK0HsVDNH2/QWthND3px9wWqIOfegRLM
dSzKMJpAIMLxYh2NYoK1Si8zwqyB1ZtHDVhk6kXaeAiFKz+7IIEFEm8Vsa5/v/BGIq7tdw+yvddn
rbTI5QGyrz6TRBZ5jZ5ZlSgheMxiGK0EAdrxApYY5aM2kIbfJoGBNWFnp0fclAGKSo65JlFmwKWD
ubde7Ymg09NZ/zG62bjmYZDe7/l2Ofgv9RekTsaSI+yeoWBQ38DK84JCb/8iZrM3iudPLc1/Tm5q
zPqAEtTHtoUpAzbldJtYRledE5bWZRZjEnKiBsKjOA0817JZCrXDo88Bq34NB9N53YE8QgHN2H5S
rU78lnCz79RzlYx9xnR1Gx25mg2dGwon72U4R+I2caAamFNl6dkse7ExJcPdpVkBm1xTg9W+hq3p
xQDTDPQQ6Q9SKLM/JkeFUJxsIWCaElvpF5znLQKXBzn2MMCvBz0IVDiRPZWIg1DE3jA9BbpQI8J7
aWTRP/DiC5i0LHr9/TqOOOnZO1oEATyP0a17/fSWMKRkcU2O/e2rJbzv3V2O06iTik9NsEgkCfcC
OcGCg8wiImEKAM55XDd2UFxG7MTHrlYHsjhI1wwz0YqgzhmAbdfFjtGPY8lk99zeUYI0cKzgbneG
11tCsc8O5MJpf6vAQJFZNSB8IM4dVydQBInh/0+Td3Okuv1sY1bBVk0bMnmNfRDP8A7ilF+05icN
SznjSTWbNExhdjHywvbCAKrV1cBd8BH7KE/dTC+Ry4+2bDQrN63BmUg53wF7HczYE5TCpoQlf5fR
tdBw3n8Y1sAowB2xigeqtja1Bp88hRZX0gNCRerKxKYPNlGEDe5sIZWStUJPEFstLb9hiliPnxEH
ELIm792FKo124H4rgil63cL+TZ+RntnHU2bMJzoV9SJKZR/2ZbAaZlgtIBvFvnq0d+uGxzptYfmT
XOFhWRfjsk1/Mam1luuAV0SXx03dbr3OaR3nxhymzXVC0KIxynFtB+l/uxKZnIE67I+xXPwd26Kn
w5MYIanmLkN/s9gu7B61ooJtQDXUr1jLfAp6ZPHO7kKpyP2ifWWwdj/K0DRBFLC6hxV0uXDFks1f
N2BfYamMnIyerjgIfhvd6qUdPKks9N4pBsblDa3w82STUJWSzGbheGLrB0uULgrVD6CV27xMmm4D
Y+A13q4VJssj4RQ070rV7hIIAT1NCMhfgsNAP1JdzF82WzUx2tnTQzBA3EY6J7bpC5/4JOgi0/de
HVIFMB2FFf5B3Zkq6vfiIXhUKSuSuUIkiUFwVHbs7+nBD2tUTiD9RwpitLEmW05U3B6YqHBezamQ
gR4xbyNBygF1AHiftMmQ8Qa+k3LEkCzDOAiELYXP7EhX0rIfQ/yT3PGAqSFzIFGjoquR8eDdodnk
5cBjzDLF/2PSjUJopFaqFWd2WRoTs/oq9ZvHmH/ILbvjcLSVabheD/+tR5Qw2fu07CaO5dmwoWIY
1EgABrdTk4CG6bjitbsM0vsKShzUrP6zXYSlrq1495uoKh5ymjyfkAfz0KwUZJbFpGknRQKdQB3E
5jXqE7C3JXvAFavCDsm4Gwv8nvPiCZW8JhZj4UVXk0rZ1P/6I3drZ93ubhz6Ufs0sqp+XqC92yz/
81IRIlqFUWG9Ousy0nCk1K0S9Rpo0GmfFQpxfcyM29iPhrGqGNbW6kjog/vdOX9GC2y2cNwfrd8x
Vroy0EBPxnODKPhQAlxQbDXlqY9Xk5VoUAObyMuEPflgvUb8E1GQXrksPRRDwsc4yUe1ttHO7zO+
50m9RIvE3upje7A6Ub8dm32uBiv4U4Dp3VYM8/uIKIX3g9/I3g10h8GR6REfUSIDfO+caip+BV3/
UtIfWt+yaCJE1aAtCLUkwSDYOKX4Gtq9j1RMcg9/GeERz2sH2QCmxce9yoOCbWVry7M+zhsZpW9B
i+JH+g29n6Pf5qo6GoMhY+11ZsU/05NlfE735frDzkHGBVxr9hX30IzgQh8lBA46HOJnTcbdC4kd
4X2fBeT/PphnjMrC+r44DpXYfBvWqQiRuz9oNqV5En0+rfMOWPSM/xH4fCnCyfB6L0LBTEiEn7Ma
Clj5rSuUkQPOrzx8HuDEh8fGuWeGkTevEgj520Qyrx089sI+IOl7qdvjsKDJroLLhswKVtITYyic
fkWSMoDBh23U8r6ZNlw8qo+sWSG2AyR4WyZ6mM0aG31MUqQiJZHgUMZWQo+2gfyZXMSUC7kDKRw6
QpAW2OkN6m9ay1ZiZjshLBk4A6WJOJUVkfyKY46fD22AJDPihWygFLT6RJDeWbMKkpTHJJkeOE7F
Cxg4kjH6SccDAJNDIHnYl1aUMLwzYqTL52W2rBYwyF7IJfj/UgKuD+dlNdCg+Gevs8+ILFWcZ67w
tE38G3GUI/BaS+ZY72Ub8b15/2/Wex8JX8gO3eccbm9sq1uW+6fr7yBH4+n1rT1LyvbYxYs7D9hH
iGoZwWF1UEl0PRhD7XA+3ywbSGle6P24eNMPaXW2Ql0mvTS3Iq1fQA2Mc9iDrBesRuvMRXt/QOlb
FTO+DBHTy4J4o5EmYKaI/Tr5tLcSMyWI8raAlwq+ZsRhthaE/O2SF+cSZJ15eYZfLeg4/ng9GuwS
rl+O/WvKaJKr/5EBU7H74ZD3kLXyyP2S/RyVniminNqJpdMIgT+de1UrmMZHHQDExPzkTZKtIROE
w3Hatr4cNlVNjH6FDe4uXhVgYAT+XI56sWgmh+OguEg6PFtJo7dOgE0v7p9RajP8ZPmZQKm/YG/D
HgvioyPDSTfPtWI3kpVQIJHzUnGYuTu/+C8oYGIPDFnAc4MNV6OjK+UdknZGaJd4cKepluXlSSeU
Hugbyo43Lz7urXFIhFmgm3nnXOh2bL6fxfafwMVataWRuA6OrCLRquFa82dMRZH4Ez/A4NILpTXS
/l53xSF7iOtTz6HUZ96XNV1iboQNA8ng9L6arfWUFwI0XLz2D7kE/3Tdhc/5scwpnx0noGyy+kwI
SAhDPNyopTyuvnGrnUo6jAYNU7zLfGL5mQ/fj24sYz6uo+PftItOcZ4m5WVYprzYkNKtrvdnZc/8
nzufrGJWYGQE7JSdu5o1ySV2X5Lf3CIpVGcitQezl0+GiQRIME31fGoJt7ezHwcLGNa2x1h67Qde
Hf8ShArhcGlPtKgPiyk8me5Z4upKSCN9xSDCebWqTart5+PG3Nnxf4Yw/2w/Bi6VLKlE4iha76qT
9ul8StCcvz4kvxo/+VzRYdkh24YmmhUsvEnz/ZbOIr3XSxZ9cNErE0TrN2eU3QseAWgvcyrpYoi+
DMG7qG1u/YXmtRelscuQoUo/qxmImOEcGACl62JrQ1rgogzegxTHQbfUHe63SPbRH4b/9bNUaSCO
VFAy49Tw1LdVPJIKOnmHqWisPctKAy1ZYcIufS0iWIniFbKJ2Gotp/FEsSNhYMa2EuwvbBIvKTaA
XQtVIfudWk6dEczH+rMwYkXaCNNlZ9PbFHeLIAlOnBAnBlfXaIAHZdu3KpJHy8QA7xDKI3G4HVHn
jHzxX1L7e+ly/Y0joBric1iy7FMawmFxtt6a4A7gH/MPi7ENYodRKm2H2pywLke4qJMB85Qbr6ku
I7jOSkSgu3rl3JyPywvp4fsadBhuW1WDRm4p/t8f7Xx6ahGUmWXFtCgqAuRqzoQm+XQx6f+6SS3+
D9Ye8t7beM+ykVAqbmvDpjj+Np7kLvnBKnZoQahUv/A+GO8gapsVOiLYfGDFqT57HLFT+JAwM/tx
bKyjJMHu6TRuQy6QaYKzD1iWEl55Dz0OLt+/pUijG2nGVg2uBLDysQmlueshRLdzDEpYM0c4ajIg
VMAFsaR8P+0vC1gQRwOm30Ezs9aV1aDhuAb45wV8zXyrNu8RjcDMgjLHa8i8B2Pa1A7UzZuNnz1f
yIl1LRlsBprkbOmNZkaqCNwoY0B4JcGH8CJYz8YtuDibWvkHD2J74+qqjXzpbL8DFvby2dM0poAS
HGSw3zgpuOjGcfHnpp6Vj/CS0ZZiNbioAN1RtT6mEhpo0ds/CP0l4RkbluPtJAbaGyOWq4IUHHU1
voOLUB6oJpOcGXqquIBcIjFIxuj5r3BZRZS74pYJ0Hm/3cCgW1+hmK+twaoqeVV8Zw0mJUkKBXSI
2JRMreaxus1V7BE6JAQsbdynX4rOmByZ8Lx/75N+mzUsPPnpGKsbWYy1E0GbzARptTnVuc4zi77G
6pldtOg8myib7cB3TfePJ73Ut57UqvchVpNtBrIKmqZ5a832ByhszUBa/GbmkZxyU/kIWE/kvXwd
EnZT8LDuZi8ICHjKl9EXpNN7LjaeJm7XHW/uC8/aFQLHeQkvcFA9olbFXfBwZ6IDZyDjIIEJEMjJ
PvMtCEDzV2LcJHHpnt1GkCvNDVNlkgTUB8YrF0G/1lugOdU8QxqhIzmc7/Hd9JS79Y8ZVUL5mEB/
gMpufWHPr2nOIkAIpOzIUbxhucP4dhB1m6i8QcEPBPkRvma3P8a4FX6xbc+UYS9fHRw41sNEf6c7
jnt6Z8nR5NqHfY1IBhCSJ1q6pYtMqv4z626Qd1YJ/aIQRrHyIfZU50qS9BJs3il3utbAxwMeYXYC
i1BuR0RQsFx9qkTU1V9tGFkFkxsm3Dutm+zvc2/TCDBS/I3dm14xFcX6/0CTL/c5tPJVeYzgrF1W
P9RDI8GxGmoBXffGseAvcSiu11prTOJV8EL2pLpYeCvExSKpMU9aGWCbHEHoVFpFxetJ3uGto2jg
pwkJwdwpJhlIRh2tp8PKCIxyK4GSPzzqZAaN8kl1FqiyMWoNE8coQI+17UCxBFmR6G4wwaImVEid
3Ahlha4O59cKwsSfyYkarkKL8BYAnFQ8JZTpp7ob/FuLDx7ZGYiCqO3UjqIjEjIxW0Qs8w0fZoFe
Ku6LuYZ2jA3fnQVFsqx4an+PjbIDZuzgeOJIyOxpee97ykCoK4io6YZDCekngfC4LQ5TY+3xtvgl
bkKjFveYpS5nm/FurE8Hum2wIso6iao6v8GQZjqUVJqabGqgWgEc4qODRvhOV2sTO4EBYTOp6EGc
/v5ULkPPH4njwT9flSIILHgBSkeptIdG7mU/OFtEtILP+cSo/L/QsqZ3P8y0yqjlTHKAGs+K8Zhg
ILhu4Nf1sGik50cyn3NCAeS1Nt4O767gvaNYYiXGpP6QyFPwTySsQUXZmYubhoqMN3/C87+nQPOv
apSy2EwUVaSfgqUSTbVHiWyh7kn5zHy4+9TtMDAPYouXuS7qLRPbXI7dA0QY4H1PhCeL/NqXs0qX
uJN/+bjkyRuH/278F9VoeAA4EImD19SvBS705QkhvvlNb91u5Ij5FqfN+OjOLEw4lXQuotdc1jRc
try8h8qplPSWdFEn6Dvs0/VBfoNuxtSsIwKw0FlE64OvGNgxGviYNbblc5LafMRJMNn+2Kl8NVYm
kH88a9+OcFEOlRsJWMstNTrEDlGIqTNrg6LRJui1T4K9bNYUjd7L4scbJwCU0cv+59e4CsNwsaqN
YjLY1aF+0fMmmXJ10kud8quizMXaswATUsV1l8QpHtg2LcIH/hsN9+K2dTb7Vo1znP4wR3sbKZ1t
Dkpg/TUZZ/shxmFB8Xz8NuKPiXvVJuMiu4lJRHGE8d+s+MviMC3+9aTGhmSTroRfsr3b7jCvM/Gt
E4e4S9Dvo4XMmjMkheUKhutxwrckLUA5L5H8rQwH1N3NROVb7z85aPIYftOvzyD0ic7ioXn3FjkB
SRRaticzQOtXrHr9alEP0AVs3BLjZuFIJJ5g8W9MlZL3sI3n0RfRGLw+Mgxbc+jRomS0AX2/kX5F
L0QODoI/xH4oxjLD03liQyuSZOSuujAwkVH+5RvkSyDPCw2/xryBQ9CR6GvHrzSslVOk1+LazqeW
qgJHqaCvo6WXwpnAsXydvrvGOVRfs6Vyvy6lREW2ZTIGcBEwqv0qNAR6lnbSz0z/DtFtaPX2jiBZ
5qgl2Fqq92f41Qm9DH7cCDYxPpaktCoD8UQzdY4dZ9/ReeMnA710RJnuyC1wcTWkkdSoU6oqzgyq
1iE46ZHSd6yhlmTDbSprplNYaPwTvc0YanZGi6koL5/9SiXgIqhZ1g+RpO1OpalPymXp2WIsQi+4
U0fytJI7vw9Zs2tXW/UxeTeF0SS+WM4Xmfo48XRPymQUdfI9JEqVSKYFY/e8nqRS6qgdgRPWNp4D
gbdYCFvnp3upWSRm4N1hwXlZfCP9RllYzAI0V51V2UuDLSE7PUDLSFyaSIhWf11ANnXEJ6qP9BmV
yK1WkA/mXtDprgBo/mqQ+w4jOgZWNEFCZ7O6zzcDNV9SiPujH8dfWZx3tBF6FAZtbJus8FudwHJp
Uv6h6U4aROEFKXbmeexlBWRypZG21Tha6qz+xcRm1tW+zGVdjbqm46mI5C6rrX+kWszYBcqW9+Mh
oUnH61AnAvYe6Kmu/lxx/sDfXXbIY8/S/Hybt6zJZEXKgf+S0E0pjumURqLVmqDUUP+PRgHy6Vtq
SVKBC3H3hzosEKOIC5n5tApcBbkq7nrSurczZf9mqWS5kOHSzgPaRRjWRTYPCLxQmA/69ZXRs4DA
c39RXQBAXotmjRe6Bcambry5HauzM4Q9T5gPdGbDa6EF1tBzo25VTc8t7V5Xd/WxRDSbK/9cqubB
nvpb6WcJVdV38UVEO40SJN56AjdngbEKAquDX+VI4RSLX9eOcV+GrQ/kltcpPa9E86DLFVWMu+4P
lDcujea+1PGSHm4S1fCsiSRPTh0U1DzXNYe2uXydw5l1hfC5dDYiARvqRg9MOBCmP43Q1q8aLP8Q
ghfLm6gcZt8H0Og0umvWjRzQsz8UJirDCcu88o82RbyzrH5PF0wKhu1pKWeUzpfZtZkaq78eQjbA
iOuCnQRlgPBt4LgOeY+8S6ShNZ6xZMKdroMqiv+aBHJIJU50P3KPkQShtBoXZnrKl96lI3Sk5bA+
mz2mtJmVhC03tuUoeXGNI9H63aImgKjdYVwo/06vmhzGXNWMh+Sh7mjE73g/7FNBYw6QGEBeuBXe
GIV4ntRNSpN6MoGpCqiHfMfmpwV19oLtjnMOTzHvQafW9EhUOQcNIZxbbNouZjL0D5b1NLvyVZwP
IKI7pwPZaeT3D9NKqa56M9YlbtqJZjcjYR3yeh1mCvMRrJYvW6jP0HLSq4yTvW7WMNgXf/f36TGh
lDKbQ+R2Y1lRKWg3iB/wRE1UuD3PkL0PnSJS8LiWVDhnvngIFmGQpraDze+MNkXOzcEJJuhsr6sk
QOPNHanZnP6N4p6+UUCC0zCiEXXochXgbsZRHNoncWqDt9y5kQmcylqfqDAvRGDajA4GH2mmBwWw
MUjh5e5xv+X4ru2T9GzjA55+CX39QkSiHQ156O2oaV/HkCyNKw4Xnmpuy4l5l61w8Ua/CPxdu4Jq
ZUciF7In2wKsxUa8iVhXe79Q+fWleuczK5//EYkEfzLA0DQJdKK8UgMdPCs77axTeWpk0oR6J396
ShxCMxlilqyT1QZpF0v5iY2xf+nu5fjJQySqrzA50Ryd91B0OON6f145AeXeKmyh/A2uHi2n9XH2
JX0IDaLLFivxAsVNAdP7QJyPDX9MBSmMZQhHernsc76BTKcAVvnb4bit9kpWbUGxtc6Z4uN9XHPt
llMLcQJMZuRXw7t+dZgR3Pz3IuFr1BjD6CkmGKqeYhyl2Qc3mjcECsQdGwHl1hZ2LvMzhVIEaG2R
dLiVHOzHsJmePgg/9jWYn3XxK78XZzLYAGeB1VvoSFwf6WQgy02R9KXmDZUV2tMla3rRvE26NKpW
rc/Wctty1t9QhIKzt9KOQZ8fZkSF1zUIHz2ex6NKe9R/y6uKbnVzjmtYPtWYnqGEL8Ibptvyzer0
VhPvWiv/Cz/f3TaRSeYvCfbhGr6CxkRSi5TI8lOLZMaBz1q+sKXtMqRdLsVYCrHWhA74IR1un0sx
oh5TJe2wEf7+it6clOlN4YBN43F8hRLxPa1jcHdRvRmQhhXneUtWJ5yFFDU0zKoOmbaFCL2yw2GR
iWo3bP5HqBYocKGPYsJXS1kxAnjqLuNsIA8LbZFJgsfnwkaomwWGe1I9FADoNqlqBTDgBmvwZZrg
Tk8bjOWlOG+mCglTL6EGUZy6fqw8RtZ248IPmpDRk35Y8Q2eXVlVvRK/Gfsa8L0418Z1hqjsBk0V
J+gIJSUcBBMCYRBRALy92mzN2qwYf+I9wQPs0FUFKZhEpWP6vQsaPtyAWQD8KaJa0iaXRIRnc3Ef
97cHSkWxo6usaC/62vVCfJB+9hnJIY2Y2/iecijvF6hIfON2i8HQ1XJigY2O2bKW4EEueOYu58qP
CnvadCCQD3SdQB9ed3pmLQCzpvoHrmodvXZQCh0dMt0BbVLppv1i+/C0DA5Y9iooCKbYo6PW1z/c
CbCdnVqUOqTw4z6FW8U+XaVVSQG5H9/oK6magUXd3IIk1BtWccelECv0jhKz9s/9jJHNjqoCh6ff
fu2qy+furuyWmMmy6a4gxEBqb7fNJUruNpsj2E6VX4moRNIOfBW1vXfHYoGTjxX0lxkHu8siG8b8
J3L5XmizRbrV7QdBqpT0TDmxENd6tZOJMLJ2qmDeMYB3RdiPBWdigr4hUyS2qkV8TZSNX8+MqXDa
XMhm/mQ6YAELuHgqecDRPGdOIYyCc04B1Lr6C3dV7C9puIWLdccVgF9BSk45dGHbQg3IZfSOnmT2
HoYzbyH59yEiJxaGdOwiwzzE7xudI7U5kVZSz0wGvCan9qfI3aPliQk96MzhMgGXtQy77VV0ndZg
hAEMtUgI4ocyo5SVNqiUyisdlBg156eqJCe90/VyVjoPTeGarzrWhrjSTY2OPpoymD4JQ7iHq5XJ
y2Xljb0eN2pQdNTh/FDLTQuKMuNwPog268q776MTTOzEFbp2QsJ+uRE3L40eb4gh6yMP5tv3rnl3
yPlgEx7gEUVt8FDemZBmTyfqHlLkahfpLkNb9mf3WbDzdIg/8l9Mz4FkvVbPOaBC09iENFJJsOXf
oYtZbtmRplkJjm7XYo0b0RNlYgHP8YAQYzMru9Q3/G5wqpoIpTZl/VOZc/NH2cuvyYGB8+NOPKex
N5MMKc/Z/m7zWBpCqxf0wqDb4sTdVzpGhVad420pyv+fTlRPv0G3hOa0xI+k7flRsueF65tMzu0h
ceUZdxlfZ673NCd54ZuCNXA1GFuFEnaIpeHsWIq6PHtxKiMe9IAjGwMqQNFz6oG+z8IES6CY2Uj4
USpmClsLdVpl2Vdt0AtlwwCS9XPGO/ZO0X5iDQuNFZ03LI/oUAiwJoz7/MBydktLviyTW84qSdH/
MmyMYjehmI+dhSEFOjS4E6nOpVSEC6uL4ULzXIrwSAF094V1V6d2C2n/kLdNzoq6mWwXdtWQYryY
4lsBhLiwguJLnNh1gAWPNx0n8xBuv9llsz4sbCmrxyCqWsfUGbusZdytm5bbNm/OcQnlzCazO2Fo
LBD87zk63x2Q4BGW7PPKGJ+hAaZpf7Xt9+TjKeGcZD1TV3mZJRGMwUu7lm0czzh/LZ5e8xpi5VGs
jszqNmebjlQjU0DsW3Hyrgk2TmHq+wad9Iy3IrvGCpzajOtwmGd+sc2TOVyD2OmjI2YPX4PQA+IE
4yY0bgIl11PaYagPsdSIi9DOw3g3Ptm4DAWb2bMtEGF140RbatdmHRW1tbnBf9YysXDWNhRwgtZM
Gm+2bipy/rhnboHsMqAKPHygUT8JzQF4XYBrDtu0DzQ2O4lGVDZ8dO3Dk00io/FGZswBNVMLdbaz
i3xNgcbUY7uZYD7cTeYN3+8uRO83DJ5HndrCDVmtIXsSL2jFeNwwOshqeWO4TyvMUy9SIhinNFKm
WPr8LuP9PHrfR43xBXQ1264eKNDsPbAWq8PxX117aBBSD1zVxXTV8RF8XMe1hz0T99Rbs3wHGdcb
CO/TLDyurkGg8NMartTbydCKe9udtUpvyUP+jG7NuMZezU9c2kUyk8t8nmJwVVySN01mdh+wZ9bW
3jWZpBoiziBxy03SEzoAXW/61XbiX/giD4eMw09ayUkBEYVCx01zy0wyt/Cs++SaVcSWZ0j8RvmD
QofD7usHm5TJmWG1VX6ZwBK5SeNTqvJd4qkLZTMLRntqUwIStRcKb20ziqri8us86BsaHgYsCvwv
xx9HEUAryfcQq1nLlvy+ugdv6+sUyvV0PeQ4mDnmFw/XKGqE2OHG25WYmRyB0UID6qplDptkv1nr
1EHgzkQj2MEW9QmGCz6A4qFlyB4eLmWHtrsI4bcZNHVsIYQ74ZyoOdvOwZonnxjZBMW+byfMeIUr
ECVpe/XDs+133WXes34TtP4r22wLhJtla4YtmCX/cFckimIxsDBhmKvktjLBAxQq2x4wEA4CgMoi
ctZ0MZ6CJ3n9Suxx9wSP5Q3QByxO+cNBSXjYp8fZ1mfXByLXytcRrx51RTdK60umF3feB1boxTHW
mIlfmRyjBVZ69IgXdzS4irXfXH38EW02TsRG4+jFgxjfcefGMKTolpPFJNAUPkmiIEwoq1j58EWA
tHDEPbKWwMZlyQeEyb8bf3Lew4F6gkJO+0uNgfar20AerkOZOj1Ctk4oAjW7zvd1YZcmQgM0jtSg
o97Y7rfWUan/kju7Z7+g3LQxYKDw4uR89MaTvd2sJ/oRA98sAQimK0e7KAh21c+7Kx+x69qxkbK1
IYrnyuSv+vhkCuKQ4nuI61OULTlqje48fPEMJbX7DAIsbLk9Y+C3gaoonMBSJZWOEwFbXCUD6DFq
OmDK6pVOCf0WF9dIjwwBihbpPNFgj0OhgvUfgewUIR2DJ6VudxeCfO1W+d3i1Tos0iSGHOxwifjZ
LP/3lt3Thlp4T80Rat1FoFOt6y+LKd6zhjATBDw3+wlFRoMX2qrVdA2fOqhcx2TD+J/s918f+ZNm
JjdKWfe3gKgrnQpF//JnYV3H6tX1SuLnG4kQsTj4TJF6fp70/q4bvmn0HAommY9PgRb4ToJeqay3
tupJ417Fwllq1FtwX8+O7AFslw+PwEkrck3hOt++6D7UeveL7HE3CzU9kfLG+9Cj7iOCT4JHKDc8
nMFidyWw6Xp+bzsf47oVHPKCBv8dIQp5Ci9Y1bCW1XSqiMXy29JwaI4MQsXbZT7glLIUlVaPWdP3
32PGQhxRRzMnK9hvwZBZWp0CaMju2XHiBRTxF7V8goUH/9iqeFsRUfzsAXW3s4sORakUMtIgtoE7
zba23H2xmk7qvgf/uGZ8Ehb0NLCq+mE4/hheFjjCUL4Fom2nxh/lVLkrOUduXHYWVdiEhggZb9p9
RlZqfEx/9U1NCWHWx1evSxIQIX5ZsHaQik6dcQKCc8aZU4/Ll67YszhfifD4LgiFsSfwvyC0HOyD
CM6wozEuCnWReQgS8YU2gJd261TdJD2sLbBYKWSnu3n2XJcVVTvQCF9twMPRLyfnWvPqZ44fH6oZ
l8SvjRkrk8genLI0UGxJ4BPfVlXmttKps7J67Z2LXwBDvnYu1IPWY0pfFWM3VFpWEhgucnUWh4fN
K3ymVY6XDIwX93w3Gt+1RHjRF1ZbSEcVGsIds3Yrk8hMVcIf/RYAXTiJ07QJHbTANuUh0yoW+GpB
Y3oimOoxPVnYapWwfOnKEgKeNplpELIkclaNzPFeHsRUt3k2frqpKgd4sA9ADfGZJwt6/cD+CkRy
w7ZgwLiwYmLL2m0rPJ4lwVSJXVryGBQAsoZ67FISwsT/QaOwRg7i3+AX3knpyC/rtkMxWBpBih0A
sx9469paxOH6zd8oVgNfRzSi0xMZvG36t5uL44yfO9ZLhN1vdt9idtAtmfunsVhwlcTf6kzE822o
HXIDriXoEbJhbe/XjPqDtvpbTNTdf9NKlusW2izeZVWsQTyQzBbqlAmPPFdpuRmmlW6Q1J/vS+Ww
Yc2ZNCAjv5/TpJO8xYYNmCeOvg8+/mgKs1fZOoDre0Y1xvk7N4cyCF2Gzgl3dJvu/PbRthWB5uy2
Yj5zLOR1yHF3dcoKHlk7bJWMmvn/t6bBjjM5qMpAqimXK8acC/bLXW3e6vkq8WdQJUtrYhuGcFqy
Nvbc8yux4i1OnUra4UiGh+p8ixmmq3L2pSJlWGDF/srtBY7/pTPBOSJROVdHIPQb9eRYh1Ucs8ab
XnIenGPwVaai2DKmqvspE/+2kcbN0+J+Ww0uaKSyq1q1IGuOcjE22gAAZplhWoDYGTEiQj23PtZD
7DhtFtAIVnk+a8c1dIYtguQu1p8pnYmVmTKtrg/RVuaODo6SEOo/O9MRKavFfguO2zZFlg9UScBk
mOZ0vdaFRMlKTVVCMT4QywzUMqd/+ktx1bBztG4ge/VvxtSQogSJVl2JSmyD9qS8EtLFlLcf7f2h
Os+ccComnZRx8c2EeeracTIHK94YMUWVBR/0dHs4UeQ3fztldQYakveYoMf9XiOXgGvbl6YW3VLS
FNpizZ6TGF2yl25aW9eg9JGz9kXPD6EmQ0Gs9Al4A287s5TRI2As4W0E+SsR7vL73bAAKHX+5a/5
647A50O2AgUsqPYGzY6y6JMXm333c4FLn4dXpFeiEcRdYv5SDzLBiWbcmWmGQcNP/p/PXk3H1fut
gUCtnCDU3je60zpRLCRwY7/SMg4sHm8uUH/tG8s9k58ejd0sVoz4iwaK+aWnfMDQy3FU5kyNiG3Y
1nUzf+kxRb+/T42zvcyOLIwa8D4iCSUPEt2PjCD5rprrq+xFX7173oAqUjX2HSTsutm52CeZ0WiX
WBeY8xU+x206+qC7MT3zlSiC8w2Y48Hsxwk/3ZYFd3E/aAZ35C2/ijtZ/c9WbrVuvdFoVVmGml5r
KJ2AQ0GuCqNdYRK2IExqIDVeq7LLRrx+1bQ8H6EktVFNCs7cVNyAmZWmMh8rLx6DDShxSq67lB1e
eR2iDHTV8st+/DCdtunPMK8Z11R+f9o+YDHSRwazRXoetn5FPR+WlYhdzzJeTUYc6lpgvmKCkQO0
SFuo/jA/cknOwqo1+pdq8FoI625LY+RVGUADrLyALNW8Z1gA1MVwd5aTux/NIjF/sv6dCTAVYR5C
CUkL/SMWDwXfNdDMVdNOHy6PFTvdWLN+k1p3Mt975sD20CBeZ6pgWzKwWnYgsWcXAThaM+/cTDy1
LPkyT4aDwPzwvmOG1AHbxvHc89gO8XBrO0fLCnKJV208Su4v2DZ5LT+3lVnsWWf6OEZmd/y5U0OF
3yKnFJJW9ix9N7phsO4glx1a36n/5Ow9E6hT7Z72Eb0BFoonc26XU5uwLVl/ZI/VL5zcvmFy71PE
71fZnTP1UMAYWZKPDgyPNVc4m4skKpxYPwOyYRtCq27EK+6s9UfCJFwiJY6DfN2oaUnzCbR5az7A
ahU7zifFFuoZWUmrl9ou0/N9lZQP6UtykZVz72ODo2aESEoPbRYO3x4lqcGymw2CtxJaNRwoVWx6
tqMl1SpeCmyFMyo/WgHzYxjLT2WRIVc/8eU7JJYA8KQLACNOtEGw4PB1Ymv0vpuuT6Szex1fDLUe
85rDxW0eIW8IMx4+LIZRUMXMd/WkIDM2ifGY9+2OaUxU34hOlG2Fz4yokgOT7jSR5bzn1/cR6F/J
JDiNu2r4vcGtdYnjBEho6+ybWmcKDfPSparWysr3JQMhLFBmcts7CjF1xCUAWNUerms4HwyKMRQz
w8+co0obS+WbvbPwPl+7vwIy+pRMq8BqaIPjypgzt0peIGk8ZzAWiXet4N45nRThw12ZDEeoasTI
KRpfFhlG+9lEyM+cXPZughK1qluXzl+LB7SyBd4LjmE8lear++czX1WiCW8KMZvx43VSbvuSm+1K
zp0c5dR6to+BxXggB67hUOtp5P1t0J8AoeNebIemvSD4JdSx6Su+bJaOfNXk+Wz+xOzvpkjNuT4J
aCEc0oONj7qR6GRMQOFUPKmGo/etZfeqmdQuAVUjvtkqU4/s5YLttefl9SHm+oOKQolfPk0qKOH/
idRRY6OiJ9N0ZJXhLDJWRU4H9FcTVs4RDi6xVYdtGBZD8zpb/m325Sbd0SaIWFULFf1XVoOt8OUN
c3Z3zEGfBSTX46OkOtT3APK0s5oBLJV9FXNtLH79EFCCwZQh8RWsre/mdxtPXmWGC1NISFIwZTtk
u/xEmueoJy8orKGUnhXUXGyHJVA0yauuOt3Ppe7f1bDlrcrbnkColgxUMdoo8gJVvfn+3uRDJYqB
HFOOodlhU7E+Ng/YLR8pcpn/LrUfPG1SuGOZKd5v02R93kKWZtZga2gSzCuCLtGaUwD1Eu5BEq+l
dozikJpxQdM9tsq41iEfd/Wrwmb+HVkxQCcQp/T6FQ4pURPH6nCx75bV0s9oNnyQtUFcEpVsQJzs
hQfdJoka49UbUWwv4fRomRIOX/ZjytllQg8pD0K97V0i4nphrvdrtR0/RRE/On4beMtq35WvH7gc
tv0ZeqwDipQUFfdn/4PevLduhasnWNDf5HzSFVl8/dDeLopVJDt7rfAYwjZ3lhvJG8bemd0i7I4p
dTpZg+wdJHxoxOgRzkESjGqTP9n/n+5mvFmAxrXpoCyh9DzIcEmhL+Nv0spH30LlJivZIiJv1gD4
YHc8NLBWfyxrH1ZyZB2OgFhAs9RjLs8AieW/9xEbLH2yOpvNlulutRZbe40j9gpagkPCNMQR4rdS
zUXGK34ofQrlHKeJQPUB9mJCi/blmFh2yXh2/l7xNu/LM6REVcXSKjuic1Y8K2OvC9TAzXT0SiU/
dnbTB+5oga5rvyRFOKOrxXVGTJZb6NBEdT5OHh0FQtzoCzVvY/IMaUrn2rz6eBOVIHN1aVaREXi/
SpTH5sPw+AOpB7azJqKzMIzsPlJY8xUkhEmAs2nASiog/wE7+n9ikWZ/8ypurFtr3Eo1o9Jx2QpV
6FzSPcDQniDaDmiDQ30cqbuiSHoQmNk3gl3hDwjPEqjB7wC/ykf1ciMgxGvDxX2QG7z4WpP3inHV
Hwl3/T6rZ4t+aitt7Q+4Whb5v4zrYXKjjfuHu/az5emIzzCqalvfgFGQzDl8XnRUK7bqYwAp7cRT
yPsVambQfEbKJaYTaxVs5Ny5HFs07UTnYoDXBsFDZx/DxvbKnmQ7HNMmkB+5VC9DYb8vxCHDuQ3Y
sqkBEfnaXCqVCeVJj25BeItFnQRWw3LOWsRKe15A7+5f4PTOsSKLrjdrKJmxFcASlW4Rc6v5s81m
7rSbeuSxRCz4GEjD19qdC0tIR+frP6ccBZ1hkYWPDzQOnR4qadvgETHmEyGP7oHHfGSAlq+2oeSz
vVlRpPk1wTZvw6siH0InQvxCQH2+457NLxkk4ifAEl+ZAUdZlVYX+agKJ58uA/sDvhQYhuMAVS5n
02nHj281O55IP8JQGksXOshFi4SEFsUwaujyFsVLBGcoNhSUOIa4YDubVcPep4x7ugXQWnudjPn3
zM1pTEsTFH6+5f5EVcn/YgmG/KDXAF6Z1QpybI1HpFNOLALdiuDj5rggkct5afFWHJq7De+U6N8Y
vbcpEW4Imo0xHfozmwPsmBAYyUnnYP7QGOcrBCoIg+QFwazpwwptgJKa5U38w+1D9uQ6JtxJNRv6
TVsiRrJkluqxLRLX5HJ+17nO12atEkxeZ3TU0vRJMByWY1yXV76nLBzTfFn1ue8ezZ7/gSDrHoZd
iwGSv8ote7U6WEXYtlvf/dmGUG6W8W2bhaxutx7/ieP3DmOvrJDmEQY2zLWgq8VpI59CnpQHmNna
ZcMoAbtfWOBOqal6xzc3CSzNZgplYlyu4dT5s1LXTW1WUpyfw2x0C14fpSW2q9mdXxdyS7DAmhIj
bB05qo9mhdAxVojclTPRWA7UA4G6zDNmZRA4oYwV6dPU9Wu+qsQ07SI/ky1RvhmwWrBv7VsSQt6U
PtfI4DrxqNPfc8/IfRfnwemLBmQUB77dr8KPYuwcYRkgIxhCwET9eH48HPNuxQz+2hwqK35mQkN/
vLzEV/7fW6iLJ7p4WDmC3XPznsGDki7gTRM0QBlpnyPD7Opj0gDUCJUG76jZJyvPnOziIi8x6wVS
NJxI3Q/oXlhxJ8RVkwi+qST2HlZvuQujsX74Z8fJKLl9Ed6SUeIIFI0E2oWGVXmmLFWorFJKARLz
ti4qdS9wScy5ALboNnFDWjdFCrJE35VAyWFmdjwiAwVVcQCQtoWodOa8R9UCFh5LbnprzEj2TUHU
/LzT6PKLQZUKFf/iJjedTVrY7AEr9x5YTDBOjjwA7Iq/FMERcgtDBhynIvV4iXxpVEKKUGp+cpzV
QHSO+Jfp8qFwWZCk5QA16VwOhl4Th7vHqMnFIqA/prkIgiG0kcRGB8i6xP6E3vTt2VLYfgiLvqp6
J6WC9YJxZhMn5k08/P71zNRMiZ0fhq5HwelXf/2Ss3MMLEW9zOJQ8nhRG1oV0X6L0EDdLt5H5Fdu
rK1YiMLpUiGwfM5JeQKGLiT9XrF18w4e3SjBz4sfnmmD14rQATZYDTj+p7O9RJavQUYDizoiuwIo
xCK4F3zmibLdLv3bCKZb+Zv6j9M6SPk+GpnD43TMtpn5So2R5iqq2TGbsBe7jhPcn8A/4sgKo9TL
7M/fWTaBHAqS8B6W5BNx0TCEjAbFZS9dlj+CX3fC3IDGOSQ7Gzwc4TiWtNULYBNroTDjm2RuBxn1
Yo176nXXE5qmFwcaZix6KRtUAXI+7RjYwoiHnVH73vks0A8WX/Oklm+fj/EvetA2lS0wsEXR9YGL
+S3ARa22RqYUaSNuLkQBtA7/ohn5seR1VcKhWC9zQ7R+2N0JcIaxs4fFYZkWPOag02zz7BpK6QAH
Kbodqzn3Fl3HexaBQkUDi7hNU7Ep9wO6XBrPIYbeatx6R+8VzQvFies7nULLpUN0SyWCdTzufl5B
bQNS3Qfp/xqFymlkaIbOvbYa+bgx2Ucd00pgA+1bKjJYD4BUBKyRIziVwsFJpPtxF8APEWnP2M4j
QJZ4taC6MyFUyaEfTGXyvi3x0TJyOpuWQrLE7dLsic4s1YCCqVufYFv6dUUOBReF0bij4jb7mAa9
uQjLnYc0f1yYWzDdIqjeKX0woHqCoXu/i4EsL+2t6QoMDN+S+jBOCgq5h+n3pmS5/l/74Q1eq+SS
OkvXWWCwO0G2PJuRrltIrooEWT5vlDoyV/batuBY5d+L7ButzUVSyU4UPMMGEIYyNzOB+/++Zv27
Y6erYR12lHyozbysn31qwsTePOl3XFNMv3K6Da9M8sVDznbzWlZM+/UClcxHRGMAEUmmyips73Z1
h8EDbfH1JThfSVgdZcX5blEsQATLX/yCDX9o9JbXB5hnrFnaF4vjW/afiDRzKPvAodLVf+j6hClT
2AYFo9UPdO6lOak371gXzKSDve6MbS6aDuOpmvWMgrmSLswmAeK572LvpF+P6vV8i8OIExkfNaO+
CrKTiultkMxatVY7O07MeWzcyWedr9VeZeRiNN7b2sVjG8n22xFpSXaHtHDi2P4YafYhAU7/yHTP
57zVyyg7YEpCWVpBuZ1mFgfFbhI3iCXtKQ3HeOmpVv5sQm7KNKyvtQUmJNsuKtai0kCFdQFthVtc
+R+wa74eGhMqMbckOW/Ln5l1tmYb4+yKt4cDl47h1lo3TlumYTdxOGCU5Rtbs6D5Y4JqZoLvjQfM
Ul5heDcvV7ZbNunMpL6jHUX5aeNHK0KBJ5h7y9W8QoTfm8EaJ2BO7MA0a1UYSwHfu1URlEwESYhg
geyqYs0v62qbZlylvT3N0iGRxp5HTvf9qa1PbHNC8M2zJh1KWg+T6QV7FwmQ5/moN3r/U9TclxkN
zDEoZv1vtZY8zHzNEeFidHWqj3AxkmuqpbRA2/+ayUIV/UnhV317HB89m1ff8t4DZvQxvJlVr37R
ENl3jPnlj34d2THctYlzNf+JNmffsmT7
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
