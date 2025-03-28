
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_unsigned.all;

entity serout_store is


	port 
	(
		clk			: in std_logic;
		PARENSER_in	: in std_logic;
		SEROUT_in	: in std_logic;
		
		FIFOwe_out	: out std_logic;
		FIFOcounter_out	: out std_logic_vector(15 downto 0);
		
		TP_out	: out std_logic;
		TPP_out : out std_logic
	);

end entity;

architecture rtl of serout_store is
  
    signal tmp: std_logic_vector(31 downto 0);
    signal s_PARENSER_in_delayed,s_SEROUT_in_reg: std_logic;
    signal s_SEROUT_in_sr: std_logic_vector(15 downto 0);
    

begin

	process (clk)--delay PARENSER 18 ticks-------------
    begin
     if (rising_edge (clk)) then 
       for i in 0 to 18 loop tmp(i+1) <= tmp(i); end loop;
       tmp(0) <= PARENSER_in;
     end if; 
    end process;  
    s_PARENSER_in_delayed <= tmp(18);
	
	process (clk)--register SEROUT_in -------------
    begin
      if (rising_edge(clk)) then
        s_SEROUT_in_reg<= SEROUT_in; 
      end if;
    end process;
	
	process (clk) --16bit SEROUT_in shiftregister ---------------------------------------------------
	begin
	  if (rising_edge(clk)) then
        s_SEROUT_in_sr(15 downto 1) <= s_SEROUT_in_sr(14 downto 0);
        s_SEROUT_in_sr(0) <= s_SEROUT_in_reg;  -- Load new data into the first stage
	  end if;
	end process;
	
	
	process (clk) --register shiftregister output ---------------------------------------------------
	begin
	  if (rising_edge(clk)) then
	    if (s_PARENSER_in_delayed = '1') then FIFOcounter_out <= s_SEROUT_in_sr; end if; 
	    FIFOwe_out <= tmp(19);
	  end if;
	end process;
	
	


	TP_out <= s_PARENSER_in_delayed;
    TPP_out <= s_PARENSER_in_delayed;
end rtl;
