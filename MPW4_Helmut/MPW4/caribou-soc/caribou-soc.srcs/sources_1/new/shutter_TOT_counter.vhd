library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity shutter_TOT_counter is
    Port (           axi_clk : in STD_LOGIC;
                     clk_200 : in STD_LOGIC;
                    reset_in : in STD_LOGIC;
                      
           SFOUTBUFF_COMP_in : in STD_LOGIC;
               shutter_val_in: in STD_LOGIC_VECTOR(31 DOWNTO 0);
             start_shutter_in: in STD_LOGIC;
                    shutter_o: out STD_LOGIC;
       SFOUTBUFF_COMP_pedge_o: out STD_LOGIC;
         shutter_or_TLUcont_o: out STD_LOGIC;
                    
      counter_async_shutter_o: out STD_LOGIC_VECTOR(15 DOWNTO 0);
          counter200MHz_TOT_o: out STD_LOGIC_VECTOR(15 DOWNTO 0);
                  TLU_BSY_in : in STD_LOGIC;
                 TLU_CONT_in : in STD_LOGIC;
                 TLU_CONTen_o: out STD_LOGIC);
end shutter_TOT_counter;

architecture Behavioral of shutter_TOT_counter is

signal comp_tmp: std_logic_vector(63 downto 0);
signal s_SFOUTBUFF_COMP_pedge,s_SFOUTBUFF_COMP_pedge_delayed,s_SFOUTBUFF_COMP_filtered_delayed: std_logic := '0'; 
signal s_SFOUTBUFF_COMP_filtered: std_logic := '0'; 
signal s_count_async,s_200MHz_cnt,s_count_async_shutter: std_logic_vector(15 downto 0);

signal s_shutter_cnt: std_logic_vector(31 downto 0);
signal s_shutter_cnt_en,s_shutter_cnt_tco,s_SFOUTBUFF_COMP_shutter: std_logic := '0'; 
signal s_shutter, s_TLU_cont_pedge: std_logic := '0'; 

begin

  process(clk_200) -------s_SFOUTBUFF_COMP_input  PEDGE--------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(clk_200) ) then s_SFOUTBUFF_COMP_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); pipe:=  SFOUTBUFF_COMP_in & pipe(1);  end if;       
  end process;

------delay s_SFOUTBUFF_COMP_pedge -----------------------------------------------------------------------
  process(clk_200)   
  begin
    if (rising_edge (clk_200)) then 
       for i in 0 to 49 loop comp_tmp(i+1) <= comp_tmp(i); end loop;
       comp_tmp(0) <= s_SFOUTBUFF_COMP_pedge;
    end if; 
  end process;  
 
  s_SFOUTBUFF_COMP_pedge_delayed <= comp_tmp(5); --comp_tmp(50)


process (clk_200)--sr FF 200MHz
 begin
   if ( rising_edge(clk_200) ) then  
   if ( s_SFOUTBUFF_COMP_pedge_delayed='1') then s_SFOUTBUFF_COMP_filtered <= '0'; elsif ((s_SFOUTBUFF_COMP_pedge='1')and (TLU_BSY_in='0')) then s_SFOUTBUFF_COMP_filtered <= '1'; end if;
   end if;
 end process;


process(axi_clk) -------- s_cont --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(axi_clk) ) then  s_TLU_cont_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2));  pipe:=  TLU_CONT_in & pipe(1);  end if;       
end process;



-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter
TLU_CONTen_o <= '1' when shutter_val_in = x"ffffffff"   else '0';


process (axi_clk)
begin
   if ( rising_edge(axi_clk) ) then  
      if s_shutter ='0' then   --load
         s_shutter_cnt <= shutter_val_in;
      else
            s_shutter_cnt <= s_shutter_cnt + 1;
      end if;
      
      if (s_shutter_cnt = x"ffffffff") then s_shutter_cnt_tco<='1'; else s_shutter_cnt_tco<='0'; end if;
   end if;
end process;

process (axi_clk)--sr shutter FF
 begin
   if ( rising_edge(axi_clk) ) then  
   if ( s_shutter_cnt_tco='1') then s_shutter <= '0'; elsif ((start_shutter_in = '1')) then s_shutter <= '1'; end if;
   end if;
 end process;
 
 shutter_or_TLUcont_o <= s_shutter or TLU_CONT_in ;
 
 s_SFOUTBUFF_COMP_shutter <= s_SFOUTBUFF_COMP_filtered and ( s_shutter or TLU_CONT_in);
 
 process (s_SFOUTBUFF_COMP_shutter,reset_in,s_TLU_cont_pedge) --reset with s_control2_out_pulse(31)
   begin
  
     if ((reset_in ='1') or (s_TLU_cont_pedge ='1')) then
        s_count_async_shutter <= (others => '0');
     elsif (rising_edge(s_SFOUTBUFF_COMP_filtered)) then
      s_count_async_shutter <= s_count_async_shutter + 1;
    
     end if;
        
   end process; 
   
   
   

-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter-- shutter counter




-- asynchronous counter for  s_SFOUTBUFF_COMP_input   

process (s_SFOUTBUFF_COMP_filtered,reset_in) --reset with s_control2_out_pulse(31)
   begin
  
     if (reset_in ='1') then
        s_count_async <= (others => '0');
     elsif (rising_edge(s_SFOUTBUFF_COMP_filtered)) then
      s_count_async <= s_count_async + 1;
      -- if ( s_inj_puls ='1') then s_count_async <= s_count_async + 1; end if; --------------------------!!!!!!!!!!!!!!!
     end if;
        
   end process; 


   



process (clk_200,reset_in)--16bit counter 200MHz TOT --------------------------------------
	begin
	  if (rising_edge(clk_200)) then
        if ((reset_in ='1') or (s_SFOUTBUFF_COMP_pedge = '1')) then
	      s_200MHz_cnt <= (others => '0');
	    elsif ((SFOUTBUFF_COMP_in = '1') ) then ---------------------------------!!!!!!!!!!
	      s_200MHz_cnt <= s_200MHz_cnt +1;
	    end if; 
	  end if;
	end process;

  SFOUTBUFF_COMP_pedge_o <= s_SFOUTBUFF_COMP_pedge;
              shutter_o <= s_shutter;
            
counter_async_shutter_o <= s_count_async_shutter(15 DOWNTO 0); 
    counter200MHz_TOT_o <= s_200MHz_cnt(15 DOWNTO 0);



end Behavioral;
