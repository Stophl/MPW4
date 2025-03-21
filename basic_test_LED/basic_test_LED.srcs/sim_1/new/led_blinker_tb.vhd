LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_led_blinker IS
END tb_led_blinker;

ARCHITECTURE behavior OF tb_led_blinker IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT led_blinker
        PORT(
            clk_p : IN  std_logic;
            clk_n : IN  std_logic;
            led   : OUT std_logic
        );
    END COMPONENT;

    -- IBUFDS Behavioral Model for Simulation
    COMPONENT IBUFDS
        PORT (
            I  : IN  STD_LOGIC;
            IB : IN  STD_LOGIC;
            O  : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals
    SIGNAL clk_p       : std_logic := '0';
    SIGNAL clk_n       : std_logic := '1';
    SIGNAL led         : std_logic;
    SIGNAL clk         : std_logic := '0'; -- Internal single-ended clock
    SIGNAL counter     : integer := 0; -- To be monitored
    SIGNAL led_internal: std_logic := '0';

    CONSTANT clk_period : TIME := 8 ns; -- 125 MHz clock

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: led_blinker PORT MAP (
        clk_p => clk_p,
        clk_n => clk_n,
        led   => led
    );

    -- Instantiate IBUFDS Simulation Model
    ibufds_inst: IBUFDS PORT MAP (
        I  => clk_p,
        IB => clk_n,
        O  => clk
    );

    -- Differential Clock Generation Process
    clk_process : PROCESS
    BEGIN
        WHILE NOW < 10 ms LOOP  -- Simulate for 10ms
            clk_p <= NOT clk_p;
            clk_n <= NOT clk_n;
            WAIT FOR clk_period / 2;
        END LOOP;
        WAIT; -- Stop simulation
    END PROCESS;

    -- Monitor and Log All Signals
    signal_monitor : PROCESS
    BEGIN
        WAIT FOR 1 ns;
        REPORT "===== Simulation Started =====";
        WHILE NOW < 10 ms LOOP
            WAIT UNTIL rising_edge(clk);
            counter <= counter + 1;
            REPORT "Time: " & TIME'image(NOW) & 
                   " | Counter: " & INTEGER'image(counter) & 
                   " | LED_Internal: " & std_logic'image(led_internal) &
                   " | LED: " & std_logic'image(led) &
                   " | CLK: " & std_logic'image(clk);
        END LOOP;
        REPORT "===== Simulation Finished =====";
        WAIT;
    END PROCESS;

END behavior;
