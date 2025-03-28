set_property PACKAGE_PIN P25 [get_ports C3PD_reset_p]
set_property PACKAGE_PIN P30 [get_ports CLICpix2_reset_p]
set_property PACKAGE_PIN T30 [get_ports CLICpix2_pwr_pulse_p]
set_property PACKAGE_PIN T29 [get_ports CLICpix2_shutter_p]
set_property PACKAGE_PIN R25 [get_ports CLICpix2_tp_sw_p]
set_property PACKAGE_PIN AF19 [get_ports CLICpix2_ss_p]
set_property PACKAGE_PIN AH19 [get_ports CLICpix2_mosi_p]

set_property PACKAGE_PIN AG24 [get_ports CLICpix2_miso_p]

set_property PACKAGE_PIN A17 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[0]}]
set_property PACKAGE_PIN W21 [get_ports {led[1]}]
set_property PACKAGE_PIN Y21 [get_ports {led[3]}]
set_property PACKAGE_PIN G2 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[3]}]

##----------------------- 200MHz CLOCK-----------------------------------------------
set_property IOSTANDARD LVDS [get_ports clk_p]

set_property PACKAGE_PIN G9 [get_ports clk_n]
set_property PACKAGE_PIN H9 [get_ports clk_p]
set_property IOSTANDARD LVDS [get_ports clk_n]

##CLICpix2 SerDes

#Clock
set_property PACKAGE_PIN AD9 [get_ports Transceiver_refClk_clk_n]
set_property PACKAGE_PIN AD10 [get_ports Transceiver_refClk_clk_p]

#Rx data
set_property PACKAGE_PIN AH9 [get_ports Transceiver_RX_n]
set_property PACKAGE_PIN AH10 [get_ports Transceiver_RX_p]
#connect_debug_port dbg_hub/clk [get_pins -hier -filter {name=~*DRP_CLK_BUFG*O}]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]

#TLU signals
#set_property PACKAGE_PIN AG21 [get_ports TLU_CLK_p]
#set_property PACKAGE_PIN AH21 [get_ports TLU_CLK_n]
set_property PACKAGE_PIN AH24 [get_ports TLU_TRG_n]
set_property PACKAGE_PIN AH23 [get_ports TLU_TRG_p]
set_property PACKAGE_PIN AE21 [get_ports TLU_BSY_n]
set_property PACKAGE_PIN AD21 [get_ports TLU_BSY_p]
set_property PACKAGE_PIN AA23 [get_ports TLU_RST_n]
set_property PACKAGE_PIN AA22 [get_ports TLU_RST_p]

#Clock signal from SI5345
set_property PACKAGE_PIN AF22 [get_ports SI5345_CLK_OUT8_clk_n]
set_property PACKAGE_PIN AE22 [get_ports SI5345_CLK_OUT8_clk_p]
set_property DIFF_TERM true [get_ports SI5345_CLK_OUT8_*]
set_property IOSTANDARD LVDS_25 [get_ports SI5345_CLK_OUT8_*]



set_property PACKAGE_PIN AB17 [get_ports {dip_switches_4bits_tri_i[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dip_switches_4bits_tri_i[0]}]
set_property PACKAGE_PIN AC16 [get_ports {dip_switches_4bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dip_switches_4bits_tri_i[1]}]
set_property PACKAGE_PIN AC17 [get_ports {dip_switches_4bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dip_switches_4bits_tri_i[2]}]
set_property PACKAGE_PIN AJ13 [get_ports {dip_switches_4bits_tri_i[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dip_switches_4bits_tri_i[3]}]

set_property PACKAGE_PIN AK25 [get_ports {gpio_sws_3bits_tri_i[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {gpio_sws_3bits_tri_i[0]}]
set_property PACKAGE_PIN K15 [get_ports {gpio_sws_3bits_tri_i[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {gpio_sws_3bits_tri_i[1]}]
set_property PACKAGE_PIN R27 [get_ports {gpio_sws_3bits_tri_i[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {gpio_sws_3bits_tri_i[2]}]


## ---------------------------------FMC low pin count ---------------------------
#set_property PACKAGE_PIN U8 [get_ports FMC_LPC_GBTCLK0_M2C_C_P]
#set_property PACKAGE_PIN U7 [get_ports FMC_LPC_GBTCLK0_M2C_C_N]

#set_property PACKAGE_PIN AG17 [get_ports FMC_LPC_CLK0_M2C_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_CLK0_M2C_P]
#set_property PACKAGE_PIN AG16 [get_ports FMC_LPC_CLK0_M2C_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_CLK0_M2C_N]

#set_property PACKAGE_PIN AC28 [get_ports FMC_LPC_CLK1_M2C_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_CLK1_M2C_P]
#set_property PACKAGE_PIN AD28 [get_ports FMC_LPC_CLK1_M2C_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_CLK1_M2C_N]

#set_property PACKAGE_PIN AE13 [get_ports FMC_LPC_LA00_CC_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA00_CC_P]
#set_property PACKAGE_PIN AF13 [get_ports FMC_LPC_LA00_CC_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA00_CC_N]

#set_property PACKAGE_PIN AF15 [get_ports FMC_LPC_LA01_CC_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA01_CC_P]
#set_property PACKAGE_PIN AG15 [get_ports FMC_LPC_LA01_CC_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA01_CC_N]

set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA02_P]
set_property PACKAGE_PIN AF12 [get_ports FMC_LPC_LA02_N]
set_property PACKAGE_PIN AE12 [get_ports FMC_LPC_LA02_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA02_N]

#set_property PACKAGE_PIN AG12 [get_ports FMC_LPC_LA03_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA03_P]
#set_property PACKAGE_PIN AH12 [get_ports FMC_LPC_LA03_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA03_N]

set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA04_P]
set_property PACKAGE_PIN AK15 [get_ports FMC_LPC_LA04_N]
set_property PACKAGE_PIN AJ15 [get_ports FMC_LPC_LA04_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA04_N]

#set_property PACKAGE_PIN AE16 [get_ports FMC_LPC_LA05_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA05_P]
#set_property PACKAGE_PIN AE15 [get_ports FMC_LPC_LA05_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA05_N]

set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA06_P]
set_property PACKAGE_PIN AC12 [get_ports FMC_LPC_LA06_N]
set_property PACKAGE_PIN AB12 [get_ports FMC_LPC_LA06_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA06_N]

#set_property PACKAGE_PIN AA15 [get_ports FMC_LPC_LA07_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA07_P]
#set_property PACKAGE_PIN AA14 [get_ports FMC_LPC_LA07_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA07_N]

set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA08_P]
set_property PACKAGE_PIN AD13 [get_ports FMC_LPC_LA08_N]
set_property PACKAGE_PIN AD14 [get_ports FMC_LPC_LA08_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA08_N]

#set_property PACKAGE_PIN AH14 [get_ports FMC_LPC_LA09_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA09_P]
#set_property PACKAGE_PIN AH13 [get_ports FMC_LPC_LA09_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA09_N]

#set_property PACKAGE_PIN AC14 [get_ports FMC_LPC_LA10_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA10_P]
#set_property PACKAGE_PIN AC13 [get_ports FMC_LPC_LA10_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA10_N]

#set_property PACKAGE_PIN AJ16 [get_ports FMC_LPC_LA11_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA11_P]
#set_property PACKAGE_PIN AK16 [get_ports FMC_LPC_LA11_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA11_N]

#set_property PACKAGE_PIN AD16 [get_ports FMC_LPC_LA12_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA12_P]
#set_property PACKAGE_PIN AD15 [get_ports FMC_LPC_LA12_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA12_N]

#set_property PACKAGE_PIN AH17 [get_ports FMC_LPC_LA13_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA13_P]
#set_property PACKAGE_PIN AH16 [get_ports FMC_LPC_LA13_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA13_N]

#set_property PACKAGE_PIN AF18 [get_ports FMC_LPC_LA14_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA14_P]
#set_property PACKAGE_PIN AF17 [get_ports FMC_LPC_LA14_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA14_N]

#set_property PACKAGE_PIN AB15 [get_ports FMC_LPC_LA15_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA15_P]
#set_property PACKAGE_PIN AB14 [get_ports FMC_LPC_LA15_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA15_N]

#set_property PACKAGE_PIN AD25 [get_ports FMC_LPC_LA28_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA28_P]
#set_property PACKAGE_PIN AE26 [get_ports FMC_LPC_LA28_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA28_N]

#set_property PACKAGE_PIN AE18 [get_ports FMC_LPC_LA16_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA16_P]
#set_property PACKAGE_PIN AE17 [get_ports FMC_LPC_LA16_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA16_N]

#set_property PACKAGE_PIN AB27 [get_ports FMC_LPC_LA17_CC_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA17_CC_P]
#set_property PACKAGE_PIN AC27 [get_ports FMC_LPC_LA17_CC_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA17_CC_N]

#set_property PACKAGE_PIN AE27 [get_ports FMC_LPC_LA18_CC_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA18_CC_P]
#set_property PACKAGE_PIN AF27 [get_ports FMC_LPC_LA18_CC_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA18_CC_N]

#set_property PACKAGE_PIN AH26 [get_ports FMC_LPC_LA19_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA19_P]
#set_property PACKAGE_PIN AH27 [get_ports FMC_LPC_LA19_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA19_N]

#set_property PACKAGE_PIN AG26 [get_ports FMC_LPC_LA20_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA20_P]
#set_property PACKAGE_PIN AG27 [get_ports FMC_LPC_LA20_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA20_N]

#set_property PACKAGE_PIN AH28 [get_ports FMC_LPC_LA21_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA21_P]
#set_property PACKAGE_PIN AH29 [get_ports FMC_LPC_LA21_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA21_N]

#set_property PACKAGE_PIN AK27 [get_ports FMC_LPC_LA22_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA22_P]
#set_property PACKAGE_PIN AK28 [get_ports FMC_LPC_LA22_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA22_N]

#set_property PACKAGE_PIN AF30 [get_ports FMC_LPC_LA24_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA24_P]
#set_property PACKAGE_PIN AG30 [get_ports FMC_LPC_LA24_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA24_N]

#set_property PACKAGE_PIN AJ26 [get_ports FMC_LPC_LA23_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA23_P]
#set_property PACKAGE_PIN AK26 [get_ports FMC_LPC_LA23_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA23_N]

#set_property PACKAGE_PIN AF29 [get_ports FMC_LPC_LA25_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA25_P]
#set_property PACKAGE_PIN AG29 [get_ports FMC_LPC_LA25_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA25_N]

#set_property PACKAGE_PIN AJ30 [get_ports FMC_LPC_LA26_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA26_P]
#set_property PACKAGE_PIN AK30 [get_ports FMC_LPC_LA26_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA26_N]

#set_property PACKAGE_PIN AJ28 [get_ports FMC_LPC_LA27_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA27_P]
#set_property PACKAGE_PIN AJ29 [get_ports FMC_LPC_LA27_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA27_N]

#set_property PACKAGE_PIN AE25 [get_ports FMC_LPC_LA29_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA29_P]
#set_property PACKAGE_PIN AF25 [get_ports FMC_LPC_LA29_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA29_N]

#set_property PACKAGE_PIN AB29 [get_ports FMC_LPC_LA30_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA30_P]
#set_property PACKAGE_PIN AB30 [get_ports FMC_LPC_LA30_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA30_N]

#set_property PACKAGE_PIN AC29 [get_ports FMC_LPC_LA31_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA31_P]
#set_property PACKAGE_PIN AD29 [get_ports FMC_LPC_LA31_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA31_N]

#set_property PACKAGE_PIN Y26 [get_ports FMC_LPC_LA32_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA32_P]
#set_property PACKAGE_PIN Y27 [get_ports FMC_LPC_LA32_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA32_N]

#set_property PACKAGE_PIN Y30 [get_ports FMC_LPC_LA33_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA33_P]
#set_property PACKAGE_PIN AA30 [get_ports FMC_LPC_LA33_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA33_N]







set_property C_CLK_INPUT_FREQ_HZ 320000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets caribou_top_i/CLICpix2_0/inst/clk_wiz_0/transceiver_rx]
