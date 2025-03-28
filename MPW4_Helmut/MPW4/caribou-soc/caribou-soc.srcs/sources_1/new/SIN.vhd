

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity SIN is
    Port ( clk_320 : in STD_LOGIC;
       idel_ref_clk: in STD_LOGIC;
            clk_64 : in STD_LOGIC;
           frame64 : in STD_LOGIC;
           axi_clk : in STD_LOGIC;
        
                  rst_n: in STD_LOGIC;
             not_locked: in STD_LOGIC;
           locked_reset: in STD_LOGIC;
           
           FMC_LVDS14_P: in STD_LOGIC;
           FMC_LVDS14_N: in STD_LOGIC;
           
            FMC_LVDS6_P: in STD_LOGIC;
            FMC_LVDS6_N: in STD_LOGIC; 
            
               CNTVALIN : in STD_LOGIC_VECTOR (4 downto 0);
                BITSLIP : in STD_LOGIC_VECTOR (2 downto 0);
              CNTVALIN1 : in STD_LOGIC_VECTOR (4 downto 0);
               BITSLIP1 : in STD_LOGIC_VECTOR (2 downto 0);
              IDELAY_LD: in STD_LOGIC;
             IDELAY1_LD: in STD_LOGIC;
            CNTVALUEOUT: out STD_LOGIC_VECTOR (4 downto 0);
           CNTVALUEOUT1: out STD_LOGIC_VECTOR (4 downto 0);
           
           
           code_err_reg: out STD_LOGIC;
          code_err1_reg: out STD_LOGIC;
          
     reset_code_err_reg: in STD_LOGIC;
     
           TS_ovfl_cnt : in std_logic_vector(47 downto 0);
        Eventnumber_in : in std_logic_vector(15 downto 0);
     Eventnumber_valid : in STD_LOGIC;
             TLU_TS_in : in std_logic_vector(45 downto 0);
     
          AXI_fifo_data: out STD_LOGIC_VECTOR (31 downto 0);
            AXI_fifo_rd: in STD_LOGIC; 
         AXI_fifo1_data: out STD_LOGIC_VECTOR (31 downto 0);
           AXI_fifo1_rd: in STD_LOGIC;  
    
    
         UDP_fifo_reset: out STD_LOGIC;
         UDP_fifo1_data: out STD_LOGIC_VECTOR (31 downto 0);
             
           UDP_fifo1_we: out STD_LOGIC;
          UDP_fifo_data: out STD_LOGIC_VECTOR (31 downto 0);
            UDP_fifo_we: out STD_LOGIC;
            
               SIN_copy: out STD_LOGIC;
              SIN1_copy: out STD_LOGIC;
                    
              TP_decode: out STD_LOGIC_VECTOR (7 downto 0);
                    TP :  out STD_LOGIC;
                    TPP :  out STD_LOGIC);
end SIN;

architecture Behavioral of SIN is

attribute keep_hierarchy : string;
attribute keep_hierarchy of DDR_IN_SHIFT_inst : label is "yes";
attribute keep_hierarchy of DDR_IN_SHIFT_inst1: label is "yes";
attribute keep_hierarchy of CW_8b10b_dec_inst : label is "yes";
attribute keep_hierarchy of CW_8b10b_dec_inst1: label is "yes";

--attribute keep: boolean;  -- prevent resource sharing
--attribute keep of DDR_IN_SHIFT_inst: label is true;
--attribute keep of DDR_IN_SHIFT_inst1: label is true;
--attribute keep of CW_8b10b_dec_inst: label is true;
--attribute keep of CW_8b10b_dec_inst1: label is true;



component DDR_IN_SHIFT is
    Port ( clk_320 : in STD_LOGIC;
           frame_40: in STD_LOGIC;
           sin_l : in STD_LOGIC;
           sin_h : in STD_LOGIC;
           bitslip_in : in STD_LOGIC_VECTOR (2 downto 0);
           Ql : out STD_LOGIC_VECTOR (4 downto 0);
           Qh : out STD_LOGIC_VECTOR (4 downto 0);
           Q : out STD_LOGIC_VECTOR (9 downto 0));
end component;   

--component CW_8b10b_dec is 
--            Port(     clk: in STD_LOGIC;      -- clk_par 64MHz
--                      rst_n: in STD_LOGIC;
--                      init_rd_n: in STD_LOGIC;
--                      init_rd_val: in STD_LOGIC;
--                      data_in: in STD_LOGIC_VECTOR (9 downto 0);
--                      error : out STD_LOGIC;
--                      rd: out STD_LOGIC;
--                      k_char: out STD_LOGIC_VECTOR (0 downto 0);
--                      data_out: out STD_LOGIC_VECTOR (7 downto 0);
--                      rd_err: out STD_LOGIC;
--                      code_err: out STD_LOGIC;
--                      enable: in STD_LOGIC;
--                      rd_err_bus: out STD_LOGIC_VECTOR (0 downto 0);
--                      code_err_bus: out STD_LOGIC_VECTOR (0 downto 0)
-- );          
-- end component; 

component dec_8b10b is	 
    port( 
        reset : in std_logic; --Active high reset
        clk : in std_logic;   --Clock to register output and disparity
        datain : in std_logic_vector(9 downto 0); --10b data input
        ena : in std_logic;              -- Enable registers for output and disparity
        ko : out std_logic ;             -- Active high K indication
        dataout : out std_logic_vector(7 downto 0); --Decoded output
        code_err : out std_logic;                   --Indication for illegal character
        disp_err : out std_logic                    --Indication for disparity error
    ); 
end component;  
 
 component decode_fifo is
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
end component;



 signal s_sin, s_sin_copy: std_logic := '0'; 
 signal s_sin1, s_sin1_copy: std_logic := '0';

 signal s_IDELAY_LD, s_IDELAY1_LD: std_logic;
 signal s_CNTVALIN, s_CNTVALIN1: std_logic_vector(4 downto 0);
 signal s_BITSLIP, S_BITSLIP1: std_logic_vector(2 downto 0);

 signal s_sin_to_casc_idelay, s_sin_idelay, s_sin1_idelay,s_sin1_to_casc_idelay: std_logic;
 signal s_sin_h, s_sin1_h, s_sin_l, s_sin1_l: std_logic;
 signal s_deser_in, s_deser1_in: std_logic_vector(9 downto 0):= (others => '0'); 
 
 signal s_decode_error, s_decode_error1, s_rdisp, s_rdisp1 : std_logic;
 signal s_decode_KCHAR_out, s_decode_KCHAR1_out: std_logic_vector(0 downto 0);
 signal s_KCHAR_UDP, s_KCHAR1_UDP: std_logic;
 signal s_decode_out : std_logic_vector(7 downto 0);
 signal s_decode1_out : std_logic_vector(7 downto 0);
 signal s_rdisp_err, s_rdisp_err1, s_code_err, s_code_err1: std_logic;
 signal s_decode_rd_err_out, s_decode_rd_err1_out, s_code_err_KCHAR_out, s_code_err_KCHAR1_out: std_logic_vector(0 downto 0);
 signal s_TPdecode, s_TPdecode_1 : std_logic;
 signal s_code_err_reg, s_code_err1_reg, s_idle, s_idle1: std_logic := '0'; 
 signal s_TPPdecode: std_logic;
 
 signal s_CO: std_logic_vector( 3 downto 0);
 signal s_CO1: std_logic_vector( 3 downto 0);
 signal s_rst, s_ko, s_ko1: std_logic := '0';




--   --attributes: ----------------------------------------------------------------------------
--   attribute IODELAY_GROUP : string;
--   attribute IODELAY_GROUP of IDELAYE2_inst :      label is "SIN_IDELGR";
--   attribute IODELAY_GROUP of IDELAYE2_inst_casc : label is "SIN_IDELGR";
   
--   attribute IODELAY_GROUP of IDELAYE2_inst1 :      label is "SIN1_IDELGR";  
--   attribute IODELAY_GROUP of IDELAYE2_inst1_casc : label is "SIN1_IDELGR";   
----------------------------------------------------------------------------------------------

begin



 IBUFDS_DIFF_OUT_SIN : IBUFDS_DIFF_OUT generic map ( DIFF_TERM => TRUE,  IBUF_LOW_PWR => False,  IOSTANDARD => "LVDS_25") 
                                         port map ( O => s_sin,  OB => s_sin_copy,  I => FMC_LVDS14_P,  IB => FMC_LVDS14_N );
 IBUFDS_DIFF_OUT_SIN1: IBUFDS_DIFF_OUT generic map ( DIFF_TERM => TRUE,  IBUF_LOW_PWR => False,  IOSTANDARD => "LVDS_25") 
                                         port map ( O => s_sin1,  OB => s_sin1_copy,  I => FMC_LVDS6_P,  IB => FMC_LVDS6_N );
                                          
   -----------------------------------------------------------------------------------------------------------------------
   
 s_rst <= not(rst_n);
 
  --IDELAYCTRL_inst : IDELAYCTRL port map ( RDY => open, REFCLK => idel_ref_clk, RST => not_locked );
  
  
 
  
--  process (axi_clk) -- store IDELAy and BITSLIP values
--  begin
--  if ( rising_edge(axi_clk) ) then
--      if  (IDELAY_LD='1') then   s_CNTVALIN <= CNTVALIN;  s_BITSLIP <= BITSLIP; end if;
--      if (IDELAY1_LD='1') then  s_CNTVALIN1 <= CNTVALIN1; s_BITSLIP1 <= BITSLIP1; end if;
--      s_IDELAY_LD <= IDELAY_LD;
--      s_IDELAY1_LD <= IDELAY1_LD;
--      UDP_fifo_reset <= s_IDELAY_LD;
--   end if;
--end process; 
s_CNTVALIN <= CNTVALIN;  
s_BITSLIP <= BITSLIP; 
s_CNTVALIN1 <= CNTVALIN1; 
s_BITSLIP1 <= BITSLIP1; 
s_IDELAY_LD <= IDELAY_LD;
s_IDELAY1_LD <= IDELAY1_LD;
   

   IDELAYE2_inst : IDELAYE2
   generic map (
      CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
      DELAY_SRC => "IDATAIN",           -- Delay input (IDATAIN, DATAIN)
      HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
      IDELAY_TYPE => "VAR_LOAD",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      IDELAY_VALUE => 0,                -- Input delay tap setting (0-31)
      PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
      REFCLK_FREQUENCY => 200.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
   )
   port map (
      CNTVALUEOUT => open, -- 5-bit output: Counter value output
      DATAOUT => s_sin_to_casc_idelay,         -- 1-bit output: Delayed data output
     -- CNTVALUEOUT => CNTVALUEOUT,
     -- DATAOUT => s_sin_idelay,         -- 1-bit output: Delayed data output
      C => idel_ref_clk,                     -- 1-bit input: Clock input   200MHz
      CE => '0',                   -- 1-bit input: Active high enable increment/decrement input
      CINVCTRL => '0',       -- 1-bit input: Dynamic clock inversion input
      CNTVALUEIN => s_CNTVALIN,--s_control2_out(26 downto 22),   -- 5-bit input: Counter value input
      DATAIN => '0',           -- 1-bit input: Internal delay data input
      IDATAIN => s_sin,         -- 1-bit input: Data input from the I/O
      INC => '0',                 -- 1-bit input: Increment / Decrement tap delay input
      LD => s_IDELAY_LD,--s_control2_out_pulse(27),                   -- 1-bit input: Load IDELAY_VALUE input
      LDPIPEEN => '0',       -- 1-bit input: Enable PIPELINE register to load data input
      REGRST => '0'            -- 1-bit input: Active-high reset tap-delay input
   ); 
   
   IDELAYE2_inst_casc : IDELAYE2
   generic map (
      CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
      DELAY_SRC => "DATAIN",           -- Delay input (IDATAIN, DATAIN)
      HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
      IDELAY_TYPE => "VAR_LOAD",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      IDELAY_VALUE => 0,                -- Input delay tap setting (0-31)
      PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
      REFCLK_FREQUENCY => 200.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
   )
   port map (
      CNTVALUEOUT => CNTVALUEOUT, -- 5-bit output: Counter value output
      DATAOUT => s_sin_idelay,         -- 1-bit output: Delayed data output
      C => idel_ref_clk,                     -- 1-bit input: Clock input
      CE => '0',                   -- 1-bit input: Active high enable increment/decrement input
      CINVCTRL => '0',       -- 1-bit input: Dynamic clock inversion input
      CNTVALUEIN => s_CNTVALIN,--s_control2_out(26 downto 22),   -- 5-bit input: Counter value input
      DATAIN => s_sin_to_casc_idelay,           -- 1-bit input: Internal delay data input
      IDATAIN => '0',         -- 1-bit input: Data input from the I/O
      INC => '0',                 -- 1-bit input: Increment / Decrement tap delay input
      LD => s_IDELAY_LD,--s_control2_out_pulse(27),                   -- 1-bit input: Load IDELAY_VALUE input
      LDPIPEEN => '0',       -- 1-bit input: Enable PIPELINE register to load data input
      REGRST => '0'            -- 1-bit input: Active-high reset tap-delay input
   ); 
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
   --IDELAYCTRL_inst1 : IDELAYCTRL port map ( RDY => open, REFCLK => idel_ref_clk, RST => not_locked );

   IDELAYE2_inst1 : IDELAYE2
   generic map (
      CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
      DELAY_SRC => "IDATAIN",           -- Delay input (IDATAIN, DATAIN)
      HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
      IDELAY_TYPE => "VAR_LOAD",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      IDELAY_VALUE => 0,                -- Input delay tap setting (0-31)
      PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
      REFCLK_FREQUENCY => 200.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
   )
   port map (
      CNTVALUEOUT => open, -- 5-bit output: Counter value output
      DATAOUT => s_sin1_to_casc_idelay,         -- 1-bit output: Delayed data output
     -- CNTVALUEOUT => CNTVALUEOUT1, -- 5-bit output: Counter value output
     -- DATAOUT => s_sin1_idelay,         -- 1-bit output: Delayed data output
      C => idel_ref_clk,                     -- 1-bit input: Clock input
      CE => '0',                   -- 1-bit input: Active high enable increment/decrement input
      CINVCTRL => '0',       -- 1-bit input: Dynamic clock inversion input
      CNTVALUEIN => s_CNTVALIN1,--s_control2_out(4 downto 0),   -- 5-bit input: Counter value input
      DATAIN => '0',           -- 1-bit input: Internal delay data input
      IDATAIN => s_sin1,         -- 1-bit input: Data input from the I/O
      INC => '0',                 -- 1-bit input: Increment / Decrement tap delay input
      LD => s_IDELAY1_LD,--s_control2_out_pulse(5),                   -- 1-bit input: Load IDELAY_VALUE input
      LDPIPEEN => '0',       -- 1-bit input: Enable PIPELINE register to load data input
      REGRST => '0'            -- 1-bit input: Active-high reset tap-delay input
   ); 
   
   IDELAYE2_inst1_casc : IDELAYE2
   generic map (
      CINVCTRL_SEL => "FALSE",          -- Enable dynamic clock inversion (FALSE, TRUE)
      DELAY_SRC => "DATAIN",           -- Delay input (IDATAIN, DATAIN)
      HIGH_PERFORMANCE_MODE => "TRUE", -- Reduced jitter ("TRUE"), Reduced power ("FALSE")
      IDELAY_TYPE => "VAR_LOAD",           -- FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      IDELAY_VALUE => 0,                -- Input delay tap setting (0-31)
      PIPE_SEL => "FALSE",              -- Select pipelined mode, FALSE, TRUE
      REFCLK_FREQUENCY => 200.0,        -- IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      SIGNAL_PATTERN => "DATA"          -- DATA, CLOCK input signal
   )
   port map (
      CNTVALUEOUT => CNTVALUEOUT1, -- 5-bit output: Counter value output
      DATAOUT => s_sin1_idelay,         -- 1-bit output: Delayed data output
      C => idel_ref_clk,                     -- 1-bit input: Clock input
      CE => '0',                   -- 1-bit input: Active high enable increment/decrement input
      CINVCTRL => '0',       -- 1-bit input: Dynamic clock inversion input
      CNTVALUEIN => s_CNTVALIN1,--s_control2_out(4 downto 0),   -- 5-bit input: Counter value input
      DATAIN => s_sin1_to_casc_idelay,           -- 1-bit input: Internal delay data input
      IDATAIN => '0',         -- 1-bit input: Data input from the I/O
      INC => '0',                 -- 1-bit input: Increment / Decrement tap delay input
      LD => s_IDELAY1_LD,--s_control2_out_pulse(5),                   -- 1-bit input: Load IDELAY_VALUE input
      LDPIPEEN => '0',       -- 1-bit input: Enable PIPELINE register to load data input
      REGRST => '0'            -- 1-bit input: Active-high reset tap-delay input
   ); 
-----------------------------------------------------------------------------------------------------
 CARRY4_inst : CARRY4
   port map (
      CO => s_CO(3 downto 0),         -- 4-bit carry out
      O => open,           -- 4-bit carry chain XOR data out
      CI => '0',         -- 1-bit carry cascade input
      CYINIT =>  s_sin_idelay, -- 1-bit carry initialization
      DI => "0000",         -- 4-bit carry-MUX data in
      S => "1111"            -- 4-bit carry-MUX select input
   );
 
 CARRY4_inst1 : CARRY4
   port map (
      CO => s_CO1(3 downto 0),         -- 4-bit carry out
      O => open,           -- 4-bit carry chain XOR data out
      CI => '0',         -- 1-bit carry cascade input
      CYINIT =>  s_sin1_idelay, -- 1-bit carry initialization
      DI => "0000",         -- 4-bit carry-MUX data in
      S => "1111"            -- 4-bit carry-MUX select input
   );

  SIN_copy <= s_SIN_copy;--s_CO(0);
  SIN1_copy <= s_SIN1_copy;-- s_CO1(0);


IDDR_inst : IDDR 
   generic map (
      DDR_CLK_EDGE => "OPPOSITE_EDGE", -- "OPPOSITE_EDGE", "SAME_EDGE" 
                                       -- or "SAME_EDGE_PIPELINED" 
      INIT_Q1 => '0', -- Initial value of Q1: '0' or '1'
      INIT_Q2 => '0', -- Initial value of Q2: '0' or '1'
      SRTYPE => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
   port map (
      Q1 => s_sin_l, -- 1-bit output for positive edge of clock 
      Q2 => s_sin_h, -- 1-bit output for negative edge of clock
      C => clk_320,   -- 1-bit clock input
      CE => '1', -- 1-bit clock enable input
      D => s_sin_idelay,   -- 1-bit DDR data input
      R => '0',   -- 1-bit reset
      S => '0');    -- 1-bit set

IDDR_inst1 : IDDR 
   generic map (
      DDR_CLK_EDGE => "OPPOSITE_EDGE", -- "OPPOSITE_EDGE", "SAME_EDGE" 
                                       -- or "SAME_EDGE_PIPELINED" 
      INIT_Q1 => '0', -- Initial value of Q1: '0' or '1'
      INIT_Q2 => '0', -- Initial value of Q2: '0' or '1'
      SRTYPE => "SYNC") -- Set/Reset type: "SYNC" or "ASYNC" 
   port map (
      Q1 => s_sin1_l, -- 1-bit output for positive edge of clock 
      Q2 => s_sin1_h, -- 1-bit output for negative edge of clock
      C => clk_320,   -- 1-bit clock input
      CE => '1', -- 1-bit clock enable input
      D => s_sin1_idelay,   -- 1-bit DDR data input
      R => '0',   -- 1-bit reset
      S => '0');    -- 1-bit set
      
-----------------------------------------------------------
DDR_IN_SHIFT_inst: DDR_IN_SHIFT
    port map ( clk_320 => clk_320,
              frame_40 => frame64,
                 sin_l => s_sin_l,
                 sin_h => s_sin_h,
            bitslip_in =>  s_BITSLIP,--s_control2_out(9 downto 8),
                  Qh => open,
                  Ql => open,
                     Q => s_deser_in(9 downto 0));  
DDR_IN_SHIFT_inst1: DDR_IN_SHIFT
    port map ( clk_320 => clk_320,
              frame_40 => frame64,
                 sin_l => s_sin1_l,
                 sin_h => s_sin1_h,
            bitslip_in =>  s_BITSLIP1,--s_control2_out(7 downto 6),
                  Qh => open,
                  Ql => open,
                  Q => s_deser1_in(9 downto 0));   
---------------------------------------------------------------
--CW_8b10b_dec_inst: CW_8b10b_dec
--            port map(     clk => clk_64, -- clk_par 64MHz
--                        rst_n => rst_n,
--                    init_rd_n => '0',
--                  init_rd_val => '0',
--                      data_in => s_deser_in(9 downto 0),
--                        error => s_decode_error,
--                           rd => s_rdisp,
--                       k_char => s_decode_KCHAR_out(0 downto 0),
--                     data_out => s_decode_out(7 downto 0),
--                       rd_err => s_rdisp_err,
--                     code_err => s_code_err,
--                       enable => '1',
--                   rd_err_bus => s_decode_rd_err_out(0 downto 0),
--                 code_err_bus => s_code_err_KCHAR_out(0 downto 0)  );   
-- CW_8b10b_dec_inst1: CW_8b10b_dec
--            port map(     clk => clk_64, -- clk_par 64MHz
--                        rst_n => rst_n,
--                    init_rd_n => '0',
--                  init_rd_val => '0',
--                      data_in => s_deser1_in(9 downto 0),
--                        error => s_decode_error1,
--                           rd => s_rdisp1,
--                       k_char => s_decode_KCHAR1_out(0 downto 0),
--                     data_out => s_decode1_out(7 downto 0),
--                       rd_err => s_rdisp_err1,
--                     code_err => s_code_err1,
--                       enable => '1',
--                   rd_err_bus => s_decode_rd_err1_out(0 downto 0),
--                 code_err_bus => s_code_err_KCHAR1_out(0 downto 0)  );   
-----------------------------------------------------------------------  
CW_8b10b_dec_inst: dec_8b10b	 
    port map( 
        reset => s_rst, --Active high reset
        clk => clk_64,   --Clock to register output and disparity
        datain => s_deser_in(9 downto 0), --10b data input
        ena => '1',              -- Enable registers for output and disparity
        ko => s_decode_KCHAR_out(0),             -- Active high K indication
        dataout => s_decode_out(7 downto 0), --Decoded output
        code_err => s_code_err,                   --Indication for illegal character
        disp_err => s_rdisp_err );                  --Indication for disparity error
CW_8b10b_dec_inst1: dec_8b10b	 
    port map( 
        reset => s_rst, --Active high reset
        clk => clk_64,   --Clock to register output and disparity
        datain => s_deser1_in(9 downto 0), --10b data input
        ena => '1',              -- Enable registers for output and disparity
        ko => s_decode_KCHAR1_out(0),             -- Active high K indication
        dataout => s_decode1_out(7 downto 0), --Decoded output
        code_err => s_code_err1,                   --Indication for illegal character
        disp_err => s_rdisp_err1 );                  --Indication for disparity error
    
 
--____________________CODE ERR REG________________________________________--

 process(clk_64) 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(clk_64) ) then  
       if      ( reset_code_err_reg = '1')  then  s_code_err_reg <= '0';  elsif (s_decode_KCHAR_out(0) = '0') then  s_code_err_reg <= '1'; end if;
       if      ( reset_code_err_reg = '1')  then s_code_err1_reg <= '0';  elsif(s_decode_KCHAR1_out(0) = '0') then  s_code_err1_reg <= '1'; end if;
       --if      ( reset_code_err_reg = '1')  then  s_code_err_reg <= '1';  elsif (s_TPdecode = '1')  then  s_code_err_reg <= '0'; end if;  -- s_TP_decode: 000100010001... only when phase correct (s_code_err not reliable!)
       --if      ( reset_code_err_reg = '1')  then s_code_err1_reg <= '1';  elsif (s_TPdecode_1 = '1') then  s_code_err1_reg <= '0'; end if;
    end if;       
  end process;
  code_err_reg <= s_code_err_reg;
  code_err1_reg <= s_code_err1_reg;

--_________________________________________________________________________--

DATA_FIFO_MPW3_decode: decode_fifo
    port map ( clk_TLU_pll_par  => clk_64,
              locked_reset => locked_reset,
              decode_KCHAR => s_decode_KCHAR_out(0 downto 0),
              decoded_data => s_decode_out(7 downto 0),
              
              TS_ovfl_cnt => TS_ovfl_cnt,
           Eventnumber_in => Eventnumber_in,
        Eventnumber_valid => Eventnumber_valid,
                TLU_TS_in => TLU_TS_in,
        
              UDP_fifo_data => UDP_fifo_data(31 downto 0),
                UDP_fifo_we => UDP_fifo_we,
               
                   fifo_rd => AXI_fifo_rd,
                    fifo_q => AXI_fifo_data,
                      TP => s_TPdecode,
                     TPP => s_TPPdecode,
                   axi_clk => axi_clk);
                   
DATA_FIFO_MPW3_decode1: decode_fifo
    port map ( clk_TLU_pll_par  => clk_64,
              locked_reset => locked_reset,
              decode_KCHAR => s_decode_KCHAR1_out,
              decoded_data => s_decode1_out(7 downto 0),
              
               TS_ovfl_cnt => TS_ovfl_cnt,
            Eventnumber_in => Eventnumber_in,
         Eventnumber_valid => Eventnumber_valid,
                 TLU_TS_in => TLU_TS_in,
                 
             UDP_fifo_data => UDP_fifo1_data(31 downto 0),
                UDP_fifo_we => UDP_fifo1_we,
               
                   fifo_rd => AXI_fifo1_rd,
                    fifo_q => AXI_fifo1_data,
                     TP => s_TPdecode_1,
                     TPP => open,
                   axi_clk => axi_clk);
 

  process(clk_64) 
  begin
    if ( rising_edge(clk_64) ) then  
       TP_decode(0) <= s_decode_out(0); 
       TP_decode(1) <= s_decode_out(1); 
       TP_decode(2) <= s_decode_out(2);
       TP_decode(3) <= s_decode_out(3);
       TP_decode(4) <= s_decode_out(4);
       TP_decode(5) <= s_decode_out(5);
       TP_decode(6) <= s_decode_out(6);
       TP_decode(7) <= s_decode_out(7);
       
       TP <=   s_decode_KCHAR_out(0);
       TPP <=  s_TPPdecode; --s_decode_KCHAR1_out(0);--s_TPPdecode; 
       
    end if;       
  end process;
 
 
end Behavioral;
