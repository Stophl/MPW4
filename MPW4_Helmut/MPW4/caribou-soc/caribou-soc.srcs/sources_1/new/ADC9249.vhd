library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


entity ADC9249 is
    Port ( IDEL_refclk : in STD_LOGIC;
           IDEL_CTRL_rst : in STD_LOGIC;
           IDEL_ld: in STD_LOGIC;
           IDEL_cntvalin_ADC1: in STD_LOGIC_VECTOR(4 DOWNTO 0);
           IDEL_cntvalin_ADC2: in STD_LOGIC_VECTOR(4 DOWNTO 0);
           
           ADC1_SERIN: in STD_LOGIC;
           ADC2_SERIN: in STD_LOGIC;
           ADC_FCO: in STD_LOGIC;
           ADC_DCO: in STD_LOGIC;
           
           axi_clk: in STD_LOGIC;
           Trigger_FIFOwe_stop_in: in STD_LOGIC;   --for trigger history fifo
                  FIFOwe_start_in: in STD_LOGIC;
           tlu_TRG_tag_in: in STD_LOGIC_VECTOR(3 DOWNTO 0);
           
           tdata_ADC_FIFO_out: out STD_LOGIC_VECTOR(31 DOWNTO 0);
           tvalid_ADC_FIFO_out: out STD_LOGIC;
           tlast_ADC_FIFO_out: out STD_LOGIC
          );
end ADC9249;

architecture Behavioral of ADC9249 is
---------------------------------------------------------------------------------------------------------------------------------------------------------------
COMPONENT FCO_reg is
port 
	(   clk		: in std_logic;
		FCO_in	: in std_logic;
		p_out	:  out std_logic;
		pp_out	:  out std_logic );
END COMPONENT FCO_reg;



COMPONENT ADC9249_deser is
    port(   
     in_DCO2_bufg : in std_logic;  -- global buffer clk
          axi_clk : in std_logic;
     
       in_FCO_enable : in std_logic;
     in_FCO_enable_p : in std_logic;
   
   in_ADC_OUT_H2_hl: in std_logic_vector(1 downto 0);
   
      out_ADC_domain_fifo_q  : out std_logic_vector(13 downto 0);
                out_ADC_TPh  : out std_logic; 
                out_ADC_TPl  : out std_logic; 
                 out_ADC_TP  : out std_logic; 
   out_ADC_domain_fifo_full  : out std_logic;
   out_ADC_domain_fifo_empty : out std_logic );  
   
END COMPONENT ADC9249_deser;


  
COMPONENT ADC_clk_domain_fifo Port ( rst : in STD_LOGIC;
                                   wr_clk : in STD_LOGIC;
                                   rd_clk : in STD_LOGIC;
                                      din : in STD_LOGIC_VECTOR ( 13 downto 0 );
                                    wr_en : in STD_LOGIC;
                                    rd_en : in STD_LOGIC;
                                     dout : out STD_LOGIC_VECTOR ( 13 downto 0 );
                                     full : out STD_LOGIC;
                                    empty : out STD_LOGIC ); 
END COMPONENT ADC_clk_domain_fifo;
  


component fifo_ADC_TLU_hist IS
  port (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    prog_full : OUT STD_LOGIC;
    prog_empty : OUT STD_LOGIC );
end component; 
  

----------------------------------------------------------------------------------------------------------------------------------------------------------------

 --attributes: ----------------------------------------------------------------------------
   attribute IODELAY_GROUP : string;
   attribute IODELAY_GROUP of G2_DELAY : label is "ADC_G2H2";
   --attribute IODELAY_GROUP of H2_DELAY : label is "ADC_G2H2";   -- are in same I/O Bank
--------------------------------------------------------------------------------------------


  signal del_tmp: std_logic_vector(355 downto 0);
  
  signal s_ADC_OUT_H2_hl, s_ADC_OUT_G2_hl : std_logic_vector(1 downto 0);
  signal s_FCO_enable, s_FCO_enable_p: std_logic := '0';
  signal s_dly_FADC_Data, s_dly_FADC_G2_Data, s_dly_FADC_H2_Data: std_logic := '0'; 
  signal s_ADC_OUT_H2_h, s_ADC_OUT_H2_l, s_ADC_OUT_G2_h, s_ADC_OUT_G2_l: std_logic := '0';
  
  signal s_ADC_domain_H2_fifo_q, s_ADC_domain_G2_fifo_q : std_logic_vector(13 downto 0);
  signal s_ADC_domain_fifo_q: std_logic_vector(27 downto 0);

  signal s_fc02_regs: std_logic_vector(13 downto 0);
  signal s_ADC_domain_fifo_full: std_logic := '0';
  signal s_ADC_domain_fifo_empty : std_logic := '0';  
  
  signal s_ADC_TPh, s_ADC_TPl, s_ADC_TP: std_logic := '0'; 
  signal s_TLU_trg_tag_axi_delayed: std_logic := '0';  
  
  signal s_we_ADC_FIFO, s_rd_ADC_FIFO, s_rdrequ_ADC_FIFO, s_empty_ADC_FIFO: std_logic := '0';
  signal s_allmost_full_ADC_FIFO, s_allmost_empty_ADC_FIFO,s_tlast_ADC_FIFO, s_tvalid_ADC_FIFO : std_logic := '0'; 
  
  signal s_ADC_FIFO_out: std_logic_vector(27 downto 0);
  signal s_tdata_ADC_FIFO: std_logic_vector(31 downto 0);
  
----------------------------------------------------------------------------------------------------------------------------------------------------------------- 
  
begin
   
   inst_FCO_reg_2: FCO_reg  port map ( clk => ADC_DCO, FCO_in =>ADC_FCO , p_out => s_FCO_enable, pp_out => s_FCO_enable_p); 

   
   IDELAYCTRL_inst_ADC : IDELAYCTRL port map ( RDY => open, REFCLK => IDEL_refclk, RST => IDEL_CTRL_rst );
    
    G2_DELAY : IDELAYE2
       generic map (
          DELAY_SRC             => "IDATAIN",
          HIGH_PERFORMANCE_MODE => "TRUE",
          IDELAY_TYPE           => "VAR_LOAD",
          IDELAY_VALUE          => 0,    
          REFCLK_FREQUENCY      => 200.0,
          SIGNAL_PATTERN        => "DATA"
          )
       port map (
          C           => IDEL_refclk,
          REGRST      => '0',
          LD          => IDEL_ld,
          CE          => '0',
          INC         => '1',
          CINVCTRL    => '0',
          CNTVALUEIN  => IDEL_cntvalin_ADC1,
          IDATAIN     => ADC1_SERIN,
          DATAIN      => '0',
          LDPIPEEN    => '0',
          DATAOUT     => s_dly_FADC_G2_Data,
          CNTVALUEOUT => open );
          
       H2_DELAY : IDELAYE2
       generic map (
          DELAY_SRC             => "IDATAIN",
          HIGH_PERFORMANCE_MODE => "TRUE",
          IDELAY_TYPE           => "VAR_LOAD",
          IDELAY_VALUE          => 0,    
          REFCLK_FREQUENCY      => 200.0,
          SIGNAL_PATTERN        => "DATA"
          )
       port map (
          C           => IDEL_refclk,
          REGRST      => '0',
          LD          => IDEL_ld,
          CE          => '0',
          INC         => '1',
          CINVCTRL    => '0',
          CNTVALUEIN  => IDEL_cntvalin_ADC2,
          IDATAIN     => ADC2_SERIN,
          DATAIN      => '0',
          LDPIPEEN    => '0',
          DATAOUT     => s_dly_FADC_H2_Data,
          CNTVALUEOUT => open );
          
          
   --------------------------------------------------------------------------------------------------------
   -- DDR input registers for serial ADC data inputs:
  IDDR_inst_ADC_G2 : IDDR 
   generic map (
      DDR_CLK_EDGE => "OPPOSITE_EDGE", -- "OPPOSITE_EDGE", "SAME_EDGE"  or "SAME_EDGE_PIPELINED" 
      INIT_Q1 => '0', INIT_Q2 => '0', -- Initial value of Q1/2: '0' or '1'
      SRTYPE => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
   port map (
      C => ADC_DCO,   -- clock input
      D => s_dly_FADC_G2_Data,   -- DDR data input
      Q1 => s_ADC_OUT_G2_h, -- output for positive edge of clock 
      Q2 => s_ADC_OUT_G2_l, -- output for negative edge of clock
      CE => '1', R => '0', S => '0'
      );         
  -- DDR input registers for serial ADC data inputs:
  IDDR_inst_ADC_H2 : IDDR 
   generic map (
      DDR_CLK_EDGE => "OPPOSITE_EDGE", -- "OPPOSITE_EDGE", "SAME_EDGE"  or "SAME_EDGE_PIPELINED" 
      INIT_Q1 => '0', INIT_Q2 => '0', -- Initial value of Q1/2: '0' or '1'
      SRTYPE => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
   port map (
      C => ADC_DCO,   -- clock input
      D => s_dly_FADC_H2_Data,   -- DDR data input
      Q1 => s_ADC_OUT_H2_h, -- output for positive edge of clock 
      Q2 => s_ADC_OUT_H2_l, -- output for negative edge of clock
      CE => '1', R => '0', S => '0'
      );
  -----------------------------------------------------------------
      
   

s_ADC_OUT_G2_hl <= s_ADC_OUT_G2_h & s_ADC_OUT_G2_l;
s_ADC_OUT_H2_hl <= s_ADC_OUT_H2_h & s_ADC_OUT_H2_l;

 ADC9249_deser_instG2: ADC9249_deser
    port map(   
     in_DCO2_bufg => ADC_DCO,
          axi_clk => axi_clk,  
     
       in_FCO_enable => s_FCO_enable,
     in_FCO_enable_p => s_FCO_enable_p,
   
   in_ADC_OUT_H2_hl=> s_ADC_OUT_G2_hl,
   
      out_ADC_domain_fifo_q  => s_ADC_domain_G2_fifo_q(13 downto 0),
                out_ADC_TPh  => open,
                out_ADC_TPl  => open, 
                 out_ADC_TP  => open, 
   out_ADC_domain_fifo_full  => open,
   out_ADC_domain_fifo_empty => open ); 
		 
 ADC9249_deser_instH2: ADC9249_deser
    port map(   
     in_DCO2_bufg => ADC_DCO,
          axi_clk => axi_clk,  
     
       in_FCO_enable => s_FCO_enable,
     in_FCO_enable_p => s_FCO_enable_p,
   
   in_ADC_OUT_H2_hl=> s_ADC_OUT_H2_hl,
   
      out_ADC_domain_fifo_q  => s_ADC_domain_H2_fifo_q(13 downto 0),
                out_ADC_TPh  => s_ADC_TPh,
                out_ADC_TPl  => s_ADC_TPl, 
                 out_ADC_TP  => s_ADC_TP, 
   out_ADC_domain_fifo_full  => s_ADC_domain_fifo_full,
   out_ADC_domain_fifo_empty => s_ADC_domain_fifo_empty ); 
 
 
 
 

  ------delay TLU trigger to position signal in FIFO space-----------------------------------------------------------------------
  process(axi_clk)   
  begin
    if (rising_edge (axi_clk)) then 
       for i in 0 to 350 loop del_tmp(i+1) <= del_tmp(i); end loop;
       del_tmp(0) <= Trigger_FIFOwe_stop_in;
    end if; 
  end process;  
 
  s_TLU_trg_tag_axi_delayed <= del_tmp(340); --comp_tmp(50)

  process (axi_clk) -- s_TLU_trg_pedge stops FIFO_we
  begin
    if (rising_edge(axi_clk)) then 
	   if      (s_TLU_trg_tag_axi_delayed = '1')   then  s_we_ADC_FIFO <= '0'; 
	   elsif   (FIFOwe_start_in = '1')          then  s_we_ADC_FIFO <= '1'; end if;
    end if;
  end process;
  
  process (axi_clk) -- reads FIFO history at TLU Trigger
  begin
    if (rising_edge(axi_clk)) then 
	   if      (s_allmost_empty_ADC_FIFO = '1')  then  s_rd_ADC_FIFO <= '0'; 
	   elsif   (s_TLU_trg_tag_axi_delayed = '1')      then  s_rd_ADC_FIFO <= '1'; end if;
    end if;
  end process;
  
  s_rdrequ_ADC_FIFO <= s_rd_ADC_FIFO or ( s_allmost_full_ADC_FIFO and (not(s_rd_ADC_FIFO)));
  
  s_ADC_domain_fifo_q <=s_ADC_domain_H2_fifo_q(13 downto 0) & s_ADC_domain_G2_fifo_q(13 downto 0);
  
 
  
  ADC_TLU_HIST_FIFO_inst: fifo_ADC_TLU_hist
  port map (
    clk => axi_clk, 
    rst => FIFOwe_start_in,
    din  => s_ADC_domain_fifo_q,
    wr_en => s_we_ADC_FIFO,           
    rd_en => s_rdrequ_ADC_FIFO,    
    ----------------------------------
    dout => s_ADC_FIFO_out(27 downto 0),
    full => open,
    empty => s_empty_ADC_FIFO,
    prog_full => s_allmost_full_ADC_FIFO,
    prog_empty => s_allmost_empty_ADC_FIFO
   );

  process (axi_clk) -- gate with empty
  begin
    if (rising_edge(axi_clk)) then 
	   if      (s_empty_ADC_FIFO = '1')   then  s_tdata_ADC_FIFO  <= (others => '0');
	   else    s_tdata_ADC_FIFO <=  TLU_trg_tag_in(3 downto 0 ) & s_ADC_FIFO_out(27 downto 0) ; end if;
	   --else    s_tdata_ADC_FIFO <=  "000000000000000000" & s_test_cnt(13 downto 0) ; end if;
    end if;
  end process;
  
  process (axi_clk) 
  begin
    if (rising_edge(axi_clk)) then 
	   s_tvalid_ADC_FIFO <= s_rd_ADC_FIFO;
	   s_tlast_ADC_FIFO <= s_rd_ADC_FIFO and s_allmost_empty_ADC_FIFO;
    end if;
  end process;

  tdata_ADC_FIFO_out <= s_tdata_ADC_FIFO;
  tvalid_ADC_FIFO_out <= s_tvalid_ADC_FIFO;
  tlast_ADC_FIFO_out <= s_tlast_ADC_FIFO;
  

end Behavioral;
