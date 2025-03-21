LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY xil_defaultlib;  -- Ensure it matches Vivado's default library
ENTITY IBUFDS IS
    PORT (
        I  : IN  STD_LOGIC;
        IB : IN  STD_LOGIC;
        O  : OUT STD_LOGIC
    );
END IBUFDS;

ARCHITECTURE Behavioral OF IBUFDS IS
BEGIN
    O <= I;  -- Pass-through for simulation
END Behavioral;
