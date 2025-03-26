library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_top is
    Port (
        clk_i       : in  std_logic;
        arstn_i     : in  std_logic;
        pattern_sel : in  std_logic;
        led_o       : out std_logic_vector(7 downto 0)
    );
end led_top;

architecture Structural of led_top is
begin
    U_LED : entity work.led_pattern
        port map (
            clk       => clk_i,
            arstn     => arstn_i,
            pattern_sel => pattern_sel,
            led       => led_o
        );
end Structural;
