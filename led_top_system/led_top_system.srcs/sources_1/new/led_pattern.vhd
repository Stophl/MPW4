library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_pattern is
    Port (
        clk     : in  std_logic;
        arstn     : in  std_logic;
        pattern_sel : in std_logic;
        led     : out std_logic_vector(7 downto 0)
    );
end led_pattern;

architecture Behavioral of led_pattern is
    signal counter   : unsigned(27 downto 0) := (others => '0');
    signal led_reg   : std_logic_vector(7 downto 0) := "00000000";
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if arstn = '1' then
                counter  <= (others => '0');
                led_reg  <= (others => '0');
            else
                counter <= counter + 1;
                if counter = 0 then  -- Adjust this for speed
                    if pattern_sel = '0' then
                        led_reg <= led_reg(6 downto 0) & not led_reg(7);
                    else
                        led_reg <= not led_reg;
                    end if;
                end if;
            end if;
        end if;
    end process;

    led <= led_reg;

end Behavioral;
