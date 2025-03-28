
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myDDR is
    port(   
     in_DCO2_bufg : in std_logic;  -- global buffer clk
          ser_in : in std_logic;
     
                out_DDhl  : out STD_LOGIC_VECTOR(1 DOWNTO 0) );  
   
end myDDR;


architecture archi of myDDR is


signal s_out_DDh, s_out_DDl: std_logic;

begin
  
 process (in_DCO2_bufg) begin
   if (rising_edge(in_DCO2_bufg)) then s_out_DDh <= ser_in; end if;
 end process;

process (in_DCO2_bufg) begin
  if (falling_edge(in_DCO2_bufg)) then s_out_DDl <= ser_in; end if;
end process;

process (in_DCO2_bufg) begin
   if (rising_edge(in_DCO2_bufg)) then 
     out_DDhl <= s_out_DDh & s_out_DDl;
   end if;
 end process;    
    
 
 end;