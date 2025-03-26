//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Mar 26 17:33:36 2025
//Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
//Command     : generate_target LED_CH_wrapper.bd
//Design      : LED_CH_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LED_CH_wrapper
   (led_o);
  output [7:0]led_o;

  wire [7:0]led_o;

  LED_CH LED_CH_i
       (.led_o(led_o));
endmodule
