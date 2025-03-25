//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Mar 25 10:20:47 2025
//Host        : silicon-NUC14RVK-B running 64-bit unknown
//Command     : generate_target LED_2_patterns_wrapper.bd
//Design      : LED_2_patterns_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LED_2_patterns_wrapper
   (led_o_0);
  output [7:0]led_o_0;

  wire [7:0]led_o_0;

  LED_2_patterns LED_2_patterns_i
       (.led_o_0(led_o_0));
endmodule
