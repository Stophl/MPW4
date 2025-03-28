library ieee;
use ieee.std_logic_1164.all;

entity FCO_reg is

	port 
	(
		clk		: in std_logic;
		
		FCO_in	: in std_logic;
		p_out	:  out std_logic;
		pp_out	:  out std_logic
	);

end entity;

architecture rtl of FCO_reg is

signal s_FCO_in, s_FCO_in_p: std_logic;
signal s_pulse, s_pulse_p, s_pulse_pp, s_pulse_ppp, s_pulse_pppp, s_pulse_ppppp, s_pulse_pppppp, s_pulse_ppppppp, s_pulse_pppppppp, s_pulse_ppppppppp: std_logic;

begin

	process (clk) begin
		if (rising_edge(clk)) then  
		  s_FCO_in <= FCO_in; 
		  s_FCO_in_p <= s_FCO_in;
		end if;
    end process;
    
    s_pulse <= s_FCO_in and (not(s_FCO_in_p));
    
    process (clk) begin
		if (rising_edge(clk)) then  
		   s_pulse_p <= s_pulse;
		   s_pulse_pp <= s_pulse_p;
		   s_pulse_ppp <= s_pulse_pp;
		   s_pulse_pppp <= s_pulse_ppp;
		   s_pulse_ppppp <= s_pulse_pppp;
		   s_pulse_pppppp <= s_pulse_ppppp;
		   s_pulse_ppppppp <= s_pulse_pppppp;
		   s_pulse_pppppppp <= s_pulse_ppppppp;
		   s_pulse_ppppppppp <= s_pulse_pppppppp; 
		end if;
		
    end process;
    
   -- p_out <= s_pulse;
   -- pp_out <= s_pulse_p;
   
    p_out <= s_pulse;
    pp_out <= s_pulse_p;

end rtl;