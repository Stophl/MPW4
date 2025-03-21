# Set constraints for LED output
set_property PACKAGE_PIN AF13 [get_ports led]           
set_property IOSTANDARD LVCMOS33 [get_ports led]   

# Set constraints for the 125 MHz clock input (LVDS)
# LVDS Clock pins: clk_p (G21), clk_n (F21)
set_property PACKAGE_PIN G21 [get_ports clk_p]          
set_property PACKAGE_PIN F21 [get_ports clk_n]          
set_property IOSTANDARD LVDS_25 [get_ports clk_p]        
set_property IOSTANDARD LVDS_25 [get_ports clk_n] 
