

library  IEEE;
use      IEEE.std_logic_1164.all;
use 	 IEEE.STD_LOGIC_UNSIGNED.ALL;
use 	 ieee.numeric_std.all;




entity sim_TLU_fsm is
   port (  clk_i :   in   std_logic;
         start_i :   in   std_logic;
         reset_i :   in   std_logic;
          busy_i :   in   std_logic;
          cont_o :   out  std_logic;
         trgtag_o:   out  std_logic);
			
end sim_TLU_fsm;



architecture rtl of sim_TLU_fsm is


  type t_state is (waiting,set_trigger,wait_for_busy,
                   T_P,T_P1,T_P2,T_P3,T_0,T_1,T_2,T_3,T_4,T_5,T_6,T_7,T_8,T_9,T_10,T_11,T_12,T_13,T_14);	
  signal s_state : t_state;
  
  signal s_trgtag_o, s_cont_o: std_logic;
  signal s_event : std_logic_vector(14 downto 0);
  
  
begin    

  
  

p_ctrl: process (clk_i, reset_i)
begin  -- process p_serin
  if (reset_i = '1') then               -- asynchronous reset (active high)
    s_state <= waiting;
    s_event <= "000000000000000";
    s_trgtag_o <= '0';
    s_cont_o <= '0';
  --- EUDET MODE ------------------------------------------------------------------------------------------------ 
--  elsif rising_edge(clk_i) then  -- rising clock edge
--    case s_state is
--		when set_trigger =>		
--            s_trgtag_o <= '1'; 
--             s_event <= s_event + 1;
--             s_state <= wait_for_busy;
--		when wait_for_busy =>	
--            if (busy_i = '1' )  then	s_state <= T_P3 ;	else	s_state <= wait_for_busy ; 	end if;
--        when T_P3 =>    s_trgtag_o <= '1'; 			s_state <= T_P2;  ---simulate cable delay
--        when T_P2 =>    s_trgtag_o <= '1'; 			s_state <= T_P1;  ---simulate cable delay
--        when T_P1 =>    s_trgtag_o <= '1'; 			s_state <= T_P;   ---simulate cable delay
--		when T_P => 	s_trgtag_o <= '0'; 			s_state <= T_0;
--		when T_0 => 	s_trgtag_o <= s_event(0); 	s_state <= T_1;
--		when T_1 => 	s_trgtag_o <= s_event(1); 	s_state <= T_2;
--		when T_2 => 	s_trgtag_o <= s_event(2); 	s_state <= T_3;
--		when T_3 => 	s_trgtag_o <= s_event(3); 	s_state <= T_4;
--		when T_4 => 	s_trgtag_o <= s_event(4); 	s_state <= T_5;
--		when T_5 => 	s_trgtag_o <= s_event(5); 	s_state <= T_6;
--		when T_6 => 	s_trgtag_o <= s_event(6); 	s_state <= T_7;
--		when T_7 => 	s_trgtag_o <= s_event(7); 	s_state <= T_8;
--		when T_8 => 	s_trgtag_o <= s_event(8); 	s_state <= T_9;
--		when T_9 => 	s_trgtag_o <= s_event(9); 	s_state <= T_10;
--		when T_10 => 	s_trgtag_o <= s_event(10); 	s_state <= T_11;
--		when T_11 => 	s_trgtag_o <= s_event(11); 	s_state <= T_12;
--		when T_12 => 	s_trgtag_o <= s_event(12); 	s_state <= T_13;
--		when T_13 => 	s_trgtag_o <= s_event(13); 	s_state <= T_14;
--		when T_14 => 	s_trgtag_o <= s_event(14); 	s_state <= waiting;
		
	--- AIDA MIXED MODE ------------------------------------------------------------------------------------------------ 	
	 elsif rising_edge(clk_i) then  -- rising clock edge
    case s_state is
		when set_trigger =>		
            s_trgtag_o <= '1'; 
             s_event <= s_event + 1;
             s_state <= T_P;
		
		when T_P => 	s_trgtag_o <= '0'; 			s_state <= T_0;
		when T_0 => 	s_cont_o <= s_event(0); 	s_state <= T_1;
		when T_1 => 	s_cont_o <= s_event(1); 	s_state <= T_2;
		when T_2 => 	s_cont_o <= s_event(2); 	s_state <= T_3;
		when T_3 => 	s_cont_o <= s_event(3); 	s_state <= T_4;
		when T_4 => 	s_cont_o <= s_event(4); 	s_state <= T_5;
		when T_5 => 	s_cont_o <= s_event(5); 	s_state <= T_6;
		when T_6 => 	s_cont_o <= s_event(6); 	s_state <= T_7;
		when T_7 => 	s_cont_o <= s_event(7); 	s_state <= T_8;
		when T_8 => 	s_cont_o <= s_event(8); 	s_state <= T_9;
		when T_9 => 	s_cont_o <= s_event(9); 	s_state <= T_10;
		when T_10 => 	s_cont_o <= s_event(10); 	s_state <= T_11;
		when T_11 => 	s_cont_o <= s_event(11); 	s_state <= T_12;
		when T_12 => 	s_cont_o <= s_event(12); 	s_state <= T_13;
		when T_13 => 	s_cont_o <= s_event(13); 	s_state <= T_14;
		when T_14 => 	s_cont_o <= s_event(14); 	s_state <= waiting;
		
     
      
      when others =>
        if start_i = '1' then
          -- START Condition detected
          s_state <= set_trigger;
          
        end if;
    end case;
  end if;
end process p_ctrl;

trgtag_o <= not(s_trgtag_o);
cont_o <= s_cont_o;
end rtl;



