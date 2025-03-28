
# PART is zynq xc7z045ffg900

############################################################
# Clock Period Constraints                                 #
############################################################

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS

############################################################
# None
############################################################


#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################






############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ CLR} -of [get_cells -hier -regexp {.*\/async_rst.*}]]



############################################################
# CDC Waivers
############################################################ 
create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */sync_stats_reset/sync_rst1_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_STATS_RESET/async_rst0_reg*}] -filter {name =~ *PRE}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain." -from [get_pins -of [get_cells -hier -filter {name =~ */byte_wide_ram[*].header_compare_dist_ram/DP*}] -filter {name =~ *CLK}] -to [get_pins -of [get_cells -hier -filter {name =~ */bit_match_gen[*].bit_match_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain." -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */address_filter_inst/load_wr_data_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */rxgen/ENABLE_REG_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_*x_inband_*_enable_reg*}] -filter {name =~ *C}] 
