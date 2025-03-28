
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity OutputSERDES is
   Port (
      clk_par: in STD_LOGIC;   --TMDS clock x1 (CLKDIV) pixel
      clk_parx5 : in STD_LOGIC;  --TMDS clock x5 (CLK)  serial
      
      par_in : in STD_LOGIC_VECTOR (9 downto 0);
      ser_out : out STD_LOGIC;

      aRst : in STD_LOGIC);
end OutputSERDES;

architecture Behavioral of OutputSERDES is

signal sDataOut, ocascade1, ocascade2 : std_logic;
signal pDataOut_q : std_logic_vector(13 downto 0);
begin



-- Serializer, 10:1 (5:1 DDR), master-slave cascaded
SerializerMaster: OSERDESE2
   generic map (
      DATA_RATE_OQ      => "DDR",
      DATA_RATE_TQ      => "DDR",
      DATA_WIDTH        => 10,
      TRISTATE_WIDTH    => 1,
      TBYTE_CTL         => "FALSE", 
      TBYTE_SRC         => "FALSE",
      SERDES_MODE       => "MASTER")
   port map (
      OFB               => open,             -- 1-bit output: Feedback path for data
      OQ                => sDataOut,               -- 1-bit output: Data path output
      -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      SHIFTOUT1         => open,
      SHIFTOUT2         => open,
      TBYTEOUT          => open,   -- 1-bit output: Byte group tristate
      TFB               => open,      -- 1-bit output: 3-state control
      TQ                => open,      -- 1-bit output: 3-state control
      CLK               => clk_parx5, -- 1-bit input: High speed clock
      CLKDIV            => clk_par,  -- 1-bit input: Divided clock
      -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      D1                => par_in(9),
      D2                => par_in(8),
      D3                => par_in(7),
      D4                => par_in(6),
      D5                => par_in(5),
      D6                => par_in(4),
      D7                => par_in(3),
      D8                => par_in(2),
      OCE               => '1',             -- 1-bit input: Output data clock enable
      RST               => aRst,             -- 1-bit input: Reset
      -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      SHIFTIN1          => ocascade1,
      SHIFTIN2          => ocascade2,
      -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      T1                => '0',
      T2                => '0',
      T3                => '0',
      T4                => '0',
      TBYTEIN           => '0',     -- 1-bit input: Byte group tristate
      TCE               => '0'              -- 1-bit input: 3-state clock enable
    );   
   
SerializerSlave: OSERDESE2
   generic map (
      DATA_RATE_OQ      => "DDR",
      DATA_RATE_TQ      => "DDR",
      DATA_WIDTH        => 10,
      TRISTATE_WIDTH    => 1,
      TBYTE_CTL         => "FALSE", 
      TBYTE_SRC         => "FALSE",
      SERDES_MODE       => "SLAVE")
   port map (
      OFB               => open,             -- 1-bit output: Feedback path for data
      OQ                => open,               -- 1-bit output: Data path output
      -- SHIFTOUT1 / SHIFTOUT2: 1-bit (each) output: Data output expansion (1-bit each)
      SHIFTOUT1         => ocascade1,
      SHIFTOUT2         => ocascade2,
      TBYTEOUT          => open,   -- 1-bit output: Byte group tristate
      TFB               => open,             -- 1-bit output: 3-state control
      TQ                => open,               -- 1-bit output: 3-state control
      CLK               => clk_parx5,             -- 1-bit input: High speed clock
      CLKDIV            => clk_par,       -- 1-bit input: Divided clock
      -- D1 - D8: 1-bit (each) input: Parallel data inputs (1-bit each)
      D1                => '0',
      D2                => '0',
      D3                => par_in(1),
      D4                => par_in(0),
      D5                => '0',
      D6                => '0',
      D7                => '0',
      D8                => '0',
      OCE               => '1',             -- 1-bit input: Output data clock enable
      RST               => aRst,             -- 1-bit input: Reset
      -- SHIFTIN1 / SHIFTIN2: 1-bit (each) input: Data input expansion (1-bit each)
      SHIFTIN1          => '0',
      SHIFTIN2          => '0',
      -- T1 - T4: 1-bit (each) input: Parallel 3-state inputs
      T1                => '0',
      T2                => '0',
      T3                => '0',
      T4                => '0',
      TBYTEIN           => '0',     -- 1-bit input: Byte group tristate
      TCE               => '0'              -- 1-bit input: 3-state clock enable
    );      

ser_out <= sDataOut;

end Behavioral;