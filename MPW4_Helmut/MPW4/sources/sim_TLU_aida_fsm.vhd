
library  IEEE;
use      IEEE.std_logic_1164.all;
use 	 IEEE.STD_LOGIC_UNSIGNED.ALL;
use 	 ieee.numeric_std.all;




entity sim_TLU_aida_fsm is
   port (  clk_i :   in   std_logic;
         reset_i :   in   std_logic;
         start_i :   in   std_logic;
   pedge_nedge_i :   in   std_logic;
          cont_i :   in   std_logic;
         event_o :   out  std_logic_vector(15 downto 0);
        trgtag_o :   out  std_logic);
			
end sim_TLU_aida_fsm;



architecture rtl of sim_TLU_aida_fsm is


  type t_state is (waiting,
                   T_0,T_1,T_2,T_3,T_4,T_5,T_6,T_7,T_8,T_9,T_10,T_11,T_12,T_13,T_14,T_15,set_tag,tag_stretch1,tag_stretch2,tag_stretch3);	
  signal s_state : t_state;
  
  signal s_trgtag_o: std_logic;
  signal s_event : std_logic_vector(15 downto 0);
  
  
begin    

  
  

p_ctrl: process (clk_i, reset_i, pedge_nedge_i)
begin  -- process p_serin
  if (reset_i = '1') then               -- asynchronous reset (active high)
    s_state <= waiting;
    s_event <= "0000000000000000";
    s_trgtag_o <= '0';
   
  elsif rising_edge(clk_i) then  -- rising clock edge
    case s_state is
		
		when T_0 =>  if pedge_nedge_i = '1' then   s_event(0) <= cont_i; 	s_state <= T_1;  end if;	
		when T_1 =>  if pedge_nedge_i = '1' then   s_event(1) <= cont_i;	s_state <= T_2;  end if;
		when T_2 =>  if pedge_nedge_i = '1' then   s_event(2) <= cont_i; 	s_state <= T_3;  end if;
		when T_3 =>  if pedge_nedge_i = '1' then   s_event(3) <= cont_i; 	s_state <= T_4;  end if;
		when T_4 =>  if pedge_nedge_i = '1' then   s_event(4) <= cont_i; 	s_state <= T_5;  end if;
		when T_5 =>  if pedge_nedge_i = '1' then   s_event(5) <= cont_i; 	s_state <= T_6;  end if;
		when T_6 =>  if pedge_nedge_i = '1' then   s_event(6) <= cont_i; 	s_state <= T_7;  end if;
		when T_7 =>  if pedge_nedge_i = '1' then   s_event(7) <= cont_i; 	s_state <= T_8;  end if;
		when T_8 =>  if pedge_nedge_i = '1' then   s_event(8) <= cont_i;	s_state <= T_9;  end if;
		when T_9 =>  if pedge_nedge_i = '1' then   s_event(9) <= cont_i; 	s_state <= T_10; end if;
		when T_10 => if pedge_nedge_i = '1' then   s_event(10)<= cont_i; 	s_state <= T_11; end if;
		when T_11 => if pedge_nedge_i = '1' then   s_event(11)<= cont_i; 	s_state <= T_12; end if;
		when T_12 => if pedge_nedge_i = '1' then   s_event(12)<= cont_i; 	s_state <= T_13; end if;
		when T_13 => if pedge_nedge_i = '1' then   s_event(13)<= cont_i; 	s_state <= T_14; end if;
        when T_14 => if pedge_nedge_i = '1' then   s_event(14)<= cont_i; 	s_state <= T_15; end if;
		when T_15 => if pedge_nedge_i = '1' then   s_event(15)<= cont_i;  	s_state <= set_tag;  end if;
		
		when set_tag => event_o <= s_event;   s_trgtag_o <= '1';            s_state <= tag_stretch1;
		--when set_tag => event_o <= "1111111111111111";   s_trgtag_o <= '1';            s_state <= tag_stretch1;
        when tag_stretch1 => if pedge_nedge_i = '1' then                	s_state <= tag_stretch2;  end if;    
        when tag_stretch2 =>                                                s_state <= tag_stretch3;    
        when tag_stretch3 =>                                                s_state <= waiting;    
 
      when others =>
        s_trgtag_o <= '0';
        if start_i = '1' then
          -- START Condition detected
          --s_event <= "0000000000000000";
          s_state <= T_0;
          
        end if;
    end case;
  end if;
end process p_ctrl;

process (clk_i)
    begin
      if ( rising_edge(clk_i) ) then   trgtag_o <= s_trgtag_o; end if;       
    end process; 


end rtl;


