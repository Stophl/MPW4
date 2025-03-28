------------------------------------------------------------------------
-- TLU Trigger Data Handshake
------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TLU_TDH is
  port (
	 fadc_clk			: in  std_logic; 
	 
	 fadc_busy			: in  std_logic; 
	 busy_end_in		: in std_logic_vector (15 downto 0); 
	
	 TLU_trg			: in  std_logic;
	 TLU_reset			: in  std_logic; --unused
	 TLU_busy		    : out  std_logic; 
	 
	 o_trg_tag		: out std_logic_vector (15 downto 0); --event#
	 o_trg   		: out  std_logic; 
	 
	 TP		    : out std_logic_vector (7 downto 0) 
	 
    );
end TLU_TDH;

architecture rtl of TLU_TDH is

	signal s_fadc_busy			: std_logic := '0';
	signal s_TLU_busy, s_TLU_busy_p, s_TLU_busy_riseedge, s_TLU_busy_riseedge_p, s_TLU_busy_riseedge_pp, s_TLU_busy_riseedge_ppp, s_TLU_busy_riseedge_pppp , s_TLU_busy_riseedge_ppppp:  std_logic := '0';
	signal s_TLU_trg_pedge, s_TLU_trg_nedge : std_logic := '0';

	signal s_trg_tag	: std_logic_vector (15 downto 0) := (others => '0');
	signal s_TriggerData_sr	: std_logic_vector (15 downto 0) := (others => '0');
	
	--signal s_trg_clk_cnt : std_logic_vector (5 downto 0) := (others => '0');
	signal s_trg_clk_cnt : std_logic_vector (15 downto 0) := (others => '0');
	signal s_cout,s_cout_p,s_cout_pp,s_cout_ppp, s_cnt_en   : std_logic := '0';
	signal s_busy_end : std_logic := '0';

begin	 

process(fadc_clk) --------pedge nedge TLU_trg --------- 
  variable pipe: std_logic_vector(1 to 2);
  begin
    if ( rising_edge(fadc_clk) ) then  
      s_TLU_trg_pedge <= (pipe(1) xor pipe(2))  and  ( not pipe(2)); 
      s_TLU_trg_nedge <= (pipe(1) xor pipe(2))  and  ( pipe(2)); 
		--pipe:=  TLU_trg & pipe(1); 
      pipe:=  (TLU_trg and (not (s_TLU_busy)) ) & pipe(1); 
    end if;       
end process;



	
proc_trg_reg:process (fadc_clk) -- s_TLU_trg_pedge sets TLU_busy
begin
  if (rising_edge(fadc_clk)) then 
	   --if      (s_cout_ppp = '1')      then s_TLU_busy <= '0'; 
	   if      (s_busy_end = '1')      then s_TLU_busy <= '0'; 
	   elsif (s_TLU_trg_pedge = '1') then s_TLU_busy <= '1'; end if;
  end if;
end process;

neg_clk_edge_BUSY:process (fadc_clk) -- s_TLU_trg_pedge sets TLU_busy
begin
  if (falling_edge(fadc_clk)) then 
	  TLU_busy <= s_TLU_busy or fadc_busy;
	  -- TLU_busy <= not(s_TLU_busy);
  end if;
end process;

--TLU_busy <= s_TLU_busy;


process (fadc_clk) -- s_TLU_busy rising edge
	begin
		if (rising_edge(fadc_clk)) then
				s_TLU_busy_p   <= s_TLU_busy;
				s_TLU_busy_riseedge <= (not s_TLU_busy_p) and s_TLU_busy;
	    end if;
	end process;

process (fadc_clk) -- s_TLU_busy rising edge delayed
	begin
		if (rising_edge(fadc_clk)) then
				s_TLU_busy_riseedge_p <= s_TLU_busy_riseedge;
				s_TLU_busy_riseedge_pp <= s_TLU_busy_riseedge_p;
				s_TLU_busy_riseedge_ppp <= s_TLU_busy_riseedge_pp;
				s_TLU_busy_riseedge_pppp <= s_TLU_busy_riseedge_ppp;
				
	    end if;
	end process;

----------------------------------------------------------------

process (fadc_clk) -- s_TLU_busy_riseedge sets count enable
begin
  if (rising_edge(fadc_clk)) then 
	   --if                  (s_cout = '1')      then s_cnt_en <= '0'; 
	   if                  (s_busy_end = '1')      then s_cnt_en <= '0'; 

	   --elsif   (s_TLU_busy_riseedge_ppp = '1')     then s_cnt_en <= '1'; end if; -- ev# only every second event#
		elsif   (s_TLU_busy_riseedge_pppp = '1')     then s_cnt_en <= '1'; end if;   
  end if;
end process;



process (fadc_clk)--4bit readout clock counter --------------------------------------
	begin
	  if (rising_edge(fadc_clk)) then
        if s_cnt_en ='0' then
	     s_trg_clk_cnt <= "0000000000000000"; 
	    else
	      s_trg_clk_cnt <= s_trg_clk_cnt +1;
	    end if; 
	  end if;
end process;

--s_cout <= '1' when s_trg_clk_cnt = "1111"  else '0';
s_cout <= '1' when s_trg_clk_cnt = "0000000000001111"  else '0';
--s_busy_end <= '1' when s_trg_clk_cnt = "101000"  else '0';
--s_busy_end <= '1' when s_trg_clk_cnt = "10111011100000"  else '0';
s_busy_end <= '1' when s_trg_clk_cnt(15 downto 0) = busy_end_in(15 downto 0)  else '0';

---------------------------------------------------------------------------------

process (fadc_clk) -- delay s_cout
	begin
		if (rising_edge(fadc_clk)) then 
		  s_cout_p   <= s_cout; 
		  s_cout_pp   <= s_cout_p; 
		  s_cout_ppp   <= s_cout_pp; 
		end if;
end process;

---------------------------------------------------------------------------



process (fadc_clk) --16bit trigger data shiftregister ---------------------------------------------------
	begin
	  if (rising_edge(fadc_clk)) then
	   if (s_cnt_en ='1') then
         s_TriggerData_sr(15 downto 1) <= s_TriggerData_sr(14 downto 0);
         s_TriggerData_sr(0) <= TLU_trg;  -- Load new data into the first stage
       end if;
	  end if;
	end process;
-- LSB first : --------

process (fadc_clk) ---- LSB first : -------- store at end of BUSY ---------------------------------------------------
	begin
	  if (rising_edge(fadc_clk)) then
	   if (s_cout_p ='1') then
         o_trg_tag(0)  <= s_TriggerData_sr(15);
			o_trg_tag(1)  <= s_TriggerData_sr(14);
			o_trg_tag(2)  <= s_TriggerData_sr(13);
			o_trg_tag(3)  <= s_TriggerData_sr(12);
			o_trg_tag(4)  <= s_TriggerData_sr(11);
			o_trg_tag(5)  <= s_TriggerData_sr(10);
			o_trg_tag(6)  <=  s_TriggerData_sr(9);
			o_trg_tag(7)  <=  s_TriggerData_sr(8);
			o_trg_tag(8)  <=  s_TriggerData_sr(7);
			o_trg_tag(9)  <=  s_TriggerData_sr(6);
			o_trg_tag(10) <=  s_TriggerData_sr(5);
			o_trg_tag(11) <=  s_TriggerData_sr(4);
			o_trg_tag(12) <=  s_TriggerData_sr(3);
			o_trg_tag(13) <=  s_TriggerData_sr(2);
			o_trg_tag(14) <=  s_TriggerData_sr(1);
			o_trg_tag(15) <=  s_TriggerData_sr(0);
       end if;
	  end if;
	end process;

--------------------------------------------------------------------------------------------------------------
o_trg <= s_cout_ppp;

TP(0)		<= s_cout_ppp;
TP(1)		<= s_busy_end;
Tp(2)   <= s_TLU_trg_pedge;
Tp(3)  <= '0';
Tp(4)  <= '0';
Tp(5)  <= '0';
Tp(6)  <= '0';
Tp(7)  <= '0';


end rtl;
