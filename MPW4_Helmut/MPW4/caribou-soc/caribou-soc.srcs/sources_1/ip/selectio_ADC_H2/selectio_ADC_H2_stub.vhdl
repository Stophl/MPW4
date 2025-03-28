-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue Feb 18 14:57:52 2020
-- Host        : steining-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/steining/Desktop/MPW2/caribou-soc/caribou-soc.srcs/sources_1/ip/selectio_ADC_H2/selectio_ADC_H2_stub.vhdl
-- Design      : selectio_ADC_H2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity selectio_ADC_H2 is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 13 downto 0 );
    bitslip : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_in : in STD_LOGIC;
    clk_div_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end selectio_ADC_H2;

architecture stub of selectio_ADC_H2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[0:0],data_in_from_pins_n[0:0],data_in_to_device[13:0],bitslip[0:0],clk_in,clk_div_in,io_reset";
begin
end;
