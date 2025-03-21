library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity led_blinker is
    Port ( clk_p : in STD_LOGIC;  -- 125 MHz Clock positive
           clk_n : in STD_LOGIC;  -- 125 MHz Clock negative
           led : out STD_LOGIC);   -- LED Output
end led_blinker;

architecture Behavioral of led_blinker is
    signal clk : STD_LOGIC;  -- Single-ended clock signal
    signal counter : INTEGER := 0;
    signal led_internal : STD_LOGIC := '0';
    constant max_count : INTEGER := 5; --62_500_000; -- 0.5s blink rate at 125 MHz

    -- Instantiate the IBUFDS to convert the differential clock into a single-ended signal
    component IBUFDS
        port (
            I  : in  STD_LOGIC;
            IB : in  STD_LOGIC;
            O  : out STD_LOGIC
        );
    end component;

begin
    clk_buffer: IBUFDS port map (
        I => clk_p,   -- Positive clock pin
        IB => clk_n,  -- Negative clock pin
        O => clk      -- Output single-ended clock
    );

    -- Process to toggle the LED every 0.5 seconds
    process(clk)
    begin
        if rising_edge(clk) then
            if counter < max_count then
                counter <= counter + 1;
            else
                counter <= 0;
                led_internal <= NOT led_internal;
            end if;
        end if;
    end process;

    -- Assign LED output
    led <= led_internal;

end Behavioral;
