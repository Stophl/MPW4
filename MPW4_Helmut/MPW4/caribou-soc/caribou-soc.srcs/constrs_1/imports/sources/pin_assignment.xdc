set_property PACKAGE_PIN Y23 [get_ports FMC_LVDS14_N]
set_property PACKAGE_PIN AG19 [get_ports FMC_LVDS6_N]
set_property PACKAGE_PIN Y22 [get_ports FMC_LVDS14_P]
set_property PACKAGE_PIN AF19 [get_ports FMC_LVDS6_P]
set_max_delay -from [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT5] -to [get_pins SEROUT_inst1/s_frame_40_reg/D] 2.000
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS14_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS14_N]


set_property PACKAGE_PIN A17 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[0]}]
set_property PACKAGE_PIN W21 [get_ports {led[1]}]
set_property PACKAGE_PIN Y21 [get_ports {led[3]}]
set_property PACKAGE_PIN G2 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[3]}]

set_property PACKAGE_PIN AA18 [get_ports SFP_TX_DISABLE]
set_property IOSTANDARD LVCMOS25 [get_ports SFP_TX_DISABLE]

set_property PACKAGE_PIN AJ21 [get_ports PMOD1_0_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_0_LS]
set_property PACKAGE_PIN AK21 [get_ports PMOD1_1_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_1_LS]
set_property PACKAGE_PIN AB21 [get_ports PMOD1_2_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_2_LS]
set_property PACKAGE_PIN AB16 [get_ports PMOD1_3_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_3_LS]
#set_property PULLUP true[get_ports PMOD1_3_LS]
set_property PACKAGE_PIN Y20 [get_ports PMOD1_4_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_4_LS]
set_property PACKAGE_PIN AA20 [get_ports PMOD1_5_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_5_LS]
set_property PACKAGE_PIN AC18 [get_ports PMOD1_6_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_6_LS]
set_property PACKAGE_PIN AC19 [get_ports PMOD1_7_LS]
set_property IOSTANDARD LVCMOS25 [get_ports PMOD1_7_LS]
#set_property PULLUP true[get_ports PMOD1_7_LS]



##----------------------- 200MHz CLOCK-----------------------------------------------
set_property IOSTANDARD LVDS [get_ports clk_p]

set_property PACKAGE_PIN H9 [get_ports clk_p]
set_property PACKAGE_PIN G9 [get_ports clk_n]
set_property IOSTANDARD LVDS [get_ports clk_n]

##CLICpix2 SerDes


##----------------------- 125MHz CLOCK  for SFP
set_property PACKAGE_PIN AF14 [get_ports USRCLK_P]
set_property PACKAGE_PIN AG14 [get_ports USRCLK_N]
set_property IOSTANDARD LVDS_25 [get_ports USRCLK_P]
set_property IOSTANDARD LVDS_25 [get_ports USRCLK_N]
set_property PACKAGE_PIN AC8 [get_ports MGTREFCLK1P]
set_property PACKAGE_PIN AC7 [get_ports MGTREFCLK1N]
#set_property IOSTANDARD LVDS_25 [get_ports MGTREFCLK1P]
#set_property IOSTANDARD LVDS_25 [get_ports MGTREFCLK1N]

set_property PACKAGE_PIN Y5 [get_ports rxn]
set_property PACKAGE_PIN Y6 [get_ports rxp]
set_property PACKAGE_PIN W3 [get_ports txn]
set_property PACKAGE_PIN W4 [get_ports txp]



#connect_debug_port dbg_hub/clk [get_pins -hier -filter {name=~*DRP_CLK_BUFG*O}]

set_property BITSTREAM.CONFIG.USR_ACCESS TIMESTAMP [current_design]



#Clock signal from SI5345
set_property PACKAGE_PIN AE22 [get_ports SI5345_CLK_OUT8_clk_p]
set_property PACKAGE_PIN AF22 [get_ports SI5345_CLK_OUT8_clk_n]
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

## I2C MUX:
set_property PACKAGE_PIN AJ18 [get_ports IIC_SDA_MAIN_LS]
set_property IOSTANDARD LVCMOS25 [get_ports IIC_SDA_MAIN_LS]
set_property PACKAGE_PIN AJ14 [get_ports IIC_SCL_MAIN_LS]
set_property IOSTANDARD LVCMOS25 [get_ports IIC_SCL_MAIN_LS]

## USER_SMA_CLOCK
set_property IOSTANDARD LVDS_25 [get_ports USER_SMA_CLOCK_P]
set_property PACKAGE_PIN AD18 [get_ports USER_SMA_CLOCK_P]
set_property PACKAGE_PIN AD19 [get_ports USER_SMA_CLOCK_N]
set_property IOSTANDARD LVDS_25 [get_ports USER_SMA_CLOCK_N]



#  FMC_HPC  ############################################## Caribou ROWa: #####################################################

set_property PACKAGE_PIN AJ8 [get_ports FMC_HPC_DP1_M2C_P]
set_property PACKAGE_PIN AJ7 [get_ports FMC_HPC_DP1_M2C_N]

set_property PACKAGE_PIN AG8 [get_ports FMC_HPC_DP2_M2C_P]
set_property PACKAGE_PIN AG7 [get_ports FMC_HPC_DP2_M2C_N]

set_property PACKAGE_PIN AE8 [get_ports FMC_HPC_DP3_M2C_P]
set_property PACKAGE_PIN AE7 [get_ports FMC_HPC_DP3_M2C_N]

set_property PACKAGE_PIN AH6 [get_ports FMC_HPC_DP4_M2C_P]
set_property PACKAGE_PIN AH5 [get_ports FMC_HPC_DP4_M2C_N]

set_property PACKAGE_PIN AG4 [get_ports FMC_HPC_DP5_M2C_P]
set_property PACKAGE_PIN AG3 [get_ports FMC_HPC_DP5_M2C_N]


set_property PACKAGE_PIN AK6 [get_ports FMC_HPC_DP1_C2M_P]
set_property PACKAGE_PIN AK5 [get_ports FMC_HPC_DP1_C2M_N]

set_property PACKAGE_PIN AJ4 [get_ports FMC_HPC_DP2_C2M_P]
set_property PACKAGE_PIN AJ3 [get_ports FMC_HPC_DP2_C2M_N]


set_property PACKAGE_PIN AK2 [get_ports FMC_HPC_DP3_C2M_P]
set_property PACKAGE_PIN AK1 [get_ports FMC_HPC_DP3_C2M_N]

set_property PACKAGE_PIN AH2 [get_ports FMC_HPC_DP4_C2M_P]
set_property PACKAGE_PIN AH1 [get_ports FMC_HPC_DP4_C2M_N]

set_property PACKAGE_PIN AF2 [get_ports FMC_HPC_DP5_C2M_P]
set_property PACKAGE_PIN AF1 [get_ports FMC_HPC_DP5_C2M_N]






#  FMC_HPC  ####################################################### Caribou ROWb: #####################################################

set_property PACKAGE_PIN AD6 [get_ports FMC_HPC_DP7_M2C_P]
set_property PACKAGE_PIN AD5 [get_ports FMC_HPC_DP7_M2C_N]

set_property PACKAGE_PIN AF6 [get_ports FMC_HPC_DP6_M2C_P]
set_property PACKAGE_PIN AF5 [get_ports FMC_HPC_DP6_M2C_N]

set_property PACKAGE_PIN AA8 [get_ports FMC_HPC_GBTCLK1_M2C_P]
set_property PACKAGE_PIN AA7 [get_ports FMC_HPC_GBTCLK1_M2C_N]

set_property PACKAGE_PIN AD2 [get_ports FMC_HPC_DP7_C2M_P]
set_property PACKAGE_PIN AD1 [get_ports FMC_HPC_DP7_C2M_N]


set_property PACKAGE_PIN AE4 [get_ports FMC_HPC_DP6_C2M_P]
set_property PACKAGE_PIN AE3 [get_ports FMC_HPC_DP6_C2M_N]



#  FMC_HPC  ######################################################## Caribou ROWc: #####################################################

set_property PACKAGE_PIN AK10 [get_ports FMC_HPC_DP0_C2M_P]
set_property PACKAGE_PIN AK9 [get_ports FMC_HPC_DP0_C2M_N]

#set_property PACKAGE_PIN AH10 [get_ports {FMC_HPC_DP0_M2C_P}]
#set_property PACKAGE_PIN AH9 [get_ports {FMC_HPC_DP0_M2C_N}]
#Rx data
set_property PACKAGE_PIN AH10 [get_ports Transceiver_RX_p]
set_property PACKAGE_PIN AH9 [get_ports Transceiver_RX_n]


set_property PACKAGE_PIN AG22 [get_ports FMC_LVDS5_P]
set_property PACKAGE_PIN AH22 [get_ports FMC_LVDS5_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS5_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS5_N]

set_property PACKAGE_PIN AG24 [get_ports FMC_LVDS9_P]
set_property PACKAGE_PIN AG25 [get_ports FMC_LVDS9_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS9_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS9_N]


set_property PACKAGE_PIN AC24 [get_ports FMC_LVDS16_P]
set_property PACKAGE_PIN AD24 [get_ports FMC_LVDS16_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS16_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS16_N]


set_property PACKAGE_PIN W25 [get_ports FMC_CMOS_IN8_DIF_P]
set_property PACKAGE_PIN W26 [get_ports FMC_CMOS_IN8_DIF_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN8_DIF_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN8_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN8_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN8_DIF_N]

set_property PACKAGE_PIN V28 [get_ports FMC_CMOS_IN6_DIF_P]
set_property PACKAGE_PIN V29 [get_ports FMC_CMOS_IN6_DIF_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN6_DIF_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN6_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN6_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN6_DIF_N]



#  FMC_HPC  ####################################################### Caribou ROWd: #####################################################

set_property PACKAGE_PIN AD10 [get_ports SI_CLK_OUT6_P]
set_property PACKAGE_PIN AD9 [get_ports SI_CLK_OUT6_N]

#Clock


set_property PACKAGE_PIN AG21 [get_ports FMC_TLU_CLK_P]
set_property PACKAGE_PIN AH21 [get_ports FMC_TLU_CLK_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_CLK_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_CLK_N]

set_property PACKAGE_PIN AH23 [get_ports FMC_TLU_TRG_P]
set_property PACKAGE_PIN AH24 [get_ports FMC_TLU_TRG_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_TRG_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_TRG_N]

set_property PACKAGE_PIN AD21 [get_ports FMC_TLU_BSY_P]
set_property PACKAGE_PIN AE21 [get_ports FMC_TLU_BSY_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_BSY_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_BSY_N]

set_property PACKAGE_PIN AA22 [get_ports FMC_TLU_RST_P]
set_property PACKAGE_PIN AA23 [get_ports FMC_TLU_RST_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_RST_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_TLU_RST_N]
set_property PULLDOWN true [get_ports FMC_TLU_RST_P]
set_property PULLDOWN true [get_ports FMC_TLU_RST_N]

set_property PACKAGE_PIN V23 [get_ports FMC_LVDS17_P]
set_property PACKAGE_PIN W24 [get_ports FMC_LVDS17_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS17_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS17_N]

set_property PACKAGE_PIN P25 [get_ports FMC_CMOS_IN7_DIF_P]
set_property PACKAGE_PIN P26 [get_ports FMC_CMOS_IN7_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN7_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN7_DIF_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN7_DIF_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN7_DIF_N]


set_property PACKAGE_PIN R28 [get_ports FMC_CMOS_IN5_DIF_P]
set_property PACKAGE_PIN T28 [get_ports FMC_CMOS_IN5_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN5_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN5_DIF_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN5_DIF_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN5_DIF_N]




#  FMC_ L P C  ####################################################### Caribou ROWe: #####################################################

#set_property PACKAGE_PIN AB12 [get_ports {FMC_ADC_OUT_A2_P}]
#set_property PACKAGE_PIN AC12 [get_ports {FMC_ADC_OUT_A2_N}]
#set_property IOSTANDARD LVCMOS25 [get_ports {FMC_ADC_OUT_A2_P}]
#set_property IOSTANDARD LVCMOS25 [get_ports {FMC_ADC_OUT_A2_N}]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA06_P]
set_property PACKAGE_PIN AC12 [get_ports FMC_LPC_LA06_N]
set_property PACKAGE_PIN AB12 [get_ports FMC_LPC_LA06_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA06_N]

set_property PACKAGE_PIN AC14 [get_ports FMC_ADC_OUT_C2_P]
set_property PACKAGE_PIN AC13 [get_ports FMC_ADC_OUT_C2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_C2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_C2_N]

set_property PACKAGE_PIN AF18 [get_ports FMC_ADC_OUT_E2_P]
set_property PACKAGE_PIN AF17 [get_ports FMC_ADC_OUT_E2_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_ADC_OUT_E2_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_ADC_OUT_E2_N]

set_property PACKAGE_PIN AE27 [get_ports FMC_INJ_CTRL4_DIF_P]
set_property PACKAGE_PIN AF27 [get_ports FMC_INJ_CTRL4_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_INJ_CTRL4_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_INJ_CTRL4_DIF_N]

#set_property PACKAGE_PIN AJ28 [get_ports {FMC_LVDS12_P}]
#set_property PACKAGE_PIN AJ29 [get_ports {FMC_LVDS12_N}]
#set_property IOSTANDARD LVCMOS25 [get_ports {FMC_LVDS12_P}]
#set_property IOSTANDARD LVCMOS25 [get_ports {FMC_LVDS12_N}]
set_property PACKAGE_PIN AJ28 [get_ports FMC_LPC_LA27_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA27_P]
#set_property PULLUP true[get_ports FMC_LPC_LA27_P]  # doesn't work ???????????

set_property PACKAGE_PIN AJ29 [get_ports FMC_LPC_LA27_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA27_N]
#set_property PULLUP true[get_ports FMC_LPC_LA27_N]  # doesn't work ???????????




#  FMC_L P C  ######################################################## Caribou ROWf: #####################################################

set_property PACKAGE_PIN AF15 [get_ports FMC_LVDS2_P]
set_property PACKAGE_PIN AG15 [get_ports FMC_LVDS2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS2_N]

set_property PACKAGE_PIN AE16 [get_ports FMC_ADC_OUT_B2_P]
set_property PACKAGE_PIN AE15 [get_ports FMC_ADC_OUT_B2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_B2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_B2_N]

set_property PACKAGE_PIN AH14 [get_ports FMC_ADC_OUT_D2_P]
set_property PACKAGE_PIN AH13 [get_ports FMC_ADC_OUT_D2_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_ADC_OUT_D2_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_ADC_OUT_D2_N]

set_property PACKAGE_PIN AH17 [get_ports FMC_ADC_OUT_F2_P]
set_property PACKAGE_PIN AH16 [get_ports FMC_ADC_OUT_F2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_F2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_F2_N]

set_property PACKAGE_PIN AB27 [get_ports FMC_INJ_CTRL3_DIF_P]
set_property PACKAGE_PIN AC27 [get_ports FMC_INJ_CTRL3_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_INJ_CTRL3_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_INJ_CTRL3_DIF_N]

set_property PACKAGE_PIN AJ26 [get_ports FMC_LVDS15_P]
set_property PACKAGE_PIN AK26 [get_ports FMC_LVDS15_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS15_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS15_N]

set_property PACKAGE_PIN AJ30 [get_ports FMC_LPC_LA26_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA26_P]
set_property PACKAGE_PIN AK30 [get_ports FMC_LPC_LA26_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA26_N]



#  FMC_HPC  ####################################################### Caribou ROWg: #####################################################

set_property PACKAGE_PIN U26 [get_ports FMC_ADC_DCO2_P]
set_property PACKAGE_PIN U27 [get_ports FMC_ADC_DCO2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_DCO2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_DCO2_N]

set_property PACKAGE_PIN AF20 [get_ports FMC_LVDS1_P]
set_property PACKAGE_PIN AG20 [get_ports FMC_LVDS1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS1_N]

set_property PACKAGE_PIN AH19 [get_ports FMC_LVDS3_P]
set_property PACKAGE_PIN AJ19 [get_ports FMC_LVDS3_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS3_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS3_N]

set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS6_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS6_N]

set_property PACKAGE_PIN AF23 [get_ports FMC_LVDS8_P]
set_property PACKAGE_PIN AF24 [get_ports FMC_LVDS8_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LVDS8_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LVDS8_N]

set_property PACKAGE_PIN AA24 [get_ports FMC_LVDS11_P]
set_property PACKAGE_PIN AB24 [get_ports FMC_LVDS11_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS11_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS11_N]

set_property PACKAGE_PIN U25 [get_ports FMC_REF_CLK_P]
set_property PACKAGE_PIN V26 [get_ports FMC_REF_CLK_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_REF_CLK_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_REF_CLK_N]

set_property PACKAGE_PIN V27 [get_ports {FMC_ADC_OUT_H2_P[0]}]
set_property PACKAGE_PIN W28 [get_ports {FMC_ADC_OUT_H2_N[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {FMC_ADC_OUT_H2_P[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {FMC_ADC_OUT_H2_N[0]}]
set_property DIFF_TERM true [get_ports FMC_ADC_OUT_H2_*]


set_property PACKAGE_PIN T29 [get_ports FMC_CMOS_IN4_DIF_P]
set_property PACKAGE_PIN U29 [get_ports FMC_CMOS_IN4_DIF_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN4_DIF_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN4_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN4_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN4_DIF_N]

set_property PACKAGE_PIN R25 [get_ports FMC_CMOS_IN2_DIF_P]
set_property PACKAGE_PIN R26 [get_ports FMC_CMOS_IN2_DIF_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN2_DIF_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN2_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN2_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN2_DIF_N]

set_property PACKAGE_PIN N29 [get_ports FMC_CMOS_OUT10_DIF_P]
set_property PACKAGE_PIN P29 [get_ports FMC_CMOS_OUT10_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT10_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT10_DIF_N]

set_property PACKAGE_PIN N26 [get_ports FMC_CMOS_OUT13_DIF_P]
set_property PACKAGE_PIN N27 [get_ports FMC_CMOS_OUT13_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT13_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT13_DIF_N]


#  FMC_HPC  ######################################################## Caribou ROWh: #####################################################

#set_property PACKAGE_PIN AE22 [get_ports {SI5345_CLK_OUT8_P}]  already defined line 38
#set_property PACKAGE_PIN AF22 [get_ports {SI5345_CLK_OUT8_N}]
#set_property IOSTANDARD LVDS_25 [get_ports SI5345_CLK_OUT8_P]
#set_property IOSTANDARD LVDS_25 [get_ports SI5345_CLK_OUT8_N]

set_property PACKAGE_PIN AK17 [get_ports FMC_ADC_FCO2_P]
set_property PACKAGE_PIN AK18 [get_ports FMC_ADC_FCO2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_FCO2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_FCO2_N]
set_property DIFF_TERM true [get_ports FMC_ADC_FCO2_*]


set_property PACKAGE_PIN AJ20 [get_ports FMC_LVDS4_P]
set_property PACKAGE_PIN AK20 [get_ports FMC_LVDS4_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS4_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS4_N]

set_property PACKAGE_PIN AJ23 [get_ports FMC_LVDS7_P]
set_property PACKAGE_PIN AJ24 [get_ports FMC_LVDS7_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS7_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS7_N]

set_property PACKAGE_PIN AD23 [get_ports FMC_LVDS10_P]
set_property PACKAGE_PIN AE23 [get_ports FMC_LVDS10_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS10_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LVDS10_N]



set_property PACKAGE_PIN T24 [get_ports FMC_ADC_OUT_G2_P]
set_property PACKAGE_PIN T25 [get_ports FMC_ADC_OUT_G2_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_G2_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_G2_N]
set_property DIFF_TERM true [get_ports FMC_ADC_OUT_G2_*]

set_property PACKAGE_PIN W29 [get_ports FMC_INJ_CTRL1_DIF_P]
set_property PACKAGE_PIN W30 [get_ports FMC_INJ_CTRL1_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_INJ_CTRL1_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_INJ_CTRL1_DIF_N]

set_property PACKAGE_PIN T30 [get_ports FMC_CMOS_IN3_DIF_P]
set_property PACKAGE_PIN U30 [get_ports FMC_CMOS_IN3_DIF_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN3_DIF_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN3_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN3_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN3_DIF_N]

set_property PACKAGE_PIN P30 [get_ports FMC_CMOS_IN1_DIF_P]
set_property PACKAGE_PIN R30 [get_ports FMC_CMOS_IN1_DIF_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN1_DIF_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN1_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN1_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN1_DIF_N]

set_property PACKAGE_PIN P23 [get_ports FMC_CMOS_OUT12_DIF_P]
set_property PACKAGE_PIN P24 [get_ports FMC_CMOS_OUT12_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT12_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT12_DIF_N]

set_property PACKAGE_PIN P21 [get_ports FMC_CMOS_OUT14_DIF_P]
set_property PACKAGE_PIN R21 [get_ports FMC_CMOS_OUT14_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT14_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT14_DIF_N]




#  FMC_L P C  ######################################################## Caribou ROWj: #####################################################

set_property PACKAGE_PIN AC28 [get_ports FMC_ADC_FCO1_P]
set_property PACKAGE_PIN AD28 [get_ports FMC_ADC_FCO1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_FCO1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_FCO1_N]

set_property PACKAGE_PIN AE13 [get_ports FMC_ADC_OUT_A1_P]
set_property PACKAGE_PIN AF13 [get_ports FMC_ADC_OUT_A1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_A1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_A1_N]

set_property PACKAGE_PIN AG12 [get_ports FMC_ADC_OUT_C1_P]
set_property PACKAGE_PIN AH12 [get_ports FMC_ADC_OUT_C1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_C1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_C1_N]

##set_property PACKAGE_PIN AD14 [get_ports {FMC_ADC_OUT_E1_P}]
##set_property PACKAGE_PIN AD13 [get_ports {FMC_ADC_OUT_E1_N}]
##set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_E1_P]
##set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_E1_N]

set_property PACKAGE_PIN AD16 [get_ports FMC_ADC_OUT_G1_P]
set_property PACKAGE_PIN AD15 [get_ports FMC_ADC_OUT_G1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_G1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_G1_N]

set_property PACKAGE_PIN AE18 [get_ports FMC_INJ_CTRL2_DIF_P]
set_property PACKAGE_PIN AE17 [get_ports FMC_INJ_CTRL2_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_INJ_CTRL2_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_INJ_CTRL2_DIF_N]

set_property PACKAGE_PIN AG27 [get_ports FMC_CMOS_OUT1_DIF_N]
set_property PACKAGE_PIN AG26 [get_ports FMC_CMOS_OUT1_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT1_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT1_DIF_N]

set_property PACKAGE_PIN AK27 [get_ports FMC_CMOS_OUT3_DIF_P]
set_property PACKAGE_PIN AK28 [get_ports FMC_CMOS_OUT3_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT3_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT3_DIF_N]

set_property PACKAGE_PIN AF29 [get_ports FMC_CMOS_OUT5_DIF_P]
set_property PACKAGE_PIN AG29 [get_ports FMC_CMOS_OUT5_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT5_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT5_DIF_N]

set_property PACKAGE_PIN AE25 [get_ports FMC_CMOS_OUT7_DIF_P]
set_property PACKAGE_PIN AF25 [get_ports FMC_CMOS_OUT7_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT7_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT7_DIF_N]

set_property PACKAGE_PIN AC29 [get_ports FMC_CMOS_OUT9_DIF_P]
set_property PACKAGE_PIN AD29 [get_ports FMC_CMOS_OUT9_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT9_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT9_DIF_N]

set_property PACKAGE_PIN Y30 [get_ports FMC_CMOS_IN10_DIF_P]
set_property PACKAGE_PIN AA30 [get_ports FMC_CMOS_IN10_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN10_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_IN10_DIF_N]

#  FMC_L P C  ######################################################## Caribou ROWk: #####################################################

set_property PACKAGE_PIN AG17 [get_ports FMC_ADC_DCO1_P]
set_property PACKAGE_PIN AG16 [get_ports FMC_ADC_DCO1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_DCO1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_DCO1_N]

#set_property PACKAGE_PIN AE12 [get_ports {FMC_ADC_OUT_B1_P}]
#set_property PACKAGE_PIN AF12 [get_ports {FMC_ADC_OUT_B1_N}]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_B1_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_B1_N]

#set_property PACKAGE_PIN AJ15 [get_ports {FMC_ADC_OUT_D1_P}]
#set_property PACKAGE_PIN AK15 [get_ports {FMC_ADC_OUT_D1_N}]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_D1_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_D1_N]

set_property PACKAGE_PIN AA15 [get_ports FMC_ADC_OUT_F1_P]
set_property PACKAGE_PIN AA14 [get_ports FMC_ADC_OUT_F1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_F1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_F1_N]

set_property PACKAGE_PIN AJ16 [get_ports FMC_ADC_OUT_H1_P]
set_property PACKAGE_PIN AK16 [get_ports FMC_ADC_OUT_H1_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_H1_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_ADC_OUT_H1_N]

set_property PACKAGE_PIN AB15 [get_ports FMC_LVDS13_P]
set_property PACKAGE_PIN AB14 [get_ports FMC_LVDS13_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LVDS13_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LVDS13_N]

set_property PACKAGE_PIN AH26 [get_ports FMC_CMOS_OUT2_DIF_P]
set_property PACKAGE_PIN AH27 [get_ports FMC_CMOS_OUT2_DIF_N]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_OUT2_DIF_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_CMOS_OUT2_DIF_N]

set_property PACKAGE_PIN AH28 [get_ports FMC_CMOS_OUT4_DIF_P]
set_property PACKAGE_PIN AH29 [get_ports FMC_CMOS_OUT4_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT4_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT4_DIF_N]

set_property PACKAGE_PIN AF30 [get_ports FMC_CMOS_OUT6_DIF_P]
set_property PACKAGE_PIN AG30 [get_ports FMC_CMOS_OUT6_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT6_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT6_DIF_N]

set_property PACKAGE_PIN AD25 [get_ports FMC_CMOS_OUT8_DIF_P]
set_property PACKAGE_PIN AE26 [get_ports FMC_CMOS_OUT8_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT8_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT8_DIF_N]

set_property PACKAGE_PIN AB29 [get_ports FMC_CMOS_OUT11_DIF_P]
set_property PACKAGE_PIN AB30 [get_ports FMC_CMOS_OUT11_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT11_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_OUT11_DIF_N]

set_property PACKAGE_PIN Y26 [get_ports FMC_CMOS_IN9_DIF_P]
set_property PACKAGE_PIN Y27 [get_ports FMC_CMOS_IN9_DIF_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN9_DIF_P]
set_property IOSTANDARD LVDS_25 [get_ports FMC_CMOS_IN9_DIF_N]



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
set_property PACKAGE_PIN AE12 [get_ports FMC_LPC_LA02_P]
set_property PACKAGE_PIN AF12 [get_ports FMC_LPC_LA02_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA02_N]

#set_property PACKAGE_PIN AG12 [get_ports FMC_LPC_LA03_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA03_P]
#set_property PACKAGE_PIN AH12 [get_ports FMC_LPC_LA03_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA03_N]

set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA04_P]
set_property PACKAGE_PIN AJ15 [get_ports FMC_LPC_LA04_P]
set_property PACKAGE_PIN AK15 [get_ports FMC_LPC_LA04_N]
set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA04_N]

#set_property PACKAGE_PIN AE16 [get_ports FMC_LPC_LA05_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA05_P]
#set_property PACKAGE_PIN AE15 [get_ports FMC_LPC_LA05_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA05_N]



#set_property PACKAGE_PIN AA15 [get_ports FMC_LPC_LA07_P]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA07_P]
#set_property PACKAGE_PIN AA14 [get_ports FMC_LPC_LA07_N]
#set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA07_N]

set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA08_P]
set_property PACKAGE_PIN AD13 [get_ports FMC_LPC_LA08_N]
set_property PACKAGE_PIN AD14 [get_ports FMC_LPC_LA08_P]
set_property IOSTANDARD LVCMOS25 [get_ports FMC_LPC_LA08_N]

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
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA12_P]
#set_property PACKAGE_PIN AD15 [get_ports FMC_LPC_LA12_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA12_N]

#set_property PACKAGE_PIN AH17 [get_ports FMC_LPC_LA13_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA13_P]
#set_property PACKAGE_PIN AH16 [get_ports FMC_LPC_LA13_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA13_N]

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
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA20_P]
#set_property PACKAGE_PIN AG27 [get_ports FMC_LPC_LA20_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA20_N]

#set_property PACKAGE_PIN AH28 [get_ports FMC_LPC_LA21_P]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA21_P]
#set_property PACKAGE_PIN AH29 [get_ports FMC_LPC_LA21_N]
#set_property IOSTANDARD LVDS_25 [get_ports FMC_LPC_LA21_N]

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






create_clock -period 3.571 -name FMC_ADC_DCO2_P -waveform {0.000 1.786} [get_ports FMC_ADC_DCO2_P]
create_clock -period 8.000 -name MGTREFCLK1P -waveform {0.000 4.000} [get_ports MGTREFCLK1P]
create_clock -period 8.000 -name USRCLK_P -waveform {0.000 4.000} [get_ports USRCLK_P]
create_clock -period 5.000 -name clk_p -waveform {0.000 2.500} [get_ports clk_p]
#create_generated_clock -name shutter_TOT_counter_inst/s_SFOUTBUFF_COMP_filtered -source [get_pins PLL_clk_main/inst/mmcm_adv_inst/CLKOUT0] -divide_by 1 [get_pins shutter_TOT_counter_inst/s_SFOUTBUFF_COMP_filtered_reg/Q]

set_property LOC IDELAY_X0Y113 [get_cells Deser_inst/IDELAYE2_inst1_casc]
set_property LOC ILOGIC_X0Y113 [get_cells Deser_inst/IDDR_inst1]

set_property LOC IDELAY_X0Y107 [get_cells Deser_inst/IDELAYE2_inst_casc]
set_property LOC ILOGIC_X0Y107 [get_cells Deser_inst/IDDR_inst]

create_clock -period 25.000 -name FMC_TLU_CLK_P -waveform {0.000 12.500} [get_ports FMC_TLU_CLK_P]


#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[0]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[1]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[2]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[3]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[4]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[5]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[6]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[7]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[8]/CE}]
#set_false_path -from [get_pins {s_BITSLIP_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst/s_Q_reg[9]/CE}]



#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[0]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[1]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[2]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[3]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[4]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[5]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[6]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[7]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[8]/CE}]
#set_false_path -from [get_pins {S_BITSLIP1_reg[*]/C}] -to [get_pins {Deser_inst/DDR_IN_SHIFT_inst1/s_Q_reg[9]/CE}]



set_false_path -from [get_pins s_start_transmit_af_reg/C] -to [get_pins {GBE_inst/pipe_reg[1]/D}]

set_false_path -from [get_pins {caribou_top_i/control_register_2/U0/control_register_v1_0_S00_AXI_inst/inst_control_reg_0/control_reg_out_reg[28]/C}] -to [get_pins SOUT_testpattern_sm_inst1/s_start_i_p_reg/D]

set_false_path -from [get_pins {s_control2_out_pp_reg[30]/C}] -to [get_pins Deser_inst/s_code_err1_reg_reg/D]
set_false_path -from [get_pins {s_control2_out_p_reg[30]/C}] -to [get_pins Deser_inst/s_code_err1_reg_reg/D]
set_false_path -from [get_pins {s_control2_out_p_reg[30]/C}] -to [get_pins Deser_inst/s_code_err1_reg_reg/D]

set_false_path -from [get_pins {caribou_top_i/control_register_0/U0/control_register_v1_0_S00_AXI_inst/inst_control_reg_0/control_reg_out_reg[0]/C}] -to [get_pins UDP_reg_inst/we1_UDP_reg/D]
set_false_path -from [get_pins {caribou_top_i/control_register_0/U0/control_register_v1_0_S00_AXI_inst/inst_control_reg_0/control_reg_out_reg[0]/C}] -to [get_pins UDP_reg_inst/we_UDP_reg/D]



#set_max_delay -from [get_pins {Deser_inst/DDR_IN_SHIFT_inst/Q_reg[5]/C}] -to [get_pins {Deser_inst/CW_8b10b_dec_inst/k_char_reg[0]/D}] 2.000

#set_max_delay -from [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT5] -to [get_pins Deser_inst/DDR_IN_SHIFT_inst/s_frame_40_reg/D] 2.000
#set_max_delay -from [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT5] -to [get_pins Deser_inst/DDR_IN_SHIFT_inst1/s_frame_40_reg/D] 2.000

set_false_path -through [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT1] -to [get_clocks MGTREFCLK1P]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks MGTREFCLK1P]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks -of_objects [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT2] -filter {IS_GENERATED && MASTER_CLOCK == TLU_CLK_PLL_inst/inst/clk_in1}]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks -of_objects [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT2] -filter {IS_GENERATED && MASTER_CLOCK == TLU_CLK_PLL_inst/inst/clk_in2}]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks -of_objects [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT3] -filter {IS_GENERATED && MASTER_CLOCK == TLU_CLK_PLL_inst/inst/clk_in1}]
set_false_path -from [get_clocks clk_fpga_0] -to [get_clocks -of_objects [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT3] -filter {IS_GENERATED && MASTER_CLOCK == TLU_CLK_PLL_inst/inst/clk_in2}]

set_false_path -from [get_clocks -of_objects [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT3] -filter {IS_GENERATED && MASTER_CLOCK == TLU_CLK_PLL_inst/inst/clk_in1}] -to [get_clocks MGTREFCLK1P]

#
set_false_path -from [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT0] -to [get_pins {pipe_reg[1]__1/D}]
set_false_path -from [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT0] -to [get_pins {pipe_reg[1]__2/D}]
set_false_path -from [get_pins s_TSini_stretched_reg/C] -to [get_pins {s_globalTS_reg[*]/R}]

set_false_path -from [get_pins TLU_CLK_PLL_inst/inst/mmcm_adv_inst/CLKOUT0] -to [get_pins {pipe_reg[1]__0/D}]

set_multicycle_path -from [get_pins s_start_transmit_af_reg/C] -to [get_pins s_allow_read_piggy_reg/D] 3
set_multicycle_path -from [get_pins s_start_transmit_af_reg/C] -to [get_pins s_allow_read_base_reg/D] 3

set_false_path -from [get_pins s_TSini_stretched_reg/C] -to [get_pins s_TS_test_INJ_pulse_gate_reg/D]

set_false_path -from [get_pins s_start_transmit_af_reg/C] -to [get_pins s_allow_read_base_reg/D]
set_false_path -from [get_pins s_start_transmit_af_reg/C] -to [get_pins s_allow_read_piggy_reg/D]

set_false_path -from [get_pins {caribou_top_i/control_register_0/U0/control_register_v1_0_S00_AXI_inst/inst_control_reg_0/control_reg_out_reg[28]/C}] -to [get_pins {s_TS_ovfl_cnt_reg[*]/CLR}]
