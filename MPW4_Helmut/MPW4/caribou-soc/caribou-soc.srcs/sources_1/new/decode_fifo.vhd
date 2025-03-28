

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_misc.or_reduce;


entity decode_fifo is
    Port ( clk_TLU_pll_par : in STD_LOGIC;
              locked_reset : in STD_LOGIC;
              
           
              decode_KCHAR : in std_logic_vector(0 downto 0);
              decoded_data : in std_logic_vector(7 downto 0);
              
               TS_ovfl_cnt : in std_logic_vector(47 downto 0);
            Eventnumber_in : in std_logic_vector(15 downto 0);
         Eventnumber_valid : in STD_LOGIC;
                 TLU_TS_in : in std_logic_vector(45 downto 0);
              
              UDP_fifo_data : out std_logic_vector(31 downto 0);
                UDP_fifo_we : out STD_LOGIC;

                
                   fifo_rd : in STD_LOGIC;
                    fifo_q : out std_logic_vector(31 downto 0);
                       
                        TP : out STD_LOGIC;
                       TPP : out STD_LOGIC;
                        
                   axi_clk : in STD_LOGIC);
end decode_fifo;

architecture Behavioral of decode_fifo is

component transmit_fifo IS
  port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
end component;

 signal s_decode_error, s_decode_error1, s_rdisp, s_rdisp1 : std_logic;
 signal s_decode_KCHAR_out, s_decode_KCHAR1_out: std_logic_vector(0 downto 0);
 signal s_decode_out, s_decode_out_p, s_decode_out_pp, s_decode_out_ppp, s_decode_out_pppp : std_logic_vector(7 downto 0);
 signal s_decode1_out, s_decode1_out_p, s_decode1_out_pp, s_decode1_out_ppp, s_decode1_out_pppp : std_logic_vector(7 downto 0);
 signal s_rdisp_err, s_rdisp_err1, s_code_err, s_code_err1: std_logic;
 signal s_decode_rd_err_out, s_decode_rd_err1_out, s_code_err_KCHAR_out, s_code_err_KCHAR1_out: std_logic_vector(0 downto 0);
 
 signal s_2bc, s_2bc1,  s_sel_SOFEOF: std_logic_vector(1 downto 0);
 signal s_2bc_we, s_2bc_we_p, s_mdata_we: std_logic := '0'; 
 signal decoded_word, decoded1_word,s_decode_fifo_dout,s_decode1_fifo_dout, data_to_fifo, data_to_fifo_p, s_mdata_to_fifo: std_logic_vector(31 downto 0);
 signal s_decode_fifo_empty, s_decode1_fifo_empty, s_decode_fifo_empty_p, s_decode1_fifo_empty_p, s_test_or: std_logic := '0'; 
 signal s_tlast: std_logic := '0'; 
 signal s_TSLb, s_TSTb: std_logic_vector(7 downto 0);
 signal s_idle_pattern_det: std_logic := '0';    
 signal s_TS_ovfl_cnt_stored: std_logic_vector(14 downto 0);
 signal s_TLU_TS_reg: std_logic_vector(45 downto 0);
 
 signal s_Eventnumber_valid_p, s_we_delay, s_evn_we,s_we_delay_p: std_logic := '0';   
 signal s_sel_SOFEOF_1_p, s_sel_SOFEOF_1_pp, s_sel_SOFEOF_0_p, s_sel_SOFEOF_0_pp: std_logic := '0';  

begin
 
 process (clk_TLU_pll_par,decode_KCHAR(0)) --2bit counter
 begin
   if ( rising_edge(clk_TLU_pll_par) ) then  
      if decode_KCHAR(0) ='1' then  s_2bc <= "00"; else s_2bc <= s_2bc + 1; end if;
      s_2bc_we <=  (not(decode_KCHAR(0))) and s_2bc(0) and  s_2bc(1);
      s_2bc_we_p <= s_2bc_we; --cout delayed
   end if;
 end process;
 
 process (clk_TLU_pll_par) --data pipeline
 begin
   if ( rising_edge(clk_TLU_pll_par) ) then  
      s_decode_out_p(7 downto 0) <= decoded_data(7 downto 0);
      s_decode_out_pp(7 downto 0) <= s_decode_out_p(7 downto 0);
      s_decode_out_ppp(7 downto 0) <= s_decode_out_pp(7 downto 0);
      s_decode_out_pppp(7 downto 0) <= s_decode_out_ppp(7 downto 0);
   end if;
 end process;
 

-- decoded_word(31 downto 0) <= (s_decode_out_pppp & s_decode_out_ppp & s_decode_out_pp & s_decode_out_p);
 decoded_word(31 downto 0) <= (s_decode_out_p & s_decode_out_pp & s_decode_out_ppp & s_decode_out_pppp);
 
 --Timestamps GrayCode to Binary
    s_TSLb(7) <= decoded_word(7); 
    s_TSLb(6) <= decoded_word(7) xor decoded_word(6);
    s_TSLb(5) <= decoded_word(7) xor decoded_word(6) xor decoded_word(5);
    s_TSLb(4) <= decoded_word(7) xor decoded_word(6) xor decoded_word(5) xor decoded_word(4);
    s_TSLb(3) <= decoded_word(7) xor decoded_word(6) xor decoded_word(5) xor decoded_word(4) xor decoded_word(3);
    s_TSLb(2) <= decoded_word(7) xor decoded_word(6) xor decoded_word(5) xor decoded_word(4) xor decoded_word(3) xor decoded_word(2);
    s_TSLb(1) <= decoded_word(7) xor decoded_word(6) xor decoded_word(5) xor decoded_word(4) xor decoded_word(3) xor decoded_word(2) xor decoded_word(1);
    s_TSLb(0) <= decoded_word(7) xor decoded_word(6) xor decoded_word(5) xor decoded_word(4) xor decoded_word(3) xor decoded_word(2) xor decoded_word(1) xor decoded_word(0);
    
    s_TSTb(7) <= decoded_word(15); 
    s_TSTb(6) <= decoded_word(15) xor decoded_word(14);
    s_TSTb(5) <= decoded_word(15) xor decoded_word(14) xor decoded_word(13);
    s_TSTb(4) <= decoded_word(15) xor decoded_word(14) xor decoded_word(13) xor decoded_word(12);
    s_TSTb(3) <= decoded_word(15) xor decoded_word(14) xor decoded_word(13) xor decoded_word(12) xor decoded_word(11);
    s_TSTb(2) <= decoded_word(15) xor decoded_word(14) xor decoded_word(13) xor decoded_word(12) xor decoded_word(11) xor decoded_word(10);
    s_TSTb(1) <= decoded_word(15) xor decoded_word(14) xor decoded_word(13) xor decoded_word(12) xor decoded_word(11) xor decoded_word(10) xor decoded_word(9);
    s_TSTb(0) <= decoded_word(15) xor decoded_word(14) xor decoded_word(13) xor decoded_word(12) xor decoded_word(11) xor decoded_word(10) xor decoded_word(9) xor decoded_word(8);
 
 
-- process (clk_TLU_pll_par) --delay Eventnumber_valid
-- begin
--   if ( rising_edge(clk_TLU_pll_par) ) then  
--      s_Eventnumber_valid_p <= Eventnumber_valid;
--   end if;
-- end process;
 
             s_we_delay <= s_2bc_we_p and Eventnumber_valid;  -- high when Eventnumber_valid at same time
             process (clk_TLU_pll_par) 
             begin
               if ( rising_edge(clk_TLU_pll_par) ) then  s_we_delay_p <= s_we_delay; end if;
             end process;
             
             s_evn_we <= ((not(s_we_delay)) and Eventnumber_valid) or s_we_delay_p;
             
       
 
 s_we_delay <= s_2bc_we_p and Eventnumber_valid;  -- high when Eventnumber_valid at same time
 
 --s_evn_we <= Eventnumber_valid when (s_we_delay='0') else s_Eventnumber_valid_p;
 
 
 
 s_sel_SOFEOF(0) <= '1' when decoded_word = x"9f7faaff" else '0';
 s_sel_SOFEOF(1) <= '1' when decoded_word = x"e080ffaa" else '0';
 --s_sel_SOFEOF(0) <= '1' when decoded_word = x"ffaa7f9f" else '0';
 --s_sel_SOFEOF(1) <= '1' when decoded_word = x"aaff80e0" else '0';
 
 --TPP <= s_sel_SOFEOF(0);
 
 process (clk_TLU_pll_par,s_sel_SOFEOF(0)) -- store TS_ovfl_cnt at SOF
 begin
   if ( rising_edge(clk_TLU_pll_par) ) then 
      if ( s_sel_SOFEOF(0)='1') then  
         s_TS_ovfl_cnt_stored(14 downto 0) <= TS_ovfl_cnt(37 downto 23); 
         s_TLU_TS_reg(45 downto 0) <=  TLU_TS_in(45 downto 0);  
       end if;
   end if;
 end process;
 
-- data_to_fifo <= (decoded_word(31 downto 16) & s_TSTb(7 downto 0) & s_TSLb(7 downto 0));
 with s_sel_SOFEOF select
    data_to_fifo <= (decoded_word(31 downto 16) & s_TSTb(7 downto 0) & s_TSLb(7 downto 0)) when "00",
                                                   x"af" & '0' & TS_ovfl_cnt(22 downto  0) when "01",
                                                   x"e0" & '0' & TS_ovfl_cnt(45 downto 23) when "10",
             --   x"e0" & '0' &  s_TS_ovfl_cnt_stored(14 downto 0) & TS_ovfl_cnt(7 downto 0) when "10",
               
                                                                               x"00000000" when others;
                                                                               
 --process (clk_TLU_pll_par,s_evn_we) --
 process (clk_TLU_pll_par) --
 begin
   if ( rising_edge(clk_TLU_pll_par) ) then 
      data_to_fifo_p <= data_to_fifo; 
      s_sel_SOFEOF_0_p <= s_sel_SOFEOF(0);
      s_sel_SOFEOF_0_pp <= s_sel_SOFEOF_0_p;
      
      s_sel_SOFEOF_1_p <= s_sel_SOFEOF(1);
      s_sel_SOFEOF_1_pp <= s_sel_SOFEOF_1_p;
      
 
 
    if (s_sel_SOFEOF_0_pp='1') then 
      --s_mdata_to_fifo <= x"bf" &'0' & TLU_TS_in( 22 downto 0);
        s_mdata_to_fifo <= x"bf" &'0' & s_TLU_TS_reg( 22 downto 0);
    elsif (s_sel_SOFEOF_1_pp='1') then 
      --s_mdata_to_fifo <= x"f0" &'0' & TLU_TS_in(45 downto 23);
        s_mdata_to_fifo <= x"f0" &'0' & s_TLU_TS_reg(45 downto 23);
    else
      s_mdata_to_fifo <= data_to_fifo_p;
    end if;

      
      --if (s_sel_SOFEOF_0_pp='1') then s_mdata_to_fifo <= x"bf" &'0' & TLU_TS_in( 22 downto 0); else s_mdata_to_fifo <= data_to_fifo_p; end if;
      --if (s_sel_SOFEOF_1_pp='1') then s_mdata_to_fifo <= x"f0" &'0' & TLU_TS_in(45 downto 23); else s_mdata_to_fifo <= data_to_fifo_p; end if;
      --s_mdata_we <= s_evn_we or s_2bc_we_p;
      
      --  s_mdata_we <= s_2bc_we_p;
      s_mdata_we <= s_sel_SOFEOF_0_pp or s_sel_SOFEOF_1_pp or s_2bc_we_p;
      
   end if;
 end process;

 
 DATA_FIFO_MPW3_decode: transmit_fifo
  port map (
    rst => locked_reset,
    wr_clk => clk_TLU_pll_par,
    rd_clk => axi_clk,
    din => s_mdata_to_fifo, --data_to_fifo_p(31 downto 0), --decoded_word(31 downto 0),
    wr_en => s_mdata_we,--s_2bc_we_p,
    rd_en => fifo_rd,
    dout => s_decode_fifo_dout(31 downto 0),
    full => open,
    empty => s_decode_fifo_empty );  
  
  process (axi_clk) --delay empty flag
  begin
   if ( rising_edge(axi_clk) ) then 
     if (fifo_rd ='1') then s_decode_fifo_empty_p <= s_decode_fifo_empty; end if;
   end if;
  end process;
  
 s_idle_pattern_det <= '1' when (decoded_word(31 downto 0) = x"f7f7f7fb") else '0';
 process (clk_TLU_pll_par) 
 begin
   if ( rising_edge(clk_TLU_pll_par) ) then   TP <= s_idle_pattern_det;  end if;
 end process;
  
  
  
  fifo_q(31 downto 0) <= x"00000000" when (s_decode_fifo_empty_p = '1') else s_decode_fifo_dout(31 downto 0);
  
  UDP_fifo_data <= s_mdata_to_fifo;--data_to_fifo_p(31 downto 0);
  UDP_fifo_we <= s_mdata_we; --s_2bc_we_p;   
  
  TPP <= s_mdata_we; 
end Behavioral;
