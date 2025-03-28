library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;


entity inputSERDES is
  Port (
      clk_par: in STD_LOGIC;      -- 64MHz
      clk_parx5 : in STD_LOGIC;  -- 320MHz
      clk_parx5b: in STD_LOGIC;  -- 320MHz 180 deg
      
      ser_in  : in STD_LOGIC;
      par_out : out STD_LOGIC_VECTOR (9 downto 0);
    BITSLIP_i : in STD_LOGIC;

      aRst : in STD_LOGIC);
end inputSERDES;


architecture Behavioral of inputSERDES is

signal sDataOut, ocascade1, ocascade2 : std_logic;
begin



 ISERDESE2_inst_Master : ISERDESE2
   generic map (
      DATA_RATE => "DDR",           -- DDR, SDR
      DATA_WIDTH => 10,              -- Parallel data width (2-8,10,14)
      DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
      DYN_CLK_INV_EN => "FALSE",    -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",   -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
      IOBDELAY => "BOTH",           -- NONE, BOTH, IBUF, IFD
      NUM_CE => 1,                  -- Number of clock enables (1,2)
      OFB_USED => "FALSE",          -- Select OFB path (FALSE, TRUE)
      SERDES_MODE => "MASTER",      -- MASTER, SLAVE
      -- SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
   )
    port map (
      O => open,                       -- 1-bit output: Combinatorial output
      -- Q1 - Q8: 1-bit (each) output: Registered data outputs
      Q1 => par_out(0),
      Q2 => par_out(1),
      Q3 => par_out(2),
      Q4 => par_out(3),
      Q5 => par_out(4),
      Q6 => par_out(5),
      Q7 => par_out(6),
      Q8 => par_out(7),
      -- SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
      SHIFTOUT1 => ocascade1,
      SHIFTOUT2 => ocascade2,
      BITSLIP => BITSLIP_i,           -- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
                                    -- CLKDIV when asserted (active High). Subsequently, the data seen on the
                                    -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
                                    -- position every time Bitslip is invoked (DDR operation is different from
                                    -- SDR).

      -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
      CE1 => '1',
      CE2 => '1',
      CLKDIVP => '0',           -- 1-bit input: TBD
      -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
      CLK => clk_parx5,                   -- 1-bit input: High-speed clock
      CLKB => clk_parx5b,                 -- 1-bit input: High-speed secondary clock
      CLKDIV => clk_par,             -- 1-bit input: Divided clock
      OCLK => '0',                 -- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
      -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
      DYNCLKDIVSEL => '0', -- 1-bit input: Dynamic CLKDIV inversion
      DYNCLKSEL => '0',       -- 1-bit input: Dynamic CLK/CLKB inversion
      -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
      D =>'0',                       -- 1-bit input: Data input
      DDLY => ser_in,                 -- 1-bit input: Serial data from IDELAYE2
      OFB => '0',                   -- 1-bit input: Data feedback from OSERDESE2
      OCLKB => '0',               -- 1-bit input: High speed negative edge output clock
      RST => aRst,                   -- 1-bit input: Active high asynchronous reset
      -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
      SHIFTIN1 => '0',
      SHIFTIN2 => '0'
   );
ISERDESE2_inst_Slave : ISERDESE2
   generic map (
      DATA_RATE => "DDR",           -- DDR, SDR
      DATA_WIDTH => 10,              -- Parallel data width (2-8,10,14)
      DYN_CLKDIV_INV_EN => "FALSE", -- Enable DYNCLKDIVINVSEL inversion (FALSE, TRUE)
      DYN_CLK_INV_EN => "FALSE",    -- Enable DYNCLKINVSEL inversion (FALSE, TRUE)
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",   -- MEMORY, MEMORY_DDR3, MEMORY_QDR, NETWORKING, OVERSAMPLE
      IOBDELAY => "NONE",           -- NONE, BOTH, IBUF, IFD
      NUM_CE => 1,                  -- Number of clock enables (1,2)
      OFB_USED => "BOTH",          -- Select OFB path (FALSE, TRUE)
      SERDES_MODE => "SLAVE",      -- MASTER, SLAVE
      -- SRVAL_Q1 - SRVAL_Q4: Q output values when SR is used (0/1)
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
   )
    port map (
      O => open,                       -- 1-bit output: Combinatorial output
      -- Q1 - Q8: 1-bit (each) output: Registered data outputs
      Q1 => open,
      Q2 => open,
      Q3 => par_out(8),
      Q4 => par_out(9),
      Q5 => open,
      Q6 => open,
      Q7 => open,
      Q8 => open,
      -- SHIFTOUT1, SHIFTOUT2: 1-bit (each) output: Data width expansion output ports
      SHIFTOUT1 => open,
      SHIFTOUT2 => open,
      BITSLIP => BITSLIP_i,           -- 1-bit input: The BITSLIP pin performs a Bitslip operation synchronous to
                                    -- CLKDIV when asserted (active High). Subsequently, the data seen on the
                                    -- Q1 to Q8 output ports will shift, as in a barrel-shifter operation, one
                                    -- position every time Bitslip is invoked (DDR operation is different from
                                    -- SDR).

      -- CE1, CE2: 1-bit (each) input: Data register clock enable inputs
      CE1 => '1',
      CE2 => '1',
      CLKDIVP => '0',           -- 1-bit input: TBD
      -- Clocks: 1-bit (each) input: ISERDESE2 clock input ports
      CLK => clk_parx5,                   -- 1-bit input: High-speed clock
      CLKB => clk_parx5b,                 -- 1-bit input: High-speed secondary clock
      CLKDIV => clk_par,             -- 1-bit input: Divided clock
      OCLK => '0',                 -- 1-bit input: High speed output clock used when INTERFACE_TYPE="MEMORY" 
      -- Dynamic Clock Inversions: 1-bit (each) input: Dynamic clock inversion pins to switch clock polarity
      DYNCLKDIVSEL => '0', -- 1-bit input: Dynamic CLKDIV inversion
      DYNCLKSEL => '0',       -- 1-bit input: Dynamic CLK/CLKB inversion
      -- Input Data: 1-bit (each) input: ISERDESE2 data input ports
      D =>'0',                       -- 1-bit input: Data input
      DDLY => '0',                 -- 1-bit input: Serial data from IDELAYE2
      OFB => '0',                   -- 1-bit input: Data feedback from OSERDESE2
      OCLKB => '0',               -- 1-bit input: High speed negative edge output clock
      RST => aRst,                   -- 1-bit input: Active high asynchronous reset
      -- SHIFTIN1, SHIFTIN2: 1-bit (each) input: Data width expansion input ports
      SHIFTIN1 => ocascade1,
      SHIFTIN2 => ocascade2
   );

end Behavioral;

  
