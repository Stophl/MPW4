-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;
use ieee.std_logic_unsigned.all;

entity FEI3read is


	port 
	(
		clk			: in std_logic;
		PAREN_in	: in std_logic;
		SOUT1_in	: in std_logic;
		SOUT2_in	: in std_logic;
		
		FIFOwe_out	: out std_logic;
		FIFOpixeladdr_out	: out std_logic_vector(15 downto 0);
		FIFOtimestamp_out	: out std_logic_vector(15 downto 0);
		FIFOcolumn_out	: out std_logic_vector(6 downto 0);
		
		TP_out	: out std_logic;
		TPP_out : out std_logic
	);

end entity;

architecture rtl of FEI3read is

	signal s_PAREN_sclr, s_PAREN_sclr_p, s_SOUT1_reg, S_SOUT2_reg: std_logic;
	signal s_first_column, s_first_column_p, s_first_column_pp: std_logic;
	
	signal s_ro_clk_cnt: std_logic_vector(3 downto 0);
	signal s_co, s_co_p, s_co_pp, s_co_ppp: std_logic;
	signal s_pixel_addr, s_SOUT1_sr, s_SOUT2_sr: std_logic_vector(15 downto 0);
	
	signal s_column_cnt: std_logic_vector(6 downto 0);
	signal s_PAREN_pppppp,s_PAREN_ppppp, s_PAREN_pppp, s_PAREN_ppp, s_PAREN_pp, s_PAREN_p: std_logic;

begin

	process (clk)--delay PAREN -------------
	begin
	  if (rising_edge(clk)) then
         s_PAREN_sclr <= s_PAREN_pppppp; s_PAREN_pppppp <= s_PAREN_ppppp;  s_PAREN_ppppp <= s_PAREN_pppp; s_PAREN_pppp <= s_PAREN_ppp; s_PAREN_ppp <= s_PAREN_pp; s_PAREN_pp <= s_PAREN_p; s_PAREN_p <= PAREN_in;
	  end if;
	end process;
	
	process (clk)--register SOUT1,SOUT2 -------------
    begin
      if (rising_edge(clk)) then
        s_SOUT1_reg<= SOUT1_in;  S_SOUT2_reg <= SOUT2_in;
      end if;
    end process;
	
	process (clk)--delay s_PAREN_sclr -------------
	begin if (rising_edge(clk)) then s_PAREN_sclr_p <= s_PAREN_sclr; end if; end process;
	
	s_first_column <= (s_PAREN_sclr nor (not(s_PAREN_sclr_p)));
	
	process (clk)--delay s_first_column -------------
    begin if (rising_edge(clk)) then  s_first_column_pp <= s_first_column_p; s_first_column_p <= s_first_column;  end if; end process;
	
	
	
	process (clk)--4bit readout clock counter --------------------------------------
	begin
	  if (rising_edge(clk)) then
        if s_PAREN_sclr ='1' then
	      s_ro_clk_cnt <= "0000"; 
	    else
	      s_ro_clk_cnt <= s_ro_clk_cnt +1;
	    end if; 
	  end if;
	end process;
	s_co <= '1' when s_ro_clk_cnt = "1111"  else '0';
	---------------------------------------------------------------------------------
	process (clk)--delay s_co -------------
	begin if (rising_edge(clk)) then  s_co_ppp <= s_co_pp; s_co_pp <= s_co_p; s_co_p <= s_co;  end if; end process;
	
	
	process (clk)--register FIFOwe_out -------------
	begin
	  if (rising_edge(clk)) then
         FIFOwe_out <= (( s_co_ppp or s_first_column_pp) and  ( s_pixel_addr(15) or s_pixel_addr(14) or s_pixel_addr(13) or s_pixel_addr(12) or s_pixel_addr(11) or s_pixel_addr(10) or s_pixel_addr(9) or s_pixel_addr(8) ));
	  end if;
	end process;
	
	
	
	
	
	
	
	
	
	process (clk) --16bit SOUT1 shiftregister ---------------------------------------------------
	begin
	  if (rising_edge(clk)) then
        s_SOUT1_sr(15 downto 1) <= s_SOUT1_sr(14 downto 0);
        s_SOUT1_sr(0) <= s_SOUT1_reg;  -- Load new data into the first stage
	  end if;
	end process;
	
	process (clk) --16bit SOUT2 shiftregister ---------------------------------------------------
	begin
	  if (rising_edge(clk)) then
        s_SOUT2_sr(15 downto 1) <= s_SOUT2_sr(14 downto 0);
        s_SOUT2_sr(0) <= s_SOUT2_reg;  -- Load new data into the first stage
	  end if;
	end process;
	
	
	process (clk)--register FIFOpixeladdr_out FIFOtimestamp_out-------------
	begin
	  if (rising_edge(clk)) then
	   if ((s_co_p or s_first_column)='1') then 
        s_pixel_addr <= s_SOUT1_sr; 
        FIFOtimestamp_out <= s_SOUT2_sr; 
       end if;
	  end if;
	end process;
	
	FIFOpixeladdr_out <= s_pixel_addr;
	
	
	
	
	
	
	
	
	
	
	process (clk)--7bit column counter --------------------------------------
	begin
	  if (rising_edge(clk)) then
        if s_PAREN_sclr ='1' then
	      s_column_cnt <= "0000000"; 
	    elsif ((s_co_p or s_first_column)='1') then
	      s_column_cnt <= s_column_cnt + 1;
	    end if; 
	  end if;
	end process;
	FIFOcolumn_out <= s_column_cnt;
	
	
	




	TP_out <= s_co_p;
    TPP_out <= S_SOUT1_reg;
end rtl;
