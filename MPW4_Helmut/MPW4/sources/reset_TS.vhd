
library ieee;
use ieee.std_logic_1164.all;

entity reset_TS is


	port 
	(
		clk		: in std_logic;
		arm_in	: in std_logic;
		trg_in  : in std_logic;
		output	: out std_logic
	);

end entity;

architecture rtl of reset_TS is

	signal s_sr,s_n: std_logic := '0';

begin

   process (clk)--sr FF
   begin
     if ( rising_edge(clk) ) then  
       if ( arm_in = '1') then s_sr <= '1'; elsif (trg_in = '1') then s_sr <= '0'; end if;
     end if;
   end process;
    
--   process (clk) -- neg_edge
--    variable pipe: std_logic_vector(1 to 2);
--    begin
--      if ( rising_edge(clk) ) then   
--        s_n <= (pipe(1) xor pipe(2))  and  (     pipe(2)); pipe:=  s_sr & pipe(1); 
--    end if;       
--    end process; 
    
   
    
    
--output <= s_n;
output <= s_sr;	
end rtl;
