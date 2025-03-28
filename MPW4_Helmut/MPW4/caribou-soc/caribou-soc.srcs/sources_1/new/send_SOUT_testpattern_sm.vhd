library  IEEE;
use      IEEE.std_logic_1164.all;
--use      IEEE.std_logic_arith.all;
use      IEEE.std_logic_unsigned.all;
USE      ieee.numeric_std.ALL;


entity send_SOUT_testpattern_sm is
   port ( clk_i :         in   std_logic;
         reset_i :        in   std_logic;
         start_i:         in   std_logic;
        
         
         Q_10b_o :      out   std_logic_vector(9 downto 0);
         k_char_o:        out  std_logic_vector(0 downto 0);
         
         TP_o :           out  std_logic_vector(7 downto 0);
         TP :             out   std_logic );
end send_SOUT_testpattern_sm;




architecture rtl of send_SOUT_testpattern_sm is



component CW_8b10b_enc is 
     port ( 
clk:   in   std_logic; 
		  rst_n:   in   std_logic;
	  init_rd_n:   in   std_logic; 
    init_rd_val:   in   std_logic; 
		 k_char:   in   std_logic_vector(0 downto 0);
		data_in:   in   std_logic_vector(7 downto 0); 
		     rd:   out  std_logic; 
		data_out:  out  std_logic_vector(9 downto 0); 
           enable: in   std_logic  );
 end component;
 
 
 
 
 

  type t_state is      ( send_IDLE3, send_IDLE2, send_IDLE1, send_IDLE0,
                         send_SOF3, send_SOF2, send_SOF1, send_SOF0,
                         
                         send_D1_3, send_D1_2, send_D1_1, send_D1_0,
                         send_D2_3, send_D2_2, send_D2_1, send_D2_0,
                         send_D3_3, send_D3_2, send_D3_1, send_D3_0,
                         send_D4_3, send_D4_2, send_D4_1, send_D4_0,
                         send_D5_3, send_D5_2, send_D5_1, send_D5_0,
                         send_D6_3, send_D6_2, send_D6_1, send_D6_0,
                         send_D7_3, send_D7_2, send_D7_1, send_D7_0,
                       
                         send_EOF3, send_EOF2, send_EOF1, send_EOF0);
                         
  signal s_transmit_state : t_state;
  
  signal s_stateTP : std_logic_vector(3 downto 0) ;
  signal s_fifo_rd : std_logic;
  signal s_start_i_pulse, s_start_i_p, s_start_i_pp, s_started: std_logic;
  signal s_start_pulse, s_start_pulse_p, s_start_pulse_pp, s_start_pulse_ppp, s_start_pulse_pppp, s_start_pulse_ppppp: std_logic;
  
  signal s_sel: std_logic_vector(1 downto 0):= (others => '0');
  signal s_reset_n: std_logic;
  signal s_fifo_q: std_logic_vector(31 downto 0):= (others => '0');
  
  signal s_k_char_o: std_logic_vector(0 downto 0):= (others => '0');
  signal s_8b10b_rd: std_logic;
  signal s_to8b10b: std_logic_vector(7 downto 0):= (others => '0');
  signal s_Q_10b_o: std_logic_vector(9 downto 0):= (others => '0');

begin     

start_i_rising_edge_detector : process(clk_i)
    begin
      if(rising_edge(clk_i)) then s_start_i_p <= start_i; 
                                 s_start_i_pp <= s_start_i_p;  end if;
    end process; 
  
   s_start_pulse  <= not s_start_i_pp and s_start_i_p; --pedge


   process(clk_i) -- delay s_start_pulse
    begin
      if(rising_edge(clk_i)) then s_start_pulse_p <= s_start_pulse; 
                                 s_start_pulse_pp <= s_start_pulse_p; 
                                s_start_pulse_ppp <= s_start_pulse_pp; 
                               s_start_pulse_pppp <= s_start_pulse_ppp; 
                              s_start_pulse_ppppp <= s_start_pulse_pppp;  end if;
    end process; 

 
process (clk_i) -- start_i_pulse 6 ticks wide
  begin
	if (rising_edge(clk_i)) then
	          if(s_start_pulse='1')       then s_start_i_pulse <= '1'; 
          elsif(s_start_pulse_ppppp= '1') then s_start_i_pulse <= '0'; 
          end if;
	end if;
  end process;



p_transmit: process (clk_i, reset_i)
begin  -- process p_serin
  if (reset_i = '1') then    
         s_transmit_state <= send_IDLE3;  
         s_stateTP <= "0000";
  elsif rising_edge(clk_i) then 
    case s_transmit_state is 
      ----------------------------------------------------------------------------------------------------------------
      when send_IDLE3 =>
         s_stateTP <= "0001";
         s_k_char_o(0) <= '1';
         s_to8b10b <= x"f7";
         s_transmit_state <= send_IDLE2;
      when send_IDLE2 =>
         s_stateTP <= "0010";
         s_to8b10b <= x"f7";
         s_transmit_state <= send_IDLE1;
       when send_IDLE1 =>
         s_stateTP <= "0011";
         s_to8b10b <= x"f7";
         s_transmit_state <= send_IDLE0;
       when send_IDLE0 =>
         s_stateTP <= "0100";
         s_to8b10b <= x"fb";
         if (s_start_i_pulse = '1') then s_transmit_state <= send_SOF3; else s_transmit_state <= send_IDLE3; end if;
       ----------------------------------------------------------------------------------------------------------------  
       when send_SOF3 =>
         s_stateTP <= "0101";
         s_k_char_o(0) <= '0';
         s_to8b10b <= x"ff";
         s_fifo_rd <= '1';
         s_transmit_state <= send_SOF2;
       when send_SOF2 =>
         s_stateTP <= "0110";
         s_to8b10b <= x"aa";
         s_fifo_rd <= '0';
         s_transmit_state <= send_SOF1;  
       when send_SOF1 =>
         s_stateTP <= "0111";
         s_to8b10b <= x"7f";
         s_transmit_state <= send_SOF0;  
       when send_SOF0 =>
         s_stateTP <= "1000";
         s_to8b10b <= x"9f";
         s_transmit_state <= send_D1_3;   
      
       --------------------------------------------------------------------------------------------------------------  
       when send_D1_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"02";     s_transmit_state <= send_D1_2;
       when send_D1_2 =>                            s_to8b10b <= x"05";     s_transmit_state <= send_D1_1;
       when send_D1_1 =>                            s_to8b10b <= x"1f";     s_transmit_state <= send_D1_0;
       when send_D1_0 =>                            s_to8b10b <= x"10";     s_transmit_state <= send_D2_3;
       
       when send_D2_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"02";     s_transmit_state <= send_D2_2;
       when send_D2_2 =>                            s_to8b10b <= x"05";     s_transmit_state <= send_D2_1;
       when send_D2_1 =>                            s_to8b10b <= x"20";     s_transmit_state <= send_D2_0;
       when send_D2_0 =>                            s_to8b10b <= x"11";     s_transmit_state <= send_D3_3;
       
       when send_D3_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"08";     s_transmit_state <= send_D3_2;
       when send_D3_2 =>                            s_to8b10b <= x"1a";     s_transmit_state <= send_D3_1;
       when send_D3_1 =>                            s_to8b10b <= x"20";     s_transmit_state <= send_D3_0;
       when send_D3_0 =>                            s_to8b10b <= x"11";     s_transmit_state <= send_D4_3;
       
       when send_D4_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"02";     s_transmit_state <= send_D4_2;
       when send_D4_2 =>                            s_to8b10b <= x"05";     s_transmit_state <= send_D4_1;
       when send_D4_1 =>                            s_to8b10b <= x"22";     s_transmit_state <= send_D4_0;
       when send_D4_0 =>                            s_to8b10b <= x"12";     s_transmit_state <= send_D5_3;
       
       when send_D5_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"08";     s_transmit_state <= send_D5_2;
       when send_D5_2 =>                            s_to8b10b <= x"1a";     s_transmit_state <= send_D5_1;
       when send_D5_1 =>                            s_to8b10b <= x"23";     s_transmit_state <= send_D5_0;
       when send_D5_0 =>                            s_to8b10b <= x"12";     s_transmit_state <= send_D6_3;
       
       when send_D6_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"1c";     s_transmit_state <= send_D6_2;
       when send_D6_2 =>                            s_to8b10b <= x"15";     s_transmit_state <= send_D6_1;
       when send_D6_1 =>                            s_to8b10b <= x"24";     s_transmit_state <= send_D6_0;
       when send_D6_0 =>                            s_to8b10b <= x"12";     s_transmit_state <= send_D7_3;
       
       when send_D7_3 =>  s_k_char_o(0) <= '0';     s_to8b10b <= x"02";     s_transmit_state <= send_D7_2;
       when send_D7_2 =>                            s_to8b10b <= x"05";     s_transmit_state <= send_D7_1;
       when send_D7_1 =>                            s_to8b10b <= x"25";     s_transmit_state <= send_D7_0;
       when send_D7_0 =>                            s_to8b10b <= x"13";     s_transmit_state <= send_EOF3;
      

        --------------------------------------------------------------------------------------------------------
    
       when send_EOF3 =>
         s_stateTP <= "1010";
         s_k_char_o(0) <= '0';
         s_to8b10b <= x"aa";

         s_transmit_state <= send_EOF2;
       when send_EOF2 =>
         s_stateTP <= "1011";
         s_to8b10b <= x"ff";

         s_transmit_state <= send_EOF1;  
       when send_EOF1 =>
         s_stateTP <= "1100";
         s_to8b10b <= x"80";
         s_transmit_state <= send_EOF0;  
       when send_EOF0 =>
         s_stateTP <= "1101";
         s_to8b10b <= x"e0";  
         s_transmit_state <= send_IDLE3;   
      --------------------------------------------------------------------------
      when others =>
         s_stateTP <= "1110";
         s_transmit_state <= send_IDLE3;  
    end case;
    
    
  end if;
end process p_transmit;


s_reset_n <= not(reset_i);
Encoder8b10b_inst1: CW_8b10b_enc 
     port map ( 
            clk => clk_i,
		  rst_n => s_reset_n,
	  init_rd_n => '0', 
    init_rd_val => '0',
		 k_char => s_k_char_o(0 downto 0 ),
		data_in => s_to8b10b, 
		     rd => s_8b10b_rd,
		data_out => s_Q_10b_o, 
          enable => '1'  );

	 
process (clk_i) -- register sm outputs  wenn registered dann Propleme ( weil 3,14ns später ? )      sonst ist idelval 3 bis 11 gut ??????????????????????????????????????????????????
  begin
	if (rising_edge(clk_i)) then 
	  --Q_10b_o <= s_Q_10b_o;
	  Q_10b_o(0) <= s_Q_10b_o(9);
	   Q_10b_o(1) <= s_Q_10b_o(8);
	    Q_10b_o(2) <= s_Q_10b_o(7);
	     Q_10b_o(3) <= s_Q_10b_o(6);
	      Q_10b_o(4) <= s_Q_10b_o(5);
	       Q_10b_o(5) <= s_Q_10b_o(4);
	        Q_10b_o(6) <= s_Q_10b_o(3);
	         Q_10b_o(7) <= s_Q_10b_o(2);
	          Q_10b_o(8) <= s_Q_10b_o(1);
	           Q_10b_o(9) <= s_Q_10b_o(0);
	  k_char_o <= s_k_char_o; 
	end if;
end process;





TP_o <=s_to8b10b;

TP <= s_start_i_pulse;

end rtl;







