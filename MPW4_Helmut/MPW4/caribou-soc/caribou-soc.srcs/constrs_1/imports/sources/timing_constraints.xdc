#SPI ports
#### CLICpix2 SPI parameters
#measured 14.5
#### Max Tco
#### Min Tco

#### Setup time requirement
#### Hold time requirement

#LVDS-CML buffers

#CML-LVDS buffers

#Clk
##to CLICpix2
##to FPGA

#SS

#MOSI

#MISO

#FMC cable (50 cm)


create_clock -period 25.000 -name SI5345_CLK_OUT8_clk_p [get_ports SI5345_CLK_OUT8_clk_p]
#####################
## without FMC cable
#####################
#set tclk_si5345tofpga_withoutFMCcable [expr $tclk_si5345tofpga_car + $tclk_si5345tofpga_zc706]
#create_clock -name VIRT_CLICpix2_withoutFMCClock -period 10
#set_clock_latency -source [expr $tclk_si5345toclicpix_mean - $tclk_si5345tofpga_withoutFMCcable] [get_clocks  VIRT_CLICpix2_withoutFMCClock]

##Oututs
###SS
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -max [expr $tsu + $tss_zc706 + $tss_car + $tss_chipboard_max + $tMargin] [get_ports {CLICpix2_ss_*}]
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -min [expr $tss_zc706 + $tss_car + $tss_chipboard_min - $th - $tMargin] [get_ports {CLICpix2_ss_*}]
###MOSI
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -max [expr $tsu + $tmosi_zc706 + $tmosi_car + $tmosi_chipboard_max + $tMargin] [get_ports {CLICpix2_mosi_*}]
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -min [expr $tmosi_zc706 + $tmosi_car + $tmosi_chipboard_min - $th - $tMargin] [get_ports {CLICpix2_mosi_*}]
###
#set_multicycle_path -setup -start -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to [get_clocks VIRT_CLICpix2_withoutFMCClock] 3
#set_multicycle_path -hold -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to [get_clocks VIRT_CLICpix2_withoutFMCClock] 1

##Inputs
###MISO
#set_input_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -max [expr $tco_max + $tmiso_chipboard_max + $tmiso_car + $tmiso_zc706 + $tMargin] [get_ports CLICpix2_miso_*]
#set_input_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -min [expr $tco_min + $tmiso_chipboard_min + $tmiso_car + $tmiso_zc706 - $tMargin] [get_ports CLICpix2_miso_*]
###
#set_multicycle_path -setup -from [get_clocks VIRT_CLICpix2_withoutFMCClock] -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 6
#set_multicycle_path -hold -end -from [get_clocks VIRT_CLICpix2_withoutFMCClock] -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 1

####################
### with FMC cable
####################
#set tclk_si5345tofpga_withFMCcable [expr $tclk_si5345tofpga_withoutFMCcable + $tFMCcable]
#create_clock -name VIRT_CLICpix2_withFMCClock -period 10
#set_clock_latency -source [expr $tclk_si5345toclicpix_mean - $tclk_si5345tofpga_withFMCcable] [get_clocks  VIRT_CLICpix2_withFMCClock]

##Outputs
###SS
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -max [expr $tsu + $tss_zc706 + $tFMCcable + $tss_car + $tss_chipboard_max + $tMargin] [get_ports {CLICpix2_ss_*}] -add_delay
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -min [expr $tss_zc706 + $tFMCcable + $tss_car + $tss_chipboard_min -$th - $tMargin] [get_ports {CLICpix2_ss_*}] -add_delay
###MOSI
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -max [expr $tsu + $tmosi_zc706 + $tFMCcable + $tmosi_car + $tmosi_chipboard_max + $tMargin] [get_ports {CLICpix2_mosi_*}] -add_delay
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -min [expr $tmosi_zc706 + $tFMCcable + $tmosi_car + $tmosi_chipboard_min -$th - $tMargin] [get_ports {CLICpix2_mosi_*}] -add_delay
###
#set_multicycle_path -setup -start -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to [get_clocks VIRT_CLICpix2_withFMCClock] 3
#set_multicycle_path -hold -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to [get_clocks VIRT_CLICpix2_withFMCClock] 1

##Inputs
###MISO
#set_input_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -max [expr $tco_max + $tmiso_chipboard_max + $tmiso_car +  $tFMCcable + $tmiso_zc706 + $tMargin] [get_ports CLICpix2_miso_*] -add_delay
#set_input_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -min [expr $tco_min + $tmiso_chipboard_min + $tmiso_car +  $tFMCcable + $tmiso_zc706 - $tMargin] [get_ports CLICpix2_miso_*] -add_delay
###
#set_multicycle_path -setup -from [get_clocks VIRT_CLICpix2_withFMCClock] -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 6
#set_multicycle_path -hold -end -from [get_clocks VIRT_CLICpix2_withFMCClock] -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 1


####################
### separate clocks
####################
#set_clock_groups -physically_exclusive -group [get_clocks VIRT_CLICpix2_withoutFMCClock] -group [get_clocks VIRT_CLICpix2_withFMCClock]

### SerDes
#create_clock -period 3.125 [get_ports Transceiver_refClk_clk_p]
## User Clock Constraints
##set_false_path -to [get_pins -hierarchical -filter {NAME =~ *reset_on_error_in_r*/D}]

#############################################
### CLICpix2 outputs
#############################################
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -max [expr $tsu + $tdataOut_withoutFMCcable_max] [get_ports {CLICpix2_pwr_pulse_p CLICpix2_shutter_p CLICpix2_tp_sw_p}]
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withoutFMCClock] -min [expr $tco_min + $tdataIn_withoutFMCcable_min] [get_ports {CLICpix2_pwr_pulse_p CLICpix2_shutter_p CLICpix2_tp_sw_p}]
#set_multicycle_path -setup -from [get_clocks CLICpix2_scl_o_CLICpix2_clk_wiz_0_0] -to [get_clocks VIRT_CLICpix2_withoutFMCClock] 2
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -max [expr $tsu + $tdataOut_withFMCcable_max] [get_ports {CLICpix2_pwr_pulse_p CLICpix2_shutter_p CLICpix2_tp_sw_p}] -add_delay
#set_output_delay -clock [get_clocks VIRT_CLICpix2_withFMCClock] -min [expr $tco_min + $tdataIn_withFMCcable_min] [get_ports {CLICpix2_pwr_pulse_p CLICpix2_shutter_p CLICpix2_tp_sw_p}] -add_delay
#set_multicycle_path -setup -from [get_clocks CLICpix2_scl_o_CLICpix2_clk_wiz_0_0] -to [get_clocks VIRT_CLICpix2_withFMCClock] 2

#set_output_delay -clock [get_clocks clk_fpga_0] -max 1 [get_ports {CLICpix2_reset_p}]
#set_output_delay -clock [get_clocks clk_fpga_0] -min 1 [get_ports {CLICpix2_reset_p}]
#set_false_path -to [get_ports {CLICpix2_reset_p}]

###C3PD outpt
#set_output_delay -clock [get_clocks clk_fpga_0] -max 1 [get_ports {C3PD_reset_p}]
#set_output_delay -clock [get_clocks clk_fpga_0] -min 1 [get_ports {C3PD_reset_p}]
#set_false_path -to [get_ports {C3PD_reset_p}]

###Asynchronous clocks
#set_clock_groups -asynchronous -group [get_clocks {SI5345_CLK_OUT8_clk_p Transceiver_refClk_clk_p CLICpix2_scl_o_CLICpix2_clk_wiz_0_0 clkfbout_CLICpix2_clk_wiz_0_0 ext_spi_clk_CLICpix2_clk_wiz_0_0 transceiver_rx_CLICpix2_clk_wiz_0_0}] -group [get_clocks clk_fpga_0]











