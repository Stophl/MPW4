----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.07.2023 14:02:18
-- Design Name: 
-- Module Name: TLUtimestampCounter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


entity TLUtimestampCounter is
    Port ( clk : in STD_LOGIC;   
           tluClk : in std_logic;
           tluRst : in STD_LOGIC;
           TLUcounter : out STD_LOGIC_vector(45 downto 0)
           );
end TLUtimestampCounter;

architecture Behavioral of TLUtimestampCounter is

--component ila_0 IS
--PORT (
--    clk : IN STD_LOGIC;
--    probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--    probe2 : IN STD_LOGIC_VECTOR(45 DOWNTO 0);
--    probe3 : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
--    probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
--);
--end component;


signal tluClkReg : std_logic :='0';
signal tluClkLast : std_logic :='0';
signal samsTLUcounter : std_logic_vector(45 downto 0):="0000000000000000000000000000000000000000000000";
signal samsTLUcounterLSB : std_logic_vector(22 downto 0):="00000000000000000000000";
signal samsTLUcounterMSB : std_logic_vector(22 downto 0):="00000000000000000000000";
signal samsTLUcounterIntLSB : integer :=0;
signal samsTLUcounterIntMSB : integer :=0;

signal TLUclkVector : std_logic_vector(0 downto 0);
signal TLUrstVector : std_logic_vector(0 downto 0);
signal tluclkLastVectot : std_logic_vector(0 downto 0);
-- signal flag : std_logic :='0';
signal tlu_r : std_logic :='0';
signal tlu_rr : std_logic :='0';

begin

--tluRSTvector(0) <= tluRST;
--tluclkvector(0) <= tluclk;
--tluclkLastVectot(0) <= tluClkLast;


--inst_myila: component ila_0
--PORT map (
--    clk => clk,
--    probe0 => tluClkVector,
--    probe1 => tluclkLastVectot,
--    probe2 => samsTLUcounter,
--    probe3 => samsTLUcounterLSB,
--    probe4 => tluRstVector       
--);

process(clk)
begin
	if(rising_edge(clk))
	then	
	   
--		if(tluClk = '1' and tluClkLast = '0')-- and flag = '0')   -- rising edge of tluClk output
		if(tluClkReg = '1' and tluClkLast = '0')-- and flag = '0')   -- rising edge of tluClk output
        then
            
            samsTLUcounterIntLSB <= samsTLUcounterIntLSB + 1;
                    
            if(samsTLUcounterIntLSB > 8388606)                    -- max value for 23 bit number is 0 --> 8388607
            then
              samsTLUcounterIntLSB <= 0;
              samsTLUcounterIntMSB <= samsTLUcounterIntMSB + 1;            
            end if;
            
            
        end if;
        
        
        
        if(tluRst = '1')
        then
                samsTLUcounterIntLSB <= 0;
                samsTLUcounterIntMSB <= 0;
        end if;
        
--      Edge Detector        
        tluClkReg <= tlu_rr;
        tluClkLast <= tluCLkReg;
--        tluClkLast <= tluCLk;

--      Synchronizer
        tlu_r <= tluClk;
        tlu_rr <= tlu_r;
    
	end if;
end process;

samsTLUcounterLSB <= std_logic_vector(to_unsigned(samsTLUcounterIntLSB, 23));
samsTLUcounterMSB <= std_logic_vector(to_unsigned(samsTLUcounterIntMSB, 23));
samsTLUcounter <= samsTLUcounterMSB & samsTLUcounterLSB;
TLUcounter <= samsTLUcounter;

end Behavioral;
