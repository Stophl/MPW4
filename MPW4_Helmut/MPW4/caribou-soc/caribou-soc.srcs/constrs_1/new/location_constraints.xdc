#create_pblock FCO2
##add_cells_to_pblock [get_pblocks FCO2] [get_cells * -hier -filter {name =~ usr/decod_hephy_gen.tbm_decod_gen[1].decod_inst/deser_1d_inst/PhaseERRORs_INST1/*}]
##add_cells_to_pblock [get_pblocks FCO2] [get_cells * -hier -filter {name =~ usr/decod_hephy_gen.tbm_decod_gen[1].decod_inst/deser_1d_inst/PhaseERRORs_INST2/*}]
##add_cells_to_pblock [get_pblocks FCO2] [get_cells * -hier -filter {name =~ usr/decod_hephy_gen.tbm_decod_gen[1].decod_inst/deser_1d_inst/deser_demux_inst/*}]
##add_cells_to_pblock [get_pblocks FCO2] [get_cells * -hier -filter {name =~ usr/decod_hephy_gen.tbm_decod_gen[1].decod_inst/deser_1d_inst/delay_pattern_inst/*}]
##add_cells_to_pblock [get_pblocks FCO2] [get_cells * -hier -filter {name =~ usr/decod_hephy_gen.tbm_decod_gen[1].decod_inst/deser_1d_inst/bit_slip_inst/*}]
#add_cells_to_pblock FCO2 [get_cells inst_FCO_reg_2/*]
#resize_pblock [get_pblocks FCO2] -add {SLICE_X0Y118:SLICE_X3Y117}
#set_property EXCLUDE_PLACEMENT TRUE [get_pblocks FCO2]




create_pblock ADC_G2
resize_pblock [get_pblocks ADC_G2] -add {SLICE_X0Y215:SLICE_X3Y216}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks ADC_G2]

create_pblock ADC_H2
resize_pblock [get_pblocks ADC_H2] -add {SLICE_X0Y231:SLICE_X3Y232}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks ADC_H2]
#add_cells_to_pblock ADC_H2 [get_cells inst_FCO_reg_2/*]

##################################################################################################

create_pblock SEROUT
add_cells_to_pblock [get_pblocks SEROUT] [get_cells SEROUT_inst1/*]
add_cells_to_pblock [get_pblocks SEROUT] [get_cells SEROUT_inst1]
resize_pblock [get_pblocks SEROUT] -add {SLICE_X0Y142:SLICE_X3Y142}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks SEROUT]
#add_cells_to_pblock [get_pblocks SEROUT] [get_cells SEROUT_inst1]
create_pblock TRANSMIT
add_cells_to_pblock [get_pblocks TRANSMIT] [get_cells SOUT_testpattern_sm_inst1/*]
add_cells_to_pblock [get_pblocks TRANSMIT] [get_cells SOUT_testpattern_sm_inst1]
resize_pblock [get_pblocks TRANSMIT] -add {SLICE_X4Y140:SLICE_X11Y142}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks TRANSMIT]


#####################      SIN    ########################################################

#set_property LOC SLICE_X0Y108 [get_cells {IDELAYE2_inst IDELAY_X0Y108/IDELAYE2}]
create_pblock SERIN
add_cells_to_pblock [get_pblocks SERIN] [get_cells Deser_inst/DDR_IN_SHIFT_inst/*]
add_cells_to_pblock [get_pblocks SERIN] [get_cells Deser_inst/DDR_IN_SHIFT_inst]
resize_pblock [get_pblocks SERIN] -add {SLICE_X0Y107:SLICE_X3Y108}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks SERIN]

create_pblock DECODE
add_cells_to_pblock [get_pblocks DECODE] [get_cells Deser_inst/CW_8b10b_dec_inst/*]
add_cells_to_pblock [get_pblocks DECODE] [get_cells {Deser_inst/CW_8b10b_dec_inst Deser_inst/DATA_FIFO_MPW3_decode}]
resize_pblock [get_pblocks DECODE] -add {SLICE_X4Y106:SLICE_X11Y110}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks DECODE]



#####################      SIN1     ########################################################

#set_property LOC SLICE_X0Y114 [get_cells {IDELAYE2_inst1 IDELAY_X0Y114/IDELAYE2}]
#set_property LOC SLICE_X0Y113 [get_cells {IDELAYE2_inst1_casc IDELAY_X0Y113/IDELAYE2}]
create_pblock SERIN1
add_cells_to_pblock [get_pblocks SERIN1] [get_cells Deser_inst/DDR_IN_SHIFT_inst1/*]
add_cells_to_pblock [get_pblocks SERIN1] [get_cells Deser_inst/DDR_IN_SHIFT_inst1]
resize_pblock [get_pblocks SERIN1] -add {SLICE_X0Y113:SLICE_X3Y114}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks SERIN1]

create_pblock DECODE1
add_cells_to_pblock [get_pblocks DECODE1] [get_cells Deser_inst/CW_8b10b_dec_inst1/*]
add_cells_to_pblock [get_pblocks DECODE1] [get_cells {Deser_inst/CW_8b10b_dec_inst1 Deser_inst/DATA_FIFO_MPW3_decode1}]
resize_pblock [get_pblocks DECODE1] -add {SLICE_X4Y112:SLICE_X11Y116}
set_property EXCLUDE_PLACEMENT 1 [get_pblocks DECODE1]



create_pblock GBE_PCS_PMA
add_cells_to_pblock [get_pblocks GBE_PCS_PMA] [get_cells -quiet [list GBE_inst/U0]]
resize_pblock [get_pblocks GBE_PCS_PMA] -add {SLICE_X158Y120:SLICE_X163Y147}

create_pblock GBE_MAC
add_cells_to_pblock [get_pblocks GBE_MAC] [get_cells -quiet [list GBE_inst/U1]]
resize_pblock [get_pblocks GBE_MAC] -add {SLICE_X152Y120:SLICE_X157Y147}

#create_pblock GBE_transmit_FIFO
#add_cells_to_pblock [get_pblocks GBE_transmit_FIFO] [get_cells GBE_inst/transmit_inst1]
#add_cells_to_pblock [get_pblocks GBE_transmit_FIFO] [get_cells GBE_inst/transmit_fifo_inst]
#resize_pblock [get_pblocks GBE_transmit_FIFO] -add {SLICE_X143Y138:SLICE_X150Y147}

create_pblock GBE_arp_ping_UDP
add_cells_to_pblock [get_pblocks GBE_arp_ping_UDP] [get_cells -quiet [list GBE_inst/ARP_chek_inst GBE_inst/ARP_repl_inst GBE_inst/PING_check_inst GBE_inst/PING_reply_inst GBE_inst/transmit_fifo_inst GBE_inst/transmit_inst1 UDP_FIFO_base UDP_FIFO_piggy]]
resize_pblock [get_pblocks GBE_arp_ping_UDP] -add {SLICE_X124Y120:SLICE_X151Y147}



#create_pblock GBE_SFP
#add_cells_to_pblock [get_pblocks GBE_SFP] [get_cells GBE_inst/*]
##add_cells_to_pblock [get_pblocks GBE_SFP] [get_cells UDP_reg_inst/*]
#add_cells_to_pblock [get_pblocks GBE_SFP] [get_cells UDP_FIFO_base/*]
#add_cells_to_pblock [get_pblocks GBE_SFP] [get_cells UDP_FIFO_piggy/*]
#add_cells_to_pblock [get_pblocks GBE_SFP] [get_cells {GBE_inst UDP_FIFO_base UDP_FIFO_piggy }]
#resize_pblock [get_pblocks GBE_SFP] -add {SLICE_X140Y111:SLICE_X163Y149}
#set_property EXCLUDE_PLACEMENT 1 [get_pblocks GBE_SFP]

#set_property BEL FIFO18E1 [get_cells {DATA_FIFO_MPW3_decode/U0/inst_fifo_gen/gconvfifo.rf/gbi.bi/v7_bi_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf18e1_inst.sngfifo18e1}]
#set_property LOC RAMB18_X0Y42 [get_cells {DATA_FIFO_MPW3_decode/U0/inst_fifo_gen/gconvfifo.rf/gbi.bi/v7_bi_fifo.fblk/gextw[1].gnll_fifo.inst_extd/gonep.inst_prim/gf18e1_inst.sngfifo18e1}]











