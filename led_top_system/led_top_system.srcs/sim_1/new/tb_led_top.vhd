library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_led_top is
end tb_led_top;

architecture Behavioral of tb_led_top is

    -- Component signals
    signal clk_i       : std_logic := '0';
    signal arstn_i     : std_logic := '0';
    signal pattern_sel : std_logic := '0';
    signal led_o       : std_logic_vector(7 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- DUT (Device Under Test) instantiation
    uut: entity work.led_top
        port map (
            clk_i       => clk_i,
            arstn_i     => arstn_i,
            pattern_sel => pattern_sel,
            led_o       => led_o
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk_i <= '0';
            wait for clk_period / 2;
            clk_i <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial reset
        arstn_i <= '1';
        wait for 50 ns;
        arstn_i <= '0';

        -- Test Pattern 0
        pattern_sel <= '0';
        wait for 400 ns;

        -- Switch to Pattern 1
        pattern_sel <= '1';
        wait for 100 ns;

        -- Finish simulation
        wait;
    end process;

end Behavioral;
