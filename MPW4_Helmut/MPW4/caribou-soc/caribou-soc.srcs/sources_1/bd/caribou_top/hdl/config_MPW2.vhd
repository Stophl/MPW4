

library  IEEE;
use      IEEE.std_logic_1164.all;
--use      IEEE.std_logic_arith.all;
USE      ieee.numeric_std.ALL;


entity config_MPW2 is
   port ( clk_i :         in   std_logic;
         clk_state_i:      in   std_logic;
         reset_i :       in   std_logic;
         start_i:        in   std_logic;
         
         reg_i :         in   std_logic_vector(31  downto 0);
         we_reg_i :      in   std_logic;
         
         ld_o :        out   std_logic;
         rb_o :        out   std_logic;
         sd_o :        out   std_logic;
         ck1_o:        out   std_logic;
         ck2_o:        out   std_logic;
         
         par_o :        out  std_logic_vector(159 downto 0);
         TP_o :        out  std_logic_vector(7 downto 0) );
end config_MPW2;




architecture rtl of config_MPW2 is

  type t_config_MPW2_state is (waiting,
                         set_data,
                         send_ck1_H,
                         send_ck1_L,
                         send_ck2_H,
                         send_ck2_L,
                         send_load,
                         send_lpause1,
                         send_lpause2,
                         send_lpause3,
                         send_load_H,
                         send_load_L);
  signal s_serout_state : t_config_MPW2_state;
  signal s_count : unsigned(7 downto 0);
  signal s_par_in : std_logic_vector(159 downto 0);
  signal s_parity : std_logic;
  signal s_start_i_pulse, s_start_i_pp, s_start_i_p: std_logic;
  
begin     


process (clk_i, reset_i) -- store serial stream in s_par_in
begin	
	if (reset_i = '1') then
		s_par_in <=(others => '0');
	
	elsif (rising_edge(clk_i)) then
		if (we_reg_i = '1') then
			s_par_in(  31 downto  0) <= reg_i;
			s_par_in( 63 downto  32) <= s_par_in( 31 downto   0);
			s_par_in( 95 downto  64) <= s_par_in( 63 downto  32);
			s_par_in(127 downto  96) <= s_par_in( 95 downto  64);
			s_par_in(159 downto 128) <= s_par_in(127 downto  96);
		end if;
	end if;
end process;

par_o <= s_par_in; 

TP_o <= std_logic_vector(s_count);

start_i_rising_edge_detector : process(clk_state_i)
    begin
      if(rising_edge(clk_state_i)) then s_start_i_p <= start_i; s_start_i_pp <= s_start_i_p; end if;
    end process; 
    s_start_i_pulse  <= not s_start_i_pp and s_start_i_p;


p_serout: process (clk_state_i, reset_i)
begin  -- process p_serin
  if (reset_i = '1') then               -- asynchronous reset (active low)
         ld_o <= '0';
         rb_o <= '1';
         sd_o <= '0';
         ck1_o <= '0';
         ck2_o <= '0';
         s_count <= "00000000";
  elsif rising_edge(clk_state_i) then  -- rising clock edge
    case s_serout_state is
      -------------------------------------------------------------------------
      when send_load =>
         rb_o <= '0'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0'; --sd_o <= '0';
         -- Decrement bit counter
         s_count <= s_count - 1;
         s_serout_state <= set_data;                                     ----------<
         --s_serout_state <= send_ck1_H;                                     ----------<
      ---------------------------------------------------------------------------
      when set_data =>
         rb_o <= '0';
         sd_o <= s_par_in(to_integer(unsigned(s_count)));
         s_serout_state <= send_ck1_H;
         
        -------------------------------------------------------------------------
      when send_ck1_H =>
         
         --sd_o <= s_par_in(to_integer(unsigned(s_count)));                  ----------<
         rb_o <= '0'; ck1_o <= '1'; ck2_o <= '0'; ld_o <= '0';
         s_serout_state <= send_ck1_L;
        -------------------------------------------------------------------------
      when send_ck1_L =>
         rb_o <= '0'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0';
         s_serout_state <= send_ck2_H;
        -------------------------------------------------------------------------
      when send_ck2_H =>
         rb_o <= '0'; ck1_o <= '0'; ck2_o <= '1'; ld_o <= '0';
         s_serout_state <= send_ck2_L;
        -------------------------------------------------------------------------
      when send_ck2_L =>
         rb_o <= '0'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0';
         -- sd_o <= '0';                                                      ----------<
         if (s_count = "00000000") then
          -- Last data has been sent
            s_serout_state <= send_lpause1;
        else
            s_serout_state <= send_load;
        end if;
        -------------------------------------------------------------------------
      when send_lpause1 =>
        rb_o <= '0'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0';     
        s_serout_state <= send_lpause2;
      when send_lpause2 =>
        rb_o <= '0'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0';
        s_serout_state <= send_lpause3;
      when send_lpause3 =>
        rb_o <= '0'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0';
        s_serout_state <= send_load_H;
      ------------------------------------------------------------------                 
      when send_load_H =>
         rb_o <= '1'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '1';
         s_serout_state <= send_load_L;
        -------------------------------------------------------------------------
      when send_load_L =>
         rb_o <= '1'; ck1_o <= '0'; ck2_o <= '0'; ld_o <= '0';
         s_serout_state <= waiting;
        -------------------------------------------------------------------------
        
      when others =>
        if start_i = '1' then
        
          s_serout_state <= send_load;
          -- Initialize input counter
          s_count <= "10010100"; --148
          -- Initialize parity checker

        end if;
    end case;
  end if;
end process p_serout;
end rtl;
