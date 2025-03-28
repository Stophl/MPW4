
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity ADC9249_deser is
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
   
end ADC9249_deser;





architecture archi of ADC9249_deser is

---------------------------------------------------------------------------------------------------------

 COMPONENT ADC_rx_in_reg IS port ( clk: IN STD_LOGIC;  
  	                         ser_in_hl: IN STD_LOGIC_VECTOR(1 DOWNTO 0);  
  	                          enable  : IN STD_LOGIC ;
  	                          fifo_we_en: out STD_LOGIC ;
  	                                 q: OUT STD_LOGIC_VECTOR(13 DOWNTO 0)  ); END COMPONENT;


                          
 COMPONENT ADC_clk_domain_fifo Port ( rst : in STD_LOGIC;
                                   wr_clk : in STD_LOGIC;
                                   rd_clk : in STD_LOGIC;
                                      din : in STD_LOGIC_VECTOR ( 13 downto 0 );
                                    wr_en : in STD_LOGIC;
                                    rd_en : in STD_LOGIC;
                                     dout : out STD_LOGIC_VECTOR ( 13 downto 0 );
                                     full : out STD_LOGIC;
                                    empty : out STD_LOGIC ); END COMPONENT;

------------------------------------------------------------------------------------------------------


  
  signal s_rx_regs, s_rx_output: std_logic_vector(13 downto 0);
  signal s_ser_in_hl,s_FCO_in_hl: std_logic_vector(1 downto 0);
  signal s_FCO_enable, s_FCO_enable_p, s_fifo_wen_out: std_logic := '0';
  signal s_wr_clk_inverted: std_logic := '0';
   


begin
  
 inst_channel_2_regs: ADC_rx_in_reg	port map ( clk => in_DCO2_bufg, ser_in_hl => in_ADC_OUT_H2_hl,  enable => in_FCO_enable, fifo_we_en => s_fifo_wen_out, q => s_rx_regs );

 s_wr_clk_inverted <= not(in_DCO2_bufg);
  
  inst_ADC_clock_domain_fifo: ADC_clk_domain_fifo
  PORT MAP(
    rst => '0',
    wr_clk => in_DCO2_bufg,
    --wr_clk => s_wr_clk_inverted,
    rd_clk => axi_clk,
    din => s_rx_regs(13 downto 0),
    wr_en => s_fifo_wen_out, 
    rd_en => '1', --runs continuously
    dout => out_ADC_domain_fifo_q(13 downto 0),
    full => out_ADC_domain_fifo_full,
    empty => out_ADC_domain_fifo_empty );       

  
   out_ADC_TPh  <= s_rx_regs(13);
   out_ADC_TPl  <= s_rx_regs(12);
    out_ADC_TP  <= '0';
    
    
 
 end;