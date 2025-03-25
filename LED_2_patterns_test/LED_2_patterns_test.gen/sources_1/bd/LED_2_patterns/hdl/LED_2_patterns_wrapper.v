//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Mar 25 13:20:57 2025
//Host        : Caribou-VM-HEPHY running 64-bit Rocky Linux release 8.9 (Green Obsidian)
//Command     : generate_target LED_2_patterns_wrapper.bd
//Design      : LED_2_patterns_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LED_2_patterns_wrapper
   (led_o);
  output [7:0]led_o;

  wire [7:0]led_o;

  LED_2_patterns LED_2_patterns_i
       (.led_o(led_o));
endmodule
