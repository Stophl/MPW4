----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.01.2022 14:45:36
-- Design Name: 
-- Module Name: data_reg_buffer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_reg_buffer is
    Port ( clk : in STD_LOGIC;
           data_taking_enabled: in STD_LOGIC;
           decode:  in STD_LOGIC_VECTOR ( 31 downto 0 );
           decode1: in STD_LOGIC_VECTOR ( 31 downto 0 );
           decode_UDP: out STD_LOGIC_VECTOR ( 31 downto 0 );
           decode1_UDP: out STD_LOGIC_VECTOR ( 31 downto 0 );
           we: in STD_LOGIC;
           we1: in STD_LOGIC;
           we_UDP: out STD_LOGIC;
           we1_UDP: out STD_LOGIC
          );
end data_reg_buffer;

architecture Behavioral of data_reg_buffer is

begin

 
  process(clk) 
  begin
    if ( rising_edge(clk) ) then  
      decode_UDP <= decode; 
      decode1_UDP <= decode1; 
      we_UDP <= we and data_taking_enabled; 
      we1_UDP <= we1 and data_taking_enabled;  
    end if;       
  end process;

end Behavioral;
