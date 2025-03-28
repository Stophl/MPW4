-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Mar 24 09:28:20 2025
-- Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/bd/caribou_top/ip/caribou_top_axi_register_array_v_0_0/caribou_top_axi_register_array_v_0_0_stub.vhdl
-- Design      : caribou_top_axi_register_array_v_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity caribou_top_axi_register_array_v_0_0 is
  Port ( 
    reg_a_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_a_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_b_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_b_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_c_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_c_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_d_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_d_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_e_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_e_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_f_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_f_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_g_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_g_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_h_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_h_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );

end caribou_top_axi_register_array_v_0_0;

architecture stub of caribou_top_axi_register_array_v_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reg_a_out[31:0],reg_a_in[31:0],reg_b_out[31:0],reg_b_in[31:0],reg_c_out[31:0],reg_c_in[31:0],reg_d_out[31:0],reg_d_in[31:0],reg_e_out[31:0],reg_e_in[31:0],reg_f_out[31:0],reg_f_in[31:0],reg_g_out[31:0],reg_g_in[31:0],reg_h_out[31:0],reg_h_in[31:0],S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[4:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[4:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_register_array_v1_0_S00_AXI,Vivado 2023.2";
begin
end;
