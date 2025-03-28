

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-------------------------------------------------------------------------------
-- Definition of Generics:
--      SCL_INERTIAL_DELAY   -- SCL filtering delay 
--      SDA_INERTIAL_DELAY   -- SDA filtering delay 
-- Definition of Ports:
--      Sysclk               -- System clock
--      Scl_noisy            -- IIC SCL is noisy
--      Scl_clean            -- IIC SCL is clean
--      Sda_noisy            -- IIC SDA is Noisy
--      Sda_clean            -- IIC SDA is clean
-------------------------------------------------------------------------------
-- Entity section
-------------------------------------------------------------------------------
entity filter is
   
   generic (
      SCL_INERTIAL_DELAY : integer range 0 to 255 := 5;
      SDA_INERTIAL_DELAY : integer range 0 to 255 := 5
      );

   port (
      Sysclk    : in  std_logic;
      Rst       : in  std_logic;
      Scl_noisy : in  std_logic;
      Scl_clean : out std_logic;
      Sda_noisy : in  std_logic;
      Sda_clean : out std_logic
      );

end entity filter;

-------------------------------------------------------------------------------
-- Architecture
-------------------------------------------------------------------------------
architecture RTL of filter is
  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";

component debounce
   
   generic (
      C_INERTIAL_DELAY : integer range 0 to 255 := 5;
      C_DEFAULT        : std_logic              := '1'
      );

   port (
      Sysclk     : in std_logic;
      Rst        : in std_logic;
      Stable     : in  std_logic;
      Unstable_n : out std_logic;
      Noisy      : in  std_logic;
      Clean      : out std_logic);

end component;

   signal scl_unstable_n : std_logic;

begin

   ----------------------------------------------------------------------------
   -- The inertial delay is cross coupled between the two IIC signals to ensure
   -- that a delay in SCL because of a glitch also prevents any changes in SDA
   -- until SCL is clean. This prevents inertial delay on SCL from creating a
   -- situation whereby SCL is held high but SDA transitions low to high thus
   -- making the core think a STOP has occured. Changes on SDA do not inihibit
   -- SCL because that could alter the timing relationships for the clock
   -- edges. If other I2C devices follow the spec then SDA should be stable
   -- prior to the rising edge of SCL anyway. (Excluding noise of course)
   ----------------------------------------------------------------------------

   ----------------------------------------------------------------------------
   -- Assertion that reports the SCL inertial delay
   ----------------------------------------------------------------------------

   ASSERT (FALSE) REPORT "IIC filter configured for SCL inertial delay of "
      & integer'image(SCL_INERTIAL_DELAY) & " clocks."
      SEVERITY NOTE;
   
   ----------------------------------------------------------------------------
   -- Instantiating component debounce 
   ----------------------------------------------------------------------------
   
   SCL_DEBOUNCE : debounce
      generic map (
         C_INERTIAL_DELAY => SCL_INERTIAL_DELAY, 
         C_DEFAULT        => '1')
      port map (
         Sysclk     => Sysclk,
         Rst        => Rst,

         Stable     => '1',
         Unstable_n => scl_unstable_n,

         Noisy      => Scl_noisy,  
         Clean      => Scl_clean); 

   ----------------------------------------------------------------------------
   -- Assertion that reports the SDA inertial delay
   ----------------------------------------------------------------------------
   
   ASSERT (FALSE) REPORT "IIC filter configured for SDA inertial delay of "
      & integer'image(SDA_INERTIAL_DELAY) & " clocks."
      SEVERITY NOTE;
   
   ----------------------------------------------------------------------------
   -- Instantiating component debounce 
   ----------------------------------------------------------------------------
   
   SDA_DEBOUNCE : debounce
      generic map (
         C_INERTIAL_DELAY => SDA_INERTIAL_DELAY,  
         C_DEFAULT        => '1')
      port map (
         Sysclk     => Sysclk,
         Rst        => Rst,
         Stable     => scl_unstable_n,  
         Unstable_n => open,

         Noisy      => Sda_noisy,   
         Clean      => Sda_clean);  

end architecture RTL;
