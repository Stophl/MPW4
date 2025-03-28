set_property SRC_FILE_INFO {cfile:/home/pct/Caribou/MPW4_Helmut/MPW4/caribou-soc/caribou-soc.srcs/sources_1/ip/PLL_40MHz_to_640MHz/PLL_40MHz_to_640MHz.xdc rfile:../../../caribou-soc.srcs/sources_1/ip/PLL_40MHz_to_640MHz/PLL_40MHz_to_640MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.250
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in2]] 0.250
